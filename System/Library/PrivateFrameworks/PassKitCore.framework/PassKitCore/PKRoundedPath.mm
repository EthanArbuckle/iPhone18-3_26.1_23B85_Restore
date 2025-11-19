@interface PKRoundedPath
+ (id)pathWithRoundedRect:(CGRect)a3 cornerRadius:(double)a4;
- (PKRoundedPath)initWithRect:(CGRect)a3 withRoundedCorners:(int)a4 cornerRadii:(id)a5 smoothPillShapes:(BOOL)a6;
- (void)addContinuousCornerToPath:(CGPath *)a3 trueCorner:(CGPoint)a4 cornerRadius:(CGSize)a5 corners:(unint64_t)a6 portion:(unint64_t)a7 clockwise:(BOOL)a8 fullRadius:(BOOL)a9;
- (void)dealloc;
@end

@implementation PKRoundedPath

- (void)dealloc
{
  CGPathRelease(self->_CGPath);
  v3.receiver = self;
  v3.super_class = PKRoundedPath;
  [(PKRoundedPath *)&v3 dealloc];
}

+ (id)pathWithRoundedRect:(CGRect)a3 cornerRadius:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v14[4] = *MEMORY[0x1E69E9840];
  v9 = [MEMORY[0x1E696B098] valueWithSize:{a4, a4}];
  v10 = [a1 alloc];
  v14[0] = v9;
  v14[1] = v9;
  v14[2] = v9;
  v14[3] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:4];
  v12 = [v10 initWithRect:255 withRoundedCorners:v11 cornerRadii:1 smoothPillShapes:{x, y, width, height}];

  return v12;
}

- (PKRoundedPath)initWithRect:(CGRect)a3 withRoundedCorners:(int)a4 cornerRadii:(id)a5 smoothPillShapes:(BOOL)a6
{
  v6 = a6;
  height = a3.size.height;
  width = a3.size.width;
  v9 = a3.origin.y;
  v10 = a3.origin.x;
  v12 = a5;
  v70.receiver = self;
  v70.super_class = PKRoundedPath;
  v13 = [(PKRoundedPath *)&v70 init];
  if (v13)
  {
    Mutable = CGPathCreateMutable();
    v15 = [v12 objectAtIndex:0];
    [v15 sizeValue];
    v17 = v16 * 1.528665;
    v18 = [v12 objectAtIndex:0];
    [v18 sizeValue];
    v63 = v19;

    v20 = [v12 objectAtIndex:1];
    [v20 sizeValue];
    v22 = v21 * 1.528665;
    v23 = [v12 objectAtIndex:1];
    [v23 sizeValue];
    y = v24;

    v25 = 3;
    v26 = [v12 objectAtIndex:3];
    [v26 sizeValue];
    v68 = v27 * 1.528665;
    v28 = [v12 objectAtIndex:3];
    [v28 sizeValue];
    v61 = v29;

    v30 = [v12 objectAtIndex:2];
    [v30 sizeValue];
    v69 = v31 * 1.528665;
    v32 = [v12 objectAtIndex:2];
    [v32 sizeValue];
    v34 = v33;

    v67 = v17;
    v35 = v17 + v22 >= width;
    v36 = 3;
    if (v17 + v22 >= width)
    {
      v22 = width * 0.5;
      v36 = 2;
      v25 = 1;
      v67 = width * 0.5;
    }

    v37 = v63 * 1.528665;
    v38 = v34 * 1.528665;
    if (v68 + v69 >= width)
    {
      v39 = 1;
      v40 = 2;
      v68 = width * 0.5;
      v69 = width * 0.5;
      v35 = 1;
    }

    else
    {
      v39 = 3;
      v40 = 3;
    }

    v41 = v37 + v38 >= height;
    if (v37 + v38 >= height)
    {
      v38 = height * 0.5;
      v25 &= 2u;
      v40 &= 1u;
      v37 = height * 0.5;
    }

    v56 = v22;
    v59 = v38;
    v60 = v37;
    if (y * 1.528665 + v61 * 1.528665 >= height)
    {
      v36 &= 1u;
      v39 &= 2u;
      v41 = 1;
      v57 = height * 0.5;
      v58 = height * 0.5;
    }

    else
    {
      v57 = y * 1.528665;
      v58 = v61 * 1.528665;
    }

    v54 = v25;
    v42 = v40 | v25 | v36 | v39;
    if (!v42)
    {
      v6 = 0;
    }

    v43 = v35 && v6;
    v71.origin.x = v10;
    v71.origin.y = v9;
    v71.size.width = width;
    v71.size.height = height;
    MinX = CGRectGetMinX(v71);
    v72.origin.x = v10;
    v72.origin.y = v9;
    v72.size.width = width;
    v72.size.height = height;
    ya = CGRectGetMinY(v72);
    v73.origin.x = v10;
    v73.origin.y = v9;
    v73.size.width = width;
    v73.size.height = height;
    MaxX = CGRectGetMaxX(v73);
    v74.origin.x = v10;
    v74.origin.y = v9;
    v74.size.width = width;
    v74.size.height = height;
    MinY = CGRectGetMinY(v74);
    v75.origin.x = v10;
    v75.origin.y = v9;
    v75.size.width = width;
    v75.size.height = height;
    v46 = CGRectGetMinX(v75);
    v76.origin.x = v10;
    v76.origin.y = v9;
    v76.size.width = width;
    v76.size.height = height;
    MaxY = CGRectGetMaxY(v76);
    v77.origin.x = v10;
    v77.origin.y = v9;
    v77.size.width = width;
    v77.size.height = height;
    v47 = CGRectGetMaxX(v77);
    v78.origin.x = v10;
    v78.origin.y = v9;
    v78.size.width = width;
    v78.size.height = height;
    v48 = CGRectGetMaxY(v78);
    if (v43 == 1)
    {
      v49 = v67;
      MinX = MinX + v67 * 0.05;
      v50 = v56;
      MaxX = MaxX - v56 * 0.05;
      v46 = v46 + v69 * 0.05;
      v47 = v47 - v68 * 0.05;
    }

    else
    {
      v49 = v67;
      if (v41 && v6)
      {
        MinY = MinY + v57 * 0.05;
        MaxY = MaxY - v59 * 0.05;
        ya = ya + v60 * 0.05;
        v48 = v48 - v58 * 0.05;
      }

      v50 = v56;
    }

    x = v49 + MinX;
    CGPathMoveToPoint(Mutable, 0, v49 + MinX, ya);
    CGPathAddLineToPoint(Mutable, 0, MaxX - v50, MinY);
    v52 = *MEMORY[0x1E695F060];
    v51 = *(MEMORY[0x1E695F060] + 8);
    if (v50 != *MEMORY[0x1E695F060] || v57 != v51)
    {
      [(PKRoundedPath *)v13 addContinuousCornerToPath:Mutable trueCorner:2 cornerRadius:v36 corners:0 portion:v42 == 0 clockwise:MaxX fullRadius:MinY, v50, v57];
    }

    CGPathAddLineToPoint(Mutable, 0, v47, v48 - v58);
    if (v68 != v52 || v58 != v51)
    {
      [(PKRoundedPath *)v13 addContinuousCornerToPath:Mutable trueCorner:8 cornerRadius:v39 corners:0 portion:v42 == 0 clockwise:v47 fullRadius:v48, v68, v58];
    }

    CGPathAddLineToPoint(Mutable, 0, v69 + v46, MaxY);
    if (v69 != v52 || v59 != v51)
    {
      [(PKRoundedPath *)v13 addContinuousCornerToPath:Mutable trueCorner:4 cornerRadius:v40 corners:0 portion:v42 == 0 clockwise:v46 fullRadius:MaxY, v69, v59];
    }

    CGPathAddLineToPoint(Mutable, 0, MinX, v60 + ya);
    if (v67 != v52 || v60 != v51)
    {
      [(PKRoundedPath *)v13 addContinuousCornerToPath:Mutable trueCorner:1 cornerRadius:v54 corners:0 portion:v42 == 0 clockwise:MinX fullRadius:ya, v67, v60];
    }

    CGPathAddLineToPoint(Mutable, 0, x, ya);
    v13->_CGPath = Mutable;
  }

  return v13;
}

- (void)addContinuousCornerToPath:(CGPath *)a3 trueCorner:(CGPoint)a4 cornerRadius:(CGSize)a5 corners:(unint64_t)a6 portion:(unint64_t)a7 clockwise:(BOOL)a8 fullRadius:(BOOL)a9
{
  v9 = a8;
  v10 = a7;
  x = a4.x;
  if (a5.width < a5.height)
  {
    a5.height = a5.width;
  }

  v14 = 0.980263;
  if (a9)
  {
    v14 = 1.0;
  }

  height = a5.height;
  if (a9)
  {
    v15 = a5.height;
  }

  else
  {
    v15 = a5.height * 0.95;
  }

  v95 = v14;
  v16 = 0.0;
  if (a6 - 1 <= 3)
  {
    v16 = dbl_1ADB9AAD8[a6 - 1];
  }

  v17 = v15 * (1.0 - v14);
  if (a7 == 2)
  {
    v96 = v16;
    v18 = -v17;
    v94 = 70.0;
    v19 = *MEMORY[0x1E695EFF8];
  }

  else if (a7 == 1)
  {
    v96 = v16 + 20.0;
    v19 = -v17;
    v94 = 70.0;
    v18 = *(MEMORY[0x1E695EFF8] + 8);
  }

  else if (a7)
  {
    v96 = v16 + 20.0;
    v94 = 50.0;
    v18 = *(MEMORY[0x1E695EFF8] + 8);
    v19 = *MEMORY[0x1E695EFF8];
    v15 = v15 / 1.528665;
  }

  else
  {
    v96 = v16;
    v18 = -v17;
    v94 = 90.0;
    v19 = -v17;
  }

  v20 = _interiorPointForCorner(a6, v19, v18, *MEMORY[0x1E695EFF8]);
  v91 = v21;
  v92 = v20;
  v22 = v15 * 0.33 * 0.666666667;
  v23 = v22 * 1.05304313;
  v24 = v22 * 0.33 / 1.05304313;
  v25 = (v15 / 1.05304313 + v24) * 0.67;
  v26 = v23 + v25;
  v27 = v23 + v23 + v25;
  v28 = v23 + v23 + v27;
  v29 = v25 + v24 * 0.33;
  v89 = _interiorPointForCorner(a6, v27, 0.0, x);
  v90 = v30;
  v87 = _interiorPointForCorner(a6, v26, 0.0, x);
  v88 = v31;
  v32 = _interiorPointForCorner(a6, v29, v24, x);
  v79 = v33;
  v80 = v32;
  v34 = _interiorPointForCorner(a6, v24, v29, x);
  v75 = v35;
  v76 = v34;
  v85 = _interiorPointForCorner(a6, 0.0, v26, x);
  v86 = v36;
  v83 = _interiorPointForCorner(a6, 0.0, v27, x);
  v84 = v37;
  v38 = _interiorPointForCorner(a6, 0.0, v28, x);
  v81 = v39;
  v82 = v38;
  v40 = _interiorPointForCorner(a6, v28, 0.0, x);
  v77 = v41;
  v78 = v40;
  v42 = _interiorPointForCorner(a6, v15, v15, x);
  v44 = v43;
  v45 = _interiorPointForCorner(a6, height, 0.0, x);
  v47 = v46;
  v48 = _interiorPointForCorner(a6, 0.0, height, x);
  v50 = v49;
  memset(&m, 0, sizeof(m));
  CGAffineTransformMakeTranslation(&m, v92, v91);
  if (v9)
  {
    if (v10)
    {
      p_m = &m;
      v51 = a3;
      v53 = v83;
      v54 = v84;
      v55 = v85;
      v56 = v86;
      v58 = v75;
      v57 = v76;
    }

    else
    {
      v51 = a3;
      p_m = 0;
      v53 = v48;
      v54 = v50;
      v55 = v48;
      v56 = v50;
      v57 = v48;
      v58 = v50;
    }

    CGPathAddCurveToPoint(v51, p_m, v53, v54, v55, v56, v57, v58);
    CGPathAddArc(a3, &m, v42, v44, v95 * v15, (v94 + v96) * 0.0174532925, v96 * 0.0174532925, 1);
    if ((v10 & 2) != 0)
    {
      v68 = &m;
      v67 = a3;
      v69 = v87;
      v70 = v88;
      v71 = v89;
      v72 = v90;
      v74 = v77;
      v73 = v78;
    }

    else
    {
      v67 = a3;
      v68 = 0;
      v69 = v45;
      v70 = v47;
      v71 = v45;
      v72 = v47;
      v73 = v45;
      v74 = v47;
    }
  }

  else
  {
    if (v10)
    {
      v60 = &m;
      v59 = a3;
      v61 = v89;
      v62 = v90;
      v63 = v87;
      v64 = v88;
      v66 = v79;
      v65 = v80;
    }

    else
    {
      v59 = a3;
      v60 = 0;
      v61 = v45;
      v62 = v47;
      v63 = v45;
      v64 = v47;
      v65 = v45;
      v66 = v47;
    }

    CGPathAddCurveToPoint(v59, v60, v61, v62, v63, v64, v65, v66);
    CGPathAddArc(a3, &m, v42, v44, v95 * v15, v96 * 0.0174532925, (v94 + v96) * 0.0174532925, 0);
    if ((v10 & 2) != 0)
    {
      v68 = &m;
      v67 = a3;
      v69 = v85;
      v70 = v86;
      v71 = v83;
      v72 = v84;
      v74 = v81;
      v73 = v82;
    }

    else
    {
      v67 = a3;
      v68 = 0;
      v69 = v48;
      v70 = v50;
      v71 = v48;
      v72 = v50;
      v73 = v48;
      v74 = v50;
    }
  }

  CGPathAddCurveToPoint(v67, v68, v69, v70, v71, v72, v73, v74);
}

@end