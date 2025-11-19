@interface OAITOrientedBounds
+ (CGAffineTransform)transformFromBounds:(SEL)a3 toOrientedBounds:(CGRect)a4;
+ (CGRect)axisParallelBoundsOfOrientedBounds:(id)a3;
+ (float)scaleFactorFromLength:(float)a3 toLength:(float)a4;
+ (id)absoluteOrientedBoundsOfDrawable:(id)a3;
+ (id)absoluteOrientedBoundsWithRelativeOrientedBounds:(id)a3 parentOrientedBounds:(id)a4 parentLogicalBounds:(CGRect)a5;
+ (id)adjustedOrientedBoundsWithOrientedBounds:(id)a3;
+ (id)adjustedOrientedBoundsWithOrientedBounds:(id)a3 logicalBounds:(CGRect)a4;
+ (id)relativeOrientedBoundsOfDrawable:(id)a3;
+ (id)relativeOrientedBoundsWithAbsoluteOrientedBounds:(id)a3 parentOrientedBounds:(id)a4 parentLogicalBounds:(CGRect)a5;
@end

@implementation OAITOrientedBounds

+ (float)scaleFactorFromLength:(float)a3 toLength:(float)a4
{
  if (a3 != 0.0)
  {
    return a4 / a3;
  }

  v4 = 1.0;
  if (a4 != 0.0)
  {
    return a4 / a3;
  }

  return v4;
}

+ (id)adjustedOrientedBoundsWithOrientedBounds:(id)a3 logicalBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3;
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  if (CGRectGetWidth(v31) == 0.0)
  {
    v32.origin.x = v10;
    v32.origin.y = v12;
    v32.size.width = v14;
    v32.size.height = v16;
    if (CGRectGetWidth(v32) > 0.0)
    {
      v14 = 0.0;
    }
  }

  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  if (CGRectGetHeight(v33) == 0.0)
  {
    v34.origin.x = v10;
    v34.origin.y = v12;
    v34.size.width = v14;
    v34.size.height = v16;
    if (CGRectGetHeight(v34) > 0.0)
    {
      v16 = 0.0;
    }
  }

  [v8 bounds];
  v36.origin.x = v17;
  v36.origin.y = v18;
  v36.size.width = v19;
  v36.size.height = v20;
  v35.origin.x = v10;
  v35.origin.y = v12;
  v35.size.width = v14;
  v35.size.height = v16;
  if (CGRectEqualToRect(v35, v36))
  {
    v21 = v8;
  }

  else
  {
    v22 = [OADOrientedBounds alloc];
    [v8 rotation];
    v24 = v23;
    v25 = [v8 flipX];
    v26 = [v8 flipY];
    LODWORD(v27) = v24;
    v21 = [(OADOrientedBounds *)v22 initWithBounds:v25 rotation:v26 flipX:v10 flipY:v12, v14, v16, v27];
  }

  v28 = v21;

  return v28;
}

