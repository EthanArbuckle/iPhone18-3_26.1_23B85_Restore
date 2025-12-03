@interface ICSearchResult
+ (BOOL)canFitAttributedString:(id)string ellipses:(id)ellipses shouldPrefixWithEllipses:(BOOL)withEllipses insideFrame:(CGRect)frame centered:(BOOL)centered;
+ (CGRect)boundingRectForAttributedString:(id)string fittingSize:(CGSize)size;
+ (id)attributedStringWithMatchHighlighted:(id)highlighted optionalAttributedHighlightedString:(id)string textCheckingResult:(id)result usingAttributes:(id)attributes highlightColor:(id)color insideFrame:(CGRect)frame isSnippetForParticipantMatch:(BOOL)match finishingUpRegexMatchFinder:(id)self0;
+ (id)attributesByHighlightingAttributes:(id)attributes withHighlightColor:(id)color;
+ (id)authorNameToHighlightForNote:(id)note fromSearchResult:(id)result textCheckingResult:(id *)checkingResult;
+ (id)finishUpHighlightingWithMatchFinder:(id)finder forAttributedString:(id)string inRange:(_NSRange)range highlightedAttributes:(id)attributes;
+ (id)firstTextCheckingResultOfRegex:(id)regex inDocumentText:(id)text;
- (BOOL)isEqual:(id)equal;
- (CGRect)snippetAttributedStringInsideFrame;
- (CGRect)titleAttributedStringInsideFrame;
- (ICSearchResult)initWithMainContextObject:(id)object currentContextObject:(id)contextObject configuration:(id)configuration;
- (ICSearchResult)initWithObject:(id)object configuration:(id)configuration;
- (NSDictionary)decomposedHighlightInfo;
- (NSString)description;
- (id)attributedSummaryWithBaseAttributes:(id)attributes highlightColor:(id)color insideFrame:(CGRect)frame;
- (id)attributedTitleWithBaseAttributes:(id)attributes highlightColor:(id)color insideFrame:(CGRect)frame;
- (id)snippetWithBaseAttributes:(id)attributes highlightColor:(id)color insideFrame:(CGRect)frame;
- (int64_t)compareByModificationDate:(id)date;
- (void)initializeRegexes;
- (void)prepareDisplayingSnippetWithAccessingObject:(id)object;
- (void)prepareDisplayingTitleWithAccessingObject:(id)object;
- (void)prepareFirstMatchingRangeWithAccessingObject:(id)object;
- (void)refetchObjectFromContext:(id)context;
- (void)refreshDisplaySnippet;
- (void)refreshDisplayTitle;
- (void)refreshFirstMatchingRange;
@end

@implementation ICSearchResult

