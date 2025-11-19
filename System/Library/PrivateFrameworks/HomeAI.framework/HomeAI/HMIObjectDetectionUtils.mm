@interface HMIObjectDetectionUtils
+ (id)convertObjectDetections:(id)a3 cropRect:(CGRect)a4 originalImageSize:(CGSize)a5;
+ (void)nmsMultiClass:(id)a3 output:(id)a4 nmsConfiguration:(id)a5;
+ (void)nonMaximumSuppression:(id)a3 output:(id)a4 withThreshold:(double)a5 withMetric:(int64_t)a6;
@end

@implementation HMIObjectDetectionUtils

+ (void)nonMaximumSuppression:(id)a3 output:(id)a4 withThreshold:(double)a5 withMetric:(int64_t)a6
{
  v47 = a4;
  v9 = [a3 sortedArrayUsingComparator:&__block_literal_global_11];
  v10 = [v9 count];
  Mutable = CFBitVectorCreateMutable(0, v10);
  CFBitVectorSetCount(Mutable, v10);
  CFBitVectorSetAllBits(Mutable, 1u);
  v12 = CFBitVectorCreateMutable(0, v10);
  CFBitVectorSetCount(v12, v10);
  v13 = malloc_type_malloc(32 * v10, 0x1000040E0EAB150uLL);
  v14 = v13;
  if (!v10)
  {
    if (a6 != 2)
    {
      v46 = 0;
      v24 = 0;
      goto LABEL_44;
    }

    goto LABEL_7;
  }

  v15 = 0;
  v16 = v13;
  v17 = v13 + 2;
  do
  {
    v18 = [v9 objectAtIndexedSubscript:v15];
    [v18 boundingBox];
    *(v17 - 2) = v19;
    *(v17 - 1) = v20;
    *v17 = v21;
    v17[1] = v22;
    v17 += 4;

    ++v15;
  }

  while (v10 != v15);
  v14 = v16;
  if (a6 == 2)
  {
LABEL_7:
    v51 = malloc_type_malloc(4 * v10, 0x100004052888210uLL);
    v23 = malloc_type_malloc(4 * v10, 0x100004052888210uLL);
    v24 = v23;
    if (!v10)
    {
      goto LABEL_43;
    }

    v25 = v23;
    for (i = 0; i != v10; ++i)
    {
      v27 = [v9 objectAtIndexedSubscript:i];
      [v27 confidence];
      *&v28 = v28;
      v51[i] = LODWORD(v28);

      v29 = [v9 objectAtIndexedSubscript:i];
      [v29 boundingBox];
      v34 = HMICGRectArea(v30, v31, v32, v33);
      v25[i] = v34;
    }

    v50 = v25;
    goto LABEL_11;
  }

  v50 = 0;
  v51 = 0;
LABEL_11:
  v35 = 0;
  v48 = v14 + 56;
  v49 = v14;
  do
  {
    if (CFBitVectorGetBitAtIndex(Mutable, v35))
    {
      CFBitVectorSetAllBits(v12, 0);
      v36 = v35 + 1;
      if (v35 + 1 < v10)
      {
        v37 = &v49[32 * v35];
        v38 = v35 + 1;
        v39 = &v48[32 * v35];
        while (!CFBitVectorGetBitAtIndex(Mutable, v38))
        {
LABEL_25:
          ++v38;
          v39 += 4;
          if (v10 == v38)
          {
            goto LABEL_33;
          }
        }

        if (a6 == 2)
        {
          HMICGRectIntersectionOverMinArea(*v37, v37[1], v37[2], v37[3], *(v39 - 3), *(v39 - 2), *(v39 - 1), *v39);
          v40 = v42;
          if (v42 > a5 && *&v51[v35] * 0.95 < *&v51[v38] && v50[v35] > v50[v38])
          {
            CFBitVectorSetBitAtIndex(v12, v35, 1u);
          }

          goto LABEL_22;
        }

        if (a6 == 1)
        {
          HMICGRectIntersectionOverMinArea(*v37, v37[1], v37[2], v37[3], *(v39 - 3), *(v39 - 2), *(v39 - 1), *v39);
        }

        else
        {
          v40 = 0.0;
          if (a6)
          {
LABEL_22:
            if (CFBitVectorGetBitAtIndex(v12, v35))
            {
              goto LABEL_33;
            }

            if (v40 > a5)
            {
              CFBitVectorSetBitAtIndex(v12, v38, 1u);
            }

            goto LABEL_25;
          }

          HMICGRectIntersectionOverUnion(*v37, v37[1], v37[2], v37[3], *(v39 - 3), *(v39 - 2), *(v39 - 1), *v39);
        }

        v40 = v41;
        goto LABEL_22;
      }

LABEL_33:
      if (!CFBitVectorGetBitAtIndex(v12, v35))
      {
        v44 = [v9 objectAtIndexedSubscript:v35];
        [v47 addObject:v44];

        if (v36 < v10)
        {
          v45 = v36;
          do
          {
            if (CFBitVectorGetBitAtIndex(v12, v45))
            {
              CFBitVectorSetBitAtIndex(Mutable, v45, 0);
            }

            ++v45;
          }

          while (v10 != v45);
        }
      }
    }

    else
    {
      v36 = v35 + 1;
    }

    v35 = v36;
  }

  while (v36 != v10);
  v14 = v49;
  v24 = v50;
LABEL_43:
  v46 = v51;
LABEL_44:
  CFRelease(Mutable);
  CFRelease(v12);
  free(v14);
  free(v46);
  free(v24);
}

