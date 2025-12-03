@interface ICTextAttachmentLocationCache
- (BOOL)validateLocation:(unint64_t)location againstViewIdentifier:(id)identifier;
- (ICLayoutManager)layoutManager;
- (ICTextAttachmentLocationCache)initWithLayoutManager:(id)manager cachedTextAttachmentType:(Class)type;
- (NSMutableDictionary)locationByTextAttachmentIdentifier;
- (unint64_t)locationForTextAttachmentOfViewIdentifier:(id)identifier keyExistsBeforeEnumeration:(BOOL *)enumeration validationSuccessful:(BOOL *)successful stepsOfEnumeration:(unint64_t *)ofEnumeration;
- (unint64_t)nextLocationForRange:(_NSRange)range;
- (void)clear;
- (void)enumerateTextAttachmentsInRangeWithFirstEnumerateRangeResult:(_NSRange *)result secondEnumerateRangeResult:(_NSRange *)rangeResult usingBlock:(id)block;
- (void)forgetLocationForViewIdentifier:(id)identifier;
- (void)setLocation:(unint64_t)location forTextAttachmentOfViewIdentifier:(id)identifier;
@end

@implementation ICTextAttachmentLocationCache

- (NSMutableDictionary)locationByTextAttachmentIdentifier
{
  locationByTextAttachmentIdentifier = self->_locationByTextAttachmentIdentifier;
  if (!locationByTextAttachmentIdentifier)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v5 = self->_locationByTextAttachmentIdentifier;
    self->_locationByTextAttachmentIdentifier = v4;

    locationByTextAttachmentIdentifier = self->_locationByTextAttachmentIdentifier;
  }

  return locationByTextAttachmentIdentifier;
}

- (ICTextAttachmentLocationCache)initWithLayoutManager:(id)manager cachedTextAttachmentType:(Class)type
{
  managerCopy = manager;
  v10.receiver = self;
  v10.super_class = ICTextAttachmentLocationCache;
  v7 = [(ICTextAttachmentLocationCache *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_layoutManager, managerCopy);
    v8->_previousScanHaltLocation = 0;
    objc_storeStrong(&v8->_cachedTextAttachmentType, type);
  }

  return v8;
}

- (unint64_t)locationForTextAttachmentOfViewIdentifier:(id)identifier keyExistsBeforeEnumeration:(BOOL *)enumeration validationSuccessful:(BOOL *)successful stepsOfEnumeration:(unint64_t *)ofEnumeration
{
  identifierCopy = identifier;
  v11 = identifierCopy;
  if (identifierCopy)
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__16;
    v33 = __Block_byref_object_dispose__16;
    v12 = identifierCopy;
    v34 = v12;
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__16;
    v27 = __Block_byref_object_dispose__16;
    locationByTextAttachmentIdentifier = [(ICTextAttachmentLocationCache *)self locationByTextAttachmentIdentifier];
    v28 = [locationByTextAttachmentIdentifier objectForKeyedSubscript:v30[5]];

    v14 = v24;
    if (enumeration)
    {
      *enumeration = v24[5] != 0;
    }

    v15 = v14[5];
    if (v15)
    {
      unsignedIntegerValue = [v15 unsignedIntegerValue];
      if (![(ICTextAttachmentLocationCache *)self validateLocation:unsignedIntegerValue againstViewIdentifier:v30[5]])
      {
        locationByTextAttachmentIdentifier2 = [(ICTextAttachmentLocationCache *)self locationByTextAttachmentIdentifier];
        [locationByTextAttachmentIdentifier2 removeObjectForKey:v12];

        v18 = v24[5];
        v24[5] = 0;
      }
    }

    if (successful)
    {
      *successful = v24[5] != 0;
    }

    if (ofEnumeration)
    {
      *ofEnumeration = 0;
    }

    v19 = v24[5];
    if (v19 || (v22[0] = MEMORY[0x277D85DD0], v22[1] = 3221225472, v22[2] = __142__ICTextAttachmentLocationCache_locationForTextAttachmentOfViewIdentifier_keyExistsBeforeEnumeration_validationSuccessful_stepsOfEnumeration___block_invoke, v22[3] = &unk_2781AEDD8, v22[4] = self, v22[5] = &v23, v22[6] = &v29, v22[7] = ofEnumeration, [(ICTextAttachmentLocationCache *)self enumerateTextAttachmentsInRangeUsingBlock:v22], (v19 = v24[5]) != 0))
    {
      unsignedIntegerValue2 = [v19 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue2 = 0x7FFFFFFFFFFFFFFFLL;
    }

    _Block_object_dispose(&v23, 8);

    _Block_object_dispose(&v29, 8);
  }

  else
  {
    unsignedIntegerValue2 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return unsignedIntegerValue2;
}

void __142__ICTextAttachmentLocationCache_locationForTextAttachmentOfViewIdentifier_keyExistsBeforeEnumeration_validationSuccessful_stepsOfEnumeration___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v17 = a2;
  v8 = *(a1 + 56);
  if (v8)
  {
    ++*v8;
  }

  [*(a1 + 32) cachedTextAttachmentType];
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v9 = ICCheckedDynamicCast();
    v10 = [v9 viewIdentifier];
    if (v10)
    {
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
      v12 = [*(a1 + 32) locationByTextAttachmentIdentifier];
      [v12 setObject:v11 forKeyedSubscript:v10];
    }

    v13 = [*(a1 + 32) locationByTextAttachmentIdentifier];
    v14 = [v13 objectForKeyedSubscript:*(*(*(a1 + 48) + 8) + 40)];
    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    if (*(*(*(a1 + 40) + 8) + 40))
    {
      *a5 = 1;
    }
  }
}

