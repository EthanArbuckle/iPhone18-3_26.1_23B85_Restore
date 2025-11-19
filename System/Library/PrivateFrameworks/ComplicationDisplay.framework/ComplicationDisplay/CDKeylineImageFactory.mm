@interface CDKeylineImageFactory
+ (CGPath)_cornerPathWithDevice:(id)a3 size:(CGSize)a4 innerCircleRadius:(double)a5 strokeWidth:(double)a6;
+ (CGPath)cornerPathWithDevice:(id)a3 corner:(unint64_t)a4 size:(CGSize)a5 innerCircleRadius:(double)a6;
+ (id)_heartKeylineWithDevice:(id)a3 outerRadius:(double)a4 innerRadius:(double)a5 sideCircleRadius:(double)a6 topCircleRadius:(double)a7 strokeWidth:(double)a8 filled:(BOOL)a9;
+ (id)smileShapeWithDevice:(id)a3 outerRadius:(double)a4 innerRadius:(double)a5 angle:(double)a6 strokeWidth:(double)a7 filled:(BOOL)a8;
+ (id)topLeftCornerShapeWithDevice:(id)a3 size:(CGSize)a4 innerCircleRadius:(double)a5 strokeWidth:(double)a6 filled:(BOOL)a7;
@end

@implementation CDKeylineImageFactory