- (ICSearchResult)initWithObject:(id)object configuration:(id)configuration
{
  objectCopy = object;
  configurationCopy = configuration;
  v31.receiver = self;
  v31.super_class = ICSearchResult;
  v9 = [(ICSearchResult *)&v31 init];
  if (v9)
  {
    if (!objectCopy)
    {
      [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"object" functionName:"-[ICSearchResult initWithObject:configuration:]" simulateCrash:1 showAlert:0 format:@"object is nil"];
    }

    managedObjectContext = [objectCopy managedObjectContext];
    ic_isMainThreadContext = [managedObjectContext ic_isMainThreadContext];

    if (ic_isMainThreadContext)
    {
      objc_storeStrong(&v9->_object, object);
      objc_storeStrong(&v9->_currentContextObject, object);
    }

    else
    {
      v25 = 0;
      v26 = &v25;
      v27 = 0x3032000000;
      v28 = __Block_byref_object_copy__57;
      v29 = __Block_byref_object_dispose__57;
      v30 = 0;
      managedObjectContext2 = [objectCopy managedObjectContext];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __47__ICSearchResult_initWithObject_configuration___block_invoke;
      v22[3] = &unk_1E8468FA8;
      v24 = &v25;
      v23 = objectCopy;
      [managedObjectContext2 performBlockAndWait:v22];

      if (v26[5])
      {
        mEMORY[0x1E69B7AA8] = [MEMORY[0x1E69B7AA8] sharedIndexer];
        v14 = [mEMORY[0x1E69B7AA8] mainContextObjectForObjectIDURIString:v26[5]];
        object = v9->_object;
        v9->_object = v14;
      }

      else
      {
        mEMORY[0x1E69B7AA8] = os_log_create("com.apple.notes", "UI");
        if (os_log_type_enabled(mEMORY[0x1E69B7AA8], OS_LOG_TYPE_ERROR))
        {
          [ICSearchResult initWithObject:mEMORY[0x1E69B7AA8] configuration:?];
        }
      }

      _Block_object_dispose(&v25, 8);
    }

    objc_storeStrong(&v9->_configuration, configuration);
    v16 = [(ICSearchIndexable *)v9->_object hash];
    v9->_cachedHash = [configurationCopy hash] + v16;
    [(ICSearchResult *)v9 initializeRegexes];
    managedObjectContext3 = [objectCopy managedObjectContext];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __47__ICSearchResult_initWithObject_configuration___block_invoke_15;
    v19[3] = &unk_1E8468F80;
    v20 = v9;
    v21 = objectCopy;
    [managedObjectContext3 performBlockAndWait:v19];
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

- (ICSearchResult)initWithMainContextObject:(id)object currentContextObject:(id)contextObject configuration:(id)configuration
{
  objectCopy = object;
  contextObjectCopy = contextObject;
  configurationCopy = configuration;
  v19.receiver = self;
  v19.super_class = ICSearchResult;
  v12 = [(ICSearchResult *)&v19 init];
  if (v12)
  {
    if (objectCopy)
    {
      if (contextObjectCopy)
      {
LABEL_4:
        objc_storeStrong(&v12->_object, object);
        objc_storeStrong(&v12->_currentContextObject, contextObject);
        objc_storeStrong(&v12->_configuration, configuration);
        v13 = [objectCopy hash];
        v12->_cachedHash = [configurationCopy hash] + v13;
        [(ICSearchResult *)v12 initializeRegexes];
        managedObjectContext = [contextObjectCopy managedObjectContext];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __79__ICSearchResult_initWithMainContextObject_currentContextObject_configuration___block_invoke;
        v16[3] = &unk_1E8468F80;
        v17 = v12;
        v18 = contextObjectCopy;
        [managedObjectContext performBlockAndWait:v16];

        goto LABEL_5;
      }
    }

    else
    {
      [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"mainContextObject" functionName:"-[ICSearchResult initWithMainContextObject:currentContextObject:configuration:]" simulateCrash:1 showAlert:0 format:@"mainContextObject is nil"];
      if (contextObjectCopy)
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
  decomposedHighlightInfo = [(ICSearchResult *)self decomposedHighlightInfo];
  v4 = [decomposedHighlightInfo objectForKeyedSubscript:&unk_1F4FC4008];
  if (v4)
  {
    v5 = [ICSearchResultRegexMatchFinder alloc];
    v6 = [v4 objectForKeyedSubscript:&unk_1F4FC4020];
    v7 = [v4 objectForKeyedSubscript:&unk_1F4FC4038];
    configuration = [(ICSearchResult *)self configuration];
    searchString = [configuration searchString];
    v10 = [(ICSearchResultRegexMatchFinder *)v5 initWithPrefixMatchingTokens:v6 substringMatchingTokens:v7 searchString:searchString];
    [(ICSearchResult *)self setTitleHighlightRegexMatchFinder:v10];
  }

  v11 = [decomposedHighlightInfo objectForKeyedSubscript:&unk_1F4FC4050];
  if (v11)
  {
    v12 = [ICSearchResultRegexMatchFinder alloc];
    v13 = [v11 objectForKeyedSubscript:&unk_1F4FC4020];
    v14 = [v11 objectForKeyedSubscript:&unk_1F4FC4038];
    configuration2 = [(ICSearchResult *)self configuration];
    searchString2 = [configuration2 searchString];
    v17 = [(ICSearchResultRegexMatchFinder *)v12 initWithPrefixMatchingTokens:v13 substringMatchingTokens:v14 searchString:searchString2];
    [(ICSearchResult *)self setParticipantHighlightRegexMatchFinder:v17];
  }

  v37 = decomposedHighlightInfo;
  v18 = [decomposedHighlightInfo objectForKeyedSubscript:&unk_1F4FC4068];
  if (v18)
  {
    v19 = [ICSearchResultRegexMatchFinder alloc];
    v20 = [v18 objectForKeyedSubscript:&unk_1F4FC4020];
    v21 = [v18 objectForKeyedSubscript:&unk_1F4FC4038];
    configuration3 = [(ICSearchResult *)self configuration];
    searchString3 = [configuration3 searchString];
    v24 = [(ICSearchResultRegexMatchFinder *)v19 initWithPrefixMatchingTokens:v20 substringMatchingTokens:v21 searchString:searchString3];
    [(ICSearchResult *)self setSnippetHighlightRegexMatchFinder:v24];
  }

  v25 = [MEMORY[0x1E695DF20] mergeFieldElement:v4 withElement:v18];
  v26 = [ICSearchResultRegexMatchFinder alloc];
  v27 = [v25 objectForKeyedSubscript:&unk_1F4FC4020];
  v28 = [v25 objectForKeyedSubscript:&unk_1F4FC4038];
  configuration4 = [(ICSearchResult *)self configuration];
  searchString4 = [configuration4 searchString];
  v31 = [(ICSearchResultRegexMatchFinder *)v26 initWithPrefixMatchingTokens:v27 substringMatchingTokens:v28 searchString:searchString4];
  [(ICSearchResult *)self setHighlightPatternRegexFinder:v31];

  v32 = MEMORY[0x1E696AE70];
  configuration5 = [(ICSearchResult *)self configuration];
  searchString5 = [configuration5 searchString];
  v38[0] = searchString5;
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
    configuration = [(ICSearchResult *)self configuration];
    sortableSearchableItem = [configuration sortableSearchableItem];
    highlightInfo = [sortableSearchableItem highlightInfo];
    v8 = [v4 decomposedHighlightInfo:highlightInfo];
    v9 = self->_decomposedHighlightInfo;
    self->_decomposedHighlightInfo = v8;

    decomposedHighlightInfo = self->_decomposedHighlightInfo;
  }

  return decomposedHighlightInfo;
}

- (void)refreshDisplayTitle
{
  object = [(ICSearchResult *)self object];
  managedObjectContext = [object managedObjectContext];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__ICSearchResult_refreshDisplayTitle__block_invoke;
  v5[3] = &unk_1E8468BA0;
  v5[4] = self;
  [managedObjectContext performBlockAndWait:v5];
}

void __37__ICSearchResult_refreshDisplayTitle__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 object];
  [v1 prepareDisplayingTitleWithAccessingObject:v2];
}

- (void)refreshDisplaySnippet
{
  object = [(ICSearchResult *)self object];
  managedObjectContext = [object managedObjectContext];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__ICSearchResult_refreshDisplaySnippet__block_invoke;
  v5[3] = &unk_1E8468BA0;
  v5[4] = self;
  [managedObjectContext performBlockAndWait:v5];
}

void __39__ICSearchResult_refreshDisplaySnippet__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 object];
  [v1 prepareDisplayingSnippetWithAccessingObject:v2];
}

