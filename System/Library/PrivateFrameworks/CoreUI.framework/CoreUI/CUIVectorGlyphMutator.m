@interface CUIVectorGlyphMutator
+ ($57208586A15A58339C904728178D1914)createInterpolatedPointsFromPoints:(id)a3 ultralightDeltas:(id)a4 blackDeltas:(id)a5 withScalars:(id)a6;
+ ($57208586A15A58339C904728178D1914)deltaArrayFrom:(id)a3 to:(id)a4;
+ ($57208586A15A58339C904728178D1914)pointArrayFromPath:(CGPath *)a3;
+ ($F24F406B2B787EFB06265DBA3D28CBD5)_scalarsForGlyphContinuousWeight:(double)a3 inDictionary:(id)a4 shouldClamp:(BOOL)a5;
+ ($F24F406B2B787EFB06265DBA3D28CBD5)scalarsForGlyphContinuousWeight:(double)a3 glyphContinuousSize:(double)a4;
+ ($F24F406B2B787EFB06265DBA3D28CBD5)scalarsForGlyphWeight:(int64_t)a3 glyphSize:(int64_t)a4;
+ ($F24F406B2B787EFB06265DBA3D28CBD5)transformForGlyphContinuousSize:(double)a3;
+ ($F24F406B2B787EFB06265DBA3D28CBD5)transformForGlyphSize:(int64_t)a3;
+ (double)realloc_cgfloat_array:(double *)a3 withNewCount:(unint64_t)a4;
+ (id)_interpolationData;
+ (id)createFloatDeltasFrom:(id)a3 to:(id)a4;
+ (id)createInterpolatedFloatsFromFloats:(id)a3 ultralightDeltas:(id)a4 blackDeltas:(id)a5 withScalars:(id)a6;
- ($57208586A15A58339C904728178D1914)applyDeltasWithScalars:(id)a3;
- ($57208586A15A58339C904728178D1914)applyDeltasWithScalars:(id)a3 andTransform:(id)a4;
- ($57208586A15A58339C904728178D1914)blackDeltas;
- ($57208586A15A58339C904728178D1914)originPoints;
- ($57208586A15A58339C904728178D1914)ultralightDeltas;
- (CGPath)cgPathFrom:(id)a3;
- (CUIVectorGlyphMutator)initWithPointSize:(double)a3 regular:(id)a4 ultralight:(id)a5 black:(id)a6;
- (id)clipStrokeKeyframesForPath:(id)a3 scalars:(id)a4;
- (id)pathForScalars:(id)a3 andTransform:(id)a4;
- (void)convertDistance0:(float)a3 distance1:(float)a4 elementIndex0Out:(unint64_t *)a5 distance0Out:(float *)a6 elementIndex1Out:(unint64_t *)a7 distance1Out:(float *)a8 subpath0:(unint64_t)a9 subpath1:(unint64_t)a10 data:(CUIVectorGlyphPathLengthData *)a11;
- (void)dealloc;
@end

@implementation CUIVectorGlyphMutator

+ (id)_interpolationData
{
  if (_interpolationData_once != -1)
  {
    +[CUIVectorGlyphMutator _interpolationData];
  }

  return _interpolationData_interpolationData;
}

