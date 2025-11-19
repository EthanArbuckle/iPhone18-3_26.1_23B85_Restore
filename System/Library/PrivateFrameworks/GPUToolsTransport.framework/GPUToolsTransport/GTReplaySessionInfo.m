@interface GTReplaySessionInfo
- (GTReplaySessionInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTReplaySessionInfo

- (GTReplaySessionInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = GTReplaySessionInfo;
  v5 = [(GTReplaySessionInfo *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gputraceURL"];
    gputraceURL = v5->_gputraceURL;
    v5->_gputraceURL = v6;

    v5->_shaderDebuggerVersion = [v4 decodeInt64ForKey:@"shaderDebuggerVersion"];
    v5->_shaderProfilerVersion = [v4 decodeInt64ForKey:@"shaderProfilerVersion"];
    v5->_accelerationViewerVersion = [v4 decodeInt64ForKey:@"accelerationViewerVersion"];
    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  gputraceURL = self->_gputraceURL;
  v5 = a3;
  [v5 encodeObject:gputraceURL forKey:@"gputraceURL"];
  [v5 encodeInt64:self->_shaderDebuggerVersion forKey:@"shaderDebuggerVersion"];
  [v5 encodeInt64:self->_shaderProfilerVersion forKey:@"shaderProfilerVersion"];
  [v5 encodeInt64:self->_accelerationViewerVersion forKey:@"accelerationViewerVersion"];
}

@end