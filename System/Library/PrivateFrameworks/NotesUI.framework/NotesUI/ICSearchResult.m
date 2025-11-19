@interface ICSearchResult
+ (BOOL)canFitAttributedString:(id)a3 ellipses:(id)a4 shouldPrefixWithEllipses:(BOOL)a5 insideFrame:(CGRect)a6 centered:(BOOL)a7;
+ (CGRect)boundingRectForAttributedString:(id)a3 fittingSize:(CGSize)a4;
+ (id)attributedStringWithMatchHighlighted:(id)a3 optionalAttributedHighlightedString:(id)a4 textCheckingResult:(id)a5 usingAttributes:(id)a6 highlightColor:(id)a7 insideFrame:(CGRect)a8 isSnippetForParticipantMatch:(BOOL)a9 finishingUpRegexMatchFinder:(id)a10;
+ (id)attributesByHighlightingAttributes:(id)a3 withHighlightColor:(id)a4;
+ (id)authorNameToHighlightForNote:(id)a3 fromSearchResult:(id)a4 textCheckingResult:(id *)a5;
+ (id)finishUpHighlightingWithMatchFinder:(id)a3 forAttributedString:(id)a4 inRange:(_NSRange)a5 highlightedAttributes:(id)a6;
+ (id)firstTextCheckingResultOfRegex:(id)a3 inDocumentText:(id)a4;
- (BOOL)isEqual:(id)a3;
- (CGRect)snippetAttributedStringInsideFrame;
- (CGRect)titleAttributedStringInsideFrame;
- (ICSearchResult)initWithMainContextObject:(id)a3 currentContextObject:(id)a4 configuration:(id)a5;
- (ICSearchResult)initWithObject:(id)a3 configuration:(id)a4;
- (NSDictionary)decomposedHighlightInfo;
- (NSString)description;
- (id)attributedSummaryWithBaseAttributes:(id)a3 highlightColor:(id)a4 insideFrame:(CGRect)a5;
- (id)attributedTitleWithBaseAttributes:(id)a3 highlightColor:(id)a4 insideFrame:(CGRect)a5;
- (id)snippetWithBaseAttributes:(id)a3 highlightColor:(id)a4 insideFrame:(CGRect)a5;
- (int64_t)compareByModificationDate:(id)a3;
- (void)initializeRegexes;
- (void)prepareDisplayingSnippetWithAccessingObject:(id)a3;
- (void)prepareDisplayingTitleWithAccessingObject:(id)a3;
- (void)prepareFirstMatchingRangeWithAccessingObject:(id)a3;
- (void)refetchObjectFromContext:(id)a3;
- (void)refreshDisplaySnippet;
- (void)refreshDisplayTitle;
- (void)refreshFirstMatchingRange;
@end

@implementation ICSearchResult

- (ICSearchResult)initWithObject:(id)a3 configuration:(id)a4
{
  v7 = a3;
  v8 = a4;
  v31.receiver = self;
  v31.super_class = ICSearchResult;
  v9 = [(ICSearchResult *)&v31 init];
  if (v9)
  {
    if (!v7)
    {
      [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"object" functionName:"-[ICSearchResult initWithObject:configuration:]" simulateCrash:1 showAlert:0 format:@"object is nil"];
    }

    v10 = [v7 managedObjectContext];
    v11 = [v10 ic_isMainThreadContext];

    if (v11)
    {
      objc_storeStrong(&v9->_object, a3);
      objc_storeStrong(&v9->_currentContextObject, a3);
    }

    else
    {
      v25 = 0;
      v26 = &v25;
      v27 = 0x3032000000;
      v28 = __Block_byref_object_copy__57;
      v29 = __Block_byref_object_dispose__57;
      v30 = 0;
      v12 = [v7 managedObjectContext];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __47__ICSearchResult_initWithObject_configuration___block_invoke;
      v22[3] = &unk_1E8468FA8;
      v24 = &v25;
      v23 = v7;
      [v12 performBlockAndWait:v22];

      if (v26[5])
      {
        v13 = [MEMORY[0x1E69B7AA8] sharedIndexer];
        v14 = [v13 mainContextObjectForObjectIDURIString:v26[5]];
        object = v9->_object;
        v9->_object = v14;
      }

      else
      {
        v13 = os_log_create("com.apple.notes", "UI");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [ICSearchResult initWithObject:v13 configuration:?];
        }
      }

      _Block_object_dispose(&v25, 8);
    }

    objc_storeStrong(&v9->_configuration, a4);
    v16 = [(ICSearchIndexable *)v9->_object hash];
    v9->_cachedHash = [v8 hash] + v16;
    [(ICSearchResult *)v9 initializeRegexes];
    v17 = [v7 managedObjectContext];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __47__ICSearchResult_initWithObject_configuration___block_invoke_15;
    v19[3] = &unk_1E8468F80;
    v20 = v9;
    v21 = v7;
    [v17 performBlockAndWait:v19];
  }

  return v9;
}

uint64_t __47__ICSearchResult_initWithObject_configuration___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) searchIndexingIdentifier];
  *(*(*(a1 + 40) + 8) + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2);
}

uint64_t __47__ICSearchResult_initWithObject_configuration___block_invoke_15(uint64_t a1)
{
  [*(a1 + 32) prepareDisplayingTitleWithAccessingObject:*(a1 + 40)];
  [*(a1 + 32) prepareDisplayingSnippetWithAccessingObject:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 prepareFirstMatchingRangeWithAccessingObject:v3];
}

