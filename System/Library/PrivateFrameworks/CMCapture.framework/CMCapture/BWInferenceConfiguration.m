@interface BWInferenceConfiguration
- (BWInferenceConfiguration)initWithInferenceType:(int)a3;
- (id)description;
- (void)dealloc;
@end

@implementation BWInferenceConfiguration

- (BWInferenceConfiguration)initWithInferenceType:(int)a3
{
  v7.receiver = self;
  v7.super_class = BWInferenceConfiguration;
  v4 = [(BWInferenceConfiguration *)&v7 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 2) = a3;
    *(v4 + 12) = 0;
    *(v4 + 3) = objc_alloc_init(MEMORY[0x1E695DF20]);
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWInferenceConfiguration;
  [(BWInferenceConfiguration *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@ %p> inferenceType:%@, priority:%d", v4, self, BWInferenceTypeDescription(self->_inferenceType), self->_priority];
}

@end