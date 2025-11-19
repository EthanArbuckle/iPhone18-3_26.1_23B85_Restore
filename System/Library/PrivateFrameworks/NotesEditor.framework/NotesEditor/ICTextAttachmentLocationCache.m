@interface ICTextAttachmentLocationCache
- (BOOL)validateLocation:(unint64_t)a3 againstViewIdentifier:(id)a4;
- (ICLayoutManager)layoutManager;
- (ICTextAttachmentLocationCache)initWithLayoutManager:(id)a3 cachedTextAttachmentType:(Class)a4;
- (NSMutableDictionary)locationByTextAttachmentIdentifier;
- (unint64_t)locationForTextAttachmentOfViewIdentifier:(id)a3 keyExistsBeforeEnumeration:(BOOL *)a4 validationSuccessful:(BOOL *)a5 stepsOfEnumeration:(unint64_t *)a6;
- (unint64_t)nextLocationForRange:(_NSRange)a3;
- (void)clear;
- (void)enumerateTextAttachmentsInRangeWithFirstEnumerateRangeResult:(_NSRange *)a3 secondEnumerateRangeResult:(_NSRange *)a4 usingBlock:(id)a5;
- (void)forgetLocationForViewIdentifier:(id)a3;
- (void)setLocation:(unint64_t)a3 forTextAttachmentOfViewIdentifier:(id)a4;
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

- (ICTextAttachmentLocationCache)initWithLayoutManager:(id)a3 cachedTextAttachmentType:(Class)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = ICTextAttachmentLocationCache;
  v7 = [(ICTextAttachmentLocationCache *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_layoutManager, v6);
    v8->_previousScanHaltLocation = 0;
    objc_storeStrong(&v8->_cachedTextAttachmentType, a4);
  }

  return v8;
}

- (unint64_t)locationForTextAttachmentOfViewIdentifier:(id)a3 keyExistsBeforeEnumeration:(BOOL *)a4 validationSuccessful:(BOOL *)a5 stepsOfEnumeration:(unint64_t *)a6
{
  v10 = a3;
  v11 = v10;
  if (v10)
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__16;
    v33 = __Block_byref_object_dispose__16;
    v12 = v10;
    v34 = v12;
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__16;
    v27 = __Block_byref_object_dispose__16;
    v13 = [(ICTextAttachmentLocationCache *)self locationByTextAttachmentIdentifier];
    v28 = [v13 objectForKeyedSubscript:v30[5]];

    v14 = v24;
    if (a4)
    {
      *a4 = v24[5] != 0;
    }

    v15 = v14[5];
    if (v15)
    {
      v16 = [v15 unsignedIntegerValue];
      if (![(ICTextAttachmentLocationCache *)self validateLocation:v16 againstViewIdentifier:v30[5]])
      {
        v17 = [(ICTextAttachmentLocationCache *)self locationByTextAttachmentIdentifier];
        [v17 removeObjectForKey:v12];

        v18 = v24[5];
        v24[5] = 0;
      }
    }

    if (a5)
    {
      *a5 = v24[5] != 0;
    }

    if (a6)
    {
      *a6 = 0;
    }

    v19 = v24[5];
    if (v19 || (v22[0] = MEMORY[0x277D85DD0], v22[1] = 3221225472, v22[2] = __142__ICTextAttachmentLocationCache_locationForTextAttachmentOfViewIdentifier_keyExistsBeforeEnumeration_validationSuccessful_stepsOfEnumeration___block_invoke, v22[3] = &unk_2781AEDD8, v22[4] = self, v22[5] = &v23, v22[6] = &v29, v22[7] = a6, [(ICTextAttachmentLocationCache *)self enumerateTextAttachmentsInRangeUsingBlock:v22], (v19 = v24[5]) != 0))
    {
      v20 = [v19 unsignedIntegerValue];
    }

    else
    {
      v20 = 0x7FFFFFFFFFFFFFFFLL;
    }

    _Block_object_dispose(&v23, 8);

    _Block_object_dispose(&v29, 8);
  }

  else
  {
    v20 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v20;
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

- (BOOL)validateLocation:(unint64_t)a3 againstViewIdentifier:(id)a4
{
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (a3 != 0x7FFFFFFFFFFFFFFFLL && v6)
  {
    v9 = [(ICTextAttachmentLocationCache *)self layoutManager];
    v10 = [v9 textStorage];
    v11 = [v10 length];

    if (v11 <= a3)
    {
      v8 = 0;
    }

    else
    {
      v12 = [(ICTextAttachmentLocationCache *)self layoutManager];
      v13 = [v12 textStorage];
      v14 = [v13 attribute:*MEMORY[0x277D74060] atIndex:a3 effectiveRange:0];

      [(ICTextAttachmentLocationCache *)self cachedTextAttachmentType];
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        v15 = ICCheckedDynamicCast();
        v16 = [v15 viewIdentifier];
        v8 = [v7 isEqualToString:v16];
      }

      else
      {
        v8 = 0;
      }
    }
  }

  return v8;
}