- (ICSearchResult)initWithMainContextObject:(id)a3 currentContextObject:(id)a4 configuration:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = ICSearchResult;
  v12 = [(ICSearchResult *)&v19 init];
  if (v12)
  {
    if (v9)
    {
      if (v10)
      {
LABEL_4:
        objc_storeStrong(&v12->_object, a3);
        objc_storeStrong(&v12->_currentContextObject, a4);
        objc_storeStrong(&v12->_configuration, a5);
        v13 = [v9 hash];
        v12->_cachedHash = [v11 hash] + v13;
        [(ICSearchResult *)v12 initializeRegexes];
        v14 = [v10 managedObjectContext];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __79__ICSearchResult_initWithMainContextObject_currentContextObject_configuration___block_invoke;
        v16[3] = &unk_1E8468F80;
        v17 = v12;
        v18 = v10;
        [v14 performBlockAndWait:v16];

        goto LABEL_5;
      }
    }

    else
    {
      [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"mainContextObject" functionName:"-[ICSearchResult initWithMainContextObject:currentContextObject:configuration:]" simulateCrash:1 showAlert:0 format:@"mainContextObject is nil"];
      if (v10)
      {
        goto LABEL_4;
      }
    }

    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"currentContextObject" functionName:"-[ICSearchResult initWithMainContextObject:currentContextObject:configuration:]" simulateCrash:1 showAlert:0 format:@"currentContextObject is nil"];
    goto LABEL_4;
  }

LABEL_5:

  return v12;
}

uint64_t __79__ICSearchResult_initWithMainContextObject_currentContextObject_configuration___block_invoke(uint64_t a1)
{
  [*(a1 + 32) prepareDisplayingTitleWithAccessingObject:*(a1 + 40)];
  [*(a1 + 32) prepareDisplayingSnippetWithAccessingObject:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 prepareFirstMatchingRangeWithAccessingObject:v3];
}

- (void)initializeRegexes
{
  v38[1] = *MEMORY[0x1E69E9840];
  v3 = [(ICSearchResult *)self decomposedHighlightInfo];
  v4 = [v3 objectForKeyedSubscript:&unk_1F4FC4008];
  if (v4)
  {
    v5 = [ICSearchResultRegexMatchFinder alloc];
    v6 = [v4 objectForKeyedSubscript:&unk_1F4FC4020];
    v7 = [v4 objectForKeyedSubscript:&unk_1F4FC4038];
    v8 = [(ICSearchResult *)self configuration];
    v9 = [v8 searchString];
    v10 = [(ICSearchResultRegexMatchFinder *)v5 initWithPrefixMatchingTokens:v6 substringMatchingTokens:v7 searchString:v9];
    [(ICSearchResult *)self setTitleHighlightRegexMatchFinder:v10];
  }

  v11 = [v3 objectForKeyedSubscript:&unk_1F4FC4050];
  if (v11)
  {
    v12 = [ICSearchResultRegexMatchFinder alloc];
    v13 = [v11 objectForKeyedSubscript:&unk_1F4FC4020];
    v14 = [v11 objectForKeyedSubscript:&unk_1F4FC4038];
    v15 = [(ICSearchResult *)self configuration];
    v16 = [v15 searchString];
    v17 = [(ICSearchResultRegexMatchFinder *)v12 initWithPrefixMatchingTokens:v13 substringMatchingTokens:v14 searchString:v16];
    [(ICSearchResult *)self setParticipantHighlightRegexMatchFinder:v17];
  }

  v37 = v3;
  v18 = [v3 objectForKeyedSubscript:&unk_1F4FC4068];
  if (v18)
  {
    v19 = [ICSearchResultRegexMatchFinder alloc];
    v20 = [v18 objectForKeyedSubscript:&unk_1F4FC4020];
    v21 = [v18 objectForKeyedSubscript:&unk_1F4FC4038];
    v22 = [(ICSearchResult *)self configuration];
    v23 = [v22 searchString];
    v24 = [(ICSearchResultRegexMatchFinder *)v19 initWithPrefixMatchingTokens:v20 substringMatchingTokens:v21 searchString:v23];
    [(ICSearchResult *)self setSnippetHighlightRegexMatchFinder:v24];
  }

  v25 = [MEMORY[0x1E695DF20] mergeFieldElement:v4 withElement:v18];
  v26 = [ICSearchResultRegexMatchFinder alloc];
  v27 = [v25 objectForKeyedSubscript:&unk_1F4FC4020];
  v28 = [v25 objectForKeyedSubscript:&unk_1F4FC4038];
  v29 = [(ICSearchResult *)self configuration];
  v30 = [v29 searchString];
  v31 = [(ICSearchResultRegexMatchFinder *)v26 initWithPrefixMatchingTokens:v27 substringMatchingTokens:v28 searchString:v30];
  [(ICSearchResult *)self setHighlightPatternRegexFinder:v31];

  v32 = MEMORY[0x1E696AE70];
  v33 = [(ICSearchResult *)self configuration];
  v34 = [v33 searchString];
  v38[0] = v34;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
  v36 = [v32 ic_regexForSearchStrings:v35];
  [(ICSearchResult *)self setTipKitCheckRegex:v36];
}

