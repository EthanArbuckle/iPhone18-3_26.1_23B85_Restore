@interface HKStackedBarCoordinate
- (HKStackedBarCoordinate)initWithStackPoints:(id)a3 userInfo:(id)a4;
- (id)copyWithTransform:(CGAffineTransform *)a3 roundToViewScale:(BOOL)a4;
@end

@implementation HKStackedBarCoordinate

- (HKStackedBarCoordinate)initWithStackPoints:(id)a3 userInfo:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([v7 count] >= 2)
  {
    v10 = [v7 firstObject];
    [v10 CGPointValue];
    v12 = v11;
    v14 = v13;
    v15 = [v7 lastObject];
    [v15 CGPointValue];
    v20.receiver = self;
    v20.super_class = HKStackedBarCoordinate;
    v18 = [(HKMinMaxCoordinate *)&v20 initWithMin:v8 max:v12 userInfo:v14, v16, v17];

    if (v18)
    {
      objc_storeStrong(&v18->_stackPoints, a3);
    }

    self = v18;
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithTransform:(CGAffineTransform *)a3 roundToViewScale:(BOOL)a4
{
  v4 = a4;
  v29 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E695DF70];
  v8 = [(HKStackedBarCoordinate *)self stackPoints];
  v9 = [v7 arrayWithCapacity:{objc_msgSend(v8, "count")}];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = [(HKStackedBarCoordinate *)self stackPoints];
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v24 + 1) + 8 * i) CGPointValue];
        v17 = vaddq_f64(*&a3->tx, vmlaq_n_f64(vmulq_n_f64(*&a3->c, v15), *&a3->a, v16));
        v18 = v17.f64[1];
        if (v4)
        {
          v17.f64[0] = HKUIFloorCGPointToScreenScale(v17.f64[0], v17.f64[1]);
        }

        v19 = [MEMORY[0x1E696B098] valueWithCGPoint:{v17.f64[0], v18}];
        [v9 addObject:v19];
      }

      v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v12);
  }

  v20 = objc_alloc(objc_opt_class());
  v21 = [(HKMinMaxCoordinate *)self userInfo];
  v22 = [v20 initWithStackPoints:v9 userInfo:v21];

  return v22;
}

@end