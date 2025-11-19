@interface CMShapeUtils
+ (BOOL)isShapeALine:(id)a3;
+ (CGRect)transformRect:(CGRect)a3 scale:(float)a4 offsetX:(float)a5 offsetY:(float)a6;
+ (double)getFormulaResultFromCustomGeometry:(id)a3 atIndex:(unint64_t)a4;
+ (double)mapAdjustCoord:(OADAdjustCoord)a3 geometry:(id)a4;
+ (double)mapFormulaOfType:(int)a3 argValues:(double *)a4 isEscher:(BOOL)a5;
+ (double)nativeAngleToRad:(int)a3 isEscher:(BOOL)a4;
+ (float)fontSizeForText:(id)a3 insideRectangle:(CGSize)a4;
+ (float)intersectionAngleNextToAngle:(float)a3 isAfter:(BOOL)a4 nodeSize:(CGSize)a5;
+ (float)scaleFactorFromLength:(float)a3 toLength:(float)a4;
+ (id)absoluteOrientedBoundsWithRelativeOrientedBounds:(id)a3 parentOrientedBounds:(id)a4 parentLogicalBounds:(CGRect)a5;
+ (id)inscribedBoundsWithBounds:(id)a3 logicalBounds:(CGRect)a4;
+ (id)internalBoundsWithBounds:(id)a3 scaleBounds:(CGRect)a4;
+ (id)relatvieBoundsWithAbsoluteInnerBounds:(id)a3 parentBounds:(id)a4;
+ (id)transformFromBounds:(CGRect)a3 toOrientedBounds:(id)a4;
+ (id)transformedBoundsWithBounds:(id)a3 transform:(id)a4;
+ (int)mapFormulaKeywordValue:(int)a3 geometry:(id)a4;
+ (int)radToNativeAngle:(double)a3 isEscher:(BOOL)a4;
+ (void)setCoordSpaceForCustomeGeometry:(id)a3 fromSize:(CGSize)a4;
@end

@implementation CMShapeUtils

