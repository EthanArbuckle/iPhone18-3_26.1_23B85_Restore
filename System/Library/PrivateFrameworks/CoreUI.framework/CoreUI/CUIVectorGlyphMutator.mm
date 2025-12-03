@interface CUIVectorGlyphMutator
+ ($57208586A15A58339C904728178D1914)createInterpolatedPointsFromPoints:(id)points ultralightDeltas:(id)deltas blackDeltas:(id)blackDeltas withScalars:(id)scalars;
+ ($57208586A15A58339C904728178D1914)deltaArrayFrom:(id)from to:(id)to;
+ ($57208586A15A58339C904728178D1914)pointArrayFromPath:(CGPath *)path;
+ ($F24F406B2B787EFB06265DBA3D28CBD5)_scalarsForGlyphContinuousWeight:(double)weight inDictionary:(id)dictionary shouldClamp:(BOOL)clamp;
+ ($F24F406B2B787EFB06265DBA3D28CBD5)scalarsForGlyphContinuousWeight:(double)weight glyphContinuousSize:(double)size;
+ ($F24F406B2B787EFB06265DBA3D28CBD5)scalarsForGlyphWeight:(int64_t)weight glyphSize:(int64_t)size;
+ ($F24F406B2B787EFB06265DBA3D28CBD5)transformForGlyphContinuousSize:(double)size;
+ ($F24F406B2B787EFB06265DBA3D28CBD5)transformForGlyphSize:(int64_t)size;
+ (double)realloc_cgfloat_array:(double *)realloc_cgfloat_array withNewCount:(unint64_t)count;
+ (id)_interpolationData;
+ (id)createFloatDeltasFrom:(id)from to:(id)to;
+ (id)createInterpolatedFloatsFromFloats:(id)floats ultralightDeltas:(id)deltas blackDeltas:(id)blackDeltas withScalars:(id)scalars;
- ($57208586A15A58339C904728178D1914)applyDeltasWithScalars:(id)scalars;
- ($57208586A15A58339C904728178D1914)applyDeltasWithScalars:(id)scalars andTransform:(id)transform;
- ($57208586A15A58339C904728178D1914)blackDeltas;
- ($57208586A15A58339C904728178D1914)originPoints;
- ($57208586A15A58339C904728178D1914)ultralightDeltas;
- (CGPath)cgPathFrom:(id)from;
- (CUIVectorGlyphMutator)initWithPointSize:(double)size regular:(id)regular ultralight:(id)ultralight black:(id)black;
- (id)clipStrokeKeyframesForPath:(id)path scalars:(id)scalars;
- (id)pathForScalars:(id)scalars andTransform:(id)transform;
- (void)convertDistance0:(float)distance0 distance1:(float)distance1 elementIndex0Out:(unint64_t *)out distance0Out:(float *)distance0Out elementIndex1Out:(unint64_t *)index1Out distance1Out:(float *)distance1Out subpath0:(unint64_t)subpath0 subpath1:(unint64_t)self0 data:(CUIVectorGlyphPathLengthData *)self1;
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