- (void)refreshFirstMatchingRange
{
  object = [(ICSearchResult *)self object];
  managedObjectContext = [object managedObjectContext];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__ICSearchResult_refreshFirstMatchingRange__block_invoke;
  v5[3] = &unk_1E8468BA0;
  v5[4] = self;
  [managedObjectContext performBlockAndWait:v5];
}

void __43__ICSearchResult_refreshFirstMatchingRange__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 object];
  [v1 prepareFirstMatchingRangeWithAccessingObject:v2];
}

- (void)prepareDisplayingTitleWithAccessingObject:(id)object
{
  objectCopy = object;
  [(ICSearchResult *)self setTitleAttributedStringInsideFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(ICSearchResult *)self setDisplayingTitle:0];
  [(ICSearchResult *)self setDisplayingTitleCheckingResult:0];
  if (objc_opt_respondsToSelector())
  {
    v4 = objectCopy;
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
  ic_whitespaceAndNewlineCoalescedString = [v8 ic_whitespaceAndNewlineCoalescedString];

  if (ic_whitespaceAndNewlineCoalescedString)
  {
    [(ICSearchResult *)self setDisplayingTitle:ic_whitespaceAndNewlineCoalescedString];
    titleHighlightRegexMatchFinder = [(ICSearchResult *)self titleHighlightRegexMatchFinder];
    displayingTitle = [(ICSearchResult *)self displayingTitle];
    v12 = [titleHighlightRegexMatchFinder firstMatchInDocumentWithGlobalFallback:displayingTitle];
    [(ICSearchResult *)self setDisplayingTitleCheckingResult:v12];
  }

  if (v5)
  {
    trimmedAttributedTitle = [v5 trimmedAttributedTitle];
    if (trimmedAttributedTitle)
    {
      v14 = trimmedAttributedTitle;
      [(ICSearchResult *)self setDisplayingAttributedTitle:trimmedAttributedTitle];
    }
  }
}

- (void)prepareDisplayingSnippetWithAccessingObject:(id)object
{
  objectCopy = object;
  [(ICSearchResult *)self setSnippetAttributedStringInsideFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(ICSearchResult *)self setDisplayingSnippet:0];
  [(ICSearchResult *)self setDisplayingSnippetCheckingResult:0];
  [(ICSearchResult *)self setIsDisplayingParticipantMatch:0];
  if (objc_opt_respondsToSelector())
  {
    v5 = objectCopy;
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
      snippetHighlightRegexMatchFinder = ICDynamicCast();
      displayingSnippet3 = [MEMORY[0x1E69B77F0] snippetForPasswordProtectedNote:snippetHighlightRegexMatchFinder];
      [(ICSearchResult *)self setDisplayingSnippet:displayingSnippet3];
LABEL_16:

      goto LABEL_17;
    }

    participantHighlightRegexMatchFinder = [(ICSearchResult *)self participantHighlightRegexMatchFinder];

    if (participantHighlightRegexMatchFinder)
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

        displayingSnippet = [(ICSearchResult *)self displayingSnippet];
        v17 = [displayingSnippet rangeOfString:v11];

        v18 = [ICSearchTextCheckingResult alloc];
        range = [v12 range];
        [v12 range];
        v21 = [(ICSearchTextCheckingResult *)v18 initWithRange:range + v17, v20];

        [(ICSearchResult *)self setDisplayingSnippetCheckingResult:v21];
        [(ICSearchResult *)self setIsDisplayingParticipantMatch:1];
        v12 = v21;
      }
    }

    displayingSnippet2 = [(ICSearchResult *)self displayingSnippet];
    if (!displayingSnippet2 || (v23 = displayingSnippet2, [(ICSearchResult *)self displayingSnippetCheckingResult], v24 = objc_claimAutoreleasedReturnValue(), v24, v23, !v24))
    {
      noteAsPlainTextWithoutTitle = [v7 noteAsPlainTextWithoutTitle];
      ic_whitespaceAndNewlineCoalescedString = [noteAsPlainTextWithoutTitle ic_whitespaceAndNewlineCoalescedString];
      [(ICSearchResult *)self setDisplayingSnippet:ic_whitespaceAndNewlineCoalescedString];

      noteWithoutTitle = [v7 noteWithoutTitle];
      v28 = *MEMORY[0x1E69DB5F0];
      noteWithoutTitle2 = [v7 noteWithoutTitle];
      ic_range = [noteWithoutTitle2 ic_range];
      LODWORD(v28) = [noteWithoutTitle ic_containsAttribute:v28 inRange:{ic_range, v31}];

      if (v28)
      {
        noteWithoutTitle3 = [v7 noteWithoutTitle];
        ic_whitespaceAndNewlineCoalescedAttributedString = [noteWithoutTitle3 ic_whitespaceAndNewlineCoalescedAttributedString];
        [(ICSearchResult *)self setDisplayingAttributedSnippet:ic_whitespaceAndNewlineCoalescedAttributedString];
      }

      snippetHighlightRegexMatchFinder = [(ICSearchResult *)self snippetHighlightRegexMatchFinder];
      displayingSnippet3 = [(ICSearchResult *)self displayingSnippet];
      v34 = [snippetHighlightRegexMatchFinder firstMatchInDocumentWithGlobalFallback:displayingSnippet3];
      [(ICSearchResult *)self setDisplayingSnippetCheckingResult:v34];

      goto LABEL_16;
    }
  }