+ (BOOL)isShapeALine:(id)a3
{
  v3 = a3;
  v4 = [v3 geometry];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [v3 geometry];
    if ([v6 pathCount] == 1)
    {
      v7 = [v6 pathAtIndex:0];
      if (([v7 stroked] & 1) != 0 && objc_msgSend(v7, "elementCount") == 2)
      {
        v8 = [v7 elementAtIndex:0];
        v9 = [v7 elementAtIndex:1];
        objc_opt_class();
        v10 = 0;
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = 1;
          }
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (void)setCoordSpaceForCustomeGeometry:(id)a3 fromSize:(CGSize)a4
{
  v4 = 0;
  width = a4.width;
  height = a4.height;
  [a3 setGeometryCoordSpace:&v4];
}

+ (float)scaleFactorFromLength:(float)a3 toLength:(float)a4
{
  v4 = a4 / a3;
  v5 = a3 == 0.0;
  result = 0.0;
  if (!v5)
  {
    return v4;
  }

  return result;
}

+ (CGRect)transformRect:(CGRect)a3 scale:(float)a4 offsetX:(float)a5 offsetY:(float)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = *(MEMORY[0x277CBF2C0] + 16);
  *&v16.a = *MEMORY[0x277CBF2C0];
  *&v16.c = v11;
  *&v16.tx = *(MEMORY[0x277CBF2C0] + 32);
  CGAffineTransformTranslate(&v17, &v16, a5, a6);
  v16 = v17;
  CGAffineTransformScale(&v17, &v16, a4, a4);
  v12 = height * v17.c + v17.a * width;
  v13 = height * v17.d + v17.b * width;
  v14 = v17.tx + y * v17.c + v17.a * x;
  v15 = v17.ty + y * v17.d + v17.b * x;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

+ (id)transformFromBounds:(CGRect)a3 toOrientedBounds:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  [v9 bounds];
  rect = v10;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [v9 rotation];
  if ([OADOrientedBounds directionCloserToVerticalThanToHorizontal:?])
  {
    v17 = NSTransposedRectWithSameCenter(v12, v14, v16, rect);
    rect = v18;
    v12 = v17;
    v14 = v19;
    v16 = v20;
  }

  v21 = x;
  v55.origin.x = x;
  v22 = y;
  v55.origin.y = y;
  v23 = width;
  v55.size.width = width;
  v24 = height;
  v55.size.height = height;
  v25 = CGRectGetWidth(v55);
  v56.origin.x = v12;
  v56.origin.y = v14;
  v56.size.width = v16;
  v56.size.height = rect;
  v26 = CGRectGetWidth(v56);
  v27 = v25;
  *&v28 = v26;
  *&v26 = v27;
  [a1 scaleFactorFromLength:v26 toLength:v28];
  HIDWORD(v52) = v29;
  v57.origin.x = v21;
  v57.origin.y = v22;
  v57.size.width = v23;
  v57.size.height = v24;
  v30 = CGRectGetHeight(v57);
  v58.origin.x = v12;
  v58.origin.y = v14;
  v58.size.width = v16;
  v58.size.height = rect;
  v31 = CGRectGetHeight(v58);
  v32 = v30;
  *&v33 = v31;
  *&v31 = v32;
  [a1 scaleFactorFromLength:v31 toLength:v33];
  LODWORD(v52) = v34;
  v35 = TSUCenterOfRect(v21, v22, v23, v24);
  v37 = v36;
  v38 = TSUCenterOfRect(v12, v14, v16, rect);
  v40 = v39;
  v41 = [MEMORY[0x277CCA878] transform];
  v42 = objc_alloc_init(MEMORY[0x277CCA878]);
  [v42 translateXBy:-v35 yBy:-v37];
  [v41 appendTransform:v42];
  v43 = objc_alloc_init(MEMORY[0x277CCA878]);

  [v43 scaleXBy:*(&v52 + 1) yBy:*&v52];
  [v41 appendTransform:v43];
  v44 = objc_alloc_init(MEMORY[0x277CCA878]);

  [v9 rotation];
  [v44 rotateByDegrees:v45];
  [v41 appendTransform:v44];
  v46 = objc_alloc_init(MEMORY[0x277CCA878]);

  LODWORD(v44) = [v9 flipX];
  v47 = [v9 flipY];
  v48 = 1.0;
  if (v44)
  {
    v49 = -1.0;
  }

  else
  {
    v49 = 1.0;
  }

  if (v47)
  {
    v48 = -1.0;
  }

  [v46 scaleXBy:v49 yBy:{v48, v52}];
  [v41 appendTransform:v46];
  v50 = objc_alloc_init(MEMORY[0x277CCA878]);

  [v50 translateXBy:v38 yBy:v40];
  [v41 appendTransform:v50];

  return v41;
}

+ (id)absoluteOrientedBoundsWithRelativeOrientedBounds:(id)a3 parentOrientedBounds:(id)a4 parentLogicalBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v10 = a3;
  v11 = a4;
  v12 = [CMShapeUtils transformFromBounds:v11 toOrientedBounds:x, y, width, height];
  [v10 bounds];
  MidX = CGRectGetMidX(v44);
  [v10 bounds];
  [v12 transformPoint:{MidX, CGRectGetMidY(v45)}];
  v15 = v14;
  v17 = v16;
  [v10 bounds];
  [v12 transformSize:{v18, v19}];
  v21 = TSURectWithCenterAndSize(v15, v17, v20);
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = [v11 flipX];
  v29 = [v10 flipX];
  v30 = [v11 flipY];
  v31 = [v10 flipY];
  v32 = [v10 flipX];
  v33 = [v10 flipY];
  [v10 rotation];
  v35 = v34;
  [v11 rotation];
  v37 = v36;
  v38 = [OADOrientedBounds alloc];
  if (v33)
  {
    v40 = -1;
  }

  else
  {
    v40 = 1;
  }

  if (v32)
  {
    v40 = -v40;
  }

  *&v39 = v35 + (v40 * v37);
  v41 = [(OADOrientedBounds *)v38 initWithBounds:v28 ^ v29 rotation:v30 ^ v31 flipX:v21 flipY:v23, v25, v27, v39];

  return v41;
}