id __43__CUIVectorGlyphMutator__interpolationData__block_invoke()
{
  v0 = [NSDictionary alloc];
  v14[0] = [NSNumber numberWithDouble:0.2];
  v12[0] = [NSNumber numberWithDouble:-0.8];
  v13[0] = [NSValue valueWithDeltaScalars:0.0115, 0.0221];
  v12[1] = [NSNumber numberWithDouble:-0.6];
  v13[1] = [NSValue valueWithDeltaScalars:0.0, 0.0661];
  v12[2] = [NSNumber numberWithDouble:-0.4];
  v13[2] = [NSValue valueWithDeltaScalars:0.0, 0.435];
  v12[3] = [NSNumber numberWithDouble:0.0];
  v13[3] = [NSValue valueWithDeltaScalars:0.0, 0.6924];
  v12[4] = [NSNumber numberWithDouble:0.23];
  v13[4] = [NSValue valueWithDeltaScalars:0.0, 0.8145];
  v12[5] = [NSNumber numberWithDouble:?];
  v13[5] = [NSValue valueWithDeltaScalars:0.0, 0.9057];
  v12[6] = [NSNumber numberWithDouble:0.4];
  v13[6] = [NSValue valueWithDeltaScalars:-0.006, 0.9609];
  v12[7] = [NSNumber numberWithDouble:0.56];
  v13[7] = [NSValue valueWithDeltaScalars:0.0, 1.1061];
  v12[8] = [NSNumber numberWithDouble:?];
  v13[8] = [NSValue valueWithDeltaScalars:-0.1324, 1.132];
  v15[0] = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:9];
  v14[1] = [NSNumber numberWithDouble:0.5];
  v10[0] = [NSNumber numberWithDouble:-0.8];
  v11[0] = [NSValue valueWithDeltaScalars:0.6338, 0.0];
  v10[1] = [NSNumber numberWithDouble:-0.6];
  v11[1] = [NSValue valueWithDeltaScalars:0.2328, 0.0];
  v10[2] = [NSNumber numberWithDouble:-0.4];
  v11[2] = [NSValue valueWithDeltaScalars:-0.0528, 0.2287];
  v10[3] = [NSNumber numberWithDouble:0.0];
  v11[3] = [NSValue valueWithDeltaScalars:-0.0715, 0.4969];
  v10[4] = [NSNumber numberWithDouble:0.23];
  v11[4] = [NSValue valueWithDeltaScalars:-0.0715, 0.6859];
  v10[5] = [NSNumber numberWithDouble:0.3];
  v11[5] = [NSValue valueWithDeltaScalars:-0.0715, 0.7909];
  v10[6] = [NSNumber numberWithDouble:0.4];
  v11[6] = [NSValue valueWithDeltaScalars:-0.0739, 0.8937];
  v10[7] = [NSNumber numberWithDouble:0.56];
  v11[7] = [NSValue valueWithDeltaScalars:-0.076, 1.08];
  v10[8] = [NSNumber numberWithDouble:0.62];
  v11[8] = [NSValue valueWithDeltaScalars:-0.1325, 1.1847];
  v15[1] = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:9];
  v14[2] = [NSNumber numberWithDouble:1.0];
  v8[0] = [NSNumber numberWithDouble:-0.8];
  v9[0] = [NSValue valueWithDeltaScalars:1.0, 0.0];
  v8[1] = [NSNumber numberWithDouble:-0.6];
  v9[1] = [NSValue valueWithDeltaScalars:0.774193548, 0.0];
  v8[2] = [NSNumber numberWithDouble:-0.4];
  v9[2] = [NSValue valueWithDeltaScalars:0.333333333, 0.0];
  v8[3] = [NSNumber numberWithDouble:0.0];
  v9[3] = [NSValue valueWithDeltaScalars:0.0, 0.0];
  v8[4] = [NSNumber numberWithDouble:0.23];
  v9[4] = [NSValue valueWithDeltaScalars:0.0, 0.18];
  v8[5] = [NSNumber numberWithDouble:0.3];
  v9[5] = [NSValue valueWithDeltaScalars:0.0, 0.318];
  v8[6] = [NSNumber numberWithDouble:0.4];
  v9[6] = [NSValue valueWithDeltaScalars:0.0, 0.5];
  v8[7] = [NSNumber numberWithDouble:0.56];
  v9[7] = [NSValue valueWithDeltaScalars:0.0, 0.763978947];
  v8[8] = [NSNumber numberWithDouble:0.62];
  v9[8] = [NSValue valueWithDeltaScalars:0.0, 1.0];
  v15[2] = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:9];
  v14[3] = [NSNumber numberWithDouble:1.276];
  v6[0] = [NSNumber numberWithDouble:-0.8];
  v7[0] = [NSValue valueWithDeltaScalars:1.06801437, 0.0];
  v6[1] = [NSNumber numberWithDouble:-0.6];
  v7[1] = [NSValue valueWithDeltaScalars:0.86796777, 0.0];
  v6[2] = [NSNumber numberWithDouble:-0.4];
  v7[2] = [NSValue valueWithDeltaScalars:0.477400592, 0.0];
  v6[3] = [NSNumber numberWithDouble:0.0];
  v7[3] = [NSValue valueWithDeltaScalars:0.1820937, 0.0];
  v6[4] = [NSNumber numberWithDouble:0.23];
  v7[4] = [NSValue valueWithDeltaScalars:0.148437509, 0.164952978];
  v6[5] = [NSNumber numberWithDouble:0.3];
  v7[5] = [NSValue valueWithDeltaScalars:0.122634428, 0.291416928];
  v6[6] = [NSNumber numberWithDouble:0.4];
  v7[6] = [NSValue valueWithDeltaScalars:0.0886042787, 0.458202717];
  v6[7] = [NSNumber numberWithDouble:0.56];
  v7[7] = [NSValue valueWithDeltaScalars:0.0392418641, 0.700133751];
  v6[8] = [NSNumber numberWithDouble:0.62];
  v7[8] = [NSValue valueWithDeltaScalars:-0.00488514296, 0.916405434];
  v15[3] = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:9];
  v14[4] = [NSNumber numberWithDouble:1.647];
  v4[0] = [NSNumber numberWithDouble:-0.8];
  v5[0] = [NSValue valueWithDeltaScalars:1.1353466, 0.0];
  v4[1] = [NSNumber numberWithDouble:-0.6];
  v5[1] = [NSValue valueWithDeltaScalars:0.962479273, 0.0];
  v4[2] = [NSNumber numberWithDouble:-0.4];
  v5[2] = [NSValue valueWithDeltaScalars:0.624976402, 0.0];
  v4[3] = [NSNumber numberWithDouble:0.0];
  v5[3] = [NSValue valueWithDeltaScalars:0.369791304, 0.0];
  v4[4] = [NSNumber numberWithDouble:0.23];
  v5[4] = [NSValue valueWithDeltaScalars:0.300349522, 0.130728598];
  v4[5] = [NSNumber numberWithDouble:0.3];
  v5[5] = [NSValue valueWithDeltaScalars:0.247110822, 0.230953856];
  v4[6] = [NSNumber numberWithDouble:0.4];
  v5[6] = [NSValue valueWithDeltaScalars:0.176897463, 0.363134994];
  v4[7] = [NSNumber numberWithDouble:0.56];
  v5[7] = [NSValue valueWithDeltaScalars:0.0750495154, 0.554870272];
  v4[8] = [NSNumber numberWithDouble:0.62];
  v5[8] = [NSValue valueWithDeltaScalars:0.0159963775, 0.726269989];
  v15[4] = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:9];
  v14[5] = [NSNumber numberWithDouble:2.0];
  v2[0] = [NSNumber numberWithDouble:-0.8];
  v3[0] = [NSValue valueWithDeltaScalars:1.1162, -0.0495];
  v2[1] = [NSNumber numberWithDouble:-0.6];
  v3[1] = [NSValue valueWithDeltaScalars:1.0524, -0.0104];
  v2[2] = [NSNumber numberWithDouble:-0.4];
  v3[2] = [NSValue valueWithDeltaScalars:0.7878, 0.0];
  v2[3] = [NSNumber numberWithDouble:0.0];
  v3[3] = [NSValue valueWithDeltaScalars:0.5464, 0.0];
  v2[4] = [NSNumber numberWithDouble:0.23];
  v3[4] = [NSValue valueWithDeltaScalars:0.4641, 0.1072];
  v2[5] = [NSNumber numberWithDouble:0.3];
  v3[5] = [NSValue valueWithDeltaScalars:0.3875, 0.2173];
  v2[6] = [NSNumber numberWithDouble:0.4];
  v3[6] = [NSValue valueWithDeltaScalars:0.2925, 0.352];
  v2[7] = [NSNumber numberWithDouble:0.56];
  v3[7] = [NSValue valueWithDeltaScalars:0.1862, 0.5134];
  v2[8] = [NSNumber numberWithDouble:0.62];
  v3[8] = [NSValue valueWithDeltaScalars:0.1176, 0.707];
  v15[5] = [NSDictionary dictionaryWithObjects:v3 forKeys:v2 count:9];
  result = [v0 initWithDictionary:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v15, v14, 6)}];
  _interpolationData_interpolationData = result;
  return result;
}

- ($57208586A15A58339C904728178D1914)blackDeltas
{
  numDeltas = self->_blackDeltas.numDeltas;
  deltaComponents = self->_blackDeltas.deltaComponents;
  result.var1 = numDeltas;
  result.var0 = deltaComponents;
  return result;
}

- (void)dealloc
{
  free([(CUIVectorGlyphMutator *)self originPoints]);
  free([(CUIVectorGlyphMutator *)self ultralightDeltas]);
  free([(CUIVectorGlyphMutator *)self blackDeltas]);

  v3.receiver = self;
  v3.super_class = CUIVectorGlyphMutator;
  [(CUIVectorGlyphMutator *)&v3 dealloc];
}

