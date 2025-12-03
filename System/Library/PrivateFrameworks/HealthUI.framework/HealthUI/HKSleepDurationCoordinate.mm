@interface HKSleepDurationCoordinate
- (HKSleepDurationCoordinate)initWithStackPoints:(id)points goalLineYValue:(id)value highlighted:(BOOL)highlighted userInfo:(id)info;
- (id)copyWithTransform:(CGAffineTransform *)transform roundToViewScale:(BOOL)scale;
@end

@implementation HKSleepDurationCoordinate

- (HKSleepDurationCoordinate)initWithStackPoints:(id)points goalLineYValue:(id)value highlighted:(BOOL)highlighted userInfo:(id)info
{
  pointsCopy = points;
  valueCopy = value;
  infoCopy = info;
  if ([pointsCopy count] >= 2)
  {
    firstObject = [pointsCopy firstObject];
    [firstObject CGPointValue];
    v17 = v16;
    v19 = v18;
    lastObject = [pointsCopy lastObject];
    [lastObject CGPointValue];
    v25.receiver = self;
    v25.super_class = HKSleepDurationCoordinate;
    v23 = [(HKMinMaxCoordinate *)&v25 initWithMin:infoCopy max:v17 userInfo:v19, v21, v22];

    if (v23)
    {
      objc_storeStrong(&v23->_stackPoints, points);
      objc_storeStrong(&v23->_goalLineYValue, value);
      v23->_highlighted = highlighted;
    }

    self = v23;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)copyWithTransform:(CGAffineTransform *)transform roundToViewScale:(BOOL)scale
{
  scaleCopy = scale;
  v33 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E695DF70];
  stackPoints = [(HKSleepDurationCoordinate *)self stackPoints];
  v9 = [v7 arrayWithCapacity:{objc_msgSend(stackPoints, "count")}];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  stackPoints2 = [(HKSleepDurationCoordinate *)self stackPoints];
  v11 = [stackPoints2 countByEnumeratingWithState:&v28 objects:v32 count:16];
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
          objc_enumerationMutation(stackPoints2);
        }

        [*(*(&v28 + 1) + 8 * i) CGPointValue];
        v17 = vaddq_f64(*&transform->tx, vmlaq_n_f64(vmulq_n_f64(*&transform->c, v15), *&transform->a, v16));
        v18 = v17.f64[1];
        if (scaleCopy)
        {
          v17.f64[0] = HKUIFloorCGPointToScreenScale(v17.f64[0], v17.f64[1]);
        }

        v19 = [MEMORY[0x1E696B098] valueWithCGPoint:{v17.f64[0], v18}];
        [v9 addObject:v19];
      }

      v12 = [stackPoints2 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v12);
  }

  goalLineYValue = self->_goalLineYValue;
  if (goalLineYValue)
  {
    [(NSNumber *)goalLineYValue doubleValue];
    v22 = [MEMORY[0x1E696AD98] numberWithDouble:transform->ty + v21 * transform->d + transform->b * 0.0];
  }

  else
  {
    v22 = 0;
  }

  v23 = objc_alloc(objc_opt_class());
  highlighted = self->_highlighted;
  userInfo = [(HKMinMaxCoordinate *)self userInfo];
  v26 = [v23 initWithStackPoints:v9 goalLineYValue:v22 highlighted:highlighted userInfo:userInfo];

  return v26;
}

@end