- (void)setLocation:(unint64_t)a3 forTextAttachmentOfViewIdentifier:(id)a4
{
  if (a3 != 0x7FFFFFFFFFFFFFFFLL && a4 != 0)
  {
    v8 = MEMORY[0x277CCABB0];
    v9 = a4;
    v11 = [v8 numberWithUnsignedInteger:a3];
    v10 = [(ICTextAttachmentLocationCache *)self locationByTextAttachmentIdentifier];
    [v10 setObject:v11 forKeyedSubscript:v9];
  }
}

- (void)forgetLocationForViewIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v12 = v4;
    v5 = [(ICTextAttachmentLocationCache *)self locationByTextAttachmentIdentifier];
    v6 = [v5 objectForKeyedSubscript:v12];

    if (v6)
    {
      v7 = [v6 unsignedIntegerValue];
      v8 = [(ICTextAttachmentLocationCache *)self layoutManager];
      v9 = [v8 textStorage];
      if (v7 >= [v9 length])
      {
        v10 = 0;
      }

      else
      {
        v10 = [v6 unsignedIntegerValue];
      }

      [(ICTextAttachmentLocationCache *)self setPreviousScanHaltLocation:v10];

      v11 = [(ICTextAttachmentLocationCache *)self locationByTextAttachmentIdentifier];
      [v11 removeObjectForKey:v12];
    }

    v4 = v12;
  }
}

- (void)clear
{
  [(ICTextAttachmentLocationCache *)self setPreviousScanHaltLocation:0];
  v3 = [(ICTextAttachmentLocationCache *)self locationByTextAttachmentIdentifier];
  [v3 removeAllObjects];
}

- (unint64_t)nextLocationForRange:(_NSRange)a3
{
  if (a3.location == 0x7FFFFFFFFFFFFFFFLL || a3.length == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v5 = a3.location + a3.length;
  v6 = [(ICTextAttachmentLocationCache *)self layoutManager];
  v7 = [v6 textStorage];
  v8 = [v7 length];

  if (v5 >= v8)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

- (void)enumerateTextAttachmentsInRangeWithFirstEnumerateRangeResult:(_NSRange *)a3 secondEnumerateRangeResult:(_NSRange *)a4 usingBlock:(id)a5
{
  v8 = a5;
  if (v8)
  {
    v9 = [(ICTextAttachmentLocationCache *)self layoutManager];
    v10 = [v9 textStorage];
    v11 = [v10 length];

    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0;
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = [(ICTextAttachmentLocationCache *)self previousScanHaltLocation];
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __132__ICTextAttachmentLocationCache_enumerateTextAttachmentsInRangeWithFirstEnumerateRangeResult_secondEnumerateRangeResult_usingBlock___block_invoke;
    v23 = &unk_2781AEE00;
    v26 = &v32;
    v27 = &v28;
    v24 = self;
    v25 = v8;
    v12 = _Block_copy(&v20);
    if ([(ICTextAttachmentLocationCache *)self previousScanHaltLocation:v20]< v11)
    {
      v13 = [(ICTextAttachmentLocationCache *)self previousScanHaltLocation];
      v14 = v11 - [(ICTextAttachmentLocationCache *)self previousScanHaltLocation];
      if (a3)
      {
        a3->location = v13;
        a3->length = v14;
      }

      v15 = [(ICTextAttachmentLocationCache *)self layoutManager];
      v16 = [v15 textStorage];
      [v16 enumerateAttribute:*MEMORY[0x277D74060] inRange:v13 options:v14 usingBlock:{0, v12}];
    }

    if ((v33[3] & 1) == 0)
    {
      v17 = [(ICTextAttachmentLocationCache *)self previousScanHaltLocation];
      if (v17 < v11)
      {
        v11 = v17;
      }

      if (v11 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (a4)
        {
          a4->location = 0;
          a4->length = v11;
        }

        v18 = [(ICTextAttachmentLocationCache *)self layoutManager];
        v19 = [v18 textStorage];
        [v19 enumerateAttribute:*MEMORY[0x277D74060] inRange:0 options:v11 usingBlock:{0, v12}];
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