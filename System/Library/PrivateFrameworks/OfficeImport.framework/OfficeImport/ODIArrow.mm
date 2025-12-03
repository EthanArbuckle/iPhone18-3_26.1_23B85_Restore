@interface ODIArrow
+ (BOOL)mapIdentifier:(id)identifier state:(id)state;
+ (unint64_t)nodeCountWithState:(id)state;
+ (void)mapWithState:(id)state outward:(BOOL)outward;
@end

@implementation ODIArrow

+ (BOOL)mapIdentifier:(id)identifier state:(id)state
{
  identifierCopy = identifier;
  stateCopy = state;
  if ([identifierCopy isEqualToString:@"arrow1"] & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"arrow6"))
  {
    v7 = 1;
  }

  else
  {
    v10 = [identifierCopy isEqualToString:@"arrow5"];
    v7 = 0;
    v8 = 0;
    if (!v10)
    {
      goto LABEL_5;
    }
  }

  [ODIArrow mapWithState:stateCopy outward:v7];
  v8 = 1;
LABEL_5:

  return v8;
}

+ (unint64_t)nodeCountWithState:(id)state
{
  diagram = [state diagram];
  documentPoint = [diagram documentPoint];
  children = [documentPoint children];
  v6 = [children count];

  return v6;
}

+ (void)mapWithState:(id)state outward:(BOOL)outward
{
  outwardCopy = outward;
  stateCopy = state;
  v7 = [self nodeCountWithState:stateCopy];
  diagram = [stateCopy diagram];
  documentPoint = [diagram documentPoint];
  children = [documentPoint children];

  if (v7 == 2)
  {
    [stateCopy setLogicalBounds:{TSURectWithCenterAndSize(*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), 2.0999999)}];
    v15 = 0;
    v16 = 1;
    do
    {
      v17 = v16;
      v18 = [children objectAtIndex:v15];
      v19 = TSURectWithCenterAndSize(((2 * v15 - 1) * 0.55), 0.0, 1.0);
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v26 = [ODIDrawable shapeGeometryForRightArrowWithControlPoint:0.349999994, 0.25];
      v28 = 180 * (v15 ^ 1);
      if (!outwardCopy)
      {
        v28 += 180;
      }

      *&v27 = v28;
      v29 = [ODIDrawable addShapeWithBounds:v26 rotation:stateCopy geometry:v19 state:v21, v23, v25, v27];
      [ODIDrawable mapStyleAndTextFromPoint:v18 shape:v29 state:stateCopy];

      v16 = 0;
      v15 = 1;
    }

    while ((v17 & 1) != 0);
  }

  else if (v7 == 1)
  {
    [stateCopy setLogicalBounds:{0.0, 0.0, 1.0, 1.0}];
    v11 = [ODIDrawable shapeGeometryForRightArrowWithControlPoint:0.349999994, 0.25];
    if (outwardCopy)
    {
      *&v12 = -90.0;
    }

    else
    {
      *&v12 = 90.0;
    }

    v13 = [ODIDrawable addShapeWithBounds:v11 rotation:stateCopy geometry:0.0 state:0.0, 1.0, 1.0, v12];
    v14 = [children objectAtIndex:0];
    [ODIDrawable mapStyleAndTextFromPoint:v14 shape:v13 state:stateCopy];
  }

  else
  {
    v30 = tan(2.82743331 / v7);
    v31 = v30 + v30;
    if (outwardCopy)
    {
      v32 = 0.5 / v31;
      v33 = 1.0 / v31 + -0.649999976;
      if (v32 >= v33)
      {
        v33 = v32;
      }
    }

    else
    {
      v33 = 1.0 / v31 + -0.349999994;
    }

    v71 = v33;
    if (v7)
    {
      LODWORD(v34) = 0;
      tx = v33;
      v35 = 0.33;
      if (outwardCopy)
      {
        v35 = 0.5;
      }

      v73 = v35;
      v36 = 0.66;
      if (!outwardCopy)
      {
        v36 = 0.5;
      }

      v72 = v36;
      v37 = v7 - 3;
      v38 = 0.0;
      v39 = -0.5;
      v40 = 0.0;
      do
      {
        v41 = (((v34 + v34) / v7) + v39) * 3.14159265;
        memset(&v79, 0, sizeof(v79));
        CGAffineTransformMakeTranslation(&v79, tx, 0.0);
        memset(&v78, 0, sizeof(v78));
        CGAffineTransformMakeRotation(&v78, v41);
        t1 = v79;
        memset(&v77, 0, sizeof(v77));
        t2 = v78;
        CGAffineTransformConcat(&v77, &t1, &t2);
        v42 = 0.0;
        if (v37 <= 3)
        {
          v42 = flt_25D6FBBA0[v37];
        }

        v43 = v42;
        v44 = (v77.tx + v77.a + v77.c * 0.0) * (1.0 - v42);
        v45 = v44 + v43 * (v77.tx + v77.a + v77.c * 0.25);
        if (v38 >= v45)
        {
          v45 = v38;
        }

        v46 = v44 + v43 * (v77.tx + v77.a - v77.c * 0.25);
        if (v45 >= v46)
        {
          v38 = v45;
        }

        else
        {
          v38 = v46;
        }

        if (v7 == 7)
        {
          v47 = v73;
          v39 = -0.5;
        }

        else
        {
          v47 = 0.0;
          v39 = -0.5;
          if (v7 == 5)
          {
            v47 = v72;
          }
        }

        v48 = v77.ty + v77.d * v39 + v77.b * 0.649999976;
        v49 = v47;
        v50 = (v77.ty + v77.b + v77.d * 0.0) * (1.0 - v47);
        v51 = v50 + v47 * (v77.ty + v77.b + v77.d * 0.25);
        if (v7 == 3)
        {
          v51 = v77.ty + v77.d * 0.5 + v77.b * 0.649999976;
        }

        v52 = v51;
        v53 = v50 + v49 * (v77.ty + v77.b - v77.d * 0.25);
        if (v7 != 3)
        {
          v48 = v53;
        }

        if (v40 >= v52)
        {
          v54 = v40;
        }

        else
        {
          v54 = v52;
        }

        v55 = v48;
        if (v54 >= v55)
        {
          v40 = v54;
        }

        else
        {
          v40 = v55;
        }

        v34 = (v34 + 1);
      }

      while (v7 > v34);
    }

    else
    {
      v40 = 0.0;
      v38 = 0.0;
    }

    [stateCopy setLogicalBounds:{-v38, -(v71 + 1.0), (v38 + v38), ((v71 + 1.0) + v40)}];
    if (v7)
    {
      v56 = 0;
      for (i = 0; i < v7; v56 = ++i)
      {
        v58 = [children objectAtIndex:v56];
        v59 = i * 360.0 / v7 + -90.0;
        v60 = __sincos_stret(v59 * 3.14159265 / 180.0);
        v61 = TSURectWithCenterAndSize(v60.__cosval * (v71 + 0.5), v60.__sinval * (v71 + 0.5), 1.0);
        v63 = v62;
        v65 = v64;
        v67 = v66;
        v68 = [ODIDrawable shapeGeometryForRightArrowWithControlPoint:0.349999994, 0.25];
        if (outwardCopy)
        {
          *&v69 = i * 360.0 / v7 + -90.0;
        }

        else
        {
          *&v69 = v59 + 180.0;
        }

        v70 = [ODIDrawable addShapeWithBounds:v68 rotation:stateCopy geometry:v61 state:v63, v65, v67, v69];
        [ODIDrawable mapStyleAndTextFromPoint:v58 shape:v70 state:stateCopy];
      }
    }
  }
}

@end