LABEL_17:
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [equalCopy isMemberOfClass:objc_opt_class()] && self->_object == *(equalCopy + 4) && -[ICSearchResultConfiguration isEqual:](self->_configuration, "isEqual:", *(equalCopy + 5));

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  configuration = [(ICSearchResult *)self configuration];
  searchString = [configuration searchString];
  v6 = [searchString hash];
  object = [(ICSearchResult *)self object];
  searchIndexingIdentifier = [object searchIndexingIdentifier];
  v9 = [v3 stringWithFormat:@"(searchStringHash = %lu) %@", v6, searchIndexingIdentifier];

  return v9;
}

- (int64_t)compareByModificationDate:(id)date
{
  dateCopy = date;
  object = [(ICSearchResult *)self object];
  modificationDate = [object modificationDate];
  object2 = [dateCopy object];

  modificationDate2 = [object2 modificationDate];
  v9 = [modificationDate compare:modificationDate2];

  return v9;
}

- (void)refetchObjectFromContext:(id)context
{
  contextCopy = context;
  if (contextCopy)
  {
    objectID = [(ICSearchIndexable *)self->_object objectID];

    if (objectID)
    {
      objectID2 = [(ICSearchIndexable *)self->_object objectID];
      v6 = [contextCopy existingObjectWithID:objectID2 error:0];
      object = self->_object;
      self->_object = v6;
    }
  }
}

