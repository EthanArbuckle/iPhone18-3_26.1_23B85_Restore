@interface EMFAnchoredSearchManager
- (EMFAnchoredSearchAnchorsLoader)anchorsLoader;
- (EMFAnchoredSearchManager)initWithLocaleData:(id)a3;
- (NSArray)localizedLeftHandAnchors;
- (NSArray)localizedRightHandAnchors;
- (void)_enumerateAnchoredReplacementCandidatesForContextLeft:(id)a3 withOptions:(unint64_t)a4 usingBlock:(id)a5;
- (void)_enumerateAnchoredReplacementCandidatesForContextOmnidirectional:(id)a3 withOptions:(unint64_t)a4 usingBlock:(id)a5;
- (void)_enumerateAnchoredReplacementCandidatesForContextRight:(id)a3 withOptions:(unint64_t)a4 usingBlock:(id)a5;
- (void)enumerateAnchoredReplacementCandidatesForContext:(id)a3 withOptions:(unint64_t)a4 usingBlock:(id)a5;
@end

@implementation EMFAnchoredSearchManager

- (EMFAnchoredSearchManager)initWithLocaleData:(id)a3
{
  v5.receiver = self;
  v5.super_class = EMFAnchoredSearchManager;
  result = [(EMFAnchoredSearchManager *)&v5 init];
  if (result)
  {
    result->_localeData = a3;
  }

  return result;
}

- (EMFAnchoredSearchAnchorsLoader)anchorsLoader
{
  anchorsLoader = self->_anchorsLoader;
  if (anchorsLoader)
  {
    v3 = anchorsLoader;
  }

  else
  {
    v5 = [EMFAnchoredSearchAnchorsLoader alloc];
    v6 = [(EMFAnchoredSearchManager *)self localeData];
    v7 = [v6 localeIdentifier];
    v8 = [(EMFAnchoredSearchAnchorsLoader *)v5 initWithLocaleIdentifier:v7];

    v9 = self->_anchorsLoader;
    self->_anchorsLoader = v8;
    v10 = v8;

    v3 = self->_anchorsLoader;
  }

  return v3;
}

- (NSArray)localizedLeftHandAnchors
{
  v2 = [(EMFAnchoredSearchManager *)self anchorsLoader];
  v3 = [v2 leftHandAnchors];

  return v3;
}

- (NSArray)localizedRightHandAnchors
{
  v2 = [(EMFAnchoredSearchManager *)self anchorsLoader];
  v3 = [v2 rightHandAnchors];

  return v3;
}

- (void)enumerateAnchoredReplacementCandidatesForContext:(id)a3 withOptions:(unint64_t)a4 usingBlock:(id)a5
{
  v16 = a3;
  v8 = a5;
  v9 = [(EMFAnchoredSearchManager *)self localizedLeftHandAnchors];
  if (v9)
  {
    v10 = [(EMFAnchoredSearchManager *)self localizedLeftHandAnchors];
    v11 = [v10 count] != 0;
  }

  else
  {
    v11 = 0;
  }

  v12 = [(EMFAnchoredSearchManager *)self localizedRightHandAnchors];
  if (v12)
  {
    v13 = v12;
    v14 = [(EMFAnchoredSearchManager *)self localizedRightHandAnchors];
    v15 = [v14 count];

    if (v15 != 0 && v11)
    {
      [(EMFAnchoredSearchManager *)self _enumerateAnchoredReplacementCandidatesForContextOmnidirectional:v16 withOptions:a4 usingBlock:v8];
      goto LABEL_13;
    }

    if (v11)
    {
      goto LABEL_10;
    }

    if (v15)
    {
      [(EMFAnchoredSearchManager *)self _enumerateAnchoredReplacementCandidatesForContextRight:v16 withOptions:a4 usingBlock:v8];
    }
  }

  else if (v11)
  {
LABEL_10:
    [(EMFAnchoredSearchManager *)self _enumerateAnchoredReplacementCandidatesForContextLeft:v16 withOptions:a4 usingBlock:v8];
  }

LABEL_13:
}

- (void)_enumerateAnchoredReplacementCandidatesForContextLeft:(id)a3 withOptions:(unint64_t)a4 usingBlock:(id)a5
{
  v7 = a3;
  v8 = a5;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy__3;
  v18[4] = __Block_byref_object_dispose__3;
  v19 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v9 = objc_alloc_init(EMFContextBuilderLeftHand);
  v10 = [v7 length];
  v11 = [(EMFAnchoredSearchManager *)self localizedLeftHandAnchors];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __105__EMFAnchoredSearchManager__enumerateAnchoredReplacementCandidatesForContextLeft_withOptions_usingBlock___block_invoke;
  v14[3] = &unk_1E7A5F8C0;
  v14[4] = self;
  v12 = v7;
  v15 = v12;
  v17 = v18;
  v13 = v8;
  v16 = v13;
  [(EMFContextBuilderLeftHand *)v9 enumerateWindowsForContext:v12 range:0 searchAnchors:v10 usingBlock:v11, v14];

  _Block_object_dispose(v18, 8);
}

