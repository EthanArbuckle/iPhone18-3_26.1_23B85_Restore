@interface CUIVectorGlyphPath
+ (CUIVectorGlyphPathElementLength)realloc_length_array:(CUIVectorGlyphPathElementLength *)realloc_length_array withNewCount:(unint64_t)count;
+ (CUIVectorGlyphPathLengthData)emptyData;
+ (float)realloc_float_array:(float *)realloc_float_array withNewCount:(unint64_t)count;
+ (id)_createAdoptingPath:(CGPath *)path clipStrokeKeyframes:(id)keyframes;
+ (id)_createConcatenatingPaths:(id)paths indices:(id)indices;
+ (id)createFromSubpaths:(id)subpaths indices:(id)indices clipStrokeIndices:(id)strokeIndices;
+ (id)createWithPath:(CGPath *)path clipStrokeKeyframeProvider:(id)provider;
+ (id)createWithPath:(CGPath *)path clipStrokeKeyframes:(id)keyframes;
+ (unint64_t)realloc_long_array:(unint64_t *)realloc_long_array withNewCount:(unint64_t)count;
- (CUIVectorGlyphPathLengthData)computeLengthData;
- (CUIVectorGlyphPathLengthData)lengthData;
- (NSData)clipStrokeKeyframes;
- (id)createCopyApplyingTransform:(CGAffineTransform *)transform;
- (id)createSubpaths;
- (int64_t)subpathCount;
- (void)dealloc;
@end

@implementation CUIVectorGlyphPath

+ (CUIVectorGlyphPathLengthData)emptyData
{
  *&retstr->elementLengths = 0u;
  *&retstr->numSubpaths = 0u;
  *&retstr->totalLength = 0u;
  retstr->totalLength = -1.0;
  return result;
}

- (int64_t)subpathCount
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  path = self->_path;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __34__CUIVectorGlyphPath_subpathCount__block_invoke;
  v5[3] = &unk_1E7257CA8;
  v5[4] = v10;
  v5[5] = &v6;
  CGPathApplyWithBlock(path, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(v10, 8);
  return v3;
}

uint64_t __34__CUIVectorGlyphPath_subpathCount__block_invoke(uint64_t result, _DWORD *a2)
{
  v2 = *(*(result + 32) + 8);
  if (*a2 == 4)
  {
    if (*(v2 + 24))
    {
      ++*(*(*(result + 40) + 8) + 24);
      v2 = *(*(result + 32) + 8);
    }

    *(v2 + 24) = 0;
  }

  else if ((*(v2 + 24) & 1) == 0)
  {
    *(v2 + 24) = 1;
  }

  return result;
}

- (void)dealloc
{
  CGPathRelease(self->_path);
  self->_path = 0;

  self->_clipStrokeKeyframes = 0;
  subpathLengths = self->_lengthData.subpathLengths;
  if (subpathLengths)
  {
    free(subpathLengths);
  }

  elementLengths = self->_lengthData.elementLengths;
  if (elementLengths)
  {
    free(elementLengths);
  }

  elementToSubpath = self->_lengthData.elementToSubpath;
  if (elementToSubpath)
  {
    free(elementToSubpath);
  }

  v6.receiver = self;
  v6.super_class = CUIVectorGlyphPath;
  [(CUIVectorGlyphPath *)&v6 dealloc];
}

- (NSData)clipStrokeKeyframes
{
  result = self->_clipStrokeKeyframes;
  if (result)
  {
    return [(NSData *)result rawKeyframesAtIndex:0];
  }

  return result;
}

