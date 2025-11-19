@interface CUIPSDGradientEvaluator
+ (void)initialize;
- (CUIPSDGradientEvaluator)initWithCoder:(id)a3;
- (CUIPSDGradientEvaluator)initWithColorStops:(id)a3 colorMidpoints:(id)a4 opacityStops:(id)a5 opacityMidpoints:(id)a6 smoothingCoefficient:(double)a7 fillColor:(_psdGradientColor)a8 dither:(BOOL)a9;
- (_psdGradientColor)_smoothedGradientColorAtLocation:(double)a3;
- (_psdGradientColor)fillColor;
- (double)_smoothedInterpolationOfLocation:(double)a3 betweenLower:(double)a4 upper:(double)a5 scaledMidpoint:(double)a6;
- (id)_cleanedUpMidpointLocationsFromLocations:(id)a3;
- (id)colorMidpointLocations;
- (id)colorStops;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)opacityMidpointLocations;
- (id)opacityStops;
- (void)_createOrderedStops:(id *)a3 midpoints:(id *)a4 fromStops:(id)a5 midpoints:(id)a6 edgePixel:(int64_t *)a7;
- (void)customizeForDistance:(double)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setColorStops:(id)a3 midpoints:(id)a4;
- (void)setFillCoefficient:(double)a3;
- (void)setOpacityStops:(id)a3 midpoints:(id)a4;
- (void)setSmoothingCoefficient:(double)a3;
@end

@implementation CUIPSDGradientEvaluator

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    [a1 setVersion:2];
  }
}

- (id)_cleanedUpMidpointLocationsFromLocations:(id)a3
{
  v4 = +[NSMutableArray array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(a3);
        }

        [*(*(&v24 + 1) + 8 * i) doubleValue];
        if (v9 >= 1.0 || v9 <= 0.0)
        {
          v9 = 0.5;
        }

        [v4 addObject:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v9)}];
      }

      v6 = [a3 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v6);
  }

  v11 = [v4 reverseObjectEnumerator];
  v12 = [v4 count];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    while (2)
    {
      v16 = 0;
      v17 = (v12 - v14);
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v20 + 1) + 8 * v16) doubleValue];
        if (v18 != 0.5)
        {
          v17 = (v12 - v16);
          return [v4 subarrayWithRange:{0, v17}];
        }

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
      v12 = v17;
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v17 = v12;
  }

  return [v4 subarrayWithRange:{0, v17}];
}