- ($57208586A15A58339C904728178D1914)originPoints
{
  numPoints = self->_originPoints.numPoints;
  pointComponents = self->_originPoints.pointComponents;
  result.var1 = numPoints;
  result.var0 = pointComponents;
  return result;
}

- ($57208586A15A58339C904728178D1914)ultralightDeltas
{
  numDeltas = self->_ultralightDeltas.numDeltas;
  deltaComponents = self->_ultralightDeltas.deltaComponents;
  result.var1 = numDeltas;
  result.var0 = deltaComponents;
  return result;
}

- (CUIVectorGlyphMutator)initWithPointSize:(double)a3 regular:(id)a4 ultralight:(id)a5 black:(id)a6
{
  v52.receiver = self;
  v52.super_class = CUIVectorGlyphMutator;
  v10 = [(CUIVectorGlyphMutator *)&v52 init];
  if (v10)
  {
    v10->_originPath = a4;
    v10->_ultralightPath = a5;
    v10->_blackPath = a6;
    [(CUIVectorGlyphMutator *)v10 setPointSize:a3];
    v11 = +[CUIVectorGlyphMutator pointArrayFromPath:](CUIVectorGlyphMutator, "pointArrayFromPath:", [a4 path]);
    v13 = v12;
    v14 = +[CUIVectorGlyphMutator pointArrayFromPath:](CUIVectorGlyphMutator, "pointArrayFromPath:", [a5 path]);
    v16 = v15;
    v46 = a6;
    v24 = +[CUIVectorGlyphMutator pointArrayFromPath:](CUIVectorGlyphMutator, "pointArrayFromPath:", [a6 path]);
    v25 = v17;
    if (v13 != v16 || v13 != v17)
    {
      _CUILog(4, "CoreUI: Incompatible points when attempting to interpolate: Ultralight=%lu, Regular=%lu, Black=%lu", v18, v19, v20, v21, v22, v23, v16);
      [NSException raise:@"CUIVectorGlyphIncompatiblePointsException" format:@"Point counts: Ultralight=%lu, Regular=%lu, Black=%lu", v16, v13, v25];
    }

    [(CUIVectorGlyphMutator *)v10 setOriginPoints:v11, v13];
    v26 = [CUIVectorGlyphMutator deltaArrayFrom:v10->_originPoints.pointComponents to:v10->_originPoints.numPoints, v14, v16];
    [(CUIVectorGlyphMutator *)v10 setUltralightDeltas:v26, v27];
    v28 = [CUIVectorGlyphMutator deltaArrayFrom:v10->_originPoints.pointComponents to:v10->_originPoints.numPoints, v24, v25];
    [(CUIVectorGlyphMutator *)v10 setBlackDeltas:v28, v29];
    free(v14);
    free(v24);
    v30 = [a4 encodedClipStrokeKeyframes];
    v31 = [a5 encodedClipStrokeKeyframes];
    v32 = [v46 encodedClipStrokeKeyframes];
    if (v30)
    {
      if (v31)
      {
        v33 = v32;
        if (v32)
        {
          v34 = [v30 length];
          if (v34 == [v31 length])
          {
            v35 = [v30 length];
            if (v35 == [v33 length])
            {
              v50 = 0;
              v51 = 0;
              v49 = 0;
              v36 = [v30 validate:&v51];
              v37 = [v31 validate:&v50];
              v38 = [v33 validate:&v49];
              if (v36)
              {
                if (v37 && v38 && v51 == v50 && v51 == v49)
                {
                  v39 = [v30 rawKeyframesOffset];
                  v40 = [v30 length];
                  while (v39 < v40)
                  {
                    v47 = 0;
                    v48 = 0;
                    [v30 getBytes:&v48 + 4 range:{v39, 4}];
                    [v31 getBytes:&v48 range:{v39, 4}];
                    LODWORD(v41) = HIDWORD(v48);
                    if (*(&v48 + 1) != *&v48)
                    {
                      return v10;
                    }

                    [v33 getBytes:&v48 range:{v39, 4, v41}];
                    LODWORD(v42) = HIDWORD(v48);
                    if (*(&v48 + 1) != *&v48)
                    {
                      return v10;
                    }

                    v43 = v39 + 8;
                    [v30 getBytes:&v47 + 4 range:{v43, 4, v42}];
                    [v31 getBytes:&v47 range:{v43, 4}];
                    if (floorf(*(&v47 + 1)) != floorf(*&v47))
                    {
                      return v10;
                    }

                    [v33 getBytes:&v47 range:{v43, 4}];
                    if (floorf(*(&v47 + 1)) != floorf(*&v47))
                    {
                      return v10;
                    }

                    v44 = v43 + 4;
                    [v30 getBytes:&v47 + 4 range:{v44, 4}];
                    [v31 getBytes:&v47 range:{v44, 4}];
                    if (floorf(*(&v47 + 1)) != floorf(*&v47))
                    {
                      return v10;
                    }

                    [v33 getBytes:&v47 range:{v44, 4}];
                    if (floorf(*(&v47 + 1)) != floorf(*&v47))
                    {
                      return v10;
                    }

                    v40 = [v30 length];
                    v39 = v44 + 4;
                  }

                  v10->_originClipStrokeKeyframes = [a4 encodedClipStrokeKeyframes];
                  v10->_ultralightClipStrokeKeyframes = [a5 encodedClipStrokeKeyframes];
                  v10->_blackClipStrokeKeyframes = [v46 encodedClipStrokeKeyframes];
                }
              }
            }
          }
        }
      }
    }
  }

  return v10;
}