- (NSDictionary)decomposedHighlightInfo
{
  decomposedHighlightInfo = self->_decomposedHighlightInfo;
  if (!decomposedHighlightInfo)
  {
    v4 = MEMORY[0x1E695DF20];
    v5 = [(ICSearchResult *)self configuration];
    v6 = [v5 sortableSearchableItem];
    v7 = [v6 highlightInfo];
    v8 = [v4 decomposedHighlightInfo:v7];
    v9 = self->_decomposedHighlightInfo;
    self->_decomposedHighlightInfo = v8;

    decomposedHighlightInfo = self->_decomposedHighlightInfo;
  }

  return decomposedHighlightInfo;
}

- (void)refreshDisplayTitle
{
  v3 = [(ICSearchResult *)self object];
  v4 = [v3 managedObjectContext];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__ICSearchResult_refreshDisplayTitle__block_invoke;
  v5[3] = &unk_1E8468BA0;
  v5[4] = self;
  [v4 performBlockAndWait:v5];
}

void __37__ICSearchResult_refreshDisplayTitle__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 object];
  [v1 prepareDisplayingTitleWithAccessingObject:v2];
}

- (void)refreshDisplaySnippet
{
  v3 = [(ICSearchResult *)self object];
  v4 = [v3 managedObjectContext];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__ICSearchResult_refreshDisplaySnippet__block_invoke;
  v5[3] = &unk_1E8468BA0;
  v5[4] = self;
  [v4 performBlockAndWait:v5];
}

void __39__ICSearchResult_refreshDisplaySnippet__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 object];
  [v1 prepareDisplayingSnippetWithAccessingObject:v2];
}

- (void)refreshFirstMatchingRange
{
  v3 = [(ICSearchResult *)self object];
  v4 = [v3 managedObjectContext];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__ICSearchResult_refreshFirstMatchingRange__block_invoke;
  v5[3] = &unk_1E8468BA0;
  v5[4] = self;
  [v4 performBlockAndWait:v5];
}

void __43__ICSearchResult_refreshFirstMatchingRange__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 object];
  [v1 prepareFirstMatchingRangeWithAccessingObject:v2];
}

- (void)prepareDisplayingTitleWithAccessingObject:(id)a3
{
  v15 = a3;
  [(ICSearchResult *)self setTitleAttributedStringInsideFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(ICSearchResult *)self setDisplayingTitle:0];
  [(ICSearchResult *)self setDisplayingTitleCheckingResult:0];
  if (objc_opt_respondsToSelector())
  {
    v4 = v15;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  objc_opt_class();
  v6 = ICDynamicCast();
  v7 = v6;
  if (v5)
  {
    [v5 trimmedTitle];
  }

  else
  {
    [v6 title];
  }
  v8 = ;
  v9 = [v8 ic_whitespaceAndNewlineCoalescedString];

  if (v9)
  {
    [(ICSearchResult *)self setDisplayingTitle:v9];
    v10 = [(ICSearchResult *)self titleHighlightRegexMatchFinder];
    v11 = [(ICSearchResult *)self displayingTitle];
    v12 = [v10 firstMatchInDocumentWithGlobalFallback:v11];
    [(ICSearchResult *)self setDisplayingTitleCheckingResult:v12];
  }

  if (v5)
  {
    v13 = [v5 trimmedAttributedTitle];
    if (v13)
    {
      v14 = v13;
      [(ICSearchResult *)self setDisplayingAttributedTitle:v13];
    }
  }
}

- (void)prepareDisplayingSnippetWithAccessingObject:(id)a3
{
  v4 = a3;
  [(ICSearchResult *)self setSnippetAttributedStringInsideFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(ICSearchResult *)self setDisplayingSnippet:0];
  [(ICSearchResult *)self setDisplayingSnippetCheckingResult:0];
  [(ICSearchResult *)self setIsDisplayingParticipantMatch:0];
  if (objc_opt_respondsToSelector())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (v6)
  {
    if ([v6 isPasswordProtected])
    {
      objc_opt_class();
      v8 = ICDynamicCast();
      v9 = [MEMORY[0x1E69B77F0] snippetForPasswordProtectedNote:v8];
      [(ICSearchResult *)self setDisplayingSnippet:v9];
LABEL_16:

      goto LABEL_17;
    }

    v10 = [(ICSearchResult *)self participantHighlightRegexMatchFinder];

    if (v10)
    {
      v35 = 0;
      v11 = [ICSearchResult authorNameToHighlightForNote:v7 fromSearchResult:self textCheckingResult:&v35];
      v12 = v35;
      if (v11)
      {
        v13 = MEMORY[0x1E696AEC0];
        v14 = __ICLocalizedFrameworkString_impl(@"Shared with %@", @"Shared with %@", 0, 1);
        v15 = [v13 localizedStringWithFormat:v14, v11];
        [(ICSearchResult *)self setDisplayingSnippet:v15];

        v16 = [(ICSearchResult *)self displayingSnippet];
        v17 = [v16 rangeOfString:v11];

        v18 = [ICSearchTextCheckingResult alloc];
        v19 = [v12 range];
        [v12 range];
        v21 = [(ICSearchTextCheckingResult *)v18 initWithRange:v19 + v17, v20];

        [(ICSearchResult *)self setDisplayingSnippetCheckingResult:v21];
        [(ICSearchResult *)self setIsDisplayingParticipantMatch:1];
        v12 = v21;
      }
    }

    v22 = [(ICSearchResult *)self displayingSnippet];
    if (!v22 || (v23 = v22, [(ICSearchResult *)self displayingSnippetCheckingResult], v24 = objc_claimAutoreleasedReturnValue(), v24, v23, !v24))
    {
      v25 = [v7 noteAsPlainTextWithoutTitle];
      v26 = [v25 ic_whitespaceAndNewlineCoalescedString];
      [(ICSearchResult *)self setDisplayingSnippet:v26];

      v27 = [v7 noteWithoutTitle];
      v28 = *MEMORY[0x1E69DB5F0];
      v29 = [v7 noteWithoutTitle];
      v30 = [v29 ic_range];
      LODWORD(v28) = [v27 ic_containsAttribute:v28 inRange:{v30, v31}];

      if (v28)
      {
        v32 = [v7 noteWithoutTitle];
        v33 = [v32 ic_whitespaceAndNewlineCoalescedAttributedString];
        [(ICSearchResult *)self setDisplayingAttributedSnippet:v33];
      }

      v8 = [(ICSearchResult *)self snippetHighlightRegexMatchFinder];
      v9 = [(ICSearchResult *)self displayingSnippet];
      v34 = [v8 firstMatchInDocumentWithGlobalFallback:v9];
      [(ICSearchResult *)self setDisplayingSnippetCheckingResult:v34];

      goto LABEL_16;
    }
  }

LABEL_17:
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [v4 isMemberOfClass:objc_opt_class()] && self->_object == *(v4 + 4) && -[ICSearchResultConfiguration isEqual:](self->_configuration, "isEqual:", *(v4 + 5));

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(ICSearchResult *)self configuration];
  v5 = [v4 searchString];
  v6 = [v5 hash];
  v7 = [(ICSearchResult *)self object];
  v8 = [v7 searchIndexingIdentifier];
  v9 = [v3 stringWithFormat:@"(searchStringHash = %lu) %@", v6, v8];

  return v9;
}

