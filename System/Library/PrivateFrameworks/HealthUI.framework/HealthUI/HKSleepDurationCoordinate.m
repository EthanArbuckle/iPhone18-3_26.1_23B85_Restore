@interface HKSleepDurationCoordinate
- (HKSleepDurationCoordinate)initWithStackPoints:(id)a3 goalLineYValue:(id)a4 highlighted:(BOOL)a5 userInfo:(id)a6;
- (id)copyWithTransform:(CGAffineTransform *)a3 roundToViewScale:(BOOL)a4;
@end

@implementation HKSleepDurationCoordinate

- (HKSleepDurationCoordinate)initWithStackPoints:(id)a3 goalLineYValue:(id)a4 highlighted:(BOOL)a5 userInfo:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if ([v11 count] >= 2)
  {
    v15 = [v11 firstObject];
    [v15 CGPointValue];
    v17 = v16;
    v19 = v18;
    v20 = [v11 lastObject];
    [v20 CGPointValue];
    v25.receiver = self;
    v25.super_class = HKSleepDurationCoordinate;
    v23 = [(HKMinMaxCoordinate *)&v25 initWithMin:v13 max:v17 userInfo:v19, v21, v22];

    if (v23)
    {
      objc_storeStrong(&v23->_stackPoints, a3);
      objc_storeStrong(&v23->_goalLineYValue, a4);
      v23->_highlighted = a5;
    }

    self = v23;
    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)copyWithTransform:(CGAffineTransform *)a3 roundToViewScale:(BOOL)a4
{
  v4 = a4;
  v33 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E695DF70];
  v8 = [(HKSleepDurationCoordinate *)self stackPoints];
  v9 = [v7 arrayWithCapacity:{objc_msgSend(v8, "count")}];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = [(HKSleepDurationCoordinate *)self stackPoints];
  v11 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v29;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v28 + 1) + 8 * i) CGPointValue];
        v17 = vaddq_f64(*&a3->tx, vmlaq_n_f64(vmulq_n_f64(*&a3->c, v15), *&a3->a, v16));
        v18 = v17.f64[1];
        if (v4)
        {
          v17.f64[0] = HKUIFloorCGPointToScreenScale(v17.f64[0], v17.f64[1]);
        }

        v19 = [MEMORY[0x1E696B098] valueWithCGPoint:{v17.f64[0], v18}];
        [v9 addObject:v19];
      }

      v12 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v12);
  }

  goalLineYValue = self->_goalLineYValue;
  if (goalLineYValue)
  {
    [(NSNumber *)goalLineYValue doubleValue];
    v22 = [MEMORY[0x1E696AD98] numberWithDouble:a3->ty + v21 * a3->d + a3->b * 0.0];
  }

  else
  {
    v22 = 0;
  }

  v23 = objc_alloc(objc_opt_class());
  highlighted = self->_highlighted;
  v25 = [(HKMinMaxCoordinate *)self userInfo];
  v26 = [v23 initWithStackPoints:v9 goalLineYValue:v22 highlighted:highlighted userInfo:v25];

  return v26;
}

@end