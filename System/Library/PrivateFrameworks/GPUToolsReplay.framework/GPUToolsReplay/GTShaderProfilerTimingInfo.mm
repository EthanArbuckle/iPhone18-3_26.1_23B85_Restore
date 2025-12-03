@interface GTShaderProfilerTimingInfo
- (GTShaderProfilerTimingInfo)initWithCoder:(id)coder;
- (GTShaderProfilerTimingInfo)initWithTime:(unint64_t)time vertexTime:(unint64_t)vertexTime fragmentTime:(unint64_t)fragmentTime computeTime:(unint64_t)computeTime;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTShaderProfilerTimingInfo

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeDouble:@"time" forKey:self->_time];
  [coderCopy encodeDouble:@"vertexTime" forKey:self->_vertexTime];
  [coderCopy encodeDouble:@"fragmentTime" forKey:self->_fragmentTime];
  [coderCopy encodeDouble:@"computeTime" forKey:self->_computeTime];
}

- (GTShaderProfilerTimingInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = GTShaderProfilerTimingInfo;
  v5 = [(GTShaderProfilerTimingInfo *)&v11 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"time"];
    v5->_time = v6;
    [coderCopy decodeDoubleForKey:@"vertexTime"];
    v5->_vertexTime = v7;
    [coderCopy decodeDoubleForKey:@"fragmentTime"];
    v5->_fragmentTime = v8;
    [coderCopy decodeDoubleForKey:@"computeTime"];
    v5->_computeTime = v9;
  }

  return v5;
}

- (GTShaderProfilerTimingInfo)initWithTime:(unint64_t)time vertexTime:(unint64_t)vertexTime fragmentTime:(unint64_t)fragmentTime computeTime:(unint64_t)computeTime
{
  v11.receiver = self;
  v11.super_class = GTShaderProfilerTimingInfo;
  result = [(GTShaderProfilerTimingInfo *)&v11 init];
  if (result)
  {
    result->_time = time;
    result->_vertexTime = vertexTime;
    result->_fragmentTime = fragmentTime;
    result->_computeTime = computeTime;
  }

  return result;
}

@end