uint64_t __98__CDKeylineImageFactory_cornerKeylineWithDevice_corner_size_innerCircleRadius_strokeWidth_filled___block_invoke()
{
  cornerKeylineWithDevice_corner_size_innerCircleRadius_strokeWidth_filled__imageCache = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (id)topLeftCornerShapeWithDevice:(id)a3 size:(CGSize)a4 innerCircleRadius:(double)a5 strokeWidth:(double)a6 filled:(BOOL)a7
{
  v9 = [a1 _cornerPathWithDevice:a3 size:a4.width innerCircleRadius:a4.height strokeWidth:a5];
  v10 = [MEMORY[0x277CD9F90] layer];
  [v10 setPath:v9];
  if (a7)
  {
    [MEMORY[0x277D75348] whiteColor];
  }

  else
  {
    [MEMORY[0x277D75348] clearColor];
  }
  v11 = ;
  [v10 setFillColor:{objc_msgSend(v11, "CGColor")}];

  v12 = [MEMORY[0x277D75348] whiteColor];
  [v10 setStrokeColor:{objc_msgSend(v12, "CGColor")}];

  [v10 setLineWidth:a6];
  CGPathRelease(v9);

  return v10;
}

+ (CGPath)cornerPathWithDevice:(id)a3 corner:(unint64_t)a4 size:(CGSize)a5 innerCircleRadius:(double)a6
{
  height = a5.height;
  width = a5.width;
  v9 = [a1 _cornerPathWithDevice:a3 size:a5.width innerCircleRadius:a5.height strokeWidth:{a6, 0.0}];
  memset(&v18, 0, sizeof(v18));
  if (a4 > 3)
  {
    if (a4 == 4)
    {
      CGAffineTransformMakeScale(&v18, 1.0, -1.0);
      v16 = v18;
      v11 = 0.0;
    }

    else
    {
      if (a4 != 8)
      {
        goto LABEL_8;
      }

      CGAffineTransformMakeScale(&v18, -1.0, -1.0);
      v16 = v18;
      v11 = width;
    }

    v10 = height;
    goto LABEL_11;
  }

  if (a4 != 1)
  {
    if (a4 == 2)
    {
      CGAffineTransformMakeScale(&v18, -1.0, 1.0);
      v16 = v18;
      v10 = 0.0;
      v11 = width;
LABEL_11:
      CGAffineTransformTranslate(&v17, &v16, v11, v10);
      *&v18.a = *&v17.a;
      *&v18.c = *&v17.c;
      v13 = *&v17.tx;
      goto LABEL_12;
    }

LABEL_8:
    v12 = *(MEMORY[0x277CBF2C0] + 16);
    *&v18.a = *MEMORY[0x277CBF2C0];
    *&v18.c = v12;
    v13 = *(MEMORY[0x277CBF2C0] + 32);
LABEL_12:
    *&v18.tx = v13;
    v14 = MEMORY[0x245D51C60](v9, &v18);
    CGPathRelease(v9);
    return v14;
  }

  return v9;
}

+ (CGPath)_cornerPathWithDevice:(id)a3 size:(CGSize)a4 innerCircleRadius:(double)a5 strokeWidth:(double)a6
{
  height = a4.height;
  v41 = a4.height;
  width = a4.width;
  v9 = a4.width;
  v10 = a3;
  [v10 screenBounds];
  v12 = v11 * 0.5;
  [v10 screenBounds];
  v14 = a6 * 0.5;
  v15 = a6 * 0.5 + v12;
  v16 = a6 * 0.5 + v13 * 0.5;
  v40 = v16 - (v15 - v9 - sqrt(-((v15 - v9) * a5) - (v15 - v9) * v16 + v16 * a5 + a5 * a5) * -1.41421356) + a5;
  v36 = atan2(v16 - v40, v15 - v9 + v40);
  v39 = v15 - (v16 - height - sqrt(-((v16 - height) * a5) - (v16 - height) * v15 + v15 * a5 + a5 * a5) * -1.41421356) + a5;
  v35 = atan2(v15 - v39, v16 - height + v39);
  [v10 screenCornerRadius];
  v18 = (v17 - a6 * 0.5) * 1.6;
  v37 = v18;
  [v10 screenCornerRadius];
  v20 = (v19 - a6 * 0.5) * 1.6;
  v38 = v20;
  Mutable = CGPathCreateMutable();
  v22 = MEMORY[0x277D75208];
  v34 = a6;
  v23 = v18 - a6;
  v24 = v20 - a6;
  [v10 screenCornerRadius];
  v26 = v25 - v14;
  [v10 screenCornerRadius];
  v28 = v27;

  v29 = [v22 bezierPathWithRoundedRect:1 byRoundingCorners:v14 cornerRadii:{v14, v23, v24, v26, v28 - v14}];
  v30 = [v29 CGPath];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__CDKeylineImageFactory__cornerPathWithDevice_size_innerCircleRadius_strokeWidth___block_invoke;
  aBlock[3] = &__block_descriptor_112_e17_v16__0__CGPath__8l;
  *&aBlock[4] = width;
  *&aBlock[5] = v40;
  *&aBlock[6] = v34;
  *&aBlock[7] = v36;
  *&aBlock[8] = v15;
  *&aBlock[9] = v16;
  *&aBlock[10] = a5;
  *&aBlock[11] = v35;
  *&aBlock[12] = v39;
  *&aBlock[13] = v41;
  v31 = _Block_copy(aBlock);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__CDKeylineImageFactory__cornerPathWithDevice_size_innerCircleRadius_strokeWidth___block_invoke_2;
  block[3] = &unk_278DF34B8;
  v46 = v34;
  v47 = width;
  v48 = v40;
  v49 = v41;
  v50 = v39;
  v51 = v37;
  v52 = v38;
  v44 = v31;
  v45 = Mutable;
  v32 = v31;
  CGPathApplyWithBlock(v30, block);
  CGPathCloseSubpath(Mutable);

  return Mutable;
}

void __82__CDKeylineImageFactory__cornerPathWithDevice_size_innerCircleRadius_strokeWidth___block_invoke(double *a1, CGMutablePathRef path)
{
  CGPathAddArc(path, 0, a1[4] - a1[5], a1[5], a1[5] - a1[6] * 0.5, -1.57079633, a1[7], 0);
  CGPathAddArc(path, 0, a1[8], a1[9], a1[10] + a1[6] * 0.5, a1[7] + -3.14159265, -1.57079633 - a1[11], 1);
  v4 = a1[12];
  v5 = a1[11];
  v6 = a1[13] - v4;
  v7 = v4 - a1[6] * 0.5;

  CGPathAddArc(path, 0, v4, v6, v7, v5, -3.14159265, 0);
}

void __82__CDKeylineImageFactory__cornerPathWithDevice_size_innerCircleRadius_strokeWidth___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a2;
  if (*a2 > 1)
  {
    if (v4 == 2)
    {
      v19 = *(a1 + 40);
      v20 = *v3;
      v21 = v3[1];
      v22 = v3[2];
      v23 = v3[3];

      CGPathAddQuadCurveToPoint(v19, 0, v20, v21, v22, v23);
    }

    else if (v4 == 3)
    {
      v9 = *(a1 + 40);
      v10 = *v3;
      v11 = v3[1];
      v12 = v3[2];
      v13 = v3[3];
      v14 = v3[4];
      v15 = v3[5];

      CGPathAddCurveToPoint(v9, 0, v10, v11, v12, v13, v14, v15);
    }
  }

  else if (v4)
  {
    if (v4 == 1)
    {
      v5 = *(a1 + 48) * 0.5;
      v6 = *v3;
      v7 = v3[1];
      v8 = v7 == v5 && v6 <= *(a1 + 56) - *(a1 + 64);
      v24 = v6 == v5 && v7 <= *(a1 + 72) - *(a1 + 80);
      if (v8 || v24)
      {
        CGPathAddLineToPoint(*(a1 + 40), 0, v6, v7);
        v6 = *v3;
        v7 = v3[1];
        v5 = *(a1 + 48) * 0.5;
      }

      v25 = *(a1 + 88) - v5;
      v26 = *(a1 + 96) - v5;
      if (v6 == v25 && v7 == v26)
      {
        v28 = *(a1 + 40);
        v29 = *(*(a1 + 32) + 16);

        v29();
      }
    }
  }

  else
  {
    v16 = *(a1 + 40);
    v17 = *v3;
    v18 = v3[1];

    CGPathMoveToPoint(v16, 0, v17, v18);
  }
}

