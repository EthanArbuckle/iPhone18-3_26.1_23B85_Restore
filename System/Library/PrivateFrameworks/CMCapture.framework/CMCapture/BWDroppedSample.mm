@interface BWDroppedSample
+ (id)newDroppedSampleFromDroppedSample:(id)sample backPressureSemaphoresToIgnore:(id)ignore;
+ (id)newDroppedSampleWithReason:(id)reason pts:(id *)pts;
+ (id)newDroppedSampleWithReason:(id)reason pts:(id *)pts backPressureSemaphoresToIgnore:(id)ignore;
- (void)_initDroppedSampleWithReason:(uint64_t)reason pts:(uint64_t)pts backPressureSemaphoresToIgnore:;
- (void)dealloc;
@end

@implementation BWDroppedSample

+ (id)newDroppedSampleWithReason:(id)reason pts:(id *)pts
{
  v6 = [BWDroppedSample alloc];
  v8 = *pts;
  return [(BWDroppedSample *)v6 _initDroppedSampleWithReason:reason pts:&v8 backPressureSemaphoresToIgnore:0];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWDroppedSample;
  [(BWDroppedSample *)&v3 dealloc];
}

- (void)_initDroppedSampleWithReason:(uint64_t)reason pts:(uint64_t)pts backPressureSemaphoresToIgnore:
{
  if (!self)
  {
    return 0;
  }

  v10.receiver = self;
  v10.super_class = BWDroppedSample;
  v7 = objc_msgSendSuper2(&v10, sel_init);
  if (v7)
  {
    v7[1] = [a2 copy];
    v8 = *(reason + 16);
    *(v7 + 1) = *reason;
    v7[4] = v8;
    v7[5] = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:pts];
  }

  return v7;
}

+ (id)newDroppedSampleWithReason:(id)reason pts:(id *)pts backPressureSemaphoresToIgnore:(id)ignore
{
  v8 = [BWDroppedSample alloc];
  v10 = *pts;
  return [(BWDroppedSample *)v8 _initDroppedSampleWithReason:reason pts:&v10 backPressureSemaphoresToIgnore:ignore];
}

+ (id)newDroppedSampleFromDroppedSample:(id)sample backPressureSemaphoresToIgnore:(id)ignore
{
  v5 = [MEMORY[0x1E695DF70] arrayWithArray:ignore];
  v6 = v5;
  if (*(sample + 5))
  {
    [v5 addObjectsFromArray:?];
  }

  v7 = [BWDroppedSample alloc];
  v8 = *(sample + 1);
  v10 = *(sample + 1);
  v11 = *(sample + 4);
  return [(BWDroppedSample *)v7 _initDroppedSampleWithReason:v8 pts:&v10 backPressureSemaphoresToIgnore:v6];
}

@end