+ (id)inscribedBoundsWithBounds:(id)a3 logicalBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  [v9 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [v9 rotation];
  if ([OADOrientedBounds directionCloserToVerticalThanToHorizontal:?])
  {
    v11 = NSTransposedRectWithSameCenter(v11, v13, v15, v17);
    v13 = v18;
    v15 = v19;
    v17 = v20;
  }

  v50.size.height = height;
  v50.origin.x = x;
  v50.origin.y = y;
  v48 = width;
  v50.size.width = width;
  v21 = CGRectGetWidth(v50);
  v51.origin.x = v11;
  v51.origin.y = v13;
  v51.size.width = v15;
  v51.size.height = v17;
  v22 = CGRectGetWidth(v51);
  v23 = v21;
  *&v24 = v22;
  *&v22 = v23;
  [a1 scaleFactorFromLength:v22 toLength:v24];
  v26 = v25;
  v52.origin.x = x;
  v52.origin.y = y;
  v52.size.height = height;
  v52.size.width = v48;
  v27 = CGRectGetHeight(v52);
  v53.origin.x = v11;
  v53.origin.y = v13;
  v53.size.width = v15;
  v53.size.height = v17;
  v28 = CGRectGetHeight(v53);
  v29 = v27;
  *&v30 = v28;
  *&v28 = v29;
  [a1 scaleFactorFromLength:v28 toLength:v30];
  if (v26 >= v31)
  {
    v26 = v31;
  }

  v32 = TSUCenterOfRect(v11, v13, v15, v17);
  v34 = v33;
  v35 = [MEMORY[0x277CCA878] transform];
  [v35 scaleXBy:v26 yBy:v26];
  [v35 transformSize:{v48, height}];
  v37 = v36;
  v39 = v38;
  v40 = [OADOrientedBounds alloc];
  [v9 rotation];
  v42 = v41;
  v43 = [v9 flipX];
  v44 = [v9 flipY];
  LODWORD(v45) = v42;
  v46 = [(OADOrientedBounds *)v40 initWithBounds:v43 rotation:v44 flipX:v32 - v37 * 0.5 flipY:v34 - v39 * 0.5, v37, v39, v45];

  return v46;
}

+ (id)internalBoundsWithBounds:(id)a3 scaleBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3;
  [v8 bounds];
  v9 = v31.origin.x;
  v10 = v31.origin.y;
  v11 = v31.size.width;
  v12 = v31.size.height;
  v29 = CGRectGetWidth(v31);
  v32.origin.x = v9;
  v32.origin.y = v10;
  v32.size.width = v11;
  v32.size.height = v12;
  v28 = CGRectGetHeight(v32);
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  v27 = CGRectGetWidth(v33);
  v34.origin.x = v9;
  v34.origin.y = v10;
  v34.size.width = v11;
  v34.size.height = v12;
  v26 = CGRectGetWidth(v34);
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  v13 = CGRectGetHeight(v35);
  v36.origin.x = v9;
  v36.origin.y = v10;
  v36.size.width = v11;
  v36.size.height = v12;
  v14 = CGRectGetHeight(v36);
  v15 = [OADOrientedBounds alloc];
  [v8 rotation];
  LODWORD(v11) = v16;
  v17 = [v8 flipX];
  v18 = [v8 flipY];
  v19 = x * v29;
  v20 = y * v28;
  v21 = v27 * v26;
  v22 = v13 * v14;
  LODWORD(v23) = LODWORD(v11);
  v24 = [(OADOrientedBounds *)v15 initWithBounds:v17 rotation:v18 flipX:v19 flipY:v20, v21, v22, v23];

  return v24;
}