- (CUIVectorGlyphMutator)initWithPointSize:(double)size regular:(id)regular ultralight:(id)ultralight black:(id)black
{
  v52.receiver = self;
  v52.super_class = CUIVectorGlyphMutator;
  v10 = [(CUIVectorGlyphMutator *)&v52 init];
  if (v10)
  {
    v10->_originPath = regular;
    v10->_ultralightPath = ultralight;
    v10->_blackPath = black;
    [(CUIVectorGlyphMutator *)v10 setPointSize:size];
    v11 = +[CUIVectorGlyphMutator pointArrayFromPath:](CUIVectorGlyphMutator, "pointArrayFromPath:", [regular path]);
    v13 = v12;
    v14 = +[CUIVectorGlyphMutator pointArrayFromPath:](CUIVectorGlyphMutator, "pointArrayFromPath:", [ultralight path]);
    v16 = v15;
    blackCopy = black;
    v24 = +[CUIVectorGlyphMutator pointArrayFromPath:](CUIVectorGlyphMutator, "pointArrayFromPath:", [black path]);
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
    encodedClipStrokeKeyframes = [regular encodedClipStrokeKeyframes];
    encodedClipStrokeKeyframes2 = [ultralight encodedClipStrokeKeyframes];
    encodedClipStrokeKeyframes3 = [blackCopy encodedClipStrokeKeyframes];
    if (encodedClipStrokeKeyframes)
    {
      if (encodedClipStrokeKeyframes2)
      {
        v33 = encodedClipStrokeKeyframes3;
        if (encodedClipStrokeKeyframes3)
        {
          v34 = [encodedClipStrokeKeyframes length];
          if (v34 == [encodedClipStrokeKeyframes2 length])
          {
            v35 = [encodedClipStrokeKeyframes length];
            if (v35 == [v33 length])
            {
              v50 = 0;
              v51 = 0;
              v49 = 0;
              v36 = [encodedClipStrokeKeyframes validate:&v51];
              v37 = [encodedClipStrokeKeyframes2 validate:&v50];
              v38 = [v33 validate:&v49];
              if (v36)
              {
                if (v37 && v38 && v51 == v50 && v51 == v49)
                {
                  rawKeyframesOffset = [encodedClipStrokeKeyframes rawKeyframesOffset];
                  v40 = [encodedClipStrokeKeyframes length];
                  while (rawKeyframesOffset < v40)
                  {
                    v47 = 0;
                    v48 = 0;
                    [encodedClipStrokeKeyframes getBytes:&v48 + 4 range:{rawKeyframesOffset, 4}];
                    [encodedClipStrokeKeyframes2 getBytes:&v48 range:{rawKeyframesOffset, 4}];
                    LODWORD(v41) = HIDWORD(v48);
                    if (*(&v48 + 1) != *&v48)
                    {
                      return v10;
                    }

                    [v33 getBytes:&v48 range:{rawKeyframesOffset, 4, v41}];
                    LODWORD(v42) = HIDWORD(v48);
                    if (*(&v48 + 1) != *&v48)
                    {
                      return v10;
                    }

                    v43 = rawKeyframesOffset + 8;
                    [encodedClipStrokeKeyframes getBytes:&v47 + 4 range:{v43, 4, v42}];
                    [encodedClipStrokeKeyframes2 getBytes:&v47 range:{v43, 4}];
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
                    [encodedClipStrokeKeyframes getBytes:&v47 + 4 range:{v44, 4}];
                    [encodedClipStrokeKeyframes2 getBytes:&v47 range:{v44, 4}];
                    if (floorf(*(&v47 + 1)) != floorf(*&v47))
                    {
                      return v10;
                    }

                    [v33 getBytes:&v47 range:{v44, 4}];
                    if (floorf(*(&v47 + 1)) != floorf(*&v47))
                    {
                      return v10;
                    }

                    v40 = [encodedClipStrokeKeyframes length];
                    rawKeyframesOffset = v44 + 4;
                  }

                  v10->_originClipStrokeKeyframes = [regular encodedClipStrokeKeyframes];
                  v10->_ultralightClipStrokeKeyframes = [ultralight encodedClipStrokeKeyframes];
                  v10->_blackClipStrokeKeyframes = [blackCopy encodedClipStrokeKeyframes];
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

- ($57208586A15A58339C904728178D1914)applyDeltasWithScalars:(id)scalars
{
  v3 = [(CUIVectorGlyphMutator *)self applyDeltasWithScalars:scalars.var0 andTransform:scalars.var1, 1.0, 0.0];
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

- ($57208586A15A58339C904728178D1914)applyDeltasWithScalars:(id)scalars andTransform:(id)transform
{
  __B = transform;
  v5 = [objc_opt_class() createInterpolatedPointsFromPoints:self->_originPoints.pointComponents ultralightDeltas:self->_originPoints.numPoints blackDeltas:self->_ultralightDeltas.deltaComponents withScalars:{self->_ultralightDeltas.numDeltas, self->_blackDeltas.deltaComponents, self->_blackDeltas.numDeltas, scalars.var0, scalars.var1}];
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

+ ($57208586A15A58339C904728178D1914)createInterpolatedPointsFromPoints:(id)points ultralightDeltas:(id)deltas blackDeltas:(id)blackDeltas withScalars:(id)scalars
{
  var1 = deltas.var1;
  v7 = points.var1;
  var0 = points.var0;
  __B = scalars;
  v9 = 2 * deltas.var1;
  v10 = (&v14 - 2 * deltas.var1);
  vDSP_vsmsmaD(deltas.var0, 1, &__B.var0, blackDeltas.var0, 1, &__B.var1, v10, 1, 2 * deltas.var1);
  v11 = malloc_type_malloc(16 * var1, 0x100004000313F17uLL);
  vDSP_vaddD(var0, 1, v10, 1, v11, 1, v9);
  v12 = v11;
  v13 = v7;
  result.var1 = v13;
  result.var0 = v12;
  return result;
}

+ (id)createInterpolatedFloatsFromFloats:(id)floats ultralightDeltas:(id)deltas blackDeltas:(id)blackDeltas withScalars:(id)scalars
{
  var1 = scalars.var1;
  var0 = scalars.var0;
  v11 = [floats length] >> 2;
  v12 = var0;
  v13 = var1;
  v16 = v13;
  v17 = v12;
  v14 = [[NSMutableData alloc] initWithLength:{objc_msgSend(floats, "length")}];
  MEMORY[0x193AC7440]([deltas bytes], 1, &v17, objc_msgSend(blackDeltas, "bytes"), 1, &v16, objc_msgSend(v14, "mutableBytes"), 1, v11);
  MEMORY[0x193AC73B0]([floats bytes], 1, objc_msgSend(v14, "bytes"), 1, objc_msgSend(v14, "mutableBytes"), 1, v11);
  return v14;
}

- (void)convertDistance0:(float)distance0 distance1:(float)distance1 elementIndex0Out:(unint64_t *)out distance0Out:(float *)distance0Out elementIndex1Out:(unint64_t *)index1Out distance1Out:(float *)distance1Out subpath0:(unint64_t)subpath0 subpath1:(unint64_t)self0 data:(CUIVectorGlyphPathLengthData *)self1
{
  numElements = data->numElements;
  if (numElements)
  {
    v12 = 0;
    subpathLengths = data->subpathLengths;
    v14 = (distance0 - floorf(distance0)) * subpathLengths[subpath0];
    v15 = (distance1 - floorf(distance1)) * subpathLengths[subpath1];
    v16 = fminf(subpath0, subpath1);
    v17 = fmaxf(subpath0, subpath1);
    elementToSubpath = data->elementToSubpath;
    do
    {
      v19 = elementToSubpath[v12];
      if (v19 >= v16)
      {
        v20 = &data->elementLengths[v12];
        var0 = v20->var0;
        var1 = v20->var1;
        v23 = v20->var0 + var1;
        v24 = *distance0Out != -1.0 || v23 <= v14;
        v25 = fabsf(var1);
        if (!v24)
        {
          v26 = 0.0;
          if (v25 >= 0.00000011921)
          {
            v26 = (v14 - var0) / var1;
          }

          *out = v12;
          *distance0Out = v26;
        }

        if (*distance1Out == -1.0 && v23 > v15)
        {
          v28 = 0.0;
          if (v25 >= 0.00000011921)
          {
            v28 = (v15 - var0) / var1;
          }

          *index1Out = v12;
          *distance1Out = v28;
        }

        if (v19 > v17)
        {
          return;
        }

        numElements = data->numElements;
      }

      ++v12;
    }

    while (v12 < numElements);
  }
}

- (id)clipStrokeKeyframesForPath:(id)path scalars:(id)scalars
{
  if (!self->_originClipStrokeKeyframes)
  {
    return 0;
  }

  var1 = scalars.var1;
  var0 = scalars.var0;
  pathCopy = path;
  if (path)
  {
    [path lengthData];
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

  if (pathCopy)
  {
    [pathCopy lengthData];
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

  if (pathCopy)
  {
    [pathCopy lengthData];
    LODWORD(pathCopy) = *(&v105 + 1) != 0;
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
  if ((pathCopy & v22 & v24) == 1)
  {
    if (v97[4])
    {
      v14 = [NSMutableData dataWithCapacity:[(NSData *)self->_originClipStrokeKeyframes length]];
      rawKeyframesOffset = [(NSData *)self->_originClipStrokeKeyframes rawKeyframesOffset];
      [(NSMutableData *)v14 appendBytes:[(NSData *)self->_originClipStrokeKeyframes bytes] length:rawKeyframesOffset];
      if (rawKeyframesOffset < [(NSData *)self->_originClipStrokeKeyframes length])
      {
        while (1)
        {
          v96 = 0;
          v97[0] = 0;
          v95 = 0;
          [(NSData *)self->_originClipStrokeKeyframes getBytes:v97 + 4 range:rawKeyframesOffset, 4];
          [(NSMutableData *)v14 appendBytes:v97 + 4 length:4];
          v94 = 0;
          [(NSData *)self->_originClipStrokeKeyframes getBytes:v97 range:rawKeyframesOffset + 4, 4];
          [(NSData *)self->_ultralightClipStrokeKeyframes getBytes:&v94 + 4 range:rawKeyframesOffset + 4, 4];
          [(NSData *)self->_blackClipStrokeKeyframes getBytes:&v94 range:rawKeyframesOffset + 4, 4];
          *&v27 = var0 * (*(&v94 + 1) - *v97);
          *&v28 = var1 * (*&v94 - *v97);
          v94 = __PAIR64__(v27, v28);
          *v97 = (*v97 + *&v27) + *&v28;
          [(NSMutableData *)v14 appendBytes:v97 length:4];
          [(NSData *)self->_originClipStrokeKeyframes getBytes:&v96 + 4 range:rawKeyframesOffset + 8, 4];
          v29 = rawKeyframesOffset + 12;
          [(NSData *)self->_originClipStrokeKeyframes getBytes:&v96 range:rawKeyframesOffset + 12, 4];
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

          [(NSData *)self->_ultralightClipStrokeKeyframes getBytes:&v95 + 4 range:rawKeyframesOffset + 8, 4, v36];
          [(NSData *)self->_ultralightClipStrokeKeyframes getBytes:&v95 range:rawKeyframesOffset + 12, 4];
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

          [(NSData *)self->_blackClipStrokeKeyframes getBytes:&v95 + 4 range:rawKeyframesOffset + 8, 4, v41];
          [(NSData *)self->_blackClipStrokeKeyframes getBytes:&v95 range:rawKeyframesOffset + 12, 4];
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
          rawKeyframesOffset += 16;
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

- (id)pathForScalars:(id)scalars andTransform:(id)transform
{
  var1 = scalars.var1;
  var0 = scalars.var0;
  v7 = [(CUIVectorGlyphMutator *)self applyDeltasWithScalars:scalars.var0 andTransform:scalars.var1, transform.var0, transform.var1];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __53__CUIVectorGlyphMutator_pathForScalars_andTransform___block_invoke;
  v10[3] = &unk_1E7250F40;
  v10[4] = self;
  *&v10[5] = var0;
  *&v10[6] = var1;
  return [CUIVectorGlyphPath createWithPath:[(CUIVectorGlyphMutator *)self cgPathFrom:v7 clipStrokeKeyframeProvider:v8], v10];
}

+ (double)realloc_cgfloat_array:(double *)realloc_cgfloat_array withNewCount:(unint64_t)count
{
  result = malloc_type_realloc(realloc_cgfloat_array, 8 * count, 0x100004000313F17uLL);
  if (!result)
  {
    free(realloc_cgfloat_array);
    [NSException raise:@"FailedRealloc" format:@"Requested size was not available"];
    return realloc_cgfloat_array;
  }

  return result;
}

+ ($57208586A15A58339C904728178D1914)pointArrayFromPath:(CGPath *)path
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
  block[4] = self;
  block[5] = &v11;
  block[8] = 50;
  CGPathApplyWithBlock(path, block);
  v5 = v16[3];
  v6 = v12[3];
  v7 = v20[3];
  if (v5 != v6)
  {
    v7 = [self realloc_cgfloat_array:v20[3] withNewCount:2 * v6];
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

+ ($57208586A15A58339C904728178D1914)deltaArrayFrom:(id)from to:(id)to
{
  if (from.var1 != to.var1)
  {
    +[CUIVectorGlyphMutator deltaArrayFrom:to:];
  }

  var0 = to.var0;
  var1 = from.var1;
  v6 = from.var0;
  v7 = 2 * from.var1;
  v8 = malloc_type_malloc(16 * from.var1, 0x100004000313F17uLL);
  vDSP_vsubD(v6, 1, var0, 1, v8, 1, v7);
  v9 = v8;
  v10 = var1;
  result.var1 = v10;
  result.var0 = v9;
  return result;
}

+ (id)createFloatDeltasFrom:(id)from to:(id)to
{
  v6 = [from length];
  if (v6 != [to length])
  {
    +[CUIVectorGlyphMutator createFloatDeltasFrom:to:];
  }

  v7 = [[NSMutableData alloc] initWithLength:{objc_msgSend(from, "length")}];
  MEMORY[0x193AC7470]([from bytes], 1, objc_msgSend(to, "bytes"), 1, objc_msgSend(v7, "mutableBytes"), 1, objc_msgSend(from, "length") >> 2);
  return v7;
}

+ ($F24F406B2B787EFB06265DBA3D28CBD5)transformForGlyphSize:(int64_t)size
{
  v3 = 0.0;
  if (size < 2)
  {
    v4 = 1.0;
  }

  else
  {
    if (size == 2)
    {
      v5 = &_CUIVectorGlyphContinuousSizeMedium;
      goto LABEL_7;
    }

    v4 = 0.0;
    if (size == 3)
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

+ ($F24F406B2B787EFB06265DBA3D28CBD5)transformForGlyphContinuousSize:(double)size
{
  v3 = 0;
  while (*&kCoreThemeContinuousGlyphSizes[v3] != size)
  {
    if (++v3 == 3)
    {
      goto LABEL_7;
    }
  }

  if (kCoreThemeDiscreteGlyphSizes[v3])
  {
    [self transformForGlyphSize:?];
    goto LABEL_8;
  }

LABEL_7:
  v4 = size * -0.352294922 + 0.352294922;
LABEL_8:
  result.var1 = v4;
  result.var0 = size;
  return result;
}

+ ($F24F406B2B787EFB06265DBA3D28CBD5)_scalarsForGlyphContinuousWeight:(double)weight inDictionary:(id)dictionary shouldClamp:(BOOL)clamp
{
  if (!dictionary)
  {
    +[CUIVectorGlyphMutator _scalarsForGlyphContinuousWeight:inDictionary:shouldClamp:];
  }

  v7 = [dictionary objectForKeyedSubscript:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", dictionary, clamp)}];
  if (v7)
  {
    goto LABEL_5;
  }

  _segmentForGlyphContinuousWeight();
  v10 = v8;
  v11 = v9;
  if (vabdd_f64(v9, v8) < 2.22044605e-16)
  {
    v7 = [dictionary objectForKeyedSubscript:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v8)}];
    if (!v7)
    {
      +[CUIVectorGlyphMutator _scalarsForGlyphContinuousWeight:inDictionary:shouldClamp:];
    }

LABEL_5:

    [v7 deltaScalarsValue];
    goto LABEL_20;
  }

  v14 = [dictionary objectForKeyedSubscript:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v9)}];
  v15 = [dictionary objectForKeyedSubscript:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v10)}];
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
  v23 = (weight - v10) / (v11 - v10);
  v24 = v21 + (v18 - v21) * v23;
  v25 = v22 + (v20 - v22) * v23;
  v26 = (weight - v11) / (v11 - v10) + 1.0;
  v27 = v21 + (v18 - v21) * v26;
  if (v11 < weight)
  {
    v25 = v22 + (v20 - v22) * v26;
  }

  else
  {
    v27 = v24;
  }

  v28 = (v10 - weight) / (v11 - v10) + 1.0;
  v12 = v18 + (v21 - v18) * v28;
  v13 = v20 + (v22 - v20) * v28;
  if (v10 <= weight)
  {
    v12 = v27;
    v13 = v25;
  }

LABEL_20:
  result.var1 = v13;
  result.var0 = v12;
  return result;
}

+ ($F24F406B2B787EFB06265DBA3D28CBD5)scalarsForGlyphContinuousWeight:(double)weight glyphContinuousSize:(double)size
{
  _interpolationData = [self _interpolationData];
  v8 = [_interpolationData objectForKeyedSubscript:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", size)}];
  if (v8)
  {
    v9 = v8;
    selfCopy2 = self;
    weightCopy2 = weight;
  }

  else
  {
    v12 = _segmentForGlyphContinuousSize(0, size);
    v14 = v13;
    v15 = [_interpolationData objectForKeyedSubscript:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v13)}];
    v16 = [_interpolationData objectForKeyedSubscript:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v12)}];
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
      [self _scalarsForGlyphContinuousWeight:v15 inDictionary:0 shouldClamp:weight];
      v22 = v21;
      v24 = v23;
      [self _scalarsForGlyphContinuousWeight:v17 inDictionary:0 shouldClamp:weight];
      v25 = (size - v12) / v18;
      v19 = v26 + (v22 - v26) * v25;
      v20 = v27 + (v24 - v27) * v25;
      goto LABEL_13;
    }

    selfCopy2 = self;
    weightCopy2 = weight;
    v9 = v17;
  }

  [selfCopy2 _scalarsForGlyphContinuousWeight:v9 inDictionary:0 shouldClamp:weightCopy2];
LABEL_13:
  result.var1 = v20;
  result.var0 = v19;
  return result;
}

+ ($F24F406B2B787EFB06265DBA3D28CBD5)scalarsForGlyphWeight:(int64_t)weight glyphSize:(int64_t)size
{
  [self transformForGlyphSize:size];
  if (weight > 4)
  {
    if (weight <= 6)
    {
      if (weight == 5)
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
      switch(weight)
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

  if (weight > 1)
  {
    if (weight == 2)
    {
      v8 = &_CUIVectorGlyphContinuousWeightThin;
      goto LABEL_22;
    }

    if (weight == 3)
    {
      v8 = &_CUIVectorGlyphContinuousWeightLight;
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  if (!weight)
  {
LABEL_16:
    v8 = &_CUIVectorGlyphContinuousWeightRegular;
    goto LABEL_22;
  }

  if (weight != 1)
  {
    goto LABEL_23;
  }

  v8 = &_CUIVectorGlyphContinuousWeightUltralight;
LABEL_22:
  v4 = *v8;
LABEL_23:
  v9 = [objc_msgSend(self "_interpolationData")];
  if (!v9)
  {
    +[CUIVectorGlyphMutator scalarsForGlyphWeight:glyphSize:];
  }

  [self _scalarsForGlyphContinuousWeight:v9 inDictionary:1 shouldClamp:v4];
  result.var1 = v11;
  result.var0 = v10;
  return result;
}

- (CGPath)cgPathFrom:(id)from
{
  var0 = from.var0;
  Mutable = CGPathCreateMutable();
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v10 = 0;
  path = [(CUIVectorGlyphPath *)self->_originPath path];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __36__CUIVectorGlyphMutator_cgPathFrom___block_invoke;
  block[3] = &unk_1E7250F90;
  block[5] = Mutable;
  block[6] = var0;
  block[4] = v9;
  CGPathApplyWithBlock(path, block);
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