- (id)attributedSummaryWithBaseAttributes:(id)attributes highlightColor:(id)color insideFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  attributesCopy = attributes;
  colorCopy = color;
  configuration = [(ICSearchResult *)self configuration];
  foundAttachmentObjectID = [configuration foundAttachmentObjectID];

  if (foundAttachmentObjectID)
  {
    v15 = __ICLocalizedFrameworkString_impl(@"Found in attachments", @"Found in attachments", 0, 1);
    height = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v15];
  }

  else
  {
    height = [(ICSearchResult *)self snippetWithBaseAttributes:attributesCopy highlightColor:colorCopy insideFrame:x, y, width, height];
  }

  return height;
}

- (void)prepareFirstMatchingRangeWithAccessingObject:(id)object
{
  objectCopy = object;
  [(ICSearchResult *)self setFirstMatchingRangeInNote:0];
  searchResultType = [objectCopy searchResultType];
  if (searchResultType == 1)
  {
    objc_opt_class();
    v17 = ICDynamicCast();
    v5 = v17;
    if (!v17)
    {
      goto LABEL_20;
    }

    rangeInNote = [v17 rangeInNote];
    if (rangeInNote == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_20;
    }

    v7 = [MEMORY[0x1E696B098] valueWithRange:{rangeInNote, v19}];
    selfCopy2 = self;
    v21 = v7;
LABEL_10:
    [(ICSearchResult *)selfCopy2 setFirstMatchingRangeInNote:v21];
    goto LABEL_19;
  }

  if (searchResultType)
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
    searchableString = [v5 searchableString];
    highlightPatternRegexFinder = [(ICSearchResult *)self highlightPatternRegexFinder];
    string = [searchableString string];
    v11 = [highlightPatternRegexFinder firstMatchInDocumentWithGlobalFallback:string];

    if (v11)
    {
      range = [v11 range];
      v14 = [v5 textRangeForSearchRange:range inSearchableString:{v13, searchableString}];
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
    displayingSnippetCheckingResult = [(ICSearchResult *)self displayingSnippetCheckingResult];
    if (displayingSnippetCheckingResult)
    {
      searchableString = displayingSnippetCheckingResult;
LABEL_17:
      v25 = MEMORY[0x1E696B098];
      range2 = [searchableString range];
      v11 = [v25 valueWithRange:{range2, v27}];
      [(ICSearchResult *)self setFirstMatchingRangeInNote:v11];
LABEL_18:

      goto LABEL_19;
    }

    contentAsPlainTextPreservingNewlines = [v7 contentAsPlainTextPreservingNewlines];
    highlightPatternRegexFinder2 = [(ICSearchResult *)self highlightPatternRegexFinder];
    searchableString = [highlightPatternRegexFinder2 firstMatchInDocumentWithGlobalFallback:contentAsPlainTextPreservingNewlines];

    if (searchableString)
    {
      goto LABEL_17;
    }

    selfCopy2 = self;
    v21 = 0;
    goto LABEL_10;
  }

LABEL_19:

LABEL_20:
LABEL_21:
}