- (int64_t)compareByModificationDate:(id)a3
{
  v4 = a3;
  v5 = [(ICSearchResult *)self object];
  v6 = [v5 modificationDate];
  v7 = [v4 object];

  v8 = [v7 modificationDate];
  v9 = [v6 compare:v8];

  return v9;
}

- (void)refetchObjectFromContext:(id)a3
{
  v8 = a3;
  if (v8)
  {
    v4 = [(ICSearchIndexable *)self->_object objectID];

    if (v4)
    {
      v5 = [(ICSearchIndexable *)self->_object objectID];
      v6 = [v8 existingObjectWithID:v5 error:0];
      object = self->_object;
      self->_object = v6;
    }
  }
}

- (id)attributedSummaryWithBaseAttributes:(id)a3 highlightColor:(id)a4 insideFrame:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a3;
  v12 = a4;
  v13 = [(ICSearchResult *)self configuration];
  v14 = [v13 foundAttachmentObjectID];

  if (v14)
  {
    v15 = __ICLocalizedFrameworkString_impl(@"Found in attachments", @"Found in attachments", 0, 1);
    v16 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v15];
  }

  else
  {
    v16 = [(ICSearchResult *)self snippetWithBaseAttributes:v11 highlightColor:v12 insideFrame:x, y, width, height];
  }

  return v16;
}

- (void)prepareFirstMatchingRangeWithAccessingObject:(id)a3
{
  v28 = a3;
  [(ICSearchResult *)self setFirstMatchingRangeInNote:0];
  v4 = [v28 searchResultType];
  if (v4 == 1)
  {
    objc_opt_class();
    v17 = ICDynamicCast();
    v5 = v17;
    if (!v17)
    {
      goto LABEL_20;
    }

    v18 = [v17 rangeInNote];
    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_20;
    }

    v7 = [MEMORY[0x1E696B098] valueWithRange:{v18, v19}];
    v20 = self;
    v21 = v7;
LABEL_10:
    [(ICSearchResult *)v20 setFirstMatchingRangeInNote:v21];
    goto LABEL_19;
  }

  if (v4)
  {
    goto LABEL_21;
  }

  objc_opt_class();
  v5 = ICDynamicCast();
  objc_opt_class();
  v6 = ICDynamicCast();
  v7 = v6;
  if (v5)
  {
    v8 = [v5 searchableString];
    v9 = [(ICSearchResult *)self highlightPatternRegexFinder];
    v10 = [v8 string];
    v11 = [v9 firstMatchInDocumentWithGlobalFallback:v10];

    if (v11)
    {
      v12 = [v11 range];
      v14 = [v5 textRangeForSearchRange:v12 inSearchableString:{v13, v8}];
      if (v14 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v16 = 0;
      }

      else
      {
        v16 = [MEMORY[0x1E696B098] valueWithRange:{v14, v15}];
      }

      [(ICSearchResult *)self setFirstMatchingRangeInNote:v16];
    }

    goto LABEL_18;
  }

  if (v6)
  {
    v22 = [(ICSearchResult *)self displayingSnippetCheckingResult];
    if (v22)
    {
      v8 = v22;
LABEL_17:
      v25 = MEMORY[0x1E696B098];
      v26 = [v8 range];
      v11 = [v25 valueWithRange:{v26, v27}];
      [(ICSearchResult *)self setFirstMatchingRangeInNote:v11];
LABEL_18:

      goto LABEL_19;
    }

    v23 = [v7 contentAsPlainTextPreservingNewlines];
    v24 = [(ICSearchResult *)self highlightPatternRegexFinder];
    v8 = [v24 firstMatchInDocumentWithGlobalFallback:v23];

    if (v8)
    {
      goto LABEL_17;
    }

    v20 = self;
    v21 = 0;
    goto LABEL_10;
  }