+ (id)absoluteOrientedBoundsOfDrawable:(id)a3
{
  v4 = a3;
  v5 = [a1 relativeOrientedBoundsOfDrawable:v4];
  v6 = [v4 parent];
  v7 = v6;
  if (v6)
  {
    [v6 logicalBounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [a1 absoluteOrientedBoundsOfDrawable:v7];
  }

  else
  {
    v13 = 1.0;
    v9 = 0.0;
    v16 = [[OADOrientedBounds alloc] initWithBounds:0.0, 0.0, 1.0, 1.0];
    v11 = 0.0;
    v15 = 1.0;
  }

  v17 = [a1 absoluteOrientedBoundsWithRelativeOrientedBounds:v5 parentOrientedBounds:v16 parentLogicalBounds:{v9, v11, v13, v15}];

  return v17;
}

+ (id)adjustedOrientedBoundsWithOrientedBounds:(id)a3
{
  v3 = a3;
  [v3 bounds];
  x = v27.origin.x;
  y = v27.origin.y;
  width = v27.size.width;
  height = v27.size.height;
  if (CGRectGetWidth(v27) == 0.0)
  {
    width = 0.1;
  }

  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  v8 = CGRectGetHeight(v28);
  [v3 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  if (v8 == 0.0)
  {
    height = 0.1;
  }

  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  if (CGRectEqualToRect(v29, *&v10))
  {
    v17 = v3;
  }

  else
  {
    v18 = [OADOrientedBounds alloc];
    [v3 rotation];
    v20 = v19;
    v21 = [v3 flipX];
    v22 = [v3 flipY];
    LODWORD(v23) = v20;
    v17 = [(OADOrientedBounds *)v18 initWithBounds:v21 rotation:v22 flipX:x flipY:y, width, height, v23];
  }

  v24 = v17;

  return v24;
}

+ (CGAffineTransform)transformFromBounds:(SEL)a3 toOrientedBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a5;
  v52.origin.x = x;
  v52.origin.y = y;
  v52.size.width = width;
  v52.size.height = height;
  v12 = CGRectGetWidth(v52);
  [v11 bounds];
  v13 = CGRectGetWidth(v53);
  v14 = v12;
  *&v15 = v13;
  *&v13 = v14;
  [a2 scaleFactorFromLength:v13 toLength:v15];
  LODWORD(v12) = v16;
  v54.origin.x = x;
  v54.origin.y = y;
  v54.size.width = width;
  v54.size.height = height;
  v17 = CGRectGetHeight(v54);
  [v11 bounds];
  v18 = CGRectGetHeight(v55);
  v19 = v17;
  *&v20 = v18;
  *&v18 = v19;
  [a2 scaleFactorFromLength:v18 toLength:v20];
  LODWORD(v17) = v21;
  v22 = TSUCenterOfRect(x, y, width, height);
  v24 = v23;
  [v11 bounds];
  v29 = TSUCenterOfRect(v25, v26, v27, v28);
  v31 = v30;
  v32 = MEMORY[0x277CBF2C0];
  v33 = *MEMORY[0x277CBF2C0];
  v34 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v34;
  v35 = *(v32 + 32);
  *&retstr->tx = v35;
  *&t1.a = v33;
  *&t1.c = v34;
  *&t1.tx = v35;
  CGAffineTransformMakeTranslation(&t2, -v22, -v24);
  CGAffineTransformConcat(retstr, &t1, &t2);
  v36 = *&retstr->c;
  *&t2.a = *&retstr->a;
  *&t2.c = v36;
  *&t2.tx = *&retstr->tx;
  CGAffineTransformMakeScale(&v49, *&v12, *&v17);
  CGAffineTransformConcat(&t1, &t2, &v49);
  v37 = *&t1.c;
  *&retstr->a = *&t1.a;
  *&retstr->c = v37;
  *&retstr->tx = *&t1.tx;
  v38 = *&retstr->c;
  *&t2.a = *&retstr->a;
  *&t2.c = v38;
  *&t2.tx = *&retstr->tx;
  [v11 rotation];
  CGAffineTransformMakeRotation(&v49, v39 * 3.14159265 / 180.0);
  CGAffineTransformConcat(&t1, &t2, &v49);
  v40 = *&t1.c;
  *&retstr->a = *&t1.a;
  *&retstr->c = v40;
  *&retstr->tx = *&t1.tx;
  v41 = *&retstr->c;
  *&t2.a = *&retstr->a;
  *&t2.c = v41;
  *&t2.tx = *&retstr->tx;
  LODWORD(a2) = [v11 flipX];
  v42 = [v11 flipY];
  v43 = 1.0;
  if (a2)
  {
    v44 = -1.0;
  }

  else
  {
    v44 = 1.0;
  }

  if (v42)
  {
    v43 = -1.0;
  }

  CGAffineTransformMakeScale(&v49, v44, v43);
  CGAffineTransformConcat(&t1, &t2, &v49);
  v45 = *&t1.c;
  *&retstr->a = *&t1.a;
  *&retstr->c = v45;
  *&retstr->tx = *&t1.tx;
  v46 = *&retstr->c;
  *&t2.a = *&retstr->a;
  *&t2.c = v46;
  *&t2.tx = *&retstr->tx;
  CGAffineTransformMakeTranslation(&v49, v29, v31);
  CGAffineTransformConcat(&t1, &t2, &v49);
  v47 = *&t1.c;
  *&retstr->a = *&t1.a;
  *&retstr->c = v47;
  *&retstr->tx = *&t1.tx;

  return result;
}

+ (id)absoluteOrientedBoundsWithRelativeOrientedBounds:(id)a3 parentOrientedBounds:(id)a4 parentLogicalBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a3;
  v12 = a4;
  v13 = [a1 adjustedOrientedBoundsWithOrientedBounds:v12 logicalBounds:{x, y, width, height}];

  [a1 transformFromBounds:v13 toOrientedBounds:{x, y, width, height}];
  [v11 bounds];
  v18 = TSUCenterOfRect(v14, v15, v16, v17);
  v20 = v19;
  [v11 bounds];
  v57 = CGRectGetWidth(v59);
  [v11 bounds];
  CGRectGetHeight(v60);
  v61.origin.x = x;
  v61.origin.y = y;
  v61.size.width = width;
  v61.size.height = height;
  v21 = CGRectGetWidth(v61);
  [v13 bounds];
  v22 = CGRectGetWidth(v62);
  v23 = v21;
  *&v24 = v22;
  *&v22 = v23;
  [a1 scaleFactorFromLength:v22 toLength:v24];
  v26 = v25;
  v63.origin.x = x;
  v63.origin.y = y;
  v63.size.width = width;
  v63.size.height = height;
  v27 = CGRectGetHeight(v63);
  [v13 bounds];
  v28 = CGRectGetHeight(v64);
  v29 = v27;
  *&v30 = v28;
  *&v28 = v29;
  [a1 scaleFactorFromLength:v28 toLength:v30];
  v32 = v31;
  [v11 rotation];
  if ([OADOrientedBounds directionCloserToVerticalThanToHorizontal:?])
  {
    v34 = v32;
  }

  else
  {
    v34 = v26;
  }

  v33 = v57;
  v35 = TSURectWithCenterAndSize(v20 * 0.0 + 0.0 * v18 + 0.0, v20 * 0.0 + 0.0 * v18 + 0.0, (v34 * v33));
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = [v13 flipX];
  v43 = [v11 flipX];
  v44 = [v13 flipY];
  v45 = [v11 flipY];
  v46 = [v11 flipX];
  v47 = [v11 flipY];
  [v11 rotation];
  v49 = v48;
  [v13 rotation];
  v51 = v50;
  v52 = [OADOrientedBounds alloc];
  if (v47)
  {
    v54 = -1;
  }

  else
  {
    v54 = 1;
  }

  if (v46)
  {
    v54 = -v54;
  }

  *&v53 = v49 + (v54 * v51);
  v55 = [(OADOrientedBounds *)v52 initWithBounds:v42 ^ v43 rotation:v44 ^ v45 flipX:v35 flipY:v37, v39, v41, v53];

  return v55;
}