- (void)_createOrderedStops:(id *)a3 midpoints:(id *)a4 fromStops:(id)a5 midpoints:(id)a6 edgePixel:(int64_t *)a7
{
  v8 = [a6 count];
  v74 = [a5 count];
  v9 = [[NSMutableArray alloc] initWithCapacity:v74];
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v10 = [a5 countByEnumeratingWithState:&v80 objects:v85 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v81;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v81 != v13)
        {
          objc_enumerationMutation(a5);
        }

        v15 = *(*(&v80 + 1) + 8 * i);
        v16 = [_CUIPSDStopAndMidpointPair alloc];
        if (v12 >= v8)
        {
          v17 = 0;
        }

        else
        {
          v17 = [a6 objectAtIndex:v12++];
        }

        v18 = [(_CUIPSDStopAndMidpointPair *)v16 initWithStop:v15 midpoint:v17];
        [v9 addObject:v18];
      }

      v11 = [a5 countByEnumeratingWithState:&v80 objects:v85 count:16];
    }

    while (v11);
  }

  v19 = v9;
  [v9 sortUsingSelector:sel_compare_];
  if (v74)
  {
    v20 = [objc_msgSend(v9 objectAtIndex:{0), "stop"}];
    [v20 location];
    if (v21 != 0.0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = [CUIPSDGradientColorStop alloc];
        [v20 gradientColor];
        v27 = [(CUIPSDGradientColorStop *)v22 initWithLocation:0.0 gradientColor:v23, v24, v25, v26];
      }

      else
      {
        v28 = [CUIPSDGradientOpacityStop alloc];
        [v20 opacity];
        v27 = [(CUIPSDGradientOpacityStop *)v28 initWithLocation:0.0 opacity:v29];
      }

      v30 = v27;
      v31 = [[_CUIPSDStopAndMidpointPair alloc] initWithStop:v27 midpoint:0];

      [v9 insertObject:v31 atIndex:0];
    }

    v32 = [objc_msgSend(v9 "lastObject")];
    [v32 location];
    if (v33 != 1.0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v34 = [CUIPSDGradientColorStop alloc];
        if ([v32 isDoubleStop])
        {
          [v32 leadOutColor];
        }

        else
        {
          [v32 gradientColor];
        }

        v41 = [(CUIPSDGradientColorStop *)v34 initWithLocation:1.0 gradientColor:v35, v36, v37, v38];
      }

      else
      {
        v39 = [CUIPSDGradientOpacityStop alloc];
        if ([v32 isDoubleStop])
        {
          [v32 leadOutOpacity];
        }

        else
        {
          [v32 opacity];
        }

        v41 = [(CUIPSDGradientOpacityStop *)v39 initWithLocation:1.0 opacity:v40];
      }

      v42 = v41;
      v43 = [[_CUIPSDStopAndMidpointPair alloc] initWithStop:v41 midpoint:0];

      [v19 addObject:v43];
    }
  }

  v44 = [v19 count];
  v45 = [[NSMutableArray alloc] initWithCapacity:v44];
  v46 = [[NSMutableArray alloc] initWithCapacity:v44];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v47 = [v19 countByEnumeratingWithState:&v76 objects:v84 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v77;
    do
    {
      for (j = 0; j != v48; j = j + 1)
      {
        if (*v77 != v49)
        {
          objc_enumerationMutation(v19);
        }

        v51 = *(*(&v76 + 1) + 8 * j);
        [v45 addObject:{objc_msgSend(v51, "stop")}];
        [v51 midpoint];
        [v46 addObject:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:")}];
      }

      v48 = [v19 countByEnumeratingWithState:&v76 objects:v84 count:16];
    }

    while (v48);
  }

  if (v74 < 3)
  {
    v59 = [objc_msgSend(v45 "firstObject")];
    v57 = v59;
    v60 = [objc_msgSend(v45 "lastObject")];
    v61 = 2;
    if (v59)
    {
      v61 = 3;
    }

    if (v60)
    {
      v57 = v61;
    }

    v54 = a4;
    v53 = a7;
    v56 = self;
    v55 = a3;
  }

  else
  {
    v52 = [v45 objectAtIndex:1];
    v54 = a4;
    v53 = a7;
    v56 = self;
    v55 = a3;
    if (([objc_msgSend(v45 "firstObject")] & 1) != 0 || objc_msgSend(v52, "isDoubleStop") && (objc_msgSend(v52, "location"), v63 = v62, objc_msgSend(objc_msgSend(v45, "objectAtIndex:", 0), "location"), v63 - v64 < 0.02))
    {
      v57 = 1;
      v58 = 3;
    }

    else
    {
      v57 = 0;
      v58 = 2;
    }

    v65 = [v45 objectAtIndex:v74 - 2];
    if (([objc_msgSend(v45 "lastObject")] & 1) != 0 || objc_msgSend(v65, "isDoubleStop") && (objc_msgSend(objc_msgSend(v45, "lastObject"), "location"), v67 = v66, objc_msgSend(v65, "location"), v67 - v68 < 0.02))
    {
      v57 = v58;
    }
  }

  v69 = [(CUIPSDGradientEvaluator *)v56 _cleanedUpMidpointLocationsFromLocations:v46];

  *v53 = v57;
  *v55 = v45;
  *v54 = v69;
}