uint64_t __124__CDKeylineImageFactory_heartKeylineWithDevice_outerRadius_innerRadius_sideCircleRadius_topCircleRadius_strokeWidth_filled___block_invoke()
{
  heartKeylineWithDevice_outerRadius_innerRadius_sideCircleRadius_topCircleRadius_strokeWidth_filled__imageCache = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (id)_heartKeylineWithDevice:(id)a3 outerRadius:(double)a4 innerRadius:(double)a5 sideCircleRadius:(double)a6 topCircleRadius:(double)a7 strokeWidth:(double)a8 filled:(BOOL)a9
{
  v12 = a4 + a4;
  radius = a5 - a8 * 0.5;
  v13 = a4 - a8 * 0.5;
  v14 = a6 - a8 * 0.5;
  v28 = a8 * 0.5 + a7;
  v15 = a5 - a6;
  v16 = sqrt((a6 + a7) * (a6 + a7) - v15 * v15);
  v17 = atan2(v16, v15);
  Mutable = CGPathCreateMutable();
  v19 = CGPathCreateMutable();
  v20 = CGPathCreateMutable();
  v21 = v12 * 0.5;
  CGPathAddArc(v20, 0, v12 * 0.5, v12 * 0.5, v13, 0.0, 6.28318531, 1);
  CGPathCloseSubpath(v20);
  CGPathAddArc(v19, 0, v21, v21, radius, 0.0, 3.14159265, 0);
  CGPathAddArc(v19, 0, v21 - a5 + a6, v21, v14, 3.14159265, -v17, 0);
  CGPathAddArc(v19, 0, v21, v21 - v16, v28, 3.14159265 - v17, v17, 1);
  CGPathAddArc(v19, 0, v21 + a5 - a6, v21, v14, v17 + 3.14159265, 0.0, 0);
  CGPathCloseSubpath(v19);
  CGPathAddPath(Mutable, 0, v19);
  CGPathAddPath(Mutable, 0, v20);
  v22 = [MEMORY[0x277CD9F90] layer];
  [v22 setPath:Mutable];
  if (a9)
  {
    [MEMORY[0x277D75348] whiteColor];
  }

  else
  {
    [MEMORY[0x277D75348] clearColor];
  }
  v23 = ;
  [v22 setFillColor:{objc_msgSend(v23, "CGColor")}];

  v24 = [MEMORY[0x277D75348] whiteColor];
  [v22 setStrokeColor:{objc_msgSend(v24, "CGColor")}];

  [v22 setLineWidth:a8];
  v31.width = v12;
  v31.height = v12;
  UIGraphicsBeginImageContextWithOptions(v31, 0, 0.0);
  [v22 renderInContext:UIGraphicsGetCurrentContext()];
  v25 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  CGPathRelease(Mutable);
  CGPathRelease(v19);
  CGPathRelease(v20);

  return v25;
}

uint64_t __97__CDKeylineImageFactory_smileKeylineWithDevice_outerRadius_innerRadius_angle_strokeWidth_filled___block_invoke()
{
  smileKeylineWithDevice_outerRadius_innerRadius_angle_strokeWidth_filled__imageCache = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (id)smileShapeWithDevice:(id)a3 outerRadius:(double)a4 innerRadius:(double)a5 angle:(double)a6 strokeWidth:(double)a7 filled:(BOOL)a8
{
  v10 = a4 - a5;
  v11 = (a4 - a5) * 0.5;
  v12 = (a4 + a5) * 0.5;
  v22 = a6 + 1.57079633;
  v13 = 1.57079633 - a6;
  Mutable = CGPathCreateMutable();
  v15 = __sincos_stret(v13);
  v25 = v11 + v12 * v15.__cosval + v11 + v12 * v15.__cosval;
  y = -(v12 * v15.__sinval - v10 * 0.5);
  CGPathAddArc(Mutable, 0, v25 * 0.5, y, a7 * 0.5 + a5, v22, v13, 1);
  v16 = -(v11 - v12 * v15.__sinval);
  CGPathAddArc(Mutable, 0, v25 * 0.5 + v12 * v15.__cosval, -(v16 - v12 * v15.__sinval), v11 - a7 * 0.5, v13 + 3.14159265, v13, 0);
  CGPathAddArc(Mutable, 0, v25 * 0.5, y, a4 - a7 * 0.5, v13, v22, 0);
  v17 = __sincos_stret(v22);
  CGPathAddArc(Mutable, 0, v25 * 0.5 + v12 * v17.__cosval, -(v16 - v12 * v17.__sinval), v11 - a7 * 0.5, v22, v22 + 3.14159265, 0);
  v18 = [MEMORY[0x277CD9F90] layer];
  [v18 setBounds:{0.0, 0.0, v25, a4 - v16}];
  [v18 setPath:Mutable];
  if (a8)
  {
    [MEMORY[0x277D75348] whiteColor];
  }

  else
  {
    [MEMORY[0x277D75348] clearColor];
  }
  v19 = ;
  [v18 setFillColor:{objc_msgSend(v19, "CGColor")}];

  v20 = [MEMORY[0x277D75348] whiteColor];
  [v18 setStrokeColor:{objc_msgSend(v20, "CGColor")}];

  [v18 setLineWidth:a7];
  CGPathRelease(Mutable);

  return v18;
}

@end