- (CUIVectorGlyphPathLengthData)computeLengthData
{
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x2020000000;
  v49[3] = 6;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 50;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = malloc_type_calloc(6uLL, 4uLL, 0x100004052888210uLL);
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = malloc_type_calloc(v46[3], 8uLL, 0x100004000313F17uLL);
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = malloc_type_calloc(v46[3], 8uLL, 0x100004000313F17uLL);
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 0;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3010000000;
  v17[3] = "";
  v18 = CGPointZero;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3010000000;
  v15[3] = "";
  v16 = v18;
  path = self->_path;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __39__CUIVectorGlyphPath_computeLengthData__block_invoke;
  v14[3] = &unk_1E7257C80;
  v14[6] = &v41;
  v14[7] = &v37;
  v14[8] = &v45;
  v14[9] = &v29;
  v14[4] = self;
  v14[5] = v19;
  v14[10] = &v25;
  v14[11] = v15;
  v14[12] = v17;
  v14[13] = v49;
  v14[14] = &v33;
  v14[15] = &v21;
  CGPathApplyWithBlock(path, v14);
  v6 = [objc_opt_class() realloc_float_array:v34[3] withNewCount:v42[3]];
  v34[3] = v6;
  v7 = [objc_opt_class() realloc_length_array:v30[3] withNewCount:v38[3]];
  v30[3] = v7;
  v8 = [objc_opt_class() realloc_long_array:v26[3] withNewCount:v38[3]];
  v26[3] = v8;
  *&retstr->totalLength = 0;
  retstr->totalLength = v22[6];
  v9 = v42[3];
  if (v9)
  {
    v10 = v34[3];
  }

  else
  {
    v10 = 0;
  }

  retstr->subpathLengths = v10;
  v11 = v38[3];
  if (v11)
  {
    v12 = v30[3];
  }

  else
  {
    v12 = 0;
    v8 = 0;
  }

  retstr->elementLengths = v12;
  retstr->elementToSubpath = v8;
  retstr->numSubpaths = v9;
  retstr->numElements = v11;
  _Block_object_dispose(v15, 8);
  _Block_object_dispose(v17, 8);
  _Block_object_dispose(v19, 8);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(v49, 8);
  return result;
}

void __39__CUIVectorGlyphPath_computeLengthData__block_invoke(void *a1, uint64_t a2)
{
  v4 = *(*(a1[5] + 8) + 24);
  v5 = *(*(a1[6] + 8) + 24);
  v6 = *(*(a1[8] + 8) + 24);
  if (*(*(a1[7] + 8) + 24) + 1 > v6)
  {
    v7 = (v6 * 1.5);
    *(*(a1[9] + 8) + 24) = [objc_opt_class() realloc_length_array:*(*(a1[9] + 8) + 24) withNewCount:v7];
    *(*(a1[10] + 8) + 24) = [objc_opt_class() realloc_long_array:*(*(a1[10] + 8) + 24) withNewCount:v7];
    *(*(a1[8] + 8) + 24) = v7;
  }

  v8 = *(a2 + 8);
  v9 = *a2;
  v10 = 0.0;
  if (*a2 <= 1)
  {
    if (v9)
    {
      if (v9 != 1)
      {
        goto LABEL_23;
      }

      v10 = CGPathLineLength(*(*(a1[12] + 8) + 32), *(*(a1[12] + 8) + 40), *v8, v8[1]);
      *(*(a1[5] + 8) + 24) = *(*(a1[5] + 8) + 24) + v10;
    }

    else
    {
      *(*(a1[11] + 8) + 32) = *v8;
    }

    v19 = *(a1[12] + 8);
    v20 = *v8;
LABEL_22:
    v19[2] = v20;
    goto LABEL_23;
  }

  switch(v9)
  {
    case 2:
      v10 = CGPathQuadraticLength(*(*(a1[12] + 8) + 32), *(*(a1[12] + 8) + 40), *v8, v8[1], v8[2], v8[3]);
      *(*(a1[5] + 8) + 24) = *(*(a1[5] + 8) + 24) + v10;
      v19 = *(a1[12] + 8);
      v20 = *(v8 + 1);
      goto LABEL_22;
    case 3:
      v10 = CGPathCubicLength(*(*(a1[12] + 8) + 32), *(*(a1[12] + 8) + 40), *v8, v8[1], v8[2], v8[3], v8[4], v8[5]);
      *(*(a1[5] + 8) + 24) = *(*(a1[5] + 8) + 24) + v10;
      v19 = *(a1[12] + 8);
      v20 = *(v8 + 2);
      goto LABEL_22;
    case 4:
      v11 = *(*(a1[13] + 8) + 24);
      if (*(*(a1[6] + 8) + 24) + 1 > v11)
      {
        v12 = (v11 * 1.5);
        *(*(a1[14] + 8) + 24) = [objc_opt_class() realloc_float_array:*(*(a1[14] + 8) + 24) withNewCount:v12];
        *(*(a1[13] + 8) + 24) = v12;
      }

      v13 = *(a1[11] + 8);
      v14 = *(v13 + 32);
      v15 = *(a1[12] + 8);
      v16 = *(v15 + 32);
      if (vabdd_f64(v14, v16) >= 2.22044605e-16)
      {
        v18 = *(v15 + 40);
        v17 = *(v13 + 40);
      }

      else
      {
        v17 = *(v13 + 40);
        v18 = *(v15 + 40);
        v10 = 0.0;
        if (vabdd_f64(v17, v18) < 2.22044605e-16)
        {
          goto LABEL_21;
        }
      }

      v10 = CGPathLineLength(v16, v18, v14, v17);
LABEL_21:
      *(*(a1[5] + 8) + 24) = v10 + *(*(a1[5] + 8) + 24);
      *(*(*(a1[14] + 8) + 24) + 4 * v5) = *(*(a1[5] + 8) + 24);
      ++*(*(a1[6] + 8) + 24);
      *(*(a1[15] + 8) + 24) = *(*(a1[5] + 8) + 24) + *(*(a1[15] + 8) + 24);
      *(*(a1[5] + 8) + 24) = 0;
      *(*(a1[12] + 8) + 32) = *(*(a1[11] + 8) + 32);
      v19 = *(a1[11] + 8);
      v20 = CGPointZero;
      goto LABEL_22;
  }

LABEL_23:
  v21 = *(*(a1[9] + 8) + 24) + 8 * *(*(a1[7] + 8) + 24);
  *v21 = v4;
  *(v21 + 4) = v10;
  *(*(*(a1[10] + 8) + 24) + 8 * (*(*(a1[7] + 8) + 24))++) = v5;
}

