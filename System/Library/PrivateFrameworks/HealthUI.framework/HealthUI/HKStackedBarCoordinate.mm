@interface HKStackedBarCoordinate
- (HKStackedBarCoordinate)initWithStackPoints:(id)points userInfo:(id)info;
- (id)copyWithTransform:(CGAffineTransform *)transform roundToViewScale:(BOOL)scale;
@end

@implementation HKStackedBarCoordinate

- (HKStackedBarCoordinate)initWithStackPoints:(id)points userInfo:(id)info
{
  pointsCopy = points;
  infoCopy = info;
  if ([pointsCopy count] >= 2)
  {
    firstObject = [pointsCopy firstObject];
    [firstObject CGPointValue];
    v12 = v11;
    v14 = v13;
    lastObject = [pointsCopy lastObject];
    [lastObject CGPointValue];
    v20.receiver = self;
    v20.super_class = HKStackedBarCoordinate;
    v18 = [(HKMinMaxCoordinate *)&v20 initWithMin:infoCopy max:v12 userInfo:v14, v16, v17];

    if (v18)
    {
      objc_storeStrong(&v18->_stackPoints, points);
    }

    self = v18;
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
  v29 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E695DF70];
  stackPoints = [(HKStackedBarCoordinate *)self stackPoints];
  v9 = [v7 arrayWithCapacity:{objc_msgSend(stackPoints, "count")}];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  stackPoints2 = [(HKStackedBarCoordinate *)self stackPoints];
  v11 = [stackPoints2 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(stackPoints2);
        }

        [*(*(&v24 + 1) + 8 * i) CGPointValue];
        v17 = vaddq_f64(*&transform->tx, vmlaq_n_f64(vmulq_n_f64(*&transform->c, v15), *&transform->a, v16));
        v18 = v17.f64[1];
        if (scaleCopy)
        {
          v17.f64[0] = HKUIFloorCGPointToScreenScale(v17.f64[0], v17.f64[1]);
        }

        v19 = [MEMORY[0x1E696B098] valueWithCGPoint:{v17.f64[0], v18}];
        [v9 addObject:v19];
      }

      v12 = [stackPoints2 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v12);
  }

  v20 = objc_alloc(objc_opt_class());
  userInfo = [(HKMinMaxCoordinate *)self userInfo];
  v22 = [v20 initWithStackPoints:v9 userInfo:userInfo];

  return v22;
}

@end