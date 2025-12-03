@interface EMFAnchoredSearchManager
- (EMFAnchoredSearchAnchorsLoader)anchorsLoader;
- (EMFAnchoredSearchManager)initWithLocaleData:(id)data;
- (NSArray)localizedLeftHandAnchors;
- (NSArray)localizedRightHandAnchors;
- (void)_enumerateAnchoredReplacementCandidatesForContextLeft:(id)left withOptions:(unint64_t)options usingBlock:(id)block;
- (void)_enumerateAnchoredReplacementCandidatesForContextOmnidirectional:(id)omnidirectional withOptions:(unint64_t)options usingBlock:(id)block;
- (void)_enumerateAnchoredReplacementCandidatesForContextRight:(id)right withOptions:(unint64_t)options usingBlock:(id)block;
- (void)enumerateAnchoredReplacementCandidatesForContext:(id)context withOptions:(unint64_t)options usingBlock:(id)block;
@end

@implementation EMFAnchoredSearchManager

- (EMFAnchoredSearchManager)initWithLocaleData:(id)data
{
  v5.receiver = self;
  v5.super_class = EMFAnchoredSearchManager;
  result = [(EMFAnchoredSearchManager *)&v5 init];
  if (result)
  {
    result->_localeData = data;
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
    localeData = [(EMFAnchoredSearchManager *)self localeData];
    localeIdentifier = [localeData localeIdentifier];
    v8 = [(EMFAnchoredSearchAnchorsLoader *)v5 initWithLocaleIdentifier:localeIdentifier];

    v9 = self->_anchorsLoader;
    self->_anchorsLoader = v8;
    v10 = v8;

    v3 = self->_anchorsLoader;
  }

  return v3;
}

- (NSArray)localizedLeftHandAnchors
{
  anchorsLoader = [(EMFAnchoredSearchManager *)self anchorsLoader];
  leftHandAnchors = [anchorsLoader leftHandAnchors];

  return leftHandAnchors;
}

- (NSArray)localizedRightHandAnchors
{
  anchorsLoader = [(EMFAnchoredSearchManager *)self anchorsLoader];
  rightHandAnchors = [anchorsLoader rightHandAnchors];

  return rightHandAnchors;
}

- (void)enumerateAnchoredReplacementCandidatesForContext:(id)context withOptions:(unint64_t)options usingBlock:(id)block
{
  contextCopy = context;
  blockCopy = block;
  localizedLeftHandAnchors = [(EMFAnchoredSearchManager *)self localizedLeftHandAnchors];
  if (localizedLeftHandAnchors)
  {
    localizedLeftHandAnchors2 = [(EMFAnchoredSearchManager *)self localizedLeftHandAnchors];
    v11 = [localizedLeftHandAnchors2 count] != 0;
  }

  else
  {
    v11 = 0;
  }

  localizedRightHandAnchors = [(EMFAnchoredSearchManager *)self localizedRightHandAnchors];
  if (localizedRightHandAnchors)
  {
    v13 = localizedRightHandAnchors;
    localizedRightHandAnchors2 = [(EMFAnchoredSearchManager *)self localizedRightHandAnchors];
    v15 = [localizedRightHandAnchors2 count];

    if (v15 != 0 && v11)
    {
      [(EMFAnchoredSearchManager *)self _enumerateAnchoredReplacementCandidatesForContextOmnidirectional:contextCopy withOptions:options usingBlock:blockCopy];
      goto LABEL_13;
    }

    if (v11)
    {
      goto LABEL_10;
    }

    if (v15)
    {
      [(EMFAnchoredSearchManager *)self _enumerateAnchoredReplacementCandidatesForContextRight:contextCopy withOptions:options usingBlock:blockCopy];
    }
  }

  else if (v11)
  {
LABEL_10:
    [(EMFAnchoredSearchManager *)self _enumerateAnchoredReplacementCandidatesForContextLeft:contextCopy withOptions:options usingBlock:blockCopy];
  }

LABEL_13:
}

- (void)_enumerateAnchoredReplacementCandidatesForContextLeft:(id)left withOptions:(unint64_t)options usingBlock:(id)block
{
  leftCopy = left;
  blockCopy = block;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy__3;
  v18[4] = __Block_byref_object_dispose__3;
  v19 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v9 = objc_alloc_init(EMFContextBuilderLeftHand);
  v10 = [leftCopy length];
  localizedLeftHandAnchors = [(EMFAnchoredSearchManager *)self localizedLeftHandAnchors];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __105__EMFAnchoredSearchManager__enumerateAnchoredReplacementCandidatesForContextLeft_withOptions_usingBlock___block_invoke;
  v14[3] = &unk_1E7A5F8C0;
  v14[4] = self;
  v12 = leftCopy;
  v15 = v12;
  v17 = v18;
  v13 = blockCopy;
  v16 = v13;
  [(EMFContextBuilderLeftHand *)v9 enumerateWindowsForContext:v12 range:0 searchAnchors:v10 usingBlock:localizedLeftHandAnchors, v14];

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

- (void)_enumerateAnchoredReplacementCandidatesForContextRight:(id)right withOptions:(unint64_t)options usingBlock:(id)block
{
  rightCopy = right;
  blockCopy = block;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy__3;
  v18[4] = __Block_byref_object_dispose__3;
  v19 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v9 = objc_alloc_init(EMFContextBuilderRightHand);
  v10 = [rightCopy length];
  localizedRightHandAnchors = [(EMFAnchoredSearchManager *)self localizedRightHandAnchors];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __106__EMFAnchoredSearchManager__enumerateAnchoredReplacementCandidatesForContextRight_withOptions_usingBlock___block_invoke;
  v14[3] = &unk_1E7A5F8C0;
  v14[4] = self;
  v12 = rightCopy;
  v15 = v12;
  v17 = v18;
  v13 = blockCopy;
  v16 = v13;
  [(EMFContextBuilderRightHand *)v9 enumerateWindowsForContext:v12 range:0 searchAnchors:v10 usingBlock:localizedRightHandAnchors, v14];

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

- (void)_enumerateAnchoredReplacementCandidatesForContextOmnidirectional:(id)omnidirectional withOptions:(unint64_t)options usingBlock:(id)block
{
  blockCopy = block;
  omnidirectionalCopy = omnidirectional;
  [(EMFAnchoredSearchManager *)self _enumerateAnchoredReplacementCandidatesForContextLeft:omnidirectionalCopy withOptions:options usingBlock:blockCopy];
  [(EMFAnchoredSearchManager *)self _enumerateAnchoredReplacementCandidatesForContextRight:omnidirectionalCopy withOptions:options usingBlock:blockCopy];
}

@end