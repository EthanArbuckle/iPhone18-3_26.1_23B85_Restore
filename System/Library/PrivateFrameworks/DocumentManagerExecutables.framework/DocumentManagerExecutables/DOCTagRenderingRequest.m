@interface DOCTagRenderingRequest
+ (DOCTagRenderingRequest)requestWithTagDimension:(double)a3;
+ (id)requestForChainedTags:(id)a3 tagDimension:(double)a4;
+ (id)requestForTag:(id)a3 tagDimension:(double)a4 variant:(unint64_t)a5;
- (DOCTagRenderingRequest)init;
- (UITraitCollection)traitCollection;
- (id)_UIImageCacheKeyWithAdditionalComponents:(id)a3;
@end

@implementation DOCTagRenderingRequest

- (DOCTagRenderingRequest)init
{
  v9.receiver = self;
  v9.super_class = DOCTagRenderingRequest;
  v2 = [(DOCTagRenderingRequest *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_tagDimension = 16.0;
    v2->_layoutDirection = [MEMORY[0x277D74248] defaultWritingDirectionForLanguage:0] == 1;
    fillColors = v3->_fillColors;
    v3->_fillColors = MEMORY[0x277CBEBF8];

    v5 = [MEMORY[0x277D06260] nonClearNoneTagColor];
    ringColor = v3->_ringColor;
    v3->_ringColor = v5;

    selectionOutlineColor = v3->_selectionOutlineColor;
    v3->_selectionOutlineColor = 0;

    v3->_knockOutBorderWidth = 1.0;
    v3->_spacingType = 0;
    v3->_clearTagRenderingMode = 0;
  }

  return v3;
}

- (UITraitCollection)traitCollection
{
  v2 = [MEMORY[0x277D759A0] mainScreen];
  v3 = [v2 traitCollection];

  return v3;
}

+ (DOCTagRenderingRequest)requestWithTagDimension:(double)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setTagDimension:a3];

  return v4;
}

+ (id)requestForTag:(id)a3 tagDimension:(double)a4 variant:(unint64_t)a5
{
  v17[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [objc_opt_class() requestWithTagDimension:a4];
  v17[0] = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  [v8 setTags:v9];

  if (a5 == 1 && [v7 labelIndex])
  {
    v10 = [MEMORY[0x277D75348] clearColor];
    v16 = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    [v8 setFillColors:v11];

    v12 = [v7 tagColor];
    [v8 setRingColor:v12];
  }

  else
  {
    v12 = [v7 tagColor];
    v15 = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
    [v8 setFillColors:v13];
  }

  return v8;
}

+ (id)requestForChainedTags:(id)a3 tagDimension:(double)a4
{
  v5 = MEMORY[0x277CBEB18];
  v6 = a3;
  v7 = [v5 array];
  v8 = [MEMORY[0x277CBEB18] array];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __61__DOCTagRenderingRequest_requestForChainedTags_tagDimension___block_invoke;
  v16 = &unk_278FA27F0;
  v9 = v7;
  v17 = v9;
  v10 = v8;
  v18 = v10;
  [v6 enumerateObjectsWithOptions:2 usingBlock:&v13];

  if ([v9 count])
  {
    v11 = [objc_opt_class() requestWithTagDimension:a4];
    [v11 setTags:v10];
    [v11 setFillColors:v9];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __61__DOCTagRenderingRequest_requestForChainedTags_tagDimension___block_invoke(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v7 = a2;
  v6 = [v7 tagColorIfNotClear];
  if (v6)
  {
    [*(a1 + 32) addObject:v6];
    [*(a1 + 40) addObject:v7];
    *a4 = [*(a1 + 32) count] == 3;
  }
}

- (id)_UIImageCacheKeyWithAdditionalComponents:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  aBlock = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __67__DOCTagRenderingRequest__UIImageCacheKeyWithAdditionalComponents___block_invoke;
  v19 = &unk_278FA2840;
  v6 = v5;
  v20 = v6;
  v21 = self;
  v7 = _Block_copy(&aBlock);
  v7[2](v7, @"fillColors", self->_fillColors);
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:{self->_ringColor, 0}];
  v7[2](v7, @"ringColor", v8);

  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:{self->_selectionOutlineColor, 0}];
  v7[2](v7, @"selectionOutlineColor", v9);

  v10 = MEMORY[0x277CBEB18];
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_tagDimension];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_spacingType];
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:self->_layoutDirection];
  v14 = [v10 arrayWithObjects:{v6, v11, v12, v13, 0, aBlock, v17, v18, v19}];

  if ([v4 count])
  {
    [v14 addObjectsFromArray:v4];
  }

  return v14;
}

void __67__DOCTagRenderingRequest__UIImageCacheKeyWithAdditionalComponents___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) addObject:a2];
  if ([v5 count])
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __67__DOCTagRenderingRequest__UIImageCacheKeyWithAdditionalComponents___block_invoke_2;
    v8[3] = &unk_278FA2818;
    v7 = *(a1 + 32);
    v6 = v7.i64[0];
    v9 = vextq_s8(v7, v7, 8uLL);
    [v5 enumerateObjectsUsingBlock:v8];
  }

  else
  {
    [*(a1 + 32) addObject:@"none"];
  }
}

void __67__DOCTagRenderingRequest__UIImageCacheKeyWithAdditionalComponents___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 traitCollection];
  v7 = [v4 resolvedColorWithTraitCollection:v5];

  v6 = v7;
  if (v7)
  {
    [*(a1 + 40) addObject:v7];
    v6 = v7;
  }
}

@end