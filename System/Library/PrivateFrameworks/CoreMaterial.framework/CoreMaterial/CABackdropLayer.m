@interface CABackdropLayer
@end

@implementation CABackdropLayer

void __63__CABackdropLayer_CoreMaterial__mt_orderedFilterTypesBlurAtEnd__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mt_orderedFilterTypes];
  v2 = [v1 mutableCopy];

  v3 = *MEMORY[0x1E6979928];
  [v2 removeObject:*MEMORY[0x1E6979928]];
  v4 = *MEMORY[0x1E6979D70];
  [v2 removeObject:*MEMORY[0x1E6979D70]];
  [v2 addObject:v3];
  [v2 addObject:v4];
  v5 = mt_orderedFilterTypesBlurAtEnd___sortedFilterTypesBlurAtEnd;
  mt_orderedFilterTypesBlurAtEnd___sortedFilterTypesBlurAtEnd = v2;
}

void __54__CABackdropLayer_CoreMaterial__mt_orderedFilterTypes__block_invoke()
{
  v7[9] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6979C70];
  v7[0] = *MEMORY[0x1E6979810];
  v7[1] = v0;
  v1 = *MEMORY[0x1E69798B8];
  v7[2] = *MEMORY[0x1E6979C68];
  v7[3] = v1;
  v2 = *MEMORY[0x1E6979D70];
  v7[4] = *MEMORY[0x1E6979928];
  v7[5] = v2;
  v3 = *MEMORY[0x1E6979890];
  v7[6] = *MEMORY[0x1E6979880];
  v7[7] = v3;
  v7[8] = *MEMORY[0x1E6979848];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:9];
  v5 = mt_orderedFilterTypes___sortedFilterTypes;
  mt_orderedFilterTypes___sortedFilterTypes = v4;

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __94__CABackdropLayer_CoreMaterial___mt_configureFilterOfType_ifNecessaryWithName_andFilterOrder___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 type];
  v7 = [v5 type];

  v8 = MTCompareObjectsWithOrder(v6, v7, *(a1 + 32));
  return v8;
}

@end