LABEL_19:

LABEL_20:
LABEL_21:
}

+ (CGRect)boundingRectForAttributedString:(id)a3 fittingSize:(CGSize)a4
{
  [a3 boundingRectWithSize:3 options:0 context:{a4.width + a4.width, a4.height + a4.height}];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

+ (BOOL)canFitAttributedString:(id)a3 ellipses:(id)a4 shouldPrefixWithEllipses:(BOOL)a5 insideFrame:(CGRect)a6 centered:(BOOL)a7
{
  v7 = a7;
  height = a6.size.height;
  width = a6.size.width;
  v10 = a5;
  v13 = a3;
  v14 = a4;
  v15 = v13;
  v16 = v15;
  v17 = v15;
  if (v10)
  {
    v18 = [v15 mutableCopy];
    [v18 insertAttributedString:v14 atIndex:0];
    v17 = [v18 copy];
  }

  [v14 size];
  [a1 boundingRectForAttributedString:v14 fittingSize:width];
  v20 = 1.0;
  if (v7)
  {
    v20 = 0.5;
  }

  v21 = width * v20;
  v22 = fmax(height, ceil(v19));
  [a1 boundingRectForAttributedString:v17 fittingSize:{v21, v22}];
  v30.origin.x = v23;
  v30.origin.y = v24;
  v30.size.width = v25;
  v30.size.height = v26;
  v29.origin.x = 0.0;
  v29.origin.y = 0.0;
  v29.size.width = v21;
  v29.size.height = v22;
  v27 = CGRectContainsRect(v29, v30);

  return v27;
}

+ (id)attributesByHighlightingAttributes:(id)a3 withHighlightColor:(id)a4
{
  v5 = a4;
  if (v5)
  {
    v6 = v5;
    v7 = a3;
  }

  else
  {
    v8 = MEMORY[0x1E69DC888];
    v9 = a3;
    v6 = [v8 tintColor];
  }

  if (a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = MEMORY[0x1E695E0F8];
  }

  v11 = [v10 mutableCopy];

  [v11 setObject:v6 forKeyedSubscript:*MEMORY[0x1E69DB650]];
  v12 = [v11 copy];

  return v12;
}

+ (id)attributedStringWithMatchHighlighted:(id)a3 optionalAttributedHighlightedString:(id)a4 textCheckingResult:(id)a5 usingAttributes:(id)a6 highlightColor:(id)a7 insideFrame:(CGRect)a8 isSnippetForParticipantMatch:(BOOL)a9 finishingUpRegexMatchFinder:(id)a10
{
  height = a8.size.height;
  width = a8.size.width;
  y = a8.origin.y;
  x = a8.origin.x;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v24 = v19;
  v79 = a10;
  if (v19)
  {
    if (v20)
    {
      v25 = [v19 length];
      if (v25 != [v20 length])
      {
        [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"attributedHighlightedString == ((void*)0) || string == ((void*)0) || string.length == attributedHighlightedString.length" functionName:"+[ICSearchResult attributedStringWithMatchHighlighted:optionalAttributedHighlightedString:textCheckingResult:usingAttributes:highlightColor:insideFrame:isSnippetForParticipantMatch:finishingUpRegexMatchFinder:]" simulateCrash:1 showAlert:0 format:@"Unsupported use of method."];
      }
    }
  }

  v77 = v22;
  v26 = [v22 copy];
  v27 = v26;
  v28 = MEMORY[0x1E695E0F8];
  if (v26)
  {
    v28 = v26;
  }

  v29 = v28;

  v76 = v23;
  v30 = [a1 attributesByHighlightingAttributes:v29 withHighlightColor:v23];
  v78 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"…" attributes:v29];
  v31 = &off_1D4433000;
  if (v21)
  {
    v32 = [v21 range];
    v34 = [v19 paragraphRangeForRange:{v32, v33}];
    v36 = v35;
    v37 = ([v21 range] - v34);
    [v21 range];
    v39 = v38;
    v73 = v24;
    if (v20)
    {
      v40 = [v20 attributedSubstringFromRange:{v34, v36}];
      v41 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:v40];
      v42 = [v41 ic_range];
      [v41 addAttributes:v29 range:{v42, v43}];
    }

    else
    {
      v40 = [v24 substringWithRange:{v34, v36}];
      v45 = objc_alloc(MEMORY[0x1E696AD40]);
      if (v40)
      {
        v46 = v40;
      }

      else
      {
        v46 = &stru_1F4F94F00;
      }

      v41 = [v45 initWithString:v46 attributes:v29];
    }

    [v41 addAttributes:v30 range:{v37, v39}];
    v109.origin.x = x;
    v109.origin.y = y;
    v109.size.width = width;
    v109.size.height = height;
    if (CGRectIsInfinite(v109))
    {
      v47 = v41;
      v31 = &off_1D4433000;
    }

    else
    {
      v89 = 0;
      v90 = &v89;
      v91 = 0x2020000000;
      v92 = 0;
      if (a9 || (v92 = v37, [v41 string], v48 = objc_claimAutoreleasedReturnValue(), v95[0] = MEMORY[0x1E69E9820], v95[1] = 3221225472, v95[2] = __210__ICSearchResult_attributedStringWithMatchHighlighted_optionalAttributedHighlightedString_textCheckingResult_usingAttributes_highlightColor_insideFrame_isSnippetForParticipantMatch_finishingUpRegexMatchFinder___block_invoke, v95[3] = &unk_1E846D6F8, v99 = v37, v100 = v39, v72 = v41, v96 = v72, v101 = a1, v49 = v78, v102 = x, v103 = y, v104 = width, v105 = height, v106 = a9, v97 = v49, v98 = &v89, objc_msgSend(v48, "enumerateSubstringsInRange:options:usingBlock:", 0, &v37[v39], 259, v95), v48, v97, v96, !v90[3]))
      {
        v47 = v41;
        v24 = v73;
        v31 = &off_1D4433000;
      }

      else
      {
        v71 = v49;
        v75 = [v72 length];
        v50 = v90[3];
        v51 = MEMORY[0x1E696AEC0];
        v52 = [v72 string];
        LODWORD(v51) = [v51 ic_isCharacterInlineAttachmentPrefix:{objc_msgSend(v52, "characterAtIndex:", v90[3] - 1)}];
        v53 = v75 - v50;

        v54 = v90[3];
        v24 = v73;
        if (v51)
        {
          v90[3] = --v54;
          ++v53;
        }

        [v72 ic_attributedSubstringFromRange:{v54, v53}];
        v55 = v31 = &off_1D4433000;
        v47 = [v55 mutableCopy];

        if (v90[3])
        {
          [v47 insertAttributedString:v71 atIndex:0];
        }
      }

      _Block_object_dispose(&v89, 8);
    }

    goto LABEL_29;
  }

  v44 = v20;
  if (v20)
  {
    v41 = v44;
    v20 = v44;
LABEL_28:
    v57 = [v41 mutableCopy];
    v58 = [v41 ic_range];
    [v57 addAttributes:v29 range:{v58, v59}];
    v47 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithAttributedString:v57];

