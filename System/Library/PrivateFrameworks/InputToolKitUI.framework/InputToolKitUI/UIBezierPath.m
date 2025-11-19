@interface UIBezierPath
@end

@implementation UIBezierPath

__n128 __54__UIBezierPath_ITKUtilities__itk_lengthIgnoringCurves__block_invoke(void *a1, int *a2)
{
  v3 = *a2;
  v4 = MEMORY[0x277D1C0D8];
  *(*(a1[4] + 8) + 48) = *MEMORY[0x277D1C0D8];
  if ((v3 - 2) >= 2)
  {
    if (v3 != 1)
    {
      if (v3)
      {
        goto LABEL_7;
      }

      *(*(a1[5] + 8) + 48) = *v4;
    }

    *(*(a1[4] + 8) + 48) = **(a2 + 1);
  }

  *(*(a1[4] + 8) + 48) = **(a2 + 1);
LABEL_7:
  v5 = *(a1[5] + 8);
  v6 = *v4;
  v7 = v4[1];
  v8 = *(a1[4] + 8);
  v9 = *(v8 + 56);
  v10 = *(v8 + 48) == v6;
  v11 = v9 == v7 && v10;
  v12 = *(v5 + 56) == v7 && *(v5 + 48) == v6;
  if (!v12 && !v11)
  {
    ITKDistance();
    *(*(a1[6] + 8) + 24) = v13 + *(*(a1[6] + 8) + 24);
  }

  if (v11)
  {
    v14 = MEMORY[0x277D1C0D8];
  }

  else
  {
    v14 = (*(a1[4] + 8) + 48);
  }

  result = *v14;
  *(*(a1[5] + 8) + 48) = *v14;
  return result;
}

void __54__UIBezierPath_ITKUtilities__itk_allPointsFromCGPath___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2 > 1)
  {
    if (v2 != 2 && v2 != 3)
    {
      return;
    }

    v4 = *(a1 + 32);
    v5 = [MEMORY[0x277CCAE60] itk_valueWithPoint:{*(*(a2 + 8) + 32), *(*(a2 + 8) + 40)}];
    [v4 addObject:?];
  }

  else
  {
    if (v2 > 1)
    {
      return;
    }

    v3 = *(a1 + 32);
    v5 = [MEMORY[0x277CCAE60] itk_valueWithPoint:{**(a2 + 8), *(*(a2 + 8) + 8)}];
    [v3 addObject:?];
  }
}

uint64_t __57__UIBezierPath_ITKUtilities__itk_pathFromFlippingInRect___block_invoke(uint64_t result, int *a2)
{
  v2 = result;
  v3 = *a2;
  if (*a2 > 1)
  {
    if (v3 != 2)
    {
      if (v3 == 3)
      {
        v6 = *(result + 32);
        ITKFlipPoint();
        v8 = v7;
        v10 = v9;
        ITKFlipPoint();

        return [v6 itk_addCurveToPoint:v8 controlPoint1:v10 controlPoint2:?];
      }

      else if (v3 == 4)
      {
        v4 = *(result + 32);

        return [v4 closePath];
      }

      return result;
    }

    [MEMORY[0x277D1C0E8] handleFailedAssertWithCondition:"__objc_no" functionName:"-[UIBezierPath(ITKUtilities) itk_pathFromFlippingInRect:]_block_invoke" simulateCrash:0 showAlert:0 format:@"kCGPathElementAddQuadCurveToPoint not supported."];
    goto LABEL_12;
  }

  if (v3)
  {
    if (v3 != 1)
    {
      return result;
    }

LABEL_12:
    v5 = *(v2 + 32);
    ITKFlipPoint();

    return [v5 itk_addLineToPoint:?];
  }

  v11 = *(result + 32);
  ITKFlipPoint();

  return [v11 moveToPoint:?];
}

uint64_t __57__UIBezierPath_ITKUtilities__itk_subpathArrayFromCGPath___block_invoke(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *a2;
  if (*a2 > 1)
  {
    if (v4 != 2)
    {
      if (v4 == 3)
      {
        v9 = *(*(*(result + 40) + 8) + 40);
        v10 = *(a2 + 8);
        v11 = v10[4];
        v12 = v10[5];
        v13 = *v10;
        v14 = v10[1];
        v15 = v10[2];
        v16 = v10[3];

        return [v9 itk_addCurveToPoint:v11 controlPoint1:v12 controlPoint2:{v13, v14, v15, v16}];
      }

      else if (v4 == 4)
      {
        [*(*(*(result + 40) + 8) + 40) closePath];
        [*(v3 + 32) addObject:*(*(*(v3 + 40) + 8) + 40)];
        *(*(*(v3 + 40) + 8) + 40) = objc_alloc_init(MEMORY[0x277D75208]);

        return MEMORY[0x2821F96F8]();
      }

      return result;
    }

    [MEMORY[0x277D1C0E8] handleFailedAssertWithCondition:"__objc_no" functionName:"+[UIBezierPath(ITKUtilities) itk_subpathArrayFromCGPath:]_block_invoke" simulateCrash:0 showAlert:0 format:@"kCGPathElementAddQuadCurveToPoint not supported."];
    goto LABEL_12;
  }

  if (v4)
  {
    if (v4 != 1)
    {
      return result;
    }

LABEL_12:
    v5 = *(*(*(v3 + 40) + 8) + 40);
    v6 = *(a2 + 8);
    v7 = *v6;
    v8 = v6[1];

    return [v5 itk_addLineToPoint:{v7, v8}];
  }

  v17 = *(*(*(result + 40) + 8) + 40);
  v18 = *(a2 + 8);
  v19 = *v18;
  v20 = v18[1];

  return [v17 moveToPoint:{v19, v20}];
}