- (BOOL)validateLocation:(unint64_t)location againstViewIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = identifierCopy;
  v8 = 0;
  if (location != 0x7FFFFFFFFFFFFFFFLL && identifierCopy)
  {
    layoutManager = [(ICTextAttachmentLocationCache *)self layoutManager];
    textStorage = [layoutManager textStorage];
    v11 = [textStorage length];

    if (v11 <= location)
    {
      v8 = 0;
    }

    else
    {
      layoutManager2 = [(ICTextAttachmentLocationCache *)self layoutManager];
      textStorage2 = [layoutManager2 textStorage];
      v14 = [textStorage2 attribute:*MEMORY[0x277D74060] atIndex:location effectiveRange:0];

      [(ICTextAttachmentLocationCache *)self cachedTextAttachmentType];
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        v15 = ICCheckedDynamicCast();
        viewIdentifier = [v15 viewIdentifier];
        v8 = [v7 isEqualToString:viewIdentifier];
      }

      else
      {
        v8 = 0;
      }
    }
  }

  return v8;
}

- (void)setLocation:(unint64_t)location forTextAttachmentOfViewIdentifier:(id)identifier
{
  if (location != 0x7FFFFFFFFFFFFFFFLL && identifier != 0)
  {
    v8 = MEMORY[0x277CCABB0];
    identifierCopy = identifier;
    v11 = [v8 numberWithUnsignedInteger:location];
    locationByTextAttachmentIdentifier = [(ICTextAttachmentLocationCache *)self locationByTextAttachmentIdentifier];
    [locationByTextAttachmentIdentifier setObject:v11 forKeyedSubscript:identifierCopy];
  }
}

- (void)forgetLocationForViewIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v12 = identifierCopy;
    locationByTextAttachmentIdentifier = [(ICTextAttachmentLocationCache *)self locationByTextAttachmentIdentifier];
    v6 = [locationByTextAttachmentIdentifier objectForKeyedSubscript:v12];

    if (v6)
    {
      unsignedIntegerValue = [v6 unsignedIntegerValue];
      layoutManager = [(ICTextAttachmentLocationCache *)self layoutManager];
      textStorage = [layoutManager textStorage];
      if (unsignedIntegerValue >= [textStorage length])
      {
        unsignedIntegerValue2 = 0;
      }

      else
      {
        unsignedIntegerValue2 = [v6 unsignedIntegerValue];
      }

      [(ICTextAttachmentLocationCache *)self setPreviousScanHaltLocation:unsignedIntegerValue2];

      locationByTextAttachmentIdentifier2 = [(ICTextAttachmentLocationCache *)self locationByTextAttachmentIdentifier];
      [locationByTextAttachmentIdentifier2 removeObjectForKey:v12];
    }

    identifierCopy = v12;
  }
}

