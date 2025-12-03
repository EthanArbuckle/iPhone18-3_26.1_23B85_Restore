@interface GTReplaySessionInfo
- (GTReplaySessionInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTReplaySessionInfo

- (GTReplaySessionInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = GTReplaySessionInfo;
  v5 = [(GTReplaySessionInfo *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gputraceURL"];
    gputraceURL = v5->_gputraceURL;
    v5->_gputraceURL = v6;

    v5->_shaderDebuggerVersion = [coderCopy decodeInt64ForKey:@"shaderDebuggerVersion"];
    v5->_shaderProfilerVersion = [coderCopy decodeInt64ForKey:@"shaderProfilerVersion"];
    v5->_accelerationViewerVersion = [coderCopy decodeInt64ForKey:@"accelerationViewerVersion"];
    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  gputraceURL = self->_gputraceURL;
  coderCopy = coder;
  [coderCopy encodeObject:gputraceURL forKey:@"gputraceURL"];
  [coderCopy encodeInt64:self->_shaderDebuggerVersion forKey:@"shaderDebuggerVersion"];
  [coderCopy encodeInt64:self->_shaderProfilerVersion forKey:@"shaderProfilerVersion"];
  [coderCopy encodeInt64:self->_accelerationViewerVersion forKey:@"accelerationViewerVersion"];
}

@end