+ (CGRect)boundingRectForAttributedString:(id)string fittingSize:(CGSize)size
{
  [string boundingRectWithSize:3 options:0 context:{size.width + size.width, size.height + size.height}];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

+ (BOOL)canFitAttributedString:(id)string ellipses:(id)ellipses shouldPrefixWithEllipses:(BOOL)withEllipses insideFrame:(CGRect)frame centered:(BOOL)centered
{
  centeredCopy = centered;
  height = frame.size.height;
  width = frame.size.width;
  withEllipsesCopy = withEllipses;
  stringCopy = string;
  ellipsesCopy = ellipses;
  v15 = stringCopy;
  v16 = v15;
  v17 = v15;
  if (withEllipsesCopy)
  {
    v18 = [v15 mutableCopy];
    [v18 insertAttributedString:ellipsesCopy atIndex:0];
    v17 = [v18 copy];
  }

  [ellipsesCopy size];
  [self boundingRectForAttributedString:ellipsesCopy fittingSize:width];
  v20 = 1.0;
  if (centeredCopy)
  {
    v20 = 0.5;
  }

  v21 = width * v20;
  v22 = fmax(height, ceil(v19));
  [self boundingRectForAttributedString:v17 fittingSize:{v21, v22}];
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

+ (id)attributesByHighlightingAttributes:(id)attributes withHighlightColor:(id)color
{
  colorCopy = color;
  if (colorCopy)
  {
    tintColor = colorCopy;
    attributesCopy = attributes;
  }

  else
  {
    v8 = MEMORY[0x1E69DC888];
    attributesCopy2 = attributes;
    tintColor = [v8 tintColor];
  }

  if (attributes)
  {
    attributesCopy3 = attributes;
  }

  else
  {
    attributesCopy3 = MEMORY[0x1E695E0F8];
  }

  v11 = [attributesCopy3 mutableCopy];

  [v11 setObject:tintColor forKeyedSubscript:*MEMORY[0x1E69DB650]];
  v12 = [v11 copy];

  return v12;
}

+ (id)attributedStringWithMatchHighlighted:(id)highlighted optionalAttributedHighlightedString:(id)string textCheckingResult:(id)result usingAttributes:(id)attributes highlightColor:(id)color insideFrame:(CGRect)frame isSnippetForParticipantMatch:(BOOL)match finishingUpRegexMatchFinder:(id)self0
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  highlightedCopy = highlighted;
  stringCopy = string;
  resultCopy = result;
  attributesCopy = attributes;
  colorCopy = color;
  v24 = highlightedCopy;
  finderCopy = finder;
  if (highlightedCopy)
  {
    if (stringCopy)
    {
      v25 = [highlightedCopy length];
      if (v25 != [stringCopy length])
      {
        [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"attributedHighlightedString == ((void*)0) || string == ((void*)0) || string.length == attributedHighlightedString.length" functionName:"+[ICSearchResult attributedStringWithMatchHighlighted:optionalAttributedHighlightedString:textCheckingResult:usingAttributes:highlightColor:insideFrame:isSnippetForParticipantMatch:finishingUpRegexMatchFinder:]" simulateCrash:1 showAlert:0 format:@"Unsupported use of method."];
      }
    }
  }

  v77 = attributesCopy;
  v26 = [attributesCopy copy];
  v27 = v26;
  v28 = MEMORY[0x1E695E0F8];
  if (v26)
  {
    v28 = v26;
  }

  v29 = v28;

  v76 = colorCopy;
  v30 = [self attributesByHighlightingAttributes:v29 withHighlightColor:colorCopy];
  v78 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"…" attributes:v29];
  v31 = &off_1D4433000;
  if (resultCopy)
  {
    range = [resultCopy range];
    v34 = [highlightedCopy paragraphRangeForRange:{range, v33}];
    v36 = v35;
    v37 = ([resultCopy range] - v34);
    [resultCopy range];
    v39 = v38;
    v73 = v24;
    if (stringCopy)
    {
      v40 = [stringCopy attributedSubstringFromRange:{v34, v36}];
      v41 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:v40];
      ic_range = [v41 ic_range];
      [v41 addAttributes:v29 range:{ic_range, v43}];
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
      if (match || (v92 = v37, [v41 string], v48 = objc_claimAutoreleasedReturnValue(), v95[0] = MEMORY[0x1E69E9820], v95[1] = 3221225472, v95[2] = __210__ICSearchResult_attributedStringWithMatchHighlighted_optionalAttributedHighlightedString_textCheckingResult_usingAttributes_highlightColor_insideFrame_isSnippetForParticipantMatch_finishingUpRegexMatchFinder___block_invoke, v95[3] = &unk_1E846D6F8, v99 = v37, v100 = v39, v72 = v41, v96 = v72, v101 = self, v49 = v78, v102 = x, v103 = y, v104 = width, v105 = height, v106 = match, v97 = v49, v98 = &v89, objc_msgSend(v48, "enumerateSubstringsInRange:options:usingBlock:", 0, &v37[v39], 259, v95), v48, v97, v96, !v90[3]))
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
        string = [v72 string];
        LODWORD(v51) = [v51 ic_isCharacterInlineAttachmentPrefix:{objc_msgSend(string, "characterAtIndex:", v90[3] - 1)}];
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

  v44 = stringCopy;
  if (stringCopy)
  {
    v41 = v44;
    stringCopy = v44;
LABEL_28:
    v57 = [v41 mutableCopy];
    ic_range2 = [v41 ic_range];
    [v57 addAttributes:v29 range:{ic_range2, v59}];
    v47 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithAttributedString:v57];

LABEL_29:
    goto LABEL_30;
  }

  stringCopy = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:highlightedCopy];
  v107[0] = 0;
  v56 = [MEMORY[0x1E69B7A90] snippetForAttributedContent:stringCopy attributedSnippetIfNecessary:v107];
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

  ic_attributedStringByReplacingNewlineCharactersWithWhiteSpace = [v47 ic_attributedStringByReplacingNewlineCharactersWithWhiteSpace];

  v62 = [objc_opt_class() finishUpHighlightingWithMatchFinder:finderCopy forAttributedString:ic_attributedStringByReplacingNewlineCharactersWithWhiteSpace inRange:0 highlightedAttributes:{objc_msgSend(ic_attributedStringByReplacingNewlineCharactersWithWhiteSpace, "length"), v30}];

  v89 = 0;
  v90 = &v89;
  v91 = 0x3010000000;
  v93 = 0;
  v94 = 0;
  v92 = &unk_1D449C2A9;
  string2 = [v62 string];
  v64 = [v62 length];
  v80[0] = MEMORY[0x1E69E9820];
  v80[1] = *(v31 + 491);
  v80[2] = __210__ICSearchResult_attributedStringWithMatchHighlighted_optionalAttributedHighlightedString_textCheckingResult_usingAttributes_highlightColor_insideFrame_isSnippetForParticipantMatch_finishingUpRegexMatchFinder___block_invoke_2;
  v80[3] = &unk_1E846D720;
  v83 = &v89;
  v65 = v62;
  v81 = v65;
  selfCopy = self;
  v66 = v78;
  v82 = v66;
  v85 = x;
  v86 = y;
  v87 = width;
  v88 = height;
  [string2 enumerateSubstringsInRange:0 options:v64 usingBlock:{5, v80}];

  v67 = [objc_opt_class() finishUpHighlightingWithMatchFinder:finderCopy forAttributedString:v65 inRange:v90[4] highlightedAttributes:{v90[5], v30}];

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