- ($57208586A15A58339C904728178D1914)applyDeltasWithScalars:(id)a3
{
  v3 = [(CUIVectorGlyphMutator *)self applyDeltasWithScalars:a3.var0 andTransform:a3.var1, 1.0, 0.0];
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

- ($57208586A15A58339C904728178D1914)applyDeltasWithScalars:(id)a3 andTransform:(id)a4
{
  __B = a4;
  v5 = [objc_opt_class() createInterpolatedPointsFromPoints:self->_originPoints.pointComponents ultralightDeltas:self->_originPoints.numPoints blackDeltas:self->_ultralightDeltas.deltaComponents withScalars:{self->_ultralightDeltas.numDeltas, self->_blackDeltas.deltaComponents, self->_blackDeltas.numDeltas, a3.var0, a3.var1}];
  v7 = v6;
  vDSP_vsmulD(v5, 1, &__B.var0, v5, 1, 2 * self->_ultralightDeltas.numDeltas);
  var1 = __B.var1;
  [(CUIVectorGlyphMutator *)self pointSize];
  v12 = var1 * v9;
  vDSP_vsaddD(v5 + 1, 2, &v12, v5 + 1, 2, self->_originPoints.numPoints);
  v10 = v5;
  v11 = v7;
  result.var1 = v11;
  result.var0 = v10;
  return result;
}

+ ($57208586A15A58339C904728178D1914)createInterpolatedPointsFromPoints:(id)a3 ultralightDeltas:(id)a4 blackDeltas:(id)a5 withScalars:(id)a6
{
  var1 = a4.var1;
  v7 = a3.var1;
  var0 = a3.var0;
  __B = a6;
  v9 = 2 * a4.var1;
  v10 = (&v14 - 2 * a4.var1);
  vDSP_vsmsmaD(a4.var0, 1, &__B.var0, a5.var0, 1, &__B.var1, v10, 1, 2 * a4.var1);
  v11 = malloc_type_malloc(16 * var1, 0x100004000313F17uLL);
  vDSP_vaddD(var0, 1, v10, 1, v11, 1, v9);
  v12 = v11;
  v13 = v7;
  result.var1 = v13;
  result.var0 = v12;
  return result;
}

+ (id)createInterpolatedFloatsFromFloats:(id)a3 ultralightDeltas:(id)a4 blackDeltas:(id)a5 withScalars:(id)a6
{
  var1 = a6.var1;
  var0 = a6.var0;
  v11 = [a3 length] >> 2;
  v12 = var0;
  v13 = var1;
  v16 = v13;
  v17 = v12;
  v14 = [[NSMutableData alloc] initWithLength:{objc_msgSend(a3, "length")}];
  MEMORY[0x193AC7440]([a4 bytes], 1, &v17, objc_msgSend(a5, "bytes"), 1, &v16, objc_msgSend(v14, "mutableBytes"), 1, v11);
  MEMORY[0x193AC73B0]([a3 bytes], 1, objc_msgSend(v14, "bytes"), 1, objc_msgSend(v14, "mutableBytes"), 1, v11);
  return v14;
}

- (void)convertDistance0:(float)a3 distance1:(float)a4 elementIndex0Out:(unint64_t *)a5 distance0Out:(float *)a6 elementIndex1Out:(unint64_t *)a7 distance1Out:(float *)a8 subpath0:(unint64_t)a9 subpath1:(unint64_t)a10 data:(CUIVectorGlyphPathLengthData *)a11
{
  numElements = a11->numElements;
  if (numElements)
  {
    v12 = 0;
    subpathLengths = a11->subpathLengths;
    v14 = (a3 - floorf(a3)) * subpathLengths[a9];
    v15 = (a4 - floorf(a4)) * subpathLengths[a10];
    v16 = fminf(a9, a10);
    v17 = fmaxf(a9, a10);
    elementToSubpath = a11->elementToSubpath;
    do
    {
      v19 = elementToSubpath[v12];
      if (v19 >= v16)
      {
        v20 = &a11->elementLengths[v12];
        var0 = v20->var0;
        var1 = v20->var1;
        v23 = v20->var0 + var1;
        v24 = *a6 != -1.0 || v23 <= v14;
        v25 = fabsf(var1);
        if (!v24)
        {
          v26 = 0.0;
          if (v25 >= 0.00000011921)
          {
            v26 = (v14 - var0) / var1;
          }

          *a5 = v12;
          *a6 = v26;
        }

        if (*a8 == -1.0 && v23 > v15)
        {
          v28 = 0.0;
          if (v25 >= 0.00000011921)
          {
            v28 = (v15 - var0) / var1;
          }

          *a7 = v12;
          *a8 = v28;
        }

        if (v19 > v17)
        {
          return;
        }

        numElements = a11->numElements;
      }

      ++v12;
    }

    while (v12 < numElements);
  }
}

- (id)clipStrokeKeyframesForPath:(id)a3 scalars:(id)a4
{
  if (!self->_originClipStrokeKeyframes)
  {
    return 0;
  }

  var1 = a4.var1;
  var0 = a4.var0;
  v6 = a3;
  if (a3)
  {
    [a3 lengthData];
    v8 = *(&v124 + 1);
  }

  else
  {
    v8 = 0;
    v125 = 0u;
    v126 = 0u;
    v124 = 0u;
  }

  originPath = self->_originPath;
  if (originPath)
  {
    [(CUIVectorGlyphPath *)originPath lengthData];
    v10 = *(&v121 + 1) != 0;
  }

  else
  {
    v10 = 0;
    v122 = 0u;
    v123 = 0u;
    v121 = 0u;
  }

  ultralightPath = self->_ultralightPath;
  if (ultralightPath)
  {
    [(CUIVectorGlyphPath *)ultralightPath lengthData];
    v12 = *(&v118 + 1) != 0;
  }

  else
  {
    v12 = 0;
    v119 = 0u;
    v120 = 0u;
    v118 = 0u;
  }

  blackPath = self->_blackPath;
  if (!blackPath)
  {
    return 0;
  }

  [(CUIVectorGlyphPath *)blackPath lengthData];
  v14 = 0;
  if (v8 == 0 || !v10 || !v12 || !v117)
  {
    return v14;
  }

  if (v6)
  {
    [v6 lengthData];
    v15 = v115;
  }

  else
  {
    v15 = 0;
    v115 = 0u;
    v116 = 0u;
    v114 = 0u;
  }

  v16 = self->_originPath;
  if (v16)
  {
    [(CUIVectorGlyphPath *)v16 lengthData];
    v17 = v112 != 0;
  }

  else
  {
    v17 = 0;
    v112 = 0u;
    v113 = 0u;
    v111 = 0u;
  }

  v18 = self->_ultralightPath;
  if (v18)
  {
    [(CUIVectorGlyphPath *)v18 lengthData];
    v19 = v109 != 0;
  }

  else
  {
    v19 = 0;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
  }

  v20 = self->_blackPath;
  if (!v20)
  {
    return 0;
  }

  [(CUIVectorGlyphPath *)v20 lengthData];
  v14 = 0;
  if (v15 == 0 || !v17 || !v19 || !v107)
  {
    return v14;
  }

  if (v6)
  {
    [v6 lengthData];
    LODWORD(v6) = *(&v105 + 1) != 0;
  }

  else
  {
    v105 = 0u;
    v106 = 0u;
    v104 = 0u;
  }

  v21 = self->_originPath;
  if (v21)
  {
    [(CUIVectorGlyphPath *)v21 lengthData];
    v22 = *(&v102 + 1) != 0;
  }

  else
  {
    v22 = 0;
    v102 = 0u;
    v103 = 0u;
    v101 = 0u;
  }

  v23 = self->_ultralightPath;
  if (v23)
  {
    [(CUIVectorGlyphPath *)v23 lengthData];
    v24 = *(&v99 + 1) != 0;
  }

  else
  {
    v24 = 0;
    v99 = 0u;
    v100 = 0u;
    v98 = 0u;
  }

  v25 = self->_blackPath;
  if (!v25)
  {
    return 0;
  }

  [(CUIVectorGlyphPath *)v25 lengthData];
  v14 = 0;
  if ((v6 & v22 & v24) == 1)
  {
    if (v97[4])
    {
      v14 = [NSMutableData dataWithCapacity:[(NSData *)self->_originClipStrokeKeyframes length]];
      v26 = [(NSData *)self->_originClipStrokeKeyframes rawKeyframesOffset];
      [(NSMutableData *)v14 appendBytes:[(NSData *)self->_originClipStrokeKeyframes bytes] length:v26];
      if (v26 < [(NSData *)self->_originClipStrokeKeyframes length])
      {
        while (1)
        {
          v96 = 0;
          v97[0] = 0;
          v95 = 0;
          [(NSData *)self->_originClipStrokeKeyframes getBytes:v97 + 4 range:v26, 4];
          [(NSMutableData *)v14 appendBytes:v97 + 4 length:4];
          v94 = 0;
          [(NSData *)self->_originClipStrokeKeyframes getBytes:v97 range:v26 + 4, 4];
          [(NSData *)self->_ultralightClipStrokeKeyframes getBytes:&v94 + 4 range:v26 + 4, 4];
          [(NSData *)self->_blackClipStrokeKeyframes getBytes:&v94 range:v26 + 4, 4];
          *&v27 = var0 * (*(&v94 + 1) - *v97);
          *&v28 = var1 * (*&v94 - *v97);
          v94 = __PAIR64__(v27, v28);
          *v97 = (*v97 + *&v27) + *&v28;
          [(NSMutableData *)v14 appendBytes:v97 length:4];
          [(NSData *)self->_originClipStrokeKeyframes getBytes:&v96 + 4 range:v26 + 8, 4];
          v29 = v26 + 12;
          [(NSData *)self->_originClipStrokeKeyframes getBytes:&v96 range:v26 + 12, 4];
          v31 = v96;
          v92 = 0;
          v93 = 0;
          v90 = 0;
          v91 = 0;
          v88 = 0;
          v89 = 0;
          v86 = -1.0;
          v87 = -1.0;
          v84 = -1.0;
          v85 = -1.0;
          v82 = -1.0;
          v83 = -1.0;
          v32 = self->_originPath;
          if (v32)
          {
            [(CUIVectorGlyphPath *)v32 lengthData];
          }

          else
          {
            HIDWORD(v33) = 0;
            v80 = 0u;
            v81 = 0u;
            v79 = 0u;
          }

          v34 = vcvtms_u32_f32(*(&v31 + 1));
          v35 = vcvtms_u32_f32(*&v31);
          LODWORD(v33) = HIDWORD(v31);
          LODWORD(v30) = v31;
          [(CUIVectorGlyphMutator *)self convertDistance0:&v93 distance1:&v87 elementIndex0Out:&v92 distance0Out:&v86 elementIndex1Out:v34 distance1Out:v35 subpath0:v33 subpath1:v30 data:&v79];
          if (v87 == -1.0)
          {
            break;
          }

          *&v36 = v86;
          if (v86 == -1.0)
          {
            break;
          }

          [(NSData *)self->_ultralightClipStrokeKeyframes getBytes:&v95 + 4 range:v26 + 8, 4, v36];
          [(NSData *)self->_ultralightClipStrokeKeyframes getBytes:&v95 range:v26 + 12, 4];
          v38 = v95;
          v39 = self->_ultralightPath;
          if (v39)
          {
            [(CUIVectorGlyphPath *)v39 lengthData];
          }

          else
          {
            HIDWORD(v40) = 0;
            v80 = 0u;
            v81 = 0u;
            v79 = 0u;
          }

          LODWORD(v40) = HIDWORD(v38);
          LODWORD(v37) = v38;
          [(CUIVectorGlyphMutator *)self convertDistance0:&v91 distance1:&v85 elementIndex0Out:&v90 distance0Out:&v84 elementIndex1Out:v34 distance1Out:v35 subpath0:v40 subpath1:v37 data:&v79];
          if (v85 == -1.0)
          {
            break;
          }

          *&v41 = v84;
          if (v84 == -1.0)
          {
            break;
          }

          [(NSData *)self->_blackClipStrokeKeyframes getBytes:&v95 + 4 range:v26 + 8, 4, v41];
          [(NSData *)self->_blackClipStrokeKeyframes getBytes:&v95 range:v26 + 12, 4];
          v43 = v95;
          v44 = self->_blackPath;
          if (v44)
          {
            [(CUIVectorGlyphPath *)v44 lengthData];
          }

          else
          {
            HIDWORD(v45) = 0;
            v80 = 0u;
            v81 = 0u;
            v79 = 0u;
          }

          LODWORD(v45) = HIDWORD(v43);
          LODWORD(v42) = v43;
          [(CUIVectorGlyphMutator *)self convertDistance0:&v89 distance1:&v83 elementIndex0Out:&v88 distance0Out:&v82 elementIndex1Out:v34 distance1Out:v35 subpath0:v45 subpath1:v42 data:&v79];
          if (v83 == -1.0 || v82 == -1.0)
          {
            break;
          }

          v46 = *(v15 + 8 * v93) + (*(v15 + 8 * v93 + 4) * v87);
          v47 = *(v15 + 8 * v92) + (*(v15 + 8 * v92 + 4) * v86);
          v48 = *(v15 + 8 * v91) + (*(v15 + 8 * v91 + 4) * v85);
          v49 = *(v15 + 8 * v90) + (*(v15 + 8 * v90 + 4) * v84);
          v50 = *(v15 + 8 * v89) + (*(v15 + 8 * v89 + 4) * v83);
          v51 = *(v8 + 4 * v34);
          v52 = *(v8 + 4 * v35);
          v53 = v48 - v46;
          v54 = vabds_f32(v48, v46);
          v55 = -v51;
          if ((v48 - v46) <= 0.0)
          {
            v56 = *(v8 + 4 * v34);
          }

          else
          {
            v56 = -v51;
          }

          v57 = (v48 + v56) - v46;
          if (v54 <= (v51 - v54))
          {
            v57 = v53;
          }

          v58 = v50 - v46;
          v59 = vabds_f32(v50, v46);
          if ((v50 - v46) <= 0.0)
          {
            v55 = *(v8 + 4 * v34);
          }

          v60 = (v50 + v55) - v46;
          if (v59 <= (v51 - v59))
          {
            v60 = v58;
          }

          v61 = v49 - v47;
          v62 = vabds_f32(v49, v47);
          v63 = v62 <= (v52 - v62);
          v64 = -v52;
          if (!v63)
          {
            if (v61 <= 0.0)
            {
              v65 = *(v8 + 4 * v35);
            }

            else
            {
              v65 = -v52;
            }

            v61 = (v49 + v65) - v47;
          }

          v66 = *(v15 + 8 * v88) + (*(v15 + 8 * v88 + 4) * v82);
          v67 = v66 - v47;
          v68 = vabds_f32(v66, v47);
          if ((v66 - v47) <= 0.0)
          {
            v64 = *(v8 + 4 * v35);
          }

          v69 = (v66 + v64) - v47;
          if (v68 <= (v52 - v68))
          {
            v69 = v67;
          }

          v70 = v46 + var0 * v57 + var1 * v60;
          v71 = v47 + var0 * v61 + var1 * v69;
          v72 = v70 - v51;
          if (v51 > v70)
          {
            v72 = v70;
          }

          if (v70 < 0.0)
          {
            v73 = v51 + v70;
          }

          else
          {
            v73 = v72;
          }

          if (v71 >= 0.0)
          {
            if (v52 <= v71)
            {
              v71 = v71 - v52;
            }
          }

          else
          {
            v71 = v52 + v71;
          }

          v74 = fabsf(v51);
          v75 = v73 / v51;
          if (v74 < 0.00000011921)
          {
            v75 = 0.0;
          }

          v76 = fabsf(v52);
          v77 = v71 / v52;
          if (v76 < 0.00000011921)
          {
            v77 = 0.0;
          }

          *&v96 = v77 + v35;
          *(&v96 + 1) = v75 + v34;
          [(NSMutableData *)v14 appendBytes:&v96 + 4 length:4];
          [(NSMutableData *)v14 appendBytes:&v96 length:4];
          v26 += 16;
          if (v29 + 4 >= [(NSData *)self->_originClipStrokeKeyframes length])
          {
            return v14;
          }
        }

        return 0;
      }
    }
  }

  return v14;
}

- (id)pathForScalars:(id)a3 andTransform:(id)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v7 = [(CUIVectorGlyphMutator *)self applyDeltasWithScalars:a3.var0 andTransform:a3.var1, a4.var0, a4.var1];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __53__CUIVectorGlyphMutator_pathForScalars_andTransform___block_invoke;
  v10[3] = &unk_1E7250F40;
  v10[4] = self;
  *&v10[5] = var0;
  *&v10[6] = var1;
  return [CUIVectorGlyphPath createWithPath:[(CUIVectorGlyphMutator *)self cgPathFrom:v7 clipStrokeKeyframeProvider:v8], v10];
}

