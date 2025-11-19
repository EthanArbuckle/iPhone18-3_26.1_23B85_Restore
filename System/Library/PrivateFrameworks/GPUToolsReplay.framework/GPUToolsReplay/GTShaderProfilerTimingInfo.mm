@interface GTShaderProfilerTimingInfo
- (GTShaderProfilerTimingInfo)initWithCoder:(id)a3;
- (GTShaderProfilerTimingInfo)initWithTime:(unint64_t)a3 vertexTime:(unint64_t)a4 fragmentTime:(unint64_t)a5 computeTime:(unint64_t)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTShaderProfilerTimingInfo

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeDouble:@"time" forKey:self->_time];
  [v4 encodeDouble:@"vertexTime" forKey:self->_vertexTime];
  [v4 encodeDouble:@"fragmentTime" forKey:self->_fragmentTime];
  [v4 encodeDouble:@"computeTime" forKey:self->_computeTime];
}

- (GTShaderProfilerTimingInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = GTShaderProfilerTimingInfo;
  v5 = [(GTShaderProfilerTimingInfo *)&v11 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"time"];
    v5->_time = v6;
    [v4 decodeDoubleForKey:@"vertexTime"];
    v5->_vertexTime = v7;
    [v4 decodeDoubleForKey:@"fragmentTime"];
    v5->_fragmentTime = v8;
    [v4 decodeDoubleForKey:@"computeTime"];
    v5->_computeTime = v9;
  }

  return v5;
}

- (GTShaderProfilerTimingInfo)initWithTime:(unint64_t)a3 vertexTime:(unint64_t)a4 fragmentTime:(unint64_t)a5 computeTime:(unint64_t)a6
{
  v11.receiver = self;
  v11.super_class = GTShaderProfilerTimingInfo;
  result = [(GTShaderProfilerTimingInfo *)&v11 init];
  if (result)
  {
    result->_time = a3;
    result->_vertexTime = a4;
    result->_fragmentTime = a5;
    result->_computeTime = a6;
  }

  return result;
}

@end