void __105__EMFAnchoredSearchManager__enumerateAnchoredReplacementCandidatesForContextLeft_withOptions_usingBlock___block_invoke(id *a1)
{
  v2 = [a1[4] localeData];
  [v2 emojiLocaleDataRef];
  v3 = a1[5];
  v4 = a1[6];
  CEMEmojiLocaleDataEnumerateSearchResultsInStringWithBlock();
}

void __105__EMFAnchoredSearchManager__enumerateAnchoredReplacementCandidatesForContextLeft_withOptions_usingBlock___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (([*(*(*(a1 + 48) + 8) + 40) containsIndexesInRange:?] & 1) == 0)
  {
    v10 = a3 + a4;
    v11 = *(a1 + 64) + *(a1 + 56);
    if (a3 + a4 == v11 || v10 == v11 - 1 && (CharacterAtIndex = CFStringGetCharacterAtIndex(*(a1 + 32), v10), [MEMORY[0x1E696AB08] whitespaceCharacterSet], v16 = objc_claimAutoreleasedReturnValue(), LODWORD(CharacterAtIndex) = objc_msgSend(v16, "characterIsMember:", CharacterAtIndex), v16, CharacterAtIndex))
    {
      v12 = [EMFEmojiToken emojiTokensForCEMEmojiTokens:a2];
      v17 = [v12 mutableCopy];

      v13 = *(a1 + 80);
      v14 = *(a1 + 72) - a3;
      if ([v17 count] >= 2)
      {
        [v17 sortUsingComparator:&__block_literal_global_11];
      }

      if (([*(*(*(a1 + 48) + 8) + 40) containsIndexesInRange:{a3, v14 + v13}] & 1) == 0)
      {
        (*(*(a1 + 40) + 16))();
        [*(*(*(a1 + 48) + 8) + 40) addIndexesInRange:{a3, v14 + v13}];
        *a5 = 1;
      }
    }
  }
}

- (void)_enumerateAnchoredReplacementCandidatesForContextRight:(id)a3 withOptions:(unint64_t)a4 usingBlock:(id)a5
{
  v7 = a3;
  v8 = a5;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy__3;
  v18[4] = __Block_byref_object_dispose__3;
  v19 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v9 = objc_alloc_init(EMFContextBuilderRightHand);
  v10 = [v7 length];
  v11 = [(EMFAnchoredSearchManager *)self localizedRightHandAnchors];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __106__EMFAnchoredSearchManager__enumerateAnchoredReplacementCandidatesForContextRight_withOptions_usingBlock___block_invoke;
  v14[3] = &unk_1E7A5F8C0;
  v14[4] = self;
  v12 = v7;
  v15 = v12;
  v17 = v18;
  v13 = v8;
  v16 = v13;
  [(EMFContextBuilderRightHand *)v9 enumerateWindowsForContext:v12 range:0 searchAnchors:v10 usingBlock:v11, v14];

  _Block_object_dispose(v18, 8);
}

void __106__EMFAnchoredSearchManager__enumerateAnchoredReplacementCandidatesForContextRight_withOptions_usingBlock___block_invoke(id *a1)
{
  v2 = [a1[4] localeData];
  [v2 emojiLocaleDataRef];
  v3 = a1[5];
  v4 = a1[6];
  CEMEmojiLocaleDataEnumerateSearchResultsInStringWithBlock();
}

void __106__EMFAnchoredSearchManager__enumerateAnchoredReplacementCandidatesForContextRight_withOptions_usingBlock___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (([*(*(*(a1 + 48) + 8) + 40) containsIndexesInRange:?] & 1) == 0)
  {
    v10 = *(a1 + 56);
    if (a3 == v10 || a3 == v10 + 1 && (CharacterAtIndex = CFStringGetCharacterAtIndex(*(a1 + 32), v10), [MEMORY[0x1E696AB08] whitespaceCharacterSet], v15 = objc_claimAutoreleasedReturnValue(), LODWORD(CharacterAtIndex) = objc_msgSend(v15, "characterIsMember:", CharacterAtIndex), v15, CharacterAtIndex))
    {
      v11 = [EMFEmojiToken emojiTokensForCEMEmojiTokens:a2];
      v16 = [v11 mutableCopy];

      v12 = *(a1 + 72);
      v13 = a3 + a4 - v12;
      if ([v16 count] >= 2)
      {
        [v16 sortUsingComparator:&__block_literal_global_10];
      }

      (*(*(a1 + 40) + 16))();
      [*(*(*(a1 + 48) + 8) + 40) addIndexesInRange:{v12, v13}];
      *a5 = 1;
    }
  }
}

- (void)_enumerateAnchoredReplacementCandidatesForContextOmnidirectional:(id)a3 withOptions:(unint64_t)a4 usingBlock:(id)a5
{
  v8 = a5;
  v9 = a3;
  [(EMFAnchoredSearchManager *)self _enumerateAnchoredReplacementCandidatesForContextLeft:v9 withOptions:a4 usingBlock:v8];
  [(EMFAnchoredSearchManager *)self _enumerateAnchoredReplacementCandidatesForContextRight:v9 withOptions:a4 usingBlock:v8];
}

@end