+ (double)realloc_cgfloat_array:(double *)a3 withNewCount:(unint64_t)a4
{
  result = malloc_type_realloc(a3, 8 * a4, 0x100004000313F17uLL);
  if (!result)
  {
    free(a3);
    [NSException raise:@"FailedRealloc" format:@"Requested size was not available"];
    return a3;
  }

  return result;
}

+ ($57208586A15A58339C904728178D1914)pointArrayFromPath:(CGPath *)a3
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = malloc_type_calloc(0x64uLL, 8uLL, 0x100004000313F17uLL);
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 50;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __44__CUIVectorGlyphMutator_pointArrayFromPath___block_invoke;
  block[3] = &unk_1E7250F68;
  block[6] = &v15;
  block[7] = &v19;
  block[4] = a1;
  block[5] = &v11;
  block[8] = 50;
  CGPathApplyWithBlock(a3, block);
  v5 = v16[3];
  v6 = v12[3];
  v7 = v20[3];
  if (v5 != v6)
  {
    v7 = [a1 realloc_cgfloat_array:v20[3] withNewCount:2 * v6];
    v20[3] = v7;
    v5 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
  v8 = v7;
  v9 = v5;
  result.var1 = v9;
  result.var0 = v8;
  return result;
}

char *__44__CUIVectorGlyphMutator_pointArrayFromPath___block_invoke(char *result, uint64_t a2)
{
  v3 = result;
  v4 = *a2;
  if (*a2 > 1)
  {
    if (v4 == 2)
    {
      v5 = result + 40;
      v15 = *(*(*(result + 5) + 8) + 24);
      v16 = *(*(*(result + 6) + 8) + 24);
      if (v15 + 2 > v16)
      {
        result = [*(result + 4) realloc_cgfloat_array:*(*(*(result + 7) + 8) + 24) withNewCount:2 * (*(result + 8) + v16)];
        v17 = v3[8];
        *(*(v3[7] + 8) + 24) = result;
        *(*(v3[6] + 8) + 24) += v17;
        v15 = *(*(v3[5] + 8) + 24);
      }

      v18 = *(a2 + 8);
      *(*(*(v3[7] + 8) + 24) + 16 * v15) = *v18;
      *(*(*(v3[7] + 8) + 24) + 16 * *(*(v3[5] + 8) + 24) + 8) = v18[1];
      *(*(*(v3[7] + 8) + 24) + 16 * *(*(v3[5] + 8) + 24) + 16) = v18[2];
      *(*(*(v3[7] + 8) + 24) + 16 * *(*(v3[5] + 8) + 24) + 24) = v18[3];
      v10 = 2;
    }

    else
    {
      if (v4 != 3)
      {
        return result;
      }

      v5 = result + 40;
      v11 = *(*(*(result + 5) + 8) + 24);
      v12 = *(*(*(result + 6) + 8) + 24);
      if (v11 + 3 > v12)
      {
        result = [*(result + 4) realloc_cgfloat_array:*(*(*(result + 7) + 8) + 24) withNewCount:2 * (*(result + 8) + v12)];
        v13 = v3[8];
        *(*(v3[7] + 8) + 24) = result;
        *(*(v3[6] + 8) + 24) += v13;
        v11 = *(*(v3[5] + 8) + 24);
      }

      v14 = *(a2 + 8);
      *(*(*(v3[7] + 8) + 24) + 16 * v11) = *v14;
      *(*(*(v3[7] + 8) + 24) + 16 * *(*(v3[5] + 8) + 24) + 8) = v14[1];
      *(*(*(v3[7] + 8) + 24) + 16 * *(*(v3[5] + 8) + 24) + 16) = v14[2];
      *(*(*(v3[7] + 8) + 24) + 16 * *(*(v3[5] + 8) + 24) + 24) = v14[3];
      *(*(*(v3[7] + 8) + 24) + 16 * *(*(v3[5] + 8) + 24) + 32) = v14[4];
      *(*(*(v3[7] + 8) + 24) + 16 * *(*(v3[5] + 8) + 24) + 40) = v14[5];
      v10 = 3;
    }
  }

  else
  {
    if (v4 > 1)
    {
      return result;
    }

    v5 = result + 40;
    v6 = *(*(*(result + 5) + 8) + 24);
    v7 = *(*(*(result + 6) + 8) + 24);
    if (v6 + 1 > v7)
    {
      result = [*(result + 4) realloc_cgfloat_array:*(*(*(result + 7) + 8) + 24) withNewCount:2 * (*(result + 8) + v7)];
      v8 = v3[8];
      *(*(v3[7] + 8) + 24) = result;
      *(*(v3[6] + 8) + 24) += v8;
      v6 = *(*(v3[5] + 8) + 24);
    }

    v9 = *(a2 + 8);
    *(*(*(v3[7] + 8) + 24) + 16 * v6) = *v9;
    *(*(*(v3[7] + 8) + 24) + 16 * *(*(v3[5] + 8) + 24) + 8) = v9[1];
    v10 = 1;
  }

  *(*(*v5 + 8) + 24) += v10;
  return result;
}