- (void)clear
{
  [(ICTextAttachmentLocationCache *)self setPreviousScanHaltLocation:0];
  locationByTextAttachmentIdentifier = [(ICTextAttachmentLocationCache *)self locationByTextAttachmentIdentifier];
  [locationByTextAttachmentIdentifier removeAllObjects];
}

- (unint64_t)nextLocationForRange:(_NSRange)range
{
  if (range.location == 0x7FFFFFFFFFFFFFFFLL || range.length == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v5 = range.location + range.length;
  layoutManager = [(ICTextAttachmentLocationCache *)self layoutManager];
  textStorage = [layoutManager textStorage];
  v8 = [textStorage length];

  if (v5 >= v8)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

- (void)enumerateTextAttachmentsInRangeWithFirstEnumerateRangeResult:(_NSRange *)result secondEnumerateRangeResult:(_NSRange *)rangeResult usingBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    layoutManager = [(ICTextAttachmentLocationCache *)self layoutManager];
    textStorage = [layoutManager textStorage];
    v11 = [textStorage length];

    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0;
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    previousScanHaltLocation = [(ICTextAttachmentLocationCache *)self previousScanHaltLocation];
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __132__ICTextAttachmentLocationCache_enumerateTextAttachmentsInRangeWithFirstEnumerateRangeResult_secondEnumerateRangeResult_usingBlock___block_invoke;
    v23 = &unk_2781AEE00;
    v26 = &v32;
    v27 = &v28;
    selfCopy = self;
    v25 = blockCopy;
    v12 = _Block_copy(&v20);
    if ([(ICTextAttachmentLocationCache *)self previousScanHaltLocation:v20]< v11)
    {
      previousScanHaltLocation2 = [(ICTextAttachmentLocationCache *)self previousScanHaltLocation];
      v14 = v11 - [(ICTextAttachmentLocationCache *)self previousScanHaltLocation];
      if (result)
      {
        result->location = previousScanHaltLocation2;
        result->length = v14;
      }

      layoutManager2 = [(ICTextAttachmentLocationCache *)self layoutManager];
      textStorage2 = [layoutManager2 textStorage];
      [textStorage2 enumerateAttribute:*MEMORY[0x277D74060] inRange:previousScanHaltLocation2 options:v14 usingBlock:{0, v12}];
    }

    if ((v33[3] & 1) == 0)
    {
      previousScanHaltLocation3 = [(ICTextAttachmentLocationCache *)self previousScanHaltLocation];
      if (previousScanHaltLocation3 < v11)
      {
        v11 = previousScanHaltLocation3;
      }

      if (v11 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (rangeResult)
        {
          rangeResult->location = 0;
          rangeResult->length = v11;
        }

        layoutManager3 = [(ICTextAttachmentLocationCache *)self layoutManager];
        textStorage3 = [layoutManager3 textStorage];
        [textStorage3 enumerateAttribute:*MEMORY[0x277D74060] inRange:0 options:v11 usingBlock:{0, v12}];
      }
    }

    [(ICTextAttachmentLocationCache *)self setPreviousScanHaltLocation:v29[3]];

    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(&v32, 8);
  }
}

void __132__ICTextAttachmentLocationCache_enumerateTextAttachmentsInRangeWithFirstEnumerateRangeResult_secondEnumerateRangeResult_usingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = a2;
  v10 = *(a1 + 40);
  v12 = v9;
  if (v10)
  {
    (*(v10 + 16))(v10, v9, a3, a4, a5);
    v9 = v12;
  }

  if (*a5 == 1)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v11 = [*(a1 + 32) nextLocationForRange:{a3, a4}];
    v9 = v12;
    *(*(*(a1 + 56) + 8) + 24) = v11;
  }
}

- (ICLayoutManager)layoutManager
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutManager);

  return WeakRetained;
}

@end