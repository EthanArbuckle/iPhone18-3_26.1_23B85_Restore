@interface UIBezierPath(ITKUtilities)
+ (CGPath)_cgPathFromClipperPath:()ITKUtilities;
+ (CGPath)itk_newRoundedPathWithRadius:()ITKUtilities points:;
+ (double)itk_projectPoint:()ITKUtilities lineStart:lineEnd:;
+ (double)radiusForQuads:()ITKUtilities radiusRatio:;
+ (id)itk_allPointsFromCGPath:()ITKUtilities;
+ (id)itk_groupAndRoundPaths:()ITKUtilities radius:offset:;
+ (id)itk_shiftLinePerpendicularlyFromPoint:()ITKUtilities to:radius:;
+ (id)itk_subpathArrayFromCGPath:()ITKUtilities;
+ (id)mapPaths:()ITKUtilities toQuads:;
+ (uint64_t)itk_cgPathcontainsAnyCurveToPoints:()ITKUtilities;
+ (uint64_t)itk_signForRadiusWithVectorStart:()ITKUtilities end:otherPoint:;
+ (void)_processPointsForNarrowAngles:()ITKUtilities;
+ (void)_processPointsForRounding:()ITKUtilities withRadius:;
+ (void)itk_calculateCenterForPoints:()ITKUtilities p2:p3:radius:;
+ (void)itk_roundAndGroupNormalizedQuadsForHighlight:()ITKUtilities aspectRatio:expansionScale:radiusToAvgHeightRatio:;
- (double)itk_centroid;
- (double)itk_lengthIgnoringCurves;
- (id)_itk_flattenWithPath:()ITKUtilities clipType:;
- (id)debugQuickLookObject;
- (id)itk_expandWithOffset:()ITKUtilities;
- (id)itk_intersectAndFlattenWithPath:()ITKUtilities;
- (id)itk_pathByFittingToRect:()ITKUtilities;
- (id)itk_pathFromFlippingInRect:()ITKUtilities;
- (id)itk_unionAndFlattenWithPath:()ITKUtilities;
- (uint64_t)itk_CGPath;
- (uint64_t)itk_allPoints;
- (uint64_t)itk_applyTransform:()ITKUtilities;
- (uint64_t)itk_subpathArray;
- (void)itk_appendBezierPath:()ITKUtilities;
- (void)itk_appendRect:()ITKUtilities;
@end

@implementation UIBezierPath(ITKUtilities)

- (uint64_t)itk_CGPath
{
  v1 = a1;

  return [v1 CGPath];
}

- (void)itk_appendRect:()ITKUtilities
{
  v3 = [ITKQuad quadFromCGRect:?];
  v2 = [v3 path];
  [a1 itk_appendBezierPath:v2];
}

- (void)itk_appendBezierPath:()ITKUtilities
{
  v4 = a3;
  if (v4 && ([v4 isEmpty] & 1) == 0)
  {
    [a1 appendPath:v4];
  }
}

- (double)itk_centroid
{
  v1 = [a1 itk_allPoints];
  v2 = [v1 count];
  v3 = v2;
  v4 = *MEMORY[0x277CBF348];
  v5 = *(MEMORY[0x277CBF348] + 8);
  if (v2 >= 3)
  {
    v6 = 0;
    v7 = v2 - 1;
    v8 = 0.0;
    do
    {
      v9 = [v1 objectAtIndexedSubscript:v6];
      [v9 itk_pointValue];
      v11 = v10;
      v13 = v12;

      if (v7 == v6)
      {
        v14 = 0;
      }

      else
      {
        v14 = v6 + 1;
      }

      v15 = [v1 objectAtIndexedSubscript:v14];
      [v15 itk_pointValue];
      v17 = v16;
      v19 = v18;
      ++v6;

      ITKCrossPoints();
      v4 = v4 + (v11 + v17) * v20;
      v5 = v5 + (v13 + v19) * v20;
      v8 = v8 + v20 * 0.5;
    }

    while (v3 != v6);
    ITKMultiplyPointScalar();
    if (v21 >= 0.0)
    {
      v4 = v21;
    }

    else
    {
      v4 = -v21;
    }
  }

  return v4;
}