LABEL_29:
    goto LABEL_30;
  }

  v20 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v19];
  v107[0] = 0;
  v56 = [MEMORY[0x1E69B7A90] snippetForAttributedContent:v20 attributedSnippetIfNecessary:v107];
  v41 = v107[0];

  if (v41)
  {
    v24 = v56;
    goto LABEL_28;
  }

  v69 = objc_alloc(MEMORY[0x1E696AAB0]);
  if (v56)
  {
    v70 = v56;
  }

  else
  {
    v70 = &stru_1F4F94F00;
  }

  v47 = [v69 initWithString:v70 attributes:v29];
  v24 = v56;
LABEL_30:
  if ([v47 length] >= 0x100)
  {
    v60 = [v47 attributedSubstringFromRange:{0, 255}];

    v47 = v60;
  }

  v61 = [v47 ic_attributedStringByReplacingNewlineCharactersWithWhiteSpace];

  v62 = [objc_opt_class() finishUpHighlightingWithMatchFinder:v79 forAttributedString:v61 inRange:0 highlightedAttributes:{objc_msgSend(v61, "length"), v30}];

  v89 = 0;
  v90 = &v89;
  v91 = 0x3010000000;
  v93 = 0;
  v94 = 0;
  v92 = &unk_1D449C2A9;
  v63 = [v62 string];
  v64 = [v62 length];
  v80[0] = MEMORY[0x1E69E9820];
  v80[1] = *(v31 + 491);
  v80[2] = __210__ICSearchResult_attributedStringWithMatchHighlighted_optionalAttributedHighlightedString_textCheckingResult_usingAttributes_highlightColor_insideFrame_isSnippetForParticipantMatch_finishingUpRegexMatchFinder___block_invoke_2;
  v80[3] = &unk_1E846D720;
  v83 = &v89;
  v65 = v62;
  v81 = v65;
  v84 = a1;
  v66 = v78;
  v82 = v66;
  v85 = x;
  v86 = y;
  v87 = width;
  v88 = height;
  [v63 enumerateSubstringsInRange:0 options:v64 usingBlock:{5, v80}];

  v67 = [objc_opt_class() finishUpHighlightingWithMatchFinder:v79 forAttributedString:v65 inRange:v90[4] highlightedAttributes:{v90[5], v30}];

  _Block_object_dispose(&v89, 8);

  return v67;
}

void __210__ICSearchResult_attributedStringWithMatchHighlighted_optionalAttributedHighlightedString_textCheckingResult_usingAttributes_highlightColor_insideFrame_isSnippetForParticipantMatch_finishingUpRegexMatchFinder___block_invoke(uint64_t a1, int a2, NSRange range1, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v12.length = range1.length;
  location = range1.location;
  v13 = *(a1 + 56);
  v12.location = location;
  v9 = NSUnionRange(v12, v13);
  if (v9.length > 0xFF)
  {
    *a6 = 1;
  }

  else
  {
    v10 = [*(a1 + 32) ic_attributedSubstringFromRange:{v9.location, v9.length}];
    if ([*(a1 + 72) canFitAttributedString:*(a1 + 80) ellipses:*(a1 + 88) shouldPrefixWithEllipses:*(a1 + 96) insideFrame:*(a1 + 104) centered:?])
    {
      *(*(*(a1 + 48) + 8) + 24) = v9.location;
    }

    else
    {
      *a6 = 1;
    }
  }
}