+ (id)relativeOrientedBoundsWithAbsoluteOrientedBounds:(id)a3 parentOrientedBounds:(id)a4 parentLogicalBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a3;
  v12 = a4;
  memset(&v79, 0, sizeof(v79));
  [OAITOrientedBounds transformFromBounds:v12 toOrientedBounds:x, y, width, height];
  [v11 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = TSUCenterOfRect(v13, v15, v17, v19);
  v75 = v22;
  v76 = v21;
  v77 = v79;
  CGAffineTransformInvert(&v78, &v77);
  b = v78.b;
  a = v78.a;
  rect_8 = v78.tx;
  rect_16 = v78.c;
  rect_24 = v78.ty;
  d = v78.d;
  v23 = [v12 flipX];
  v24 = [v11 flipX];
  v25 = [v12 flipY];
  v26 = [v11 flipY];
  v63 = v20;
  v64 = v18;
  v65 = v16;
  v66 = v14;
  [v11 rotation];
  v67 = v27;
  [v12 rotation];
  v62 = v28;
  v29 = v23 ^ v24;
  v30 = v25 ^ v26;
  if (v30)
  {
    v31 = -1;
  }

  else
  {
    v31 = 1;
  }

  if (v29)
  {
    v32 = -v31;
  }

  else
  {
    v32 = v31;
  }

  [v12 bounds];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  rect = x;
  v81.origin.x = x;
  v41 = y;
  v81.origin.y = y;
  v42 = width;
  v81.size.width = width;
  v43 = height;
  v81.size.height = height;
  v44 = CGRectGetWidth(v81);
  v82.origin.x = v34;
  v82.origin.y = v36;
  v82.size.width = v38;
  v82.size.height = v40;
  v45 = CGRectGetWidth(v82);
  v46 = v44;
  *&v47 = v45;
  *&v45 = v46;
  [a1 scaleFactorFromLength:v45 toLength:v47];
  v49 = v48;
  v83.origin.x = rect;
  v83.origin.y = v41;
  v83.size.width = v42;
  v83.size.height = v43;
  v50 = CGRectGetHeight(v83);
  v84.origin.x = v34;
  v84.origin.y = v36;
  v84.size.width = v38;
  v84.size.height = v40;
  v51 = CGRectGetHeight(v84);
  v52 = v50;
  *&v53 = v51;
  *&v51 = v52;
  [a1 scaleFactorFromLength:v51 toLength:v53];
  v55 = v54;
  *&v56 = v67 - (v32 * v62);
  if ([OADOrientedBounds directionCloserToVerticalThanToHorizontal:v56])
  {
    v57 = v55;
  }

  else
  {
    v57 = v49;
  }

  v85.origin.x = v66;
  v85.origin.y = v65;
  v85.size.width = v64;
  v85.size.height = v63;
  v58 = CGRectGetWidth(v85);
  v86.origin.x = v66;
  v86.origin.y = v65;
  v86.size.width = v64;
  v86.size.height = v63;
  CGRectGetHeight(v86);
  v59 = v58;
  v60 = [OADOrientedBounds orientedBoundsWithBounds:v29 rotation:v30 flipX:TSURectWithCenterAndSize(rect_8 + v75 * rect_16 + a * v76 flipY:rect_24 + v75 * d + b * v76, (v59 / v57))];

  return v60;
}