- (CUIVectorGlyphPathLengthData)lengthData
{
  p_subpathLengths = &self->subpathLengths;
  if (*&self->subpathLengths >= 0.0)
  {
    v6 = *&self->elementToSubpath;
    *&retstr->totalLength = *p_subpathLengths;
    *&retstr->elementLengths = v6;
    *&retstr->numSubpaths = *&self->numElements;
  }

  else
  {
    *&retstr->elementLengths = 0u;
    *&retstr->numSubpaths = 0u;
    *&retstr->totalLength = 0u;
    self = [(CUIVectorGlyphPathLengthData *)self computeLengthData];
    v5 = *&retstr->elementLengths;
    *p_subpathLengths = *&retstr->totalLength;
    *(p_subpathLengths + 1) = v5;
    *(p_subpathLengths + 2) = *&retstr->numSubpaths;
  }

  return self;
}

+ (float)realloc_float_array:(float *)realloc_float_array withNewCount:(unint64_t)count
{
  result = malloc_type_realloc(realloc_float_array, 4 * count, 0x100004052888210uLL);
  if (!result)
  {
    free(realloc_float_array);
    [NSException raise:@"FailedRealloc" format:@"Requested size was not available"];
    return realloc_float_array;
  }

  return result;
}

+ (CUIVectorGlyphPathElementLength)realloc_length_array:(CUIVectorGlyphPathElementLength *)realloc_length_array withNewCount:(unint64_t)count
{
  result = malloc_type_realloc(realloc_length_array, 8 * count, 0x100004000313F17uLL);
  if (!result)
  {
    free(realloc_length_array);
    [NSException raise:@"FailedRealloc" format:@"Requested size was not available"];
    return realloc_length_array;
  }

  return result;
}

+ (unint64_t)realloc_long_array:(unint64_t *)realloc_long_array withNewCount:(unint64_t)count
{
  result = malloc_type_realloc(realloc_long_array, 8 * count, 0x100004000313F17uLL);
  if (!result)
  {
    free(realloc_long_array);
    [NSException raise:@"FailedRealloc" format:@"Requested size was not available"];
    return realloc_long_array;
  }

  return result;
}

+ (id)createWithPath:(CGPath *)path clipStrokeKeyframes:(id)keyframes
{
  v7 = objc_opt_new();
  *(v7 + 56) = MEMORY[0x193AC5C10](path);
  v14 = 0;
  v8 = [keyframes validate:&v14];
  v9 = 0;
  if (v8)
  {
    v9 = [keyframes copy];
  }

  *(v7 + 64) = v9;
  if (self)
  {
    [self emptyData];
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
  }

  *(v7 + 40) = v13;
  *(v7 + 24) = v12;
  *(v7 + 8) = v11;
  return v7;
}