BOOL __81__HMIObjectDetectionUtils_nonMaximumSuppression_output_withThreshold_withMetric___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 confidence];
  v6 = v5;
  [v4 confidence];
  v8 = v7;

  return v6 < v8;
}

+ (void)nmsMultiClass:(id)a3 output:(id)a4 nmsConfiguration:(id)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v30 = a4;
  v8 = a5;
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v7;
  v10 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v37;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v36 + 1) + 8 * i);
        v15 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v14, "labelIndex", v30)}];
        v16 = [v9 objectForKeyedSubscript:v15];

        if (!v16)
        {
          v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v9 setObject:v17 forKeyedSubscript:v15];
        }

        v18 = [v9 objectForKeyedSubscript:v15];
        [v18 addObject:v14];
      }

      v11 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v11);
  }

  v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v20 = v9;
  v21 = [v20 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v33;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v33 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v32 + 1) + 8 * j);
        v26 = [v8 thresholdForLabel:{v25, v30}];
        v27 = [v8 metricForLabel:v25];
        v28 = [v20 objectForKeyedSubscript:v25];
        [v26 doubleValue];
        [HMIObjectDetectionUtils nonMaximumSuppression:v28 output:v19 withThreshold:v27 withMetric:?];
      }

      v22 = [v20 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v22);
  }

  v29 = [v19 sortedArrayUsingComparator:&__block_literal_global_99];
  [v30 addObjectsFromArray:v29];
}

BOOL __65__HMIObjectDetectionUtils_nmsMultiClass_output_nmsConfiguration___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 confidence];
  v6 = v5;
  [v4 confidence];
  v8 = v7;

  return v6 < v8;
}

+ (id)convertObjectDetections:(id)a3 cropRect:(CGRect)a4 originalImageSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v7 = a4.size.height;
  v8 = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a3;
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = v8;
  v21.size.height = v7;
  if (CGRectIsNull(v21))
  {
    v12 = v11;
  }

  else
  {
    memset(&v19, 0, sizeof(v19));
    CGAffineTransformMakeScale(&v19, 1.0 / width, 1.0 / height);
    v17 = v19;
    CGAffineTransformTranslate(&v18, &v17, x, y);
    v19 = v18;
    v17 = v18;
    CGAffineTransformScale(&v18, &v17, v8, v7);
    v19 = v18;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __78__HMIObjectDetectionUtils_convertObjectDetections_cropRect_originalImageSize___block_invoke;
    v15[3] = &__block_descriptor_80_e28__16__0__HMIObjectDetection_8l;
    v16 = v18;
    v12 = [v11 na_map:v15];
  }

  v13 = v12;

  return v13;
}

HMIObjectDetection *__78__HMIObjectDetectionUtils_convertObjectDetections_cropRect_originalImageSize___block_invoke(_OWORD *a1, void *a2)
{
  v3 = a2;
  v4 = [HMIObjectDetection alloc];
  v5 = [v3 labelIndex];
  [v3 confidence];
  v7 = v6;
  [v3 boundingBox];
  v8 = a1[3];
  *&v17.a = a1[2];
  *&v17.c = v8;
  *&v17.tx = a1[4];
  v20 = CGRectApplyAffineTransform(v19, &v17);
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  v13 = [v3 yaw];
  v14 = [v3 roll];

  v15 = [(HMIObjectDetection *)v4 initWithLabelIndex:v5 confidence:v13 boundingBox:v14 yaw:v7 roll:x, y, width, height];

  return v15;
}

@end