- (double)itk_lengthIgnoringCurves
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x4012000000;
  v7[3] = __Block_byref_object_copy_;
  v7[4] = __Block_byref_object_dispose_;
  v7[5] = &unk_254C2D841;
  v8 = *MEMORY[0x277D1C0D8];
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x4012000000;
  v5[3] = __Block_byref_object_copy_;
  v5[4] = __Block_byref_object_dispose_;
  v5[5] = &unk_254C2D841;
  v6 = *MEMORY[0x277D1C0D8];
  v1 = [a1 itk_CGPath];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__UIBezierPath_ITKUtilities__itk_lengthIgnoringCurves__block_invoke;
  block[3] = &unk_2797B0188;
  block[4] = v5;
  block[5] = v7;
  block[6] = &v9;
  CGPathApplyWithBlock(v1, block);
  v2 = v10[3];
  _Block_object_dispose(v5, 8);
  _Block_object_dispose(v7, 8);
  _Block_object_dispose(&v9, 8);
  return v2;
}

- (uint64_t)itk_allPoints
{
  v2 = objc_opt_class();
  v3 = [a1 itk_CGPath];

  return [v2 itk_allPointsFromCGPath:v3];
}

+ (id)itk_allPointsFromCGPath:()ITKUtilities
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__UIBezierPath_ITKUtilities__itk_allPointsFromCGPath___block_invoke;
  block[3] = &unk_2797B01B0;
  v5 = v4;
  v8 = v5;
  CGPathApplyWithBlock(a3, block);

  return v5;
}

- (uint64_t)itk_applyTransform:()ITKUtilities
{
  v3 = a3[1];
  v5[0] = *a3;
  v5[1] = v3;
  v5[2] = a3[2];
  return [a1 applyTransform:v5];
}

- (id)itk_pathFromFlippingInRect:()ITKUtilities
{
  v10 = objc_alloc_init(MEMORY[0x277D75208]);
  v11 = [a1 itk_CGPath];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__UIBezierPath_ITKUtilities__itk_pathFromFlippingInRect___block_invoke;
  block[3] = &unk_2797B01D8;
  v12 = v10;
  v15 = v12;
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  CGPathApplyWithBlock(v11, block);

  return v12;
}

- (id)debugQuickLookObject
{
  v1 = a1;
  [v1 bounds];
  if (v2 >= 2.0)
  {
    [v1 bounds];
    if (v3 < 20.0)
    {
      CGAffineTransformMakeScale(&v5, 20.0, 20.0);
      [v1 itk_applyTransform:&v5];
    }
  }

  else
  {
    CGAffineTransformMakeScale(&v5, 150.0, 150.0);
    [v1 itk_applyTransform:&v5];
  }

  return v1;
}

- (uint64_t)itk_subpathArray
{
  v2 = objc_opt_class();
  v3 = [a1 itk_CGPath];

  return [v2 itk_subpathArrayFromCGPath:v3];
}

+ (id)itk_subpathArrayFromCGPath:()ITKUtilities
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = __Block_byref_object_copy__8;
  v12[4] = __Block_byref_object_dispose__9;
  v13 = objc_alloc_init(MEMORY[0x277D75208]);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__UIBezierPath_ITKUtilities__itk_subpathArrayFromCGPath___block_invoke;
  v9[3] = &unk_2797B0200;
  v11 = v12;
  v5 = v4;
  v10 = v5;
  CGPathApplyWithBlock(a3, v9);
  v6 = v10;
  v7 = v5;

  _Block_object_dispose(v12, 8);

  return v7;
}

- (id)itk_pathByFittingToRect:()ITKUtilities
{
  [a1 bounds];
  ITKCenterOfRect();
  v3 = v2;
  v5 = v4;
  ITKCenterOfRect();
  v7 = v6;
  v9 = v8;
  ITKSizeRatioFromSizes();
  v11 = v10;
  v13 = v12;
  memset(&v19, 0, sizeof(v19));
  CGAffineTransformMakeTranslation(&v19, -v3, -v5);
  t1 = v19;
  CGAffineTransformMakeScale(&t2, v11, v13);
  CGAffineTransformConcat(&v18, &t1, &t2);
  v19 = v18;
  t1 = v18;
  CGAffineTransformMakeTranslation(&t2, v7, v9);
  CGAffineTransformConcat(&v18, &t1, &t2);
  v19 = v18;
  v14 = [a1 copy];
  v18 = v19;
  [v14 itk_applyTransform:&v18];
  [v14 bounds];
  if ((ITKNearlyEqualRects() & 1) == 0)
  {
    [MEMORY[0x277D1C0E8] handleFailedAssertWithCondition:"ITKNearlyEqualRects(endBounds functionName:result.bounds)" simulateCrash:"-[UIBezierPath(ITKUtilities) itk_pathByFittingToRect:]" showAlert:0 format:{0, @"path itk_transformToFitRect did not give a correct result"}];
  }

  return v14;
}