+ (id)createWithPath:(CGPath *)path clipStrokeKeyframeProvider:(id)provider
{
  v6 = objc_opt_new();
  *(v6 + 56) = MEMORY[0x193AC5C10](path);
  *(v6 + 64) = 0;
  [v6 computeLengthData];
  v7 = v13[0];
  v8 = v13[1];
  *(v6 + 40) = v13[2];
  *(v6 + 24) = v8;
  *(v6 + 8) = v7;
  v9 = (*(provider + 2))(provider, v6);
  *&v13[0] = 0;
  v10 = [v9 validate:v13];
  v11 = 0;
  if (v10)
  {
    v11 = v9;
  }

  *(v6 + 64) = v11;
  return v6;
}

+ (id)_createAdoptingPath:(CGPath *)path clipStrokeKeyframes:(id)keyframes
{
  v7 = objc_opt_new();
  *(v7 + 56) = CGPathRetain(path);
  v14 = 0;
  v8 = [keyframes validate:&v14];
  keyframesCopy = 0;
  if (v8)
  {
    keyframesCopy = keyframes;
  }

  *(v7 + 64) = keyframesCopy;
  if (self)
  {
    [self emptyData];
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
  }

  *(v7 + 40) = v13;
  *(v7 + 24) = v12;
  *(v7 + 8) = v11;
  return v7;
}

+ (id)createFromSubpaths:(id)subpaths indices:(id)indices clipStrokeIndices:(id)strokeIndices
{
  if (strokeIndices)
  {
    Mutable = CGPathCreateMutable();
    v9 = [subpaths count];
    v10 = [strokeIndices count];
    v11 = 0;
    if ([indices count])
    {
      v12 = 0;
      v14 = v10 != v9 || v10 == 0;
      v15 = 0.0;
      while (1)
      {
        v16 = [subpaths objectAtIndex:{objc_msgSend(objc_msgSend(indices, "objectAtIndexedSubscript:", v12), "integerValue")}];
        CGPathAddPath(Mutable, 0, [v16 path]);
        if ([v16 encodedClipStrokeKeyframes])
        {
          break;
        }

LABEL_17:
        v15 = v15 + 1.0;
        if (++v12 >= [indices count])
        {
          goto LABEL_18;
        }
      }

      if (v11)
      {
        if (v14)
        {
LABEL_13:
          v17 = 0;
LABEL_16:
          encodedClipStrokeKeyframes = [v16 encodedClipStrokeKeyframes];
          *&v19 = v15;
          [v11 appendEncodedClipStrokeKeyframes:encodedClipStrokeKeyframes subpathOffset:v17 keyframeSetIndex:v19];
          goto LABEL_17;
        }
      }

      else
      {
        v11 = objc_alloc_init(NSMutableData);
        if (v14)
        {
          goto LABEL_13;
        }
      }

      v17 = [objc_msgSend(strokeIndices objectAtIndexedSubscript:{v12), "integerValue"}];
      goto LABEL_16;
    }

LABEL_18:
    v20 = [self _createAdoptingPath:Mutable clipStrokeKeyframes:v11];

    CGPathRelease(Mutable);
    return v20;
  }

  else
  {

    return [self _createConcatenatingPaths:? indices:?];
  }
}

+ (id)_createConcatenatingPaths:(id)paths indices:(id)indices
{
  path1 = CGPathCreateMutable();
  v6 = objc_alloc_init(NSMutableArray);
  v24 = [paths count];
  if (indices)
  {
    pathsCopy = indices;
  }

  else
  {
    pathsCopy = paths;
  }

  v8 = [pathsCopy count];
  if (v8)
  {
    v9 = 0;
    v10 = 0.0;
    do
    {
      v11 = v9;
      if (!indices || (v11 = [objc_msgSend(indices objectAtIndexedSubscript:{v9), "integerValue"}], v11 < v24))
      {
        v12 = [paths objectAtIndexedSubscript:v11];
        CGPathAddPath(path1, 0, [v12 path]);
        encodedClipStrokeKeyframes = [v12 encodedClipStrokeKeyframes];
        if (encodedClipStrokeKeyframes)
        {
          v14 = encodedClipStrokeKeyframes;
          v26 = 0;
          if ([encodedClipStrokeKeyframes validate:&v26])
          {
            indexedRawKeyframes = [v14 indexedRawKeyframes];
            if ([indexedRawKeyframes count])
            {
              v16 = 0;
              do
              {
                v17 = [indexedRawKeyframes objectAtIndex:v16];
                if (v16 >= [v6 count])
                {
                  v18 = objc_alloc_init(NSMutableData);
                  [v6 addObject:v18];
                }

                else
                {
                  v18 = [v6 objectAtIndex:v16];
                }

                *&v19 = v10;
                [v18 appendRawKeyframes:v17 subpathOffset:v19];
                ++v16;
              }

              while (v16 < [indexedRawKeyframes count]);
            }
          }
        }

        v10 = v10 + [v12 subpathCount];
      }

      ++v9;
    }

    while (v9 != v8);
  }

  v20 = [v23 _createAdoptingPath:path1 clipStrokeKeyframes:{+[NSData mergingRawIndexedKeyframes:](NSData, "mergingRawIndexedKeyframes:", v6)}];
  CGPathRelease(path1);

  return v20;
}