+ (id)relativeOrientedBoundsOfDrawable:(id)a3
{
  v3 = a3;
  v4 = [v3 drawableProperties];
  if ([v4 hasOrientedBounds])
  {
    v5 = [v4 orientedBounds];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 clientData];
  v7 = [v3 parent];
  if (v7)
  {
  }

  else if ([v6 hasBounds])
  {
    [v6 bounds];
    x = v14.origin.x;
    y = v14.origin.y;
    width = v14.size.width;
    height = v14.size.height;
    if (!CGRectEqualToRect(v14, *MEMORY[0x277CBF3A0]))
    {
      if (!v5)
      {
        v5 = [[OADOrientedBounds alloc] initWithBounds:x, y, width, height];
        [v4 setOrientedBounds:v5];
      }

      [(OADOrientedBounds *)v5 setBounds:x, y, width, height];
    }
  }

  return v5;
}

+ (CGRect)axisParallelBoundsOfOrientedBounds:(id)a3
{
  v3 = a3;
  memset(&v45, 0, sizeof(v45));
  [v3 rotation];
  CGAffineTransformMakeRotation(&v45, v4 * 3.14159265 / 180.0);
  [v3 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = 0;
  v14 = 1;
  v15 = -INFINITY;
  v16 = INFINITY;
  v44 = INFINITY;
  v17 = -INFINITY;
  do
  {
    v18 = 0;
    v19 = v14;
    v43 = *(&unk_25D6FBB48 + v13);
    v20 = 1;
    do
    {
      v21 = v20;
      v46.origin.x = v6;
      v46.origin.y = v8;
      v46.size.width = v10;
      v46.size.height = v12;
      Width = CGRectGetWidth(v46);
      v23 = *(&unk_25D6FBB48 + v18);
      v47.origin.x = v6;
      v47.origin.y = v8;
      v47.size.width = v10;
      v47.size.height = v12;
      Height = CGRectGetHeight(v47);
      v20 = 0;
      v25 = Width * v43 * 0.5;
      v26 = Height * v23 * 0.5;
      v27 = v45.tx + v26 * v45.c + v45.a * v25;
      v28 = v45.ty + v26 * v45.d + v45.b * v25;
      v29 = v44;
      if (v27 <= v44)
      {
        v29 = v27;
      }

      v44 = v29;
      if (v28 <= v16)
      {
        v16 = v28;
      }

      if (v27 > v15)
      {
        v15 = v27;
      }

      if (v28 > v17)
      {
        v17 = v28;
      }

      v18 = 1;
    }

    while ((v21 & 1) != 0);
    v14 = 0;
    v13 = 1;
  }

  while ((v19 & 1) != 0);
  v30 = TSUCenterOfRect(v6, v8, v10, v12);
  v32 = TSURectWithCenterAndSize(v30, v31, (v15 - v44));
  v34 = v33;
  v36 = v35;
  v38 = v37;

  v39 = v32;
  v40 = v34;
  v41 = v36;
  v42 = v38;
  result.size.height = v42;
  result.size.width = v41;
  result.origin.y = v40;
  result.origin.x = v39;
  return result;
}

@end