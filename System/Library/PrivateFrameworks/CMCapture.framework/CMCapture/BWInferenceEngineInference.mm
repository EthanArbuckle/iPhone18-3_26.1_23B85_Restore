@interface BWInferenceEngineInference
- (BWInferenceEngineInference)initWithInferenceType:(int)a3 version:(id)a4 configuration:(id)a5;
- (id)description;
- (void)dealloc;
@end

@implementation BWInferenceEngineInference

- (BWInferenceEngineInference)initWithInferenceType:(int)a3 version:(id)a4 configuration:(id)a5
{
  v6 = *&a4.var0;
  v11.receiver = self;
  v11.super_class = BWInferenceEngineInference;
  v8 = [(BWInferenceEngineInference *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_inferenceType = a3;
    *&v8->_version.major = v6;
    v8->_version.patch = WORD2(v6);
    v8->_configuration = a5;
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWInferenceEngineInference;
  [(BWInferenceEngineInference *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@ %p> type:%@, version:%d.%d.%d, configuration:%@", v4, self, BWInferenceTypeDescription(self->_inferenceType), self->_version.major, self->_version.minor, self->_version.patch, self->_configuration];
}

@end