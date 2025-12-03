@interface ODIBendingList2
+ (void)mapWithState:(id)state;
@end

@implementation ODIBendingList2

+ (void)mapWithState:(id)state
{
  stateCopy = state;
  diagram = [stateCopy diagram];
  documentPoint = [diagram documentPoint];
  children = [documentPoint children];
  v7 = [children count];

  v8 = [self mapLogicalBoundsWithShapeSize:0xFFFFFFFFLL spaceSize:0xFFFFFFFFLL maxNodeCount:stateCopy maxColumnCount:? state:?];
  diagram2 = [stateCopy diagram];
  documentPoint2 = [diagram2 documentPoint];
  children2 = [documentPoint2 children];
  v11 = v7 + v8 - 1;

  if (v11 >= v8)
  {
    v12 = 0;
    v13 = 0;
    v36 = v11 / v8 - 1;
    v33 = v11 / v8;
    v35 = vcvtd_n_f64_u64(v33 * v8 - v7, 1uLL);
    if (v8 <= 1uLL)
    {
      v14 = 1;
    }

    else
    {
      v14 = v8;
    }

    v34 = -v7;
    do
    {
      v15 = 0;
      v16 = v13 * 1.32;
      v17 = v16;
      v18 = (v16 + 0.97);
      do
      {
        if (!(v34 + v12 + v15))
        {
          break;
        }

        v19 = [children2 objectAtIndex:v12 + v15];
        if (v13 == v36)
        {
          v20 = (v15 * 1.17) + v35 * 1.16999996;
          v21 = v20;
        }

        else
        {
          v21 = v15 * 1.17;
        }

        v22 = +[ODIDrawable shapeGeometryForRectangle];
        v23 = [ODIDrawable addShapeWithBounds:v22 rotation:stateCopy geometry:v21 state:v17, 1.0, 1.06999993, 0.0];

        [ODIDrawable mapStyleAndTextFromPoint:v19 shape:v23 state:stateCopy];
        v24 = TSURectWithCenterAndSize((v21 + 0.9), v18, 0.340000004);
        v26 = v25;
        v28 = v27;
        v30 = v29;
        v31 = +[ODIDrawable shapeGeometryForEllipse];
        v32 = [ODIDrawable addShapeWithBounds:v31 rotation:stateCopy geometry:v24 state:v26, v28, v30, 0.0];

        [ODIDrawable mapStyleForPresentationName:@"adorn" point:v19 shape:v32 state:stateCopy];
        ++v15;
      }

      while (v14 != v15);
      ++v13;
      v12 += v8;
    }

    while (v13 < v33);
  }
}

@end