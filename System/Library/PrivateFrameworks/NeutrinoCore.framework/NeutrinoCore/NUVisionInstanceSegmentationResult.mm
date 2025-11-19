@interface NUVisionInstanceSegmentationResult
@end

@implementation NUVisionInstanceSegmentationResult

void __62___NUVisionInstanceSegmentationResult_fullExtentForInstances___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) perInstanceProperties];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v14 = [v4 objectForKeyedSubscript:v5];

  v6 = [v14 size];
  v7 = *(*(a1 + 40) + 8);
  *&v8 = v6;
  *(&v8 + 1) = v9;
  v10 = *(v7 + 32);
  v11 = *(v7 + 48);
  v17[0] = 0;
  v17[1] = 0;
  v18 = v8;
  v15 = v10;
  v16 = v11;
  NU::RectT<long>::add(&v15, v17);
  v12 = v16;
  v13 = *(*(a1 + 40) + 8);
  *(v13 + 32) = v15;
  *(v13 + 48) = v12;
}

void __63___NUVisionInstanceSegmentationResult_tightBoundsForInstances___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) perInstanceProperties];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = 0uLL;
  v8 = 0uLL;
  if (v6)
  {
    [v6 bounds];
    v8 = 0u;
    v7 = 0u;
  }

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 32);
  v11 = *(v9 + 48);
  v16[0] = v8;
  v16[1] = v7;
  v14 = v10;
  v15 = v11;
  NU::RectT<long>::add(&v14, v16);
  v12 = v15;
  v13 = *(*(a1 + 40) + 8);
  *(v13 + 32) = v14;
  *(v13 + 48) = v12;
}

BOOL __139___NUVisionInstanceSegmentationResult_initWithObservation_usingTargetPoints_observationOrientation_observationScale_perInstanceProperties___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v5 = [v3 objectForKeyedSubscript:v4];

  [v5 density];
  v7 = v6 < *(a1 + 40) || *(a1 + 48) < v6;

  return v7;
}

@end