- (id)createCopyApplyingTransform:(CGAffineTransform *)transform
{
  v4 = MEMORY[0x193AC5C50](self->_path, transform);
  v5 = [CUIVectorGlyphPath _createAdoptingPath:v4 clipStrokeKeyframes:self->_clipStrokeKeyframes];
  CGPathRelease(v4);
  return v5;
}

- (id)createSubpaths
{
  path = self->_path;
  clipStrokeKeyframes = self->_clipStrokeKeyframes;
  if (clipStrokeKeyframes)
  {
    encodedSubpathKeyframes = [(NSData *)clipStrokeKeyframes encodedSubpathKeyframes];
  }

  else
  {
    encodedSubpathKeyframes = +[NSDictionary dictionary];
  }

  v5 = encodedSubpathKeyframes;
  if (!path)
  {
    return 0;
  }

  v6 = [[NSMutableArray alloc] initWithCapacity:0];
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v9[3] = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __36__CUIVectorGlyphPath_createSubpaths__block_invoke;
  block[3] = &unk_1E7257CD0;
  block[5] = v5;
  block[6] = v9;
  block[4] = v6;
  CGPathApplyWithBlock(path, block);
  _Block_object_dispose(v9, 8);
  return v6;
}

void __36__CUIVectorGlyphPath_createSubpaths__block_invoke(uint64_t a1, int *a2)
{
  if (!*(*(*(a1 + 48) + 8) + 24))
  {
    if (*a2 == 4)
    {
      return;
    }

    *(*(*(a1 + 48) + 8) + 24) = CGPathCreateMutable();
  }

  v4 = *a2;
  if (*a2 <= 1)
  {
    if (v4)
    {
      if (v4 == 1)
      {
        v8 = *(*(*(a1 + 48) + 8) + 24);
        v9 = *(a2 + 1);
        v10 = *v9;
        v11 = v9[1];

        CGPathAddLineToPoint(v8, 0, v10, v11);
      }
    }

    else
    {
      v26 = *(*(*(a1 + 48) + 8) + 24);
      v27 = *(a2 + 1);
      v28 = *v27;
      v29 = v27[1];

      CGPathMoveToPoint(v26, 0, v28, v29);
    }
  }

  else
  {
    switch(v4)
    {
      case 2:
        v12 = *(*(*(a1 + 48) + 8) + 24);
        v13 = *(a2 + 1);
        v14 = *v13;
        v15 = v13[1];
        v16 = v13[2];
        v17 = v13[3];

        CGPathAddQuadCurveToPoint(v12, 0, v14, v15, v16, v17);
        break;
      case 3:
        v18 = *(*(*(a1 + 48) + 8) + 24);
        v19 = *(a2 + 1);
        v20 = *v19;
        v21 = v19[1];
        v22 = v19[2];
        v23 = v19[3];
        v24 = v19[4];
        v25 = v19[5];

        CGPathAddCurveToPoint(v18, 0, v20, v21, v22, v23, v24, v25);
        break;
      case 4:
        v5 = *(*(*(a1 + 48) + 8) + 24);
        if (v5)
        {
          CGPathCloseSubpath(v5);
          *&v6 = [*(a1 + 32) count];
          v7 = +[CUIVectorGlyphPath _createAdoptingPath:clipStrokeKeyframes:](CUIVectorGlyphPath, "_createAdoptingPath:clipStrokeKeyframes:", *(*(*(a1 + 48) + 8) + 24), [*(a1 + 40) objectForKey:{+[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v6)}]);
          CGPathRelease(*(*(*(a1 + 48) + 8) + 24));
          [*(a1 + 32) addObject:v7];

          *(*(*(a1 + 48) + 8) + 24) = 0;
        }

        break;
    }
  }
}

@end