uint64_t __67__UIBezierPath_ITKUtilities__itk_groupAndRoundPaths_radius_offset___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) itk_cgPathcontainsAnyCurveToPoints:{objc_msgSend(v3, "itk_CGPath")}];

  return v4;
}

void __67__UIBezierPath_ITKUtilities__itk_groupAndRoundPaths_radius_offset___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [*(a1 + 40) itk_allPointsFromCGPath:{objc_msgSend(v10, "itk_CGPath")}];
  v4 = [v3 lastObject];
  v5 = [v3 firstObject];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    [v3 removeLastObject];
  }

  v7 = [*(a1 + 40) itk_newRoundedPathWithRadius:v3 points:*(a1 + 48)];
  v8 = *(a1 + 32);
  v9 = [MEMORY[0x277D75208] itk_pathFromCGPath:v7];
  [v8 itk_appendBezierPath:v9];

  CGPathRelease(v7);
}

uint64_t __65__UIBezierPath_ITKUtilities__itk_cgPathcontainsAnyCurveToPoints___block_invoke(uint64_t result, _DWORD *a2)
{
  if ((*a2 & 0xFFFFFFFE) == 2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void __67__UIBezierPath_ITKUtilities___processPointsForRounding_withRadius___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v12 = v6;
  if (!a3)
  {
    v7 = a1 + 32;
    goto LABEL_7;
  }

  [v6 itk_pointValue];
  v7 = a1 + 32;
  [*(*(*(a1 + 32) + 8) + 40) itk_pointValue];
  if (!ITKNearlyEqualPointsWithThreshold())
  {
LABEL_7:
    objc_storeStrong((*(*v7 + 8) + 40), a2);
    goto LABEL_8;
  }

  v8 = *(*(*(a1 + 40) + 8) + 40);
  if (!v8)
  {
    v9 = [MEMORY[0x277CCAB58] indexSet];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v8 = *(*(*(a1 + 40) + 8) + 40);
  }

  [v8 addIndex:a3];
LABEL_8:
}

void __125__UIBezierPath_ITKUtilities__itk_roundAndGroupNormalizedQuadsForHighlight_aspectRatio_expansionScale_radiusToAvgHeightRatio___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 quadMultipliedBySize:{*(a1 + 40), *(a1 + 48)}];
  [v2 addObject:?];
}

void __125__UIBezierPath_ITKUtilities__itk_roundAndGroupNormalizedQuadsForHighlight_aspectRatio_expansionScale_radiusToAvgHeightRatio___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 sideLength];
  [v2 path];
  v3 = [objc_claimAutoreleasedReturnValue() itk_CGPath];
  ITKClipperPathsFromCGPath(v3, 1.0);
}

void __125__UIBezierPath_ITKUtilities__itk_roundAndGroupNormalizedQuadsForHighlight_aspectRatio_expansionScale_radiusToAvgHeightRatio___block_invoke_3(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 48) itk_allPointsFromCGPath:{objc_msgSend(v11, "itk_CGPath")}];
  v4 = [v3 lastObject];
  v5 = [v3 firstObject];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    [v3 removeLastObject];
  }

  v7 = [*(a1 + 32) objectForKey:v11];
  [*(a1 + 48) radiusForQuads:v7 radiusRatio:*(a1 + 56)];
  v8 = [*(a1 + 48) itk_newRoundedPathWithRadius:v3 points:?];
  v9 = *(a1 + 40);
  v10 = [MEMORY[0x277D75208] itk_pathFromCGPath:v8];
  [v9 itk_appendBezierPath:v10];

  CGPathRelease(v8);
}

void __47__UIBezierPath_ITKUtilities__mapPaths_toQuads___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [*(a1 + 32) copy];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        [v8 vertexCentroid];
        if ([v3 containsPoint:?])
        {
          v9 = [*(a1 + 40) objectForKey:v3];
          if (!v9)
          {
            v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
            [*(a1 + 40) setObject:? forKey:?];
          }

          [v9 addObject:v8];
          [*(a1 + 32) removeObject:v8];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

@end