- (CUIPSDGradientEvaluator)initWithColorStops:(id)a3 colorMidpoints:(id)a4 opacityStops:(id)a5 opacityMidpoints:(id)a6 smoothingCoefficient:(double)a7 fillColor:(_psdGradientColor)a8 dither:(BOOL)a9
{
  v9 = a9;
  alpha = a8.alpha;
  blue = a8.blue;
  green = a8.green;
  red = a8.red;
  v33.receiver = self;
  v33.super_class = CUIPSDGradientEvaluator;
  v16 = [(CUIPSDGradientEvaluator *)&v33 init];
  if (v16)
  {
    if (![a3 count])
    {
      [CUIPSDGradientEvaluator initWithColorStops:a2 colorMidpoints:v16 opacityStops:? opacityMidpoints:? smoothingCoefficient:? fillColor:? dither:?];
    }

    v17.f64[0] = a7;
    v17.f64[1] = red;
    v18 = vcltzq_f64(v17);
    v19 = 0.0;
    if (alpha >= 0.0)
    {
      v19 = alpha;
    }

    *(v16 + 9) = fmin(v19, 1.0);
    __asm { FMOV            V1.2D, #1.0 }

    *v25.i64 = green;
    *&v25.i64[1] = blue;
    *(v16 + 40) = vminnmq_f64(vbicq_s8(v17, v18), _Q1);
    *(v16 + 56) = vminnmq_f64(vbicq_s8(v25, vcltzq_f64(v25)), _Q1);
    v32 = 0;
    [v16 _createOrderedStops:v16 + 8 midpoints:v16 + 16 fromStops:a3 midpoints:a4 edgePixel:&v32];
    v16[88] = v16[88] & 0xFC | v32 & 3;
    [v16 _createOrderedStops:v16 + 24 midpoints:v16 + 32 fromStops:a5 midpoints:a6 edgePixel:&v32];
    if (v9)
    {
      v26 = 16;
    }

    else
    {
      v26 = 0;
    }

    v16[88] = v16[88] & 0xE3 | v26 | (4 * (v32 & 3));
  }

  return v16;
}

- (CUIPSDGradientEvaluator)initWithCoder:(id)a3
{
  v22.receiver = self;
  v22.super_class = CUIPSDGradientEvaluator;
  v4 = [(CUIPSDGradientEvaluator *)&v22 init];
  if (v4)
  {
    if ([a3 allowsKeyedCoding])
    {
      v5 = [a3 decodeIntegerForKey:@"CUIPSDGradientEvaluatorVersion"];
      v4->colorStops = [a3 decodeObjectForKey:@"CUIPSDGradientEvaluatorColorStops"];
      v4->colorMidpointLocations = [a3 decodeObjectForKey:@"CUIPSDGradientEvaluatorColorMidpointLocations"];
      v4->opacityStops = [a3 decodeObjectForKey:@"CUIPSDGradientEvaluatorOpacityStops"];
      v4->opacityMidpointLocations = [a3 decodeObjectForKey:@"CUIPSDGradientEvaluatorOpacityMidpointLocations"];
      [a3 decodeDoubleForKey:@"CUIPSDGradientEvaluatorSmoothingCoefficient"];
      v4->smoothingCoefficient = v6;
      [a3 decodeDoubleForKey:@"CUIPSDGradientEvaluatorFillCoefficient"];
      v4->fillColor.alpha = v7;
      if (v5 <= 1)
      {
        __asm { FMOV            V0.2D, #1.0 }

        *&v4->fillColor.red = _Q0;
        v10 = 1.0;
      }

      else
      {
        [a3 decodeDoubleForKey:@"CUIPSDGradientEvaluatorFillColorRed"];
        v4->fillColor.red = v8;
        [a3 decodeDoubleForKey:@"CUIPSDGradientEvaluatorFillColorGreen"];
        v4->fillColor.green = v9;
        [a3 decodeDoubleForKey:@"CUIPSDGradientEvaluatorFillColorBlue"];
      }

      v4->fillColor.blue = v10;
      LOBYTE(v4[1].super.isa) = v4[1].super.isa & 0xFC | [a3 decodeIntegerForKey:@"CUIPSDGradientEvaluatorColorEdgePixel"] & 3;
      LOBYTE(v4[1].super.isa) = (4 * ([a3 decodeIntegerForKey:@"CUIPSDGradientEvaluatorOpacityEdgePixel"] & 3)) | v4[1].super.isa & 0xF3;
    }

    else
    {
      v11 = [a3 versionForClassName:@"CUIPSDGradientEvaluator"];
      v21 = 0.0;
      v20 = 0;
      v19 = 0;
      [a3 decodeValuesOfObjCTypes:{"@@@@ddii", &v4->colorStops, &v4->colorMidpointLocations, &v4->opacityStops, &v4->opacityMidpointLocations, &v21, &v4->fillColor.alpha, &v20, &v19}];
      v4->smoothingCoefficient = v21;
      LOBYTE(v4[1].super.isa) = v4[1].super.isa & 0xF0 | v20 & 3 | (4 * (v19 & 3));
      if (v11 < 2)
      {
        __asm { FMOV            V0.2D, #1.0 }

        *&v4->fillColor.red = _Q0;
        v4->fillColor.blue = 1.0;
      }

      else
      {
        [a3 decodeValuesOfObjCTypes:{"ddd", &v4->fillColor, &v4->fillColor.green, &v4->fillColor.blue}];
      }
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  if ([a3 allowsKeyedCoding])
  {
    [a3 encodeInteger:+[CUIPSDGradientEvaluator version](CUIPSDGradientEvaluator forKey:{"version"), @"CUIPSDGradientEvaluatorVersion"}];
    [a3 encodeObject:self->colorStops forKey:@"CUIPSDGradientEvaluatorColorStops"];
    [a3 encodeObject:self->colorMidpointLocations forKey:@"CUIPSDGradientEvaluatorColorMidpointLocations"];
    [a3 encodeObject:self->opacityStops forKey:@"CUIPSDGradientEvaluatorOpacityStops"];
    [a3 encodeObject:self->opacityMidpointLocations forKey:@"CUIPSDGradientEvaluatorOpacityMidpointLocations"];
    [a3 encodeDouble:@"CUIPSDGradientEvaluatorSmoothingCoefficient" forKey:self->smoothingCoefficient];
    [a3 encodeDouble:@"CUIPSDGradientEvaluatorFillCoefficient" forKey:self->fillColor.alpha];
    [a3 encodeDouble:@"CUIPSDGradientEvaluatorFillColorRed" forKey:self->fillColor.red];
    [a3 encodeDouble:@"CUIPSDGradientEvaluatorFillColorGreen" forKey:self->fillColor.green];
    [a3 encodeDouble:@"CUIPSDGradientEvaluatorFillColorBlue" forKey:self->fillColor.blue];
    isa_low = LOBYTE(self[1].super.isa);
    v6 = (isa_low >> 2) & 3;
    [a3 encodeInteger:isa_low & 3 forKey:@"CUIPSDGradientEvaluatorColorEdgePixel"];

    [a3 encodeInteger:v6 forKey:@"CUIPSDGradientEvaluatorOpacityEdgePixel"];
  }

  else
  {
    v7 = LOBYTE(self[1].super.isa);
    smoothingCoefficient = self->smoothingCoefficient;
    v8 = (v7 >> 2) & 3;
    v9 = v7 & 3;
    [a3 encodeValuesOfObjCTypes:{"@@@@ddiiddd", &self->colorStops, &self->colorMidpointLocations, &self->opacityStops, &self->opacityMidpointLocations, &smoothingCoefficient, &self->fillColor.alpha, &v9, &v8, &self->fillColor, &self->fillColor.green, &self->fillColor.blue}];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[1] = [[NSArray allocWithZone:?]copyItems:"initWithArray:copyItems:", self->colorStops, 1];
  v5[2] = [[NSArray allocWithZone:?]copyItems:"initWithArray:copyItems:", self->colorMidpointLocations, 1];
  v5[3] = [[NSArray allocWithZone:?]copyItems:"initWithArray:copyItems:", self->opacityStops, 1];
  v5[4] = [[NSArray allocWithZone:?]copyItems:"initWithArray:copyItems:", self->opacityMidpointLocations, 1];
  v5[5] = *&self->smoothingCoefficient;
  v6 = *&self->fillColor.blue;
  *(v5 + 3) = *&self->fillColor.red;
  *(v5 + 4) = v6;
  v5[11] = self[1].super.isa;
  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUIPSDGradientEvaluator;
  [(CUIPSDGradientEvaluator *)&v3 dealloc];
}

- (double)_smoothedInterpolationOfLocation:(double)a3 betweenLower:(double)a4 upper:(double)a5 scaledMidpoint:(double)a6
{
  if (a3 <= a6)
  {
    v6 = a3 / (a6 + a6);
  }

  else
  {
    v6 = 1.0 - (1.0 - a3) / (1.0 - a6 + 1.0 - a6);
  }

  return a4 + (self->smoothingCoefficient * (v6 * (v6 * 1.5) + v6 * 0.5 + -(v6 * v6) * v6) + (1.0 - self->smoothingCoefficient) * v6) * (a5 - a4);
}

- (_psdGradientColor)_smoothedGradientColorAtLocation:(double)a3
{
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  colorStops = self->colorStops;
  v6 = [(NSArray *)colorStops countByEnumeratingWithState:&v104 objects:v109 count:16];
  if (v6)
  {
    v7 = 0;
    v8 = *v105;
    v9 = -1;
LABEL_3:
    v10 = 0;
    v11 = v6;
    v12 = v9;
    v9 += v6;
    v13 = v12;
    v14 = v7;
    while (1)
    {
      if (*v105 != v8)
      {
        objc_enumerationMutation(colorStops);
      }

      v7 = *(*(&v104 + 1) + 8 * v10);
      [v7 colorLocation];
      if (v15 >= a3)
      {
        break;
      }

      ++v13;
      v10 = v10 + 1;
      v14 = v7;
      if (v11 == v10)
      {
        v6 = [(NSArray *)colorStops countByEnumeratingWithState:&v104 objects:v109 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        v13 = v11 + v12 - 1;
        goto LABEL_16;
      }
    }

    if (!v14 || !v7)
    {
      if (v7)
      {
        v13 = 0;
      }

      else
      {
        --v13;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v13 = -2;
LABEL_16:
    v14 = [(NSArray *)self->colorStops objectAtIndex:v13];
    v7 = [(NSArray *)self->colorStops objectAtIndex:v13 + 1];
  }

  [v14 colorLocation];
  v17 = v16;
  [v7 colorLocation];
  v19 = v18;
  v20 = [(NSArray *)self->colorStops count];
  v21 = [v14 isDoubleStop];
  v22 = [v7 isDoubleStop];
  v24 = v22;
  v25 = a3 - v17;
  if (v21)
  {
    v26 = v17 > a3 && v13 == 0;
    if (v26 || (v23 = 0.0101, v25 < 0.0101))
    {
      [v14 leadInColor];
LABEL_38:
      v39 = v43;
      v40 = v44;
      v41 = v45;
      v42 = v46;
      v98 = v45;
      v99 = v46;
      v97 = v44;
      v33 = v43;
      v34 = a3;
      goto LABEL_39;
    }
  }

  if (v22)
  {
    v27 = v19 < a3 && v13 == v20 - 1;
    if (v27 || (v23 = v19 - a3, v19 - a3 < 0.0101))
    {
      [v7 leadOutColor];
      goto LABEL_38;
    }
  }

  v28 = v19 - v17;
  if (v21)
  {
    [v14 leadOutColor];
  }

  else
  {
    [v14 gradientColor];
  }

  v33 = v29;
  v97 = v30;
  v98 = v31;
  v99 = v32;
  v34 = v25 / v28;
  if (v24)
  {
    [v7 leadInColor];
  }

  else
  {
    [v7 gradientColor];
  }

  v39 = v35;
  v40 = v36;
  v41 = v37;
  v42 = v38;
LABEL_39:
  v47 = [(CUIPSDGradientEvaluator *)self colorMidpointLocations];
  v48 = 0.5;
  if ([v47 count] > v13)
  {
    [objc_msgSend(v47 objectAtIndex:{v13), "doubleValue"}];
    v48 = v49;
  }

  [(CUIPSDGradientEvaluator *)self _smoothedInterpolationOfLocation:v34 betweenLower:v33 upper:v39 scaledMidpoint:v48];
  v51 = v50;
  [(CUIPSDGradientEvaluator *)self _smoothedInterpolationOfLocation:v34 betweenLower:v97 upper:v40 scaledMidpoint:v48];
  v53 = v52;
  [(CUIPSDGradientEvaluator *)self _smoothedInterpolationOfLocation:v34 betweenLower:v98 upper:v41 scaledMidpoint:v48];
  v55 = v54;
  [(CUIPSDGradientEvaluator *)self _smoothedInterpolationOfLocation:v34 betweenLower:v99 upper:v42 scaledMidpoint:v48];
  v57 = v56;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  opacityStops = self->opacityStops;
  v59 = [(NSArray *)opacityStops countByEnumeratingWithState:&v100 objects:v108 count:16];
  if (v59)
  {
    v60 = 0;
    v61 = *v101;
    v62 = -1;
LABEL_43:
    v63 = 0;
    v64 = v59;
    v65 = v62;
    v62 += v59;
    v66 = v65;
    v67 = v60;
    while (1)
    {
      if (*v101 != v61)
      {
        objc_enumerationMutation(opacityStops);
      }

      v60 = *(*(&v100 + 1) + 8 * v63);
      [v60 opacityLocation];
      if (v68 >= a3)
      {
        break;
      }

      ++v66;
      v63 = v63 + 1;
      v67 = v60;
      if (v64 == v63)
      {
        v59 = [(NSArray *)opacityStops countByEnumeratingWithState:&v100 objects:v108 count:16];
        if (v59)
        {
          goto LABEL_43;
        }

        v66 = v64 + v65 - 1;
        goto LABEL_56;
      }
    }

    if (!v67 || !v60)
    {
      if (v60)
      {
        v66 = 0;
      }

      else
      {
        --v66;
      }

      goto LABEL_56;
    }
  }

  else
  {
    v66 = -2;
LABEL_56:
    v67 = [(NSArray *)self->opacityStops objectAtIndex:v66];
    v60 = [(NSArray *)self->opacityStops objectAtIndex:v66 + 1];
  }

  [v67 opacityLocation];
  v70 = v69;
  [v60 opacityLocation];
  v72 = v71;
  v73 = [(NSArray *)self->opacityStops count];
  v74 = [v67 isDoubleStop];
  v75 = [v60 isDoubleStop];
  v77 = v75;
  v78 = a3 - v70;
  if (v74)
  {
    v79 = v70 > a3 && v66 == 0;
    if (v79 || (v76 = 0.0101, v78 < 0.0101))
    {
      [v67 leadInOpacity];
LABEL_77:
      v83 = v84;
      goto LABEL_78;
    }
  }

  if (v75)
  {
    v80 = v72 < a3 && v66 == v73 - 1;
    if (v80 || (v76 = v72 - a3, v72 - a3 < 0.0101))
    {
      [v60 leadOutOpacity];
      goto LABEL_77;
    }
  }

  v81 = v72 - v70;
  if (v74)
  {
    [v67 leadOutOpacity];
  }

  else
  {
    [v67 opacity];
  }

  v83 = v82;
  a3 = v78 / v81;
  if (v77)
  {
    [v60 leadInOpacity];
  }

  else
  {
    [v60 opacity];
  }

LABEL_78:
  v85 = v84;
  v86 = [(CUIPSDGradientEvaluator *)self opacityMidpointLocations];
  v87 = [v86 count];
  v88 = 0.5;
  if (v87 > v66)
  {
    [objc_msgSend(v86 objectAtIndex:{v66), "doubleValue"}];
    v88 = v89;
  }

  [(CUIPSDGradientEvaluator *)self _smoothedInterpolationOfLocation:a3 betweenLower:v83 upper:v85 scaledMidpoint:v88];
  v91 = v57 * v90;
  v92 = self->fillColor.alpha * (1.0 - v57 * v90);
  v93 = self->fillColor.red * v92 + v51 * (v57 * v90);
  v94 = self->fillColor.green * v92 + v53 * v91;
  v95 = v91 + v92;
  v96 = v92 * self->fillColor.blue + v55 * v91;
  if (v95 != 0.0)
  {
    v93 = v93 / v95;
    v94 = v94 / v95;
    v96 = v96 / v95;
  }

  result.alpha = v95;
  result.blue = v96;
  result.green = v94;
  result.red = v93;
  return result;
}

- (id)colorStops
{
  v2 = [(NSArray *)self->colorStops copy];

  return v2;
}

- (id)colorMidpointLocations
{
  v2 = [(NSArray *)self->colorMidpointLocations copy];

  return v2;
}

- (id)opacityStops
{
  v2 = [(NSArray *)self->opacityStops copy];

  return v2;
}

- (id)opacityMidpointLocations
{
  v2 = [(NSArray *)self->opacityMidpointLocations copy];

  return v2;
}

- (_psdGradientColor)fillColor
{
  red = self->fillColor.red;
  green = self->fillColor.green;
  blue = self->fillColor.blue;
  alpha = self->fillColor.alpha;
  result.alpha = alpha;
  result.blue = blue;
  result.green = green;
  result.red = red;
  return result;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = CUIPSDGradientEvaluator;
  return [NSString stringWithFormat:@"%@ - color stops: %@, opacity stops: %@", [(CUIPSDGradientEvaluator *)&v3 description], self->colorStops, self->opacityStops];
}

- (void)setColorStops:(id)a3 midpoints:(id)a4
{
  v7 = 0;
  v8 = 0;
  v6 = 0;
  [(CUIPSDGradientEvaluator *)self _createOrderedStops:&v8 midpoints:&v7 fromStops:a3 midpoints:a4 edgePixel:&v6];
  LOBYTE(self[1].super.isa) = self[1].super.isa & 0xFC | v6 & 3;

  v5 = v7;
  self->colorStops = v8;
  self->colorMidpointLocations = v5;
}

- (void)setOpacityStops:(id)a3 midpoints:(id)a4
{
  v7 = 0;
  v8 = 0;
  v6 = 0;
  [(CUIPSDGradientEvaluator *)self _createOrderedStops:&v8 midpoints:&v7 fromStops:a3 midpoints:a4 edgePixel:&v6];
  LOBYTE(self[1].super.isa) = (4 * (v6 & 3)) | self[1].super.isa & 0xF3;

  v5 = v7;
  self->opacityStops = v8;
  self->opacityMidpointLocations = v5;
}

- (void)setSmoothingCoefficient:(double)a3
{
  if (a3 < 0.0)
  {
    a3 = 0.0;
  }

  self->smoothingCoefficient = fmin(a3, 1.0);
}

- (void)setFillCoefficient:(double)a3
{
  if (a3 < 0.0)
  {
    a3 = 0.0;
  }

  self->fillColor.alpha = fmin(a3, 1.0);
}

- (void)customizeForDistance:(double)a3
{
  if ((self[1].super.isa & 0xF) == 0)
  {
    v10 = "WARNING: [CUIPSDGradientEvaluator customizeForDistance:] sent to evaluator that has no edge pixels. The message is a no-op.";
    goto LABEL_5;
  }

  if (a3 == 0.0)
  {
    v10 = "WARNING: [CUIPSDGradientEvaluator customizeForDistance:] sent to evaluator with zero distance. The message is a no-op.";
LABEL_5:

    _CUILog(1, v10, v3, v4, v5, v6, v7, v8, v16);
    return;
  }

  if ([(NSArray *)self->colorStops count]>= 4)
  {
    isa = self[1].super.isa;
    if (isa)
    {
      [-[NSArray objectAtIndex:](self->colorStops objectAtIndex:{1), "setLocation:", fmin(1.0 / a3, 0.15)}];
      isa = self[1].super.isa;
    }

    if ((isa & 2) != 0)
    {
      [-[NSArray objectAtIndex:](self->colorStops objectAtIndex:{-[NSArray count](self->colorStops, "count") - 2), "setLocation:", 1.0 - fmin(1.0 / a3, 0.15)}];
      isa = self[1].super.isa;
    }

    if ((isa & 4) != 0)
    {
      [-[NSArray objectAtIndex:](self->opacityStops objectAtIndex:{1), "setLocation:", fmin(1.0 / a3, 0.15)}];
      isa = self[1].super.isa;
    }

    if ((isa & 8) != 0)
    {
      v13 = [(NSArray *)self->opacityStops objectAtIndex:[(NSArray *)self->opacityStops count]- 2];
      v14 = 1.0 - fmin(1.0 / a3, 0.15);

      [v13 setLocation:v14];
    }
  }
}

@end