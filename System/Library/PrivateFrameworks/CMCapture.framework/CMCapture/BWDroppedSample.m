@interface BWDroppedSample
+ (id)newDroppedSampleFromDroppedSample:(id)a3 backPressureSemaphoresToIgnore:(id)a4;
+ (id)newDroppedSampleWithReason:(id)a3 pts:(id *)a4;
+ (id)newDroppedSampleWithReason:(id)a3 pts:(id *)a4 backPressureSemaphoresToIgnore:(id)a5;
- (void)_initDroppedSampleWithReason:(uint64_t)a3 pts:(uint64_t)a4 backPressureSemaphoresToIgnore:;
- (void)dealloc;
@end

@implementation BWDroppedSample

+ (id)newDroppedSampleWithReason:(id)a3 pts:(id *)a4
{
  v6 = [BWDroppedSample alloc];
  v8 = *a4;
  return [(BWDroppedSample *)v6 _initDroppedSampleWithReason:a3 pts:&v8 backPressureSemaphoresToIgnore:0];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWDroppedSample;
  [(BWDroppedSample *)&v3 dealloc];
}

- (void)_initDroppedSampleWithReason:(uint64_t)a3 pts:(uint64_t)a4 backPressureSemaphoresToIgnore:
{
  if (!a1)
  {
    return 0;
  }

  v10.receiver = a1;
  v10.super_class = BWDroppedSample;
  v7 = objc_msgSendSuper2(&v10, sel_init);
  if (v7)
  {
    v7[1] = [a2 copy];
    v8 = *(a3 + 16);
    *(v7 + 1) = *a3;
    v7[4] = v8;
    v7[5] = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:a4];
  }

  return v7;
}

+ (id)newDroppedSampleWithReason:(id)a3 pts:(id *)a4 backPressureSemaphoresToIgnore:(id)a5
{
  v8 = [BWDroppedSample alloc];
  v10 = *a4;
  return [(BWDroppedSample *)v8 _initDroppedSampleWithReason:a3 pts:&v10 backPressureSemaphoresToIgnore:a5];
}

+ (id)newDroppedSampleFromDroppedSample:(id)a3 backPressureSemaphoresToIgnore:(id)a4
{
  v5 = [MEMORY[0x1E695DF70] arrayWithArray:a4];
  v6 = v5;
  if (*(a3 + 5))
  {
    [v5 addObjectsFromArray:?];
  }

  v7 = [BWDroppedSample alloc];
  v8 = *(a3 + 1);
  v10 = *(a3 + 1);
  v11 = *(a3 + 4);
  return [(BWDroppedSample *)v7 _initDroppedSampleWithReason:v8 pts:&v10 backPressureSemaphoresToIgnore:v6];
}

@end