void __210__ICSearchResult_attributedStringWithMatchHighlighted_optionalAttributedHighlightedString_textCheckingResult_usingAttributes_highlightColor_insideFrame_isSnippetForParticipantMatch_finishingUpRegexMatchFinder___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v9 = *(*(a1 + 48) + 8);
  *(v9 + 32) = 0;
  *(v9 + 40) = a3 + a4;
  v10 = [*(a1 + 32) ic_attributedSubstringFromRange:{*(*(*(a1 + 48) + 8) + 32), *(*(*(a1 + 48) + 8) + 40)}];
  if (([*(a1 + 56) canFitAttributedString:*(a1 + 64) ellipses:*(a1 + 72) shouldPrefixWithEllipses:*(a1 + 80) insideFrame:*(a1 + 88) centered:?] & 1) == 0)
  {
    *a7 = 1;
  }
}

+ (id)finishUpHighlightingWithMatchFinder:(id)a3 forAttributedString:(id)a4 inRange:(_NSRange)a5 highlightedAttributes:(id)a6
{
  length = a5.length;
  location = a5.location;
  v37 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = v11;
  v14 = v13;
  if (location || length != [v13 length])
  {
    v39.length = [v14 length];
    v38.location = location;
    v38.length = length;
    v39.location = 0;
    v17 = NSIntersectionRange(v38, v39);
    v15 = v17.location;
    v16 = [v14 ic_attributedSubstringFromRange:{v17.location, v17.length}];
  }

  else
  {
    v15 = 0;
    v16 = v14;
  }

  v18 = [v16 string];
  v19 = [v10 matchesInDocumentWithPerTokenFallback:v18];

  v20 = v14;
  if ([v19 count])
  {
    v31 = v10;
    v21 = [v14 mutableCopy];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v22 = v19;
    v23 = [v22 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v33;
      do
      {
        v26 = 0;
        do
        {
          if (*v33 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [*(*(&v32 + 1) + 8 * v26) range];
          [v21 addAttributes:v12 range:{v27 + v15, v28}];
          ++v26;
        }

        while (v24 != v26);
        v24 = [v22 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v24);
    }

    v20 = [v21 copy];
    v10 = v31;
  }

  v29 = v20;

  return v20;
}

- (id)attributedTitleWithBaseAttributes:(id)a3 highlightColor:(id)a4 insideFrame:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a4;
  v12 = a3;
  v13 = [(ICSearchResult *)self displayingTitle];
  v14 = [(ICSearchResult *)self displayingAttributedTitle];
  v15 = [(ICSearchResult *)self displayingTitleCheckingResult];
  v16 = [(ICSearchResult *)self titleHighlightRegexMatchFinder];
  v17 = [ICSearchResult attributedStringWithMatchHighlighted:v13 optionalAttributedHighlightedString:v14 textCheckingResult:v15 usingAttributes:v12 highlightColor:v11 insideFrame:0 isSnippetForParticipantMatch:x finishingUpRegexMatchFinder:y, width, height, v16];

  [(ICSearchResult *)self setTitleAttributedString:v17];
  [(ICSearchResult *)self setTitleAttributedStringInsideFrame:x, y, width, height];

  return [(ICSearchResult *)self titleAttributedString];
}

+ (id)authorNameToHighlightForNote:(id)a3 fromSearchResult:(id)a4 textCheckingResult:(id *)a5
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [v8 participantHighlightRegexMatchFinder];

  if (v9)
  {
    v29 = a5;
    v10 = [v8 displayingTitleCheckingResult];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v30 = v7;
    v11 = [v7 authorsExcludingCurrentUser];
    v35 = [v11 countByEnumeratingWithState:&v40 objects:v45 count:16];
    v12 = 0;
    if (v35)
    {
      v13 = *v41;
      v32 = v11;
      v33 = v10;
      v31 = *v41;
      while (2)
      {
        v14 = 0;
        v15 = v12;
        do
        {
          if (*v41 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v40 + 1) + 8 * v14);
          v17 = [v16 ic_localizedNameWithDefaultFormattingStyle];
          v18 = [v8 participantHighlightRegexMatchFinder];
          v12 = [v18 firstMatchInDocumentWithGlobalFallback:v17];

          if (v12)
          {
            if (v10)
            {
              v38 = 0u;
              v39 = 0u;
              v36 = 0u;
              v37 = 0u;
              v19 = [v16 ic_componentsForSearchHighlighting];
              v20 = [v19 countByEnumeratingWithState:&v36 objects:v44 count:16];
              if (v20)
              {
                v34 = v12;
                v21 = *v37;
                while (2)
                {
                  for (i = 0; i != v20; i = i + 1)
                  {
                    if (*v37 != v21)
                    {
                      objc_enumerationMutation(v19);
                    }

                    v23 = *(*(&v36 + 1) + 8 * i);
                    v24 = [v8 configuration];
                    v25 = [v24 searchString];
                    v26 = [v23 compare:v25 options:1];

                    if (!v26)
                    {
                      v20 = v17;
                      goto LABEL_20;
                    }
                  }

                  v20 = [v19 countByEnumeratingWithState:&v36 objects:v44 count:16];
                  if (v20)
                  {
                    continue;
                  }

                  break;
                }

LABEL_20:
                v11 = v32;
                v10 = v33;
                v12 = v34;
                v13 = v31;
              }
            }

            else
            {
              v20 = v17;
            }

            if (v20)
            {

              if (v29)
              {
                v27 = v12;
                *v29 = v12;
              }

              goto LABEL_31;
            }
          }

          else
          {
          }

          ++v14;
          v15 = v12;
        }

        while (v14 != v35);
        v35 = [v11 countByEnumeratingWithState:&v40 objects:v45 count:16];
        if (v35)
        {
          continue;
        }

        break;
      }
    }

    v20 = 0;
LABEL_31:
    v7 = v30;
  }

  else
  {
    v20 = 0;
    if (a5)
    {
      *a5 = 0;
    }
  }

  return v20;
}