- (id)itk_unionAndFlattenWithPath:()ITKUtilities
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 isEmpty] & 1) == 0)
  {
    v6 = [a1 _itk_flattenWithPath:v5 clipType:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)itk_intersectAndFlattenWithPath:()ITKUtilities
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 isEmpty] & 1) == 0)
  {
    v6 = [a1 _itk_flattenWithPath:v5 clipType:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_itk_flattenWithPath:()ITKUtilities clipType:
{
  v19[18] = *MEMORY[0x277D85DE8];
  v4 = a3;
  memset(v10, 0, sizeof(v10));
  ClipperLib::Clipper::Clipper(&v11, 0);
  v5 = a1;
  if (v4 && ([v4 isEmpty] & 1) == 0)
  {
    memset(&v9, 0, sizeof(v9));
    CGAffineTransformMakeScale(&v9, 10000.0, 10000.0);
    if (([v5 isEmpty] & 1) == 0)
    {
      v6 = MEMORY[0x259C27E10]([v5 itk_CGPath], &v9);
      ITKClipperPathsFromCGPath(v6, 1.0);
    }

    v7 = MEMORY[0x259C27E10]([v4 itk_CGPath], &v9);
    ITKClipperPathsFromCGPath(v7, 1.0);
  }

  std::__list_imp<long long>::clear(v18);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  ClipperLib::ClipperBase::~ClipperBase(v19);
  v11 = v10;
  std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:ne200100](&v11);

  return v5;
}

- (id)itk_expandWithOffset:()ITKUtilities
{
  v1 = [a1 itk_CGPath];
  if (([objc_opt_class() itk_cgPathcontainsAnyCurveToPoints:v1] & 1) == 0)
  {
    ITKClipperPathsFromCGPath(v1, 1.0);
  }

  return 0;
}

+ (id)itk_groupAndRoundPaths:()ITKUtilities radius:offset:
{
  v16[36] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__UIBezierPath_ITKUtilities__itk_groupAndRoundPaths_radius_offset___block_invoke;
  v9[3] = &__block_descriptor_40_e29_B32__0__UIBezierPath_8Q16_B24l;
  v9[4] = a1;
  if (([v4 itk_containsObjectPassingTest:v9] & 1) == 0)
  {
    memset(v8, 0, sizeof(v8));
    v10 = 0;
    v11 = &v10;
    v12 = 0x15012000000;
    v13 = __Block_byref_object_copy__16;
    v14 = __Block_byref_object_dispose__17;
    v15 = &unk_254C2D841;
    v5 = ClipperLib::Clipper::Clipper(v16, 0);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __67__UIBezierPath_ITKUtilities__itk_groupAndRoundPaths_radius_offset___block_invoke_19;
    v7[3] = &unk_2797B0248;
    v7[4] = &v10;
    [v4 enumerateObjectsUsingBlock:{v7, v5}];
    ClipperLib::Clipper::Execute((v11 + 6), 1, v8, 0);
    operator new();
  }

  return 0;
}

+ (uint64_t)itk_cgPathcontainsAnyCurveToPoints:()ITKUtilities
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__UIBezierPath_ITKUtilities__itk_cgPathcontainsAnyCurveToPoints___block_invoke;
  block[3] = &unk_2797B0298;
  block[4] = &v6;
  CGPathApplyWithBlock(path, block);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

+ (CGPath)_cgPathFromClipperPath:()ITKUtilities
{
  Mutable = CGPathCreateMutable();
  v6 = *a3;
  v5 = a3[1];
  while (v6 != v5)
  {
    v7 = *v6;
    v8 = v6[1];
    if (*v6 != v8)
    {
      v9 = 1;
      do
      {
        if (v9)
        {
          CGPathMoveToPoint(Mutable, 0, **v6, (*v6)[1]);
        }

        else
        {
          CGPathAddLineToPoint(Mutable, 0, *v7, v7[1]);
        }

        v9 = 0;
        v7 += 3;
      }

      while (v7 != v8);
    }

    CGPathCloseSubpath(Mutable);
    v6 += 3;
  }

  return Mutable;
}

+ (CGPath)itk_newRoundedPathWithRadius:()ITKUtilities points:
{
  v6 = a4;
  v7 = [v6 mutableCopy];
  [a1 _processPointsForRounding:v7 withRadius:a2];
  [a1 _processPointsForNarrowAngles:v7];
  v8 = v7;

  Mutable = CGPathCreateMutable();
  v10 = 0;
  v55 = a2;
  while ([v8 count] > v10)
  {
    v11 = [v8 objectAtIndex:v10];
    [v11 itk_pointValue];
    v13 = v12;
    v15 = v14;

    v16 = [v8 objectAtIndex:{(v10 + 1) % objc_msgSend(v8, "count")}];
    [v16 itk_pointValue];
    v18 = v17;
    v20 = v19;

    v21 = [v8 objectAtIndex:{(v10 + 2) % objc_msgSend(v8, "count")}];
    [v21 itk_pointValue];
    v23 = v22;
    v25 = v24;

    v26 = [v8 objectAtIndex:{(v10 + 3) % objc_msgSend(v8, "count")}];
    [v26 itk_pointValue];
    v58 = v28;
    v59 = v27;

    v29 = a2;
    v30 = a2;
    v31 = v15;
    [MEMORY[0x277D75208] itk_clampedRadius:v29 p1:v13 p2:v15 p3:{v18, v20, v23, v25}];
    v33 = v32;
    [MEMORY[0x277D75208] itk_clampedRadius:v30 p1:v18 p2:v20 p3:{v23, v25, v59, v58}];
    v35 = v34;
    radius = fmin(v33, v34);
    [MEMORY[0x277D75208] itk_calculateCenterForPoints:v13 p2:v31 p3:v18 radius:{v20, v23, v25}];
    v37 = v36;
    v39 = v38;
    [MEMORY[0x277D75208] itk_projectPoint:? lineStart:? lineEnd:?];
    x = v40;
    v42 = v41;
    [MEMORY[0x277D75208] itk_projectPoint:v37 lineStart:v39 lineEnd:{v18, v20, v23, v25}];
    if (!v10)
    {
      CGPathMoveToPoint(Mutable, 0, x, v42);
    }

    [MEMORY[0x277D75208] itk_calculateCenterForPoints:v18 p2:v20 p3:v23 radius:{v25, v59, v58, v35}];
    [MEMORY[0x277D75208] itk_projectPoint:? lineStart:? lineEnd:?];
    v44 = v43;
    v46 = v45;
    ITKAngleBetweenPoints();
    v48 = v47;
    ITKAngleBetweenPoints();
    v50 = v49;
    ITKNormalizeAngleInRadians();
    v52 = v51;
    ITKNormalizeAngleInRadians();
    CGPathAddArc(Mutable, 0, v37, v39, radius, v48, v50, v52 >= v53);
    a2 = v55;
    ++v10;
    CGPathAddLineToPoint(Mutable, 0, v44, v46);
  }

  CGPathCloseSubpath(Mutable);

  return Mutable;
}

+ (void)_processPointsForNarrowAngles:()ITKUtilities
{
  v25 = a3;
  for (i = 0; [v25 count] > i; ++i)
  {
    v4 = [v25 count];
    v5 = [v25 count];
    v6 = [v25 objectAtIndex:i];
    [v6 itk_pointValue];
    v8 = v7;
    v10 = v9;
    v11 = (i + 1) % v4;

    v12 = [v25 objectAtIndex:v11];
    [v12 itk_pointValue];
    v14 = v13;
    v16 = v15;

    v17 = [v25 objectAtIndex:(i + 2) % v5];
    [v17 itk_pointValue];
    v19 = v18;
    v21 = v20;

    ITKAngleBetweenPoints();
    v23 = fabs(v22);
    if (v23 < 0.785398163 || v23 > 5.49778714)
    {
      [MEMORY[0x277D75208] itk_projectPoint:v8 lineStart:v10 lineEnd:{v14, v16, v19, v21}];
      v24 = [MEMORY[0x277CCAE60] itk_valueWithPoint:?];
      [v25 setObject:v24 atIndexedSubscript:v11];
    }
  }
}

+ (void)_processPointsForRounding:()ITKUtilities withRadius:
{
  v5 = a4;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__8;
  v17[4] = __Block_byref_object_dispose__9;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__8;
  v15 = __Block_byref_object_dispose__9;
  v16 = 0;
  v6 = [v5 copy];
  v10[1] = 3221225472;
  v10[0] = MEMORY[0x277D85DD0];
  v10[2] = __67__UIBezierPath_ITKUtilities___processPointsForRounding_withRadius___block_invoke;
  v10[3] = &unk_2797B02C0;
  *&v10[6] = a1 / 3.0;
  v10[4] = v17;
  v10[5] = &v11;
  [v6 enumerateObjectsUsingBlock:v10];

  if (v12[5])
  {
    [v5 removeObjectsAtIndexes:?];
  }

  v7 = [v5 firstObject];
  [v7 itk_pointValue];
  v8 = [v5 lastObject];
  [v8 itk_pointValue];
  v9 = ITKNearlyEqualPointsWithThreshold();

  if (v9)
  {
    [v5 removeLastObject];
  }

  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(v17, 8);
}

+ (id)itk_shiftLinePerpendicularlyFromPoint:()ITKUtilities to:radius:
{
  v8 = objc_alloc_init(MEMORY[0x277D1C0F8]);
  if (a1 != a3 && a2 != a4)
  {
    ITKSlopeOfLine();
    v10 = atan(fabs(v9));
    cos(v10);
  }

  ITKAddPoints();
  [v8 setStartPoint:?];
  ITKAddPoints();
  [v8 setEndPoint:?];

  return v8;
}

+ (uint64_t)itk_signForRadiusWithVectorStart:()ITKUtilities end:otherPoint:
{
  if (a1 != a3)
  {
    return ITKSlopeOfLine();
  }

  return result;
}

+ (void)itk_calculateCenterForPoints:()ITKUtilities p2:p3:radius:
{
  [a1 itk_signForRadiusWithVectorStart:? end:? otherPoint:?];
  v16 = [MEMORY[0x277D75208] itk_shiftLinePerpendicularlyFromPoint:a2 to:a3 radius:{a4, a5, v15 * a8}];
  [MEMORY[0x277D75208] itk_signForRadiusWithVectorStart:a6 end:a7 otherPoint:{a4, a5, a2, a3}];
  v18 = [MEMORY[0x277D75208] itk_shiftLinePerpendicularlyFromPoint:a6 to:a7 radius:{a4, a5, v17 * a8}];
  [v16 startPoint];
  [v16 endPoint];
  [v18 startPoint];
  [v18 endPoint];
  ITKIntersectionOfLines();
}

+ (double)itk_projectPoint:()ITKUtilities lineStart:lineEnd:
{
  v6 = a3;
  v15 = *MEMORY[0x277CBF348];
  if (a3 != a5)
  {
    if (a4 == a6)
    {
      return a1;
    }

    else
    {
      ITKSlopeOfLine();
      v11 = v10;
      v12 = objc_alloc_init(MEMORY[0x277D1C0F0]);
      [v12 setA:v11];
      [v12 setB:a4 - v11 * v6];
      v13 = objc_alloc_init(MEMORY[0x277D1C0F0]);
      [v13 setA:-1.0 / v11];
      [v13 setB:a2 + 1.0 / v11 * a1];
      ITKIntersectsLine();

      return *&v15;
    }
  }

  return v6;
}

+ (void)itk_roundAndGroupNormalizedQuadsForHighlight:()ITKUtilities aspectRatio:expansionScale:radiusToAvgHeightRatio:
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277D75208]);
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x13812000000;
  v6[3] = __Block_byref_object_copy__25;
  v6[4] = __Block_byref_object_dispose__26;
  v6[5] = &unk_254C2D841;
  ClipperLib::ClipperOffset::ClipperOffset(&v7, 2.0, 0.25);
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  operator new();
}

+ (double)radiusForQuads:()ITKUtilities radiusRatio:
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [v5 count];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v14 + 1) + 8 * i) sideLength];
        v10 = v10 + v12;
      }

      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0.0;
  }

  return v10 / v6 * a1;
}

+ (id)mapPaths:()ITKUtilities toQuads:
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v8 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:v6];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __47__UIBezierPath_ITKUtilities__mapPaths_toQuads___block_invoke;
  v14[3] = &unk_2797B0360;
  v15 = v8;
  v9 = v7;
  v16 = v9;
  v10 = v8;
  [v5 enumerateObjectsUsingBlock:v14];
  v11 = v16;
  v12 = v9;

  return v9;
}

@end