+ (id)finishUpHighlightingWithMatchFinder:(id)finder forAttributedString:(id)string inRange:(_NSRange)range highlightedAttributes:(id)attributes
{
  length = range.length;
  location = range.location;
  v37 = *MEMORY[0x1E69E9840];
  finderCopy = finder;
  stringCopy = string;
  attributesCopy = attributes;
  v13 = stringCopy;
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

  string = [v16 string];
  v19 = [finderCopy matchesInDocumentWithPerTokenFallback:string];

  v20 = v14;
  if ([v19 count])
  {
    v31 = finderCopy;
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

          range = [*(*(&v32 + 1) + 8 * v26) range];
          [v21 addAttributes:attributesCopy range:{range + v15, v28}];
          ++v26;
        }

        while (v24 != v26);
        v24 = [v22 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v24);
    }

    v20 = [v21 copy];
    finderCopy = v31;
  }

  v29 = v20;

  return v20;
}

- (id)attributedTitleWithBaseAttributes:(id)attributes highlightColor:(id)color insideFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  colorCopy = color;
  attributesCopy = attributes;
  displayingTitle = [(ICSearchResult *)self displayingTitle];
  displayingAttributedTitle = [(ICSearchResult *)self displayingAttributedTitle];
  displayingTitleCheckingResult = [(ICSearchResult *)self displayingTitleCheckingResult];
  titleHighlightRegexMatchFinder = [(ICSearchResult *)self titleHighlightRegexMatchFinder];
  v17 = [ICSearchResult attributedStringWithMatchHighlighted:displayingTitle optionalAttributedHighlightedString:displayingAttributedTitle textCheckingResult:displayingTitleCheckingResult usingAttributes:attributesCopy highlightColor:colorCopy insideFrame:0 isSnippetForParticipantMatch:x finishingUpRegexMatchFinder:y, width, height, titleHighlightRegexMatchFinder];

  [(ICSearchResult *)self setTitleAttributedString:v17];
  [(ICSearchResult *)self setTitleAttributedStringInsideFrame:x, y, width, height];

  return [(ICSearchResult *)self titleAttributedString];
}

