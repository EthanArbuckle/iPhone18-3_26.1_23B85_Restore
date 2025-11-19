@interface GTReplayProfileTimeline
- (GTReplayProfileTimeline)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTReplayProfileTimeline

- (GTReplayProfileTimeline)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = GTReplayProfileTimeline;
  v5 = [(GTReplayProfileRequest *)&v8 initWithCoder:v4];
  if (v5)
  {
    v5->_shaderProfiling = [v4 decodeBoolForKey:@"shaderProfiling"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = GTReplayProfileTimeline;
  v4 = a3;
  [(GTReplayProfileRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_shaderProfiling forKey:{@"shaderProfiling", v5.receiver, v5.super_class}];
}

@end