+ (id)relatvieBoundsWithAbsoluteInnerBounds:(id)a3 parentBounds:(id)a4
{
  v5 = a3;
  v6 = a4;
  [v5 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [v6 bounds];
  v16 = v15;
  v18 = v17;
  v31.origin.x = v8;
  v31.origin.y = v10;
  v31.size.width = v12;
  v31.size.height = v14;
  Width = CGRectGetWidth(v31);
  v32.origin.x = v8;
  v32.origin.y = v10;
  v32.size.width = v12;
  v32.size.height = v14;
  Height = CGRectGetHeight(v32);
  v21 = [OADOrientedBounds alloc];
  [v5 rotation];
  LODWORD(v14) = v22;
  v23 = [v5 flipX];
  v24 = [v5 flipY];
  v25 = v8 - v16;
  v26 = v10 - v18;
  LODWORD(v27) = LODWORD(v14);
  v28 = [(OADOrientedBounds *)v21 initWithBounds:v23 rotation:v24 flipX:v25 flipY:v26, Width, Height, v27];

  return v28;
}

+ (id)transformedBoundsWithBounds:(id)a3 transform:(id)a4
{
  v5 = a3;
  v6 = a4;
  [v5 bounds];
  v11 = TSUCenterOfRect(v7, v8, v9, v10);
  v13 = v12;
  [v6 transformPoint:{*MEMORY[0x277CCA860], *(MEMORY[0x277CCA860] + 8)}];
  v15 = v14;
  v17 = v16;
  [v5 bounds];
  [v6 transformSize:{v18, v19}];
  v21 = TSURectWithCenterAndSize(v11 + v15, v13 + v17, v20);
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = [OADOrientedBounds alloc];
  [v5 rotation];
  v30 = v29;
  v31 = [v5 flipX];
  v32 = [v5 flipY];
  LODWORD(v33) = v30;
  v34 = [(OADOrientedBounds *)v28 initWithBounds:v31 rotation:v32 flipX:v21 flipY:v23, v25, v27, v33];

  return v34;
}

+ (double)mapAdjustCoord:(OADAdjustCoord)a3 geometry:(id)a4
{
  v5 = a4;
  if (a3.isFormulaResult)
  {
    [CMShapeUtils getFormulaResultFromCustomGeometry:v5 atIndex:*&a3 >> 32];
    value = v6;
  }

  else
  {
    value = a3.value;
  }

  return value;
}

+ (double)mapFormulaOfType:(int)a3 argValues:(double *)a4 isEscher:(BOOL)a5
{
  switch(a3)
  {
    case 0:
      v5 = *a4 + a4[1];
      v6 = a4[2];
      return v5 - v6;
    case 1:
      v16 = a4[2];
      if (v16 == 0.0)
      {
        a4[2] = 1.0;
        v16 = 1.0;
      }

      return *a4 * a4[1] / v16;
    case 2:
      v13 = *a4 + a4[1];
      v14 = 0.5;
      return v13 * v14;
    case 3:
      return fabs(*a4);
    case 4:
      result = *a4;
      if (*a4 >= a4[1])
      {
        return a4[1];
      }

      return result;
    case 5:
      result = *a4;
      if (*a4 <= a4[1])
      {
        return a4[1];
      }

      return result;
    case 6:
      v18 = 2;
      if (*a4 > 0.0)
      {
        v18 = 1;
      }

      return a4[v18];
    case 7:
      v15 = a4[1] * a4[1] + *a4 * *a4 + a4[2] * a4[2];
      return sqrt(v15);
    case 8:
      return [a1 radToNativeAngle:a5 isEscher:{atan2(a4[1], *a4)}];
    case 9:
      v7 = *a4;
      [a1 nativeAngleToRad:a4[1] isEscher:a5];
      goto LABEL_12;
    case 10:
      v7 = *a4;
      [a1 nativeAngleToRad:a4[1] isEscher:a5];
      goto LABEL_36;
    case 11:
      v7 = *a4;
      v11 = atan2(a4[2], a4[1]);
LABEL_36:
      v9 = cos(v11);
      goto LABEL_37;
    case 12:
      v7 = *a4;
      v12 = atan2(a4[2], a4[1]);
LABEL_12:
      v9 = sin(v12);
      goto LABEL_37;
    case 13:
      v15 = *a4;
      return sqrt(v15);
    case 14:
      v5 = *a4 + (a4[1] << 16);
      v6 = (a4[2] << 16);
      return v5 - v6;
    case 15:
      v13 = a4[2];
      v14 = sqrt(1.0 - *a4 / a4[1] * (*a4 / a4[1]));
      return v13 * v14;
    case 16:
      v7 = *a4;
      [a1 nativeAngleToRad:a4[1] isEscher:a5];
      v9 = tan(v8);
LABEL_37:
      result = v7 * v9;
      break;
    case 17:
      v17 = a4[1];
      if (*a4 > v17)
      {
        v17 = *a4;
      }

      result = a4[2];
      if (v17 < result)
      {
        result = v17;
      }

      break;
    case 18:
      result = (*a4 + a4[1]) / a4[2];
      break;
    case 19:
      result = *a4;
      break;
    default:
      result = 0.0;
      break;
  }

  return result;
}

+ (double)getFormulaResultFromCustomGeometry:(id)a3 atIndex:(unint64_t)a4
{
  v20[3] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [v7 isEscher];
  v9 = 0.0;
  if ([v7 formulaCount] > a4)
  {
    v10 = [v7 formulaAtIndex:a4];
    v11 = 0;
    memset(v20, 0, 24);
    while (1)
    {
      v12 = [v10 argAtIndex:v11];
      v13 = v12;
      v14 = HIDWORD(v12);
      if (v12 <= 1)
      {
        v16 = 0.0;
        if (!v12)
        {
          goto LABEL_16;
        }

        if (v12 == 1)
        {
          v16 = SHIDWORD(v12);
          goto LABEL_16;
        }
      }

      else
      {
        switch(v12)
        {
          case 2:
            v15 = [v7 adjustValueAtIndex:v14];
LABEL_12:
            v16 = v15;
LABEL_16:
            *&v20[v11] = v16;
            break;
          case 3:
            if (v14 >= a4)
            {
              v19 = [MEMORY[0x277CCA890] currentHandler];
              [v19 handleFailureInMethod:a2 object:a1 file:@"CMShapeUtils.mm" lineNumber:437 description:@"Forward reference to formula"];
            }

            [CMShapeUtils getFormulaResultFromCustomGeometry:v7 atIndex:v13 >> 32];
            goto LABEL_16;
          case 4:
            v15 = [a1 mapFormulaKeywordValue:v14 geometry:v7];
            goto LABEL_12;
        }
      }

      if (++v11 == 3)
      {
        +[CMShapeUtils mapFormulaOfType:argValues:isEscher:](CMShapeUtils, "mapFormulaOfType:argValues:isEscher:", [v10 type], v20, v8);
        v9 = v17;

        break;
      }
    }
  }

  return v9;
}

+ (float)intersectionAngleNextToAngle:(float)a3 isAfter:(BOOL)a4 nodeSize:(CGSize)a5
{
  width = a5.width;
  height = a5.height;
  v45 = a4;
  v54[1] = *MEMORY[0x277D85DE8];
  v54[0] = 0;
  [a1 normalizedAngle:?];
  v46 = v6;
  v8 = __sincos_stret(v6 * 3.14159265 / 180.0);
  v7.f64[0] = v8.__cosval;
  v9 = 0;
  v10 = 0;
  v7.f64[1] = v8.__sinval;
  v11.f64[0] = width;
  v11.f64[1] = height;
  __asm { FMOV            V0.2D, #0.5 }

  v17 = vmulq_f64(v7, _Q0);
  v18 = vmulq_f64(v11, _Q0);
  v19 = 1;
  v53 = vcvt_hight_f32_f64(vcvt_f32_f64(vsubq_f64(v17, v18)), vaddq_f64(v18, v17));
  do
  {
    v20 = 0;
    v21 = v19;
    v52 = *(&qword_25D6FBCF8 + v9);
    v50 = v9 ^ 1;
    v22 = v9 ^ 3;
    v23 = 1;
    do
    {
      v24 = v23;
      v25 = v53.f32[2 * *(&qword_25D6FBCF8 + v20) + v52];
      if (fabsf(v25) <= 0.5)
      {
        v26 = 0;
        v27 = sqrtf(0.25 - (v25 * v25));
        v28 = v53.f32[v50];
        v29 = 1;
        do
        {
          v30 = v29;
          v31 = v27 * *(&unk_25D6FBB48 + v26);
          if (v31 > v28 && v31 < v53.f32[v22])
          {
            if (v21)
            {
              v32 = v25;
            }

            else
            {
              v32 = v27 * *(&unk_25D6FBB48 + v26);
            }

            if (v21)
            {
              v33 = v27 * *(&unk_25D6FBB48 + v26);
            }

            else
            {
              v33 = v25;
            }

            if (v10 >= 2)
            {
              v48 = [MEMORY[0x277CCA890] currentHandler];
              [v48 handleFailureInMethod:a2 object:a1 file:@"CMShapeUtils.mm" lineNumber:488 description:@"Unexpected intersection count"];
            }

            v34 = (atan2f(v33, v32) * 180.0) / 3.14159265;
            *&v34 = v34;
            [a1 normalizedAngle:v34];
            *(v54 + v10++) = v35;
          }

          v29 = 0;
          v26 = 1;
        }

        while ((v30 & 1) != 0);
      }

      v23 = 0;
      v20 = 1;
    }

    while ((v24 & 1) != 0);
    v19 = 0;
    v9 = 1;
  }

  while ((v21 & 1) != 0);
  v36 = v46;
  if (v10 != 2)
  {
    v44 = [MEMORY[0x277CCA890] currentHandler];
    [v44 handleFailureInMethod:a2 object:a1 file:@"CMShapeUtils.mm" lineNumber:495 description:@"Unexpected intersection count"];

    v36 = v46;
  }

  v37 = 0.0;
  if (v45)
  {
    *&v37 = 360.0;
  }

  v38 = v54;
  v39 = 1;
  do
  {
    v40 = v39;
    v41 = *v38 - v36;
    if (v41 < 0.0)
    {
      v41 = v41 + 360.0;
    }

    v42 = v41 >= *&v37;
    if (!v45)
    {
      v42 = v41 <= *&v37;
    }

    if (!v42)
    {
      *&v37 = v41;
    }

    v38 = v54 + 1;
    v39 = 0;
  }

  while ((v40 & 1) != 0);
  *&v37 = v36 + *&v37;

  [a1 normalizedAngle:v37];
  return result;
}

+ (float)fontSizeForText:(id)a3 insideRectangle:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = [a3 length];
  if (!v6)
  {
    return 65.0;
  }

  result = width / v6 * 2.03999996;
  if (height * 0.600000024 < result)
  {
    return height * 0.600000024 / result * result;
  }

  return result;
}

+ (double)nativeAngleToRad:(int)a3 isEscher:(BOOL)a4
{
  if (a4)
  {
    [a1 fixedPointDegToRad:*&a3];
  }

  else
  {
    [a1 milliMinutesToRad:*&a3];
  }

  return result;
}

+ (int)radToNativeAngle:(double)a3 isEscher:(BOOL)a4
{
  if (a4)
  {
    return [a1 radToFixedPointDeg:a3];
  }

  else
  {
    return [a1 radToMilliMinutes:a3];
  }
}

+ (int)mapFormulaKeywordValue:(int)a3 geometry:(id)a4
{
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    [v7 geometryCoordSpace];
    v9 = COERCE_DOUBLE(vcvt_f32_s32(vsub_s32(v14, v13)));
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v9 = 0.0;
  }

  if (a3 > 1279)
  {
    if (a3 <= 1281)
    {
      goto LABEL_17;
    }

    if (a3 == 1282)
    {
      goto LABEL_19;
    }

    if (a3 != 1283)
    {
LABEL_16:
      v10 = [MEMORY[0x277CCA890] currentHandler];
      [v10 handleFailureInMethod:a2 object:a1 file:@"CMShapeUtils.mm" lineNumber:621 description:@"Unknown formula keyword"];

LABEL_17:
      LODWORD(v9) = 0;
      goto LABEL_19;
    }

LABEL_13:
    LODWORD(v9) = HIDWORD(v9);
    goto LABEL_19;
  }

  if (a3 > 321)
  {
    if (a3 == 322)
    {
      goto LABEL_19;
    }

    if (a3 != 323)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  if (a3 == 320)
  {
    *&v9 = *&v9 * 0.5;
    goto LABEL_19;
  }

  if (a3 != 321)
  {
    goto LABEL_16;
  }

  *&v9 = vmuls_lane_f32(0.5, *&v9, 1);
LABEL_19:
  v11 = *&v9;

  return v11;
}

@end