+ (id)authorNameToHighlightForNote:(id)note fromSearchResult:(id)result textCheckingResult:(id *)checkingResult
{
  v46 = *MEMORY[0x1E69E9840];
  noteCopy = note;
  resultCopy = result;
  participantHighlightRegexMatchFinder = [resultCopy participantHighlightRegexMatchFinder];

  if (participantHighlightRegexMatchFinder)
  {
    checkingResultCopy = checkingResult;
    displayingTitleCheckingResult = [resultCopy displayingTitleCheckingResult];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v30 = noteCopy;
    authorsExcludingCurrentUser = [noteCopy authorsExcludingCurrentUser];
    v35 = [authorsExcludingCurrentUser countByEnumeratingWithState:&v40 objects:v45 count:16];
    v12 = 0;
    if (v35)
    {
      v13 = *v41;
      v32 = authorsExcludingCurrentUser;
      v33 = displayingTitleCheckingResult;
      v31 = *v41;
      while (2)
      {
        v14 = 0;
        v15 = v12;
        do
        {
          if (*v41 != v13)
          {
            objc_enumerationMutation(authorsExcludingCurrentUser);
          }

          v16 = *(*(&v40 + 1) + 8 * v14);
          ic_localizedNameWithDefaultFormattingStyle = [v16 ic_localizedNameWithDefaultFormattingStyle];
          participantHighlightRegexMatchFinder2 = [resultCopy participantHighlightRegexMatchFinder];
          v12 = [participantHighlightRegexMatchFinder2 firstMatchInDocumentWithGlobalFallback:ic_localizedNameWithDefaultFormattingStyle];

          if (v12)
          {
            if (displayingTitleCheckingResult)
            {
              v38 = 0u;
              v39 = 0u;
              v36 = 0u;
              v37 = 0u;
              ic_componentsForSearchHighlighting = [v16 ic_componentsForSearchHighlighting];
              v20 = [ic_componentsForSearchHighlighting countByEnumeratingWithState:&v36 objects:v44 count:16];
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
                      objc_enumerationMutation(ic_componentsForSearchHighlighting);
                    }

                    v23 = *(*(&v36 + 1) + 8 * i);
                    configuration = [resultCopy configuration];
                    searchString = [configuration searchString];
                    v26 = [v23 compare:searchString options:1];

                    if (!v26)
                    {
                      v20 = ic_localizedNameWithDefaultFormattingStyle;
                      goto LABEL_20;
                    }
                  }

                  v20 = [ic_componentsForSearchHighlighting countByEnumeratingWithState:&v36 objects:v44 count:16];
                  if (v20)
                  {
                    continue;
                  }

                  break;
                }

LABEL_20:
                authorsExcludingCurrentUser = v32;
                displayingTitleCheckingResult = v33;
                v12 = v34;
                v13 = v31;
              }
            }

            else
            {
              v20 = ic_localizedNameWithDefaultFormattingStyle;
            }

            if (v20)
            {

              if (checkingResultCopy)
              {
                v27 = v12;
                *checkingResultCopy = v12;
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
        v35 = [authorsExcludingCurrentUser countByEnumeratingWithState:&v40 objects:v45 count:16];
        if (v35)
        {
          continue;
        }

        break;
      }
    }

    v20 = 0;
LABEL_31:
    noteCopy = v30;
  }

  else
  {
    v20 = 0;
    if (checkingResult)
    {
      *checkingResult = 0;
    }
  }

  return v20;
}

+ (id)firstTextCheckingResultOfRegex:(id)regex inDocumentText:(id)text
{
  regexCopy = regex;
  textCopy = text;
  v7 = [textCopy length];
  v8 = 0;
  if (regexCopy && v7)
  {
    v8 = [regexCopy firstMatchInString:textCopy options:0 range:{0, objc_msgSend(textCopy, "length")}];
  }

  return v8;
}

- (id)snippetWithBaseAttributes:(id)attributes highlightColor:(id)color insideFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  attributesCopy = attributes;
  colorCopy = color;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__57;
  v36 = __Block_byref_object_dispose__57;
  v37 = 0;
  displayingSnippet = [(ICSearchResult *)self displayingSnippet];
  if (displayingSnippet)
  {

LABEL_4:
    object = [(ICSearchResult *)self object];
    if (objc_opt_respondsToSelector())
    {
      object2 = [(ICSearchResult *)self object];
    }

    else
    {
      object2 = 0;
    }

    object3 = [(ICSearchResult *)self object];
    managedObjectContext = [object3 managedObjectContext];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __71__ICSearchResult_snippetWithBaseAttributes_highlightColor_insideFrame___block_invoke;
    v22[3] = &unk_1E846D748;
    v19 = object2;
    v23 = v19;
    selfCopy = self;
    v25 = attributesCopy;
    v27 = &v32;
    v26 = colorCopy;
    v28 = x;
    v29 = y;
    v30 = width;
    v31 = height;
    [managedObjectContext performBlockAndWait:v22];

    goto LABEL_8;
  }

  displayingAttributedSnippet = [(ICSearchResult *)self displayingAttributedSnippet];

  if (displayingAttributedSnippet)
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