+ (id)firstTextCheckingResultOfRegex:(id)a3 inDocumentText:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 length];
  v8 = 0;
  if (v5 && v7)
  {
    v8 = [v5 firstMatchInString:v6 options:0 range:{0, objc_msgSend(v6, "length")}];
  }

  return v8;
}

- (id)snippetWithBaseAttributes:(id)a3 highlightColor:(id)a4 insideFrame:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a3;
  v12 = a4;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__57;
  v36 = __Block_byref_object_dispose__57;
  v37 = 0;
  v13 = [(ICSearchResult *)self displayingSnippet];
  if (v13)
  {

LABEL_4:
    v15 = [(ICSearchResult *)self object];
    if (objc_opt_respondsToSelector())
    {
      v16 = [(ICSearchResult *)self object];
    }

    else
    {
      v16 = 0;
    }

    v17 = [(ICSearchResult *)self object];
    v18 = [v17 managedObjectContext];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __71__ICSearchResult_snippetWithBaseAttributes_highlightColor_insideFrame___block_invoke;
    v22[3] = &unk_1E846D748;
    v19 = v16;
    v23 = v19;
    v24 = self;
    v25 = v11;
    v27 = &v32;
    v26 = v12;
    v28 = x;
    v29 = y;
    v30 = width;
    v31 = height;
    [v18 performBlockAndWait:v22];

    goto LABEL_8;
  }

  v14 = [(ICSearchResult *)self displayingAttributedSnippet];

  if (v14)
  {
    goto LABEL_4;
  }

LABEL_8:
  v20 = v33[5];
  _Block_object_dispose(&v32, 8);

  return v20;
}

void __71__ICSearchResult_snippetWithBaseAttributes_highlightColor_insideFrame___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isPasswordProtected];
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = [v3 displayingAttributedSnippet];

    if (v4)
    {
      v5 = [*(a1 + 40) displayingAttributedTitle];
      v6 = [v5 mutableCopy];

      v7 = *(a1 + 48);
      v8 = [v6 ic_range];
      [v6 addAttributes:v7 range:{v8, v9}];
      v10 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithAttributedString:v6];
    }

    else
    {
      v20 = objc_alloc(MEMORY[0x1E696AAB0]);
      v6 = [*(a1 + 40) displayingSnippet];
      v10 = [v20 initWithString:v6 attributes:*(a1 + 48)];
    }

    v21 = *(*(a1 + 64) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v10;

    v23 = *(a1 + 40);

    [v23 setSnippetAttributedString:0];
  }

  else
  {
    v11 = [v3 isDisplayingParticipantMatch];
    v12 = *(a1 + 40);
    if (v11)
    {
      [v12 participantHighlightRegexMatchFinder];
    }

    else
    {
      [v12 snippetHighlightRegexMatchFinder];
    }
    v24 = ;
    v13 = [*(a1 + 40) displayingSnippet];
    v14 = [*(a1 + 40) displayingAttributedSnippet];
    v15 = [*(a1 + 40) displayingSnippetCheckingResult];
    v16 = +[ICSearchResult attributedStringWithMatchHighlighted:optionalAttributedHighlightedString:textCheckingResult:usingAttributes:highlightColor:insideFrame:isSnippetForParticipantMatch:finishingUpRegexMatchFinder:](ICSearchResult, "attributedStringWithMatchHighlighted:optionalAttributedHighlightedString:textCheckingResult:usingAttributes:highlightColor:insideFrame:isSnippetForParticipantMatch:finishingUpRegexMatchFinder:", v13, v14, v15, *(a1 + 48), *(a1 + 56), [*(a1 + 40) isDisplayingParticipantMatch], *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), v24);
    [*(a1 + 40) setSnippetAttributedString:v16];

    [*(a1 + 40) setSnippetAttributedStringInsideFrame:{*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)}];
    v17 = [*(a1 + 40) snippetAttributedString];
    v18 = *(*(a1 + 64) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;
  }
}

- (CGRect)titleAttributedStringInsideFrame
{
  x = self->_titleAttributedStringInsideFrame.origin.x;
  y = self->_titleAttributedStringInsideFrame.origin.y;
  width = self->_titleAttributedStringInsideFrame.size.width;
  height = self->_titleAttributedStringInsideFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)snippetAttributedStringInsideFrame
{
  x = self->_snippetAttributedStringInsideFrame.origin.x;
  y = self->_snippetAttributedStringInsideFrame.origin.y;
  width = self->_snippetAttributedStringInsideFrame.size.width;
  height = self->_snippetAttributedStringInsideFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end