+ ($57208586A15A58339C904728178D1914)deltaArrayFrom:(id)a3 to:(id)a4
{
  if (a3.var1 != a4.var1)
  {
    +[CUIVectorGlyphMutator deltaArrayFrom:to:];
  }

  var0 = a4.var0;
  var1 = a3.var1;
  v6 = a3.var0;
  v7 = 2 * a3.var1;
  v8 = malloc_type_malloc(16 * a3.var1, 0x100004000313F17uLL);
  vDSP_vsubD(v6, 1, var0, 1, v8, 1, v7);
  v9 = v8;
  v10 = var1;
  result.var1 = v10;
  result.var0 = v9;
  return result;
}

+ (id)createFloatDeltasFrom:(id)a3 to:(id)a4
{
  v6 = [a3 length];
  if (v6 != [a4 length])
  {
    +[CUIVectorGlyphMutator createFloatDeltasFrom:to:];
  }

  v7 = [[NSMutableData alloc] initWithLength:{objc_msgSend(a3, "length")}];
  MEMORY[0x193AC7470]([a3 bytes], 1, objc_msgSend(a4, "bytes"), 1, objc_msgSend(v7, "mutableBytes"), 1, objc_msgSend(a3, "length") >> 2);
  return v7;
}

+ ($F24F406B2B787EFB06265DBA3D28CBD5)transformForGlyphSize:(int64_t)a3
{
  v3 = 0.0;
  if (a3 < 2)
  {
    v4 = 1.0;
  }

  else
  {
    if (a3 == 2)
    {
      v5 = &_CUIVectorGlyphContinuousSizeMedium;
      goto LABEL_7;
    }

    v4 = 0.0;
    if (a3 == 3)
    {
      v5 = &_CUIVectorGlyphContinuousSizeLarge;
LABEL_7:
      v4 = *v5;
      v3 = *v5 * -0.352294922 + 0.352294922;
    }
  }

  result.var1 = v3;
  result.var0 = v4;
  return result;
}

+ ($F24F406B2B787EFB06265DBA3D28CBD5)transformForGlyphContinuousSize:(double)a3
{
  v3 = 0;
  while (*&kCoreThemeContinuousGlyphSizes[v3] != a3)
  {
    if (++v3 == 3)
    {
      goto LABEL_7;
    }
  }

  if (kCoreThemeDiscreteGlyphSizes[v3])
  {
    [a1 transformForGlyphSize:?];
    goto LABEL_8;
  }

LABEL_7:
  v4 = a3 * -0.352294922 + 0.352294922;
LABEL_8:
  result.var1 = v4;
  result.var0 = a3;
  return result;
}

+ ($F24F406B2B787EFB06265DBA3D28CBD5)_scalarsForGlyphContinuousWeight:(double)a3 inDictionary:(id)a4 shouldClamp:(BOOL)a5
{
  if (!a4)
  {
    +[CUIVectorGlyphMutator _scalarsForGlyphContinuousWeight:inDictionary:shouldClamp:];
  }

  v7 = [a4 objectForKeyedSubscript:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", a4, a5)}];
  if (v7)
  {
    goto LABEL_5;
  }

  _segmentForGlyphContinuousWeight();
  v10 = v8;
  v11 = v9;
  if (vabdd_f64(v9, v8) < 2.22044605e-16)
  {
    v7 = [a4 objectForKeyedSubscript:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v8)}];
    if (!v7)
    {
      +[CUIVectorGlyphMutator _scalarsForGlyphContinuousWeight:inDictionary:shouldClamp:];
    }

LABEL_5:

    [v7 deltaScalarsValue];
    goto LABEL_20;
  }

  v14 = [a4 objectForKeyedSubscript:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v9)}];
  v15 = [a4 objectForKeyedSubscript:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v10)}];
  if (!v14)
  {
    +[CUIVectorGlyphMutator _scalarsForGlyphContinuousWeight:inDictionary:shouldClamp:];
  }

  v16 = v15;
  if (!v15)
  {
    +[CUIVectorGlyphMutator _scalarsForGlyphContinuousWeight:inDictionary:shouldClamp:];
  }

  [v14 deltaScalarsValue];
  v18 = v17;
  v20 = v19;
  [v16 deltaScalarsValue];
  v23 = (a3 - v10) / (v11 - v10);
  v24 = v21 + (v18 - v21) * v23;
  v25 = v22 + (v20 - v22) * v23;
  v26 = (a3 - v11) / (v11 - v10) + 1.0;
  v27 = v21 + (v18 - v21) * v26;
  if (v11 < a3)
  {
    v25 = v22 + (v20 - v22) * v26;
  }

  else
  {
    v27 = v24;
  }

  v28 = (v10 - a3) / (v11 - v10) + 1.0;
  v12 = v18 + (v21 - v18) * v28;
  v13 = v20 + (v22 - v20) * v28;
  if (v10 <= a3)
  {
    v12 = v27;
    v13 = v25;
  }

LABEL_20:
  result.var1 = v13;
  result.var0 = v12;
  return result;
}

+ ($F24F406B2B787EFB06265DBA3D28CBD5)scalarsForGlyphContinuousWeight:(double)a3 glyphContinuousSize:(double)a4
{
  v7 = [a1 _interpolationData];
  v8 = [v7 objectForKeyedSubscript:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", a4)}];
  if (v8)
  {
    v9 = v8;
    v10 = a1;
    v11 = a3;
  }

  else
  {
    v12 = _segmentForGlyphContinuousSize(0, a4);
    v14 = v13;
    v15 = [v7 objectForKeyedSubscript:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v13)}];
    v16 = [v7 objectForKeyedSubscript:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v12)}];
    if (!v15)
    {
      +[CUIVectorGlyphMutator scalarsForGlyphContinuousWeight:glyphContinuousSize:];
    }

    v17 = v16;
    if (!v16)
    {
      +[CUIVectorGlyphMutator scalarsForGlyphContinuousWeight:glyphContinuousSize:];
    }

    v18 = v14 - v12;
    if (fabs(v14 - v12) >= 2.22044605e-16)
    {
      [a1 _scalarsForGlyphContinuousWeight:v15 inDictionary:0 shouldClamp:a3];
      v22 = v21;
      v24 = v23;
      [a1 _scalarsForGlyphContinuousWeight:v17 inDictionary:0 shouldClamp:a3];
      v25 = (a4 - v12) / v18;
      v19 = v26 + (v22 - v26) * v25;
      v20 = v27 + (v24 - v27) * v25;
      goto LABEL_13;
    }

    v10 = a1;
    v11 = a3;
    v9 = v17;
  }

  [v10 _scalarsForGlyphContinuousWeight:v9 inDictionary:0 shouldClamp:v11];
LABEL_13:
  result.var1 = v20;
  result.var0 = v19;
  return result;
}

+ ($F24F406B2B787EFB06265DBA3D28CBD5)scalarsForGlyphWeight:(int64_t)a3 glyphSize:(int64_t)a4
{
  [a1 transformForGlyphSize:a4];
  if (a3 > 4)
  {
    if (a3 <= 6)
    {
      if (a3 == 5)
      {
        v8 = &_CUIVectorGlyphContinuousWeightMedium;
      }

      else
      {
        v8 = &_CUIVectorGlyphContinuousWeightSemibold;
      }
    }

    else
    {
      switch(a3)
      {
        case 7:
          v8 = &_CUIVectorGlyphContinuousWeightBold;
          break;
        case 8:
          v8 = &_CUIVectorGlyphContinuousWeightHeavy;
          break;
        case 9:
          v8 = &_CUIVectorGlyphContinuousWeightBlack;
          break;
        default:
          goto LABEL_23;
      }
    }

    goto LABEL_22;
  }

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v8 = &_CUIVectorGlyphContinuousWeightThin;
      goto LABEL_22;
    }

    if (a3 == 3)
    {
      v8 = &_CUIVectorGlyphContinuousWeightLight;
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  if (!a3)
  {
LABEL_16:
    v8 = &_CUIVectorGlyphContinuousWeightRegular;
    goto LABEL_22;
  }

  if (a3 != 1)
  {
    goto LABEL_23;
  }

  v8 = &_CUIVectorGlyphContinuousWeightUltralight;
LABEL_22:
  v4 = *v8;
LABEL_23:
  v9 = [objc_msgSend(a1 "_interpolationData")];
  if (!v9)
  {
    +[CUIVectorGlyphMutator scalarsForGlyphWeight:glyphSize:];
  }

  [a1 _scalarsForGlyphContinuousWeight:v9 inDictionary:1 shouldClamp:v4];
  result.var1 = v11;
  result.var0 = v10;
  return result;
}

- (CGPath)cgPathFrom:(id)a3
{
  var0 = a3.var0;
  Mutable = CGPathCreateMutable();
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v10 = 0;
  v6 = [(CUIVectorGlyphPath *)self->_originPath path];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __36__CUIVectorGlyphMutator_cgPathFrom___block_invoke;
  block[3] = &unk_1E7250F90;
  block[5] = Mutable;
  block[6] = var0;
  block[4] = v9;
  CGPathApplyWithBlock(v6, block);
  free(var0);
  CFAutorelease(Mutable);
  _Block_object_dispose(v9, 8);
  return Mutable;
}

void __36__CUIVectorGlyphMutator_cgPathFrom___block_invoke(uint64_t a1, int *a2)
{
  v3 = *a2;
  if (*a2 <= 1)
  {
    if (v3)
    {
      if (v3 != 1)
      {
        return;
      }

      v5 = *(*(*(a1 + 32) + 8) + 24);
      CGPathAddLineToPoint(*(a1 + 40), 0, *(*(a1 + 48) + 8 * (2 * v5)), *(*(a1 + 48) + 8 * ((2 * v5) | 1u)));
    }

    else
    {
      v11 = *(*(*(a1 + 32) + 8) + 24);
      CGPathMoveToPoint(*(a1 + 40), 0, *(*(a1 + 48) + 8 * (2 * v11)), *(*(a1 + 48) + 8 * ((2 * v11) | 1u)));
    }

    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 24) + 1;
    goto LABEL_15;
  }

  switch(v3)
  {
    case 2:
      v6 = 2 * *(*(*(a1 + 32) + 8) + 24);
      CGPathAddQuadCurveToPoint(*(a1 + 40), 0, *(*(a1 + 48) + 8 * v6), *(*(a1 + 48) + 8 * (v6 | 1)), *(*(a1 + 48) + 8 * (v6 + 2)), *(*(a1 + 48) + 8 * (v6 + 3)));
      v7 = *(*(a1 + 32) + 8);
      v8 = *(v7 + 24) + 2;
LABEL_15:
      *(v7 + 24) = v8;
      return;
    case 3:
      v9 = *(a1 + 48);
      v10 = 2 * *(*(*(a1 + 32) + 8) + 24);
      CGPathAddCurveToPoint(*(a1 + 40), 0, *(v9 + 8 * v10), *(v9 + 8 * (v10 | 1)), *(v9 + 8 * (v10 + 2)), *(v9 + 8 * (v10 + 3)), *(v9 + 8 * (v10 + 4)), *(v9 + 8 * (v10 + 5)));
      v7 = *(*(a1 + 32) + 8);
      v8 = *(v7 + 24) + 3;
      goto LABEL_15;
    case 4:
      v4 = *(a1 + 40);

      CGPathCloseSubpath(v4);
      break;
  }
}

@end