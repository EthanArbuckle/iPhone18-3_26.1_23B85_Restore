@interface ODIBendingList2
+ (void)mapWithState:(id)a3;
@end

@implementation ODIBendingList2

+ (void)mapWithState:(id)a3
{
  v38 = a3;
  v4 = [v38 diagram];
  v5 = [v4 documentPoint];
  v6 = [v5 children];
  v7 = [v6 count];

  v8 = [a1 mapLogicalBoundsWithShapeSize:0xFFFFFFFFLL spaceSize:0xFFFFFFFFLL maxNodeCount:v38 maxColumnCount:? state:?];
  v9 = [v38 diagram];
  v10 = [v9 documentPoint];
  v37 = [v10 children];
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

        v19 = [v37 objectAtIndex:v12 + v15];
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
        v23 = [ODIDrawable addShapeWithBounds:v22 rotation:v38 geometry:v21 state:v17, 1.0, 1.06999993, 0.0];

        [ODIDrawable mapStyleAndTextFromPoint:v19 shape:v23 state:v38];
        v24 = TSURectWithCenterAndSize((v21 + 0.9), v18, 0.340000004);
        v26 = v25;
        v28 = v27;
        v30 = v29;
        v31 = +[ODIDrawable shapeGeometryForEllipse];
        v32 = [ODIDrawable addShapeWithBounds:v31 rotation:v38 geometry:v24 state:v26, v28, v30, 0.0];

        [ODIDrawable mapStyleForPresentationName:@"adorn" point:v19 shape:v32 state:v38];
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