@interface GTReplayProfileTimeline
- (GTReplayProfileTimeline)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTReplayProfileTimeline

- (GTReplayProfileTimeline)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = GTReplayProfileTimeline;
  v5 = [(GTReplayProfileRequest *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_shaderProfiling = [coderCopy decodeBoolForKey:@"shaderProfiling"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = GTReplayProfileTimeline;
  coderCopy = coder;
  [(GTReplayProfileRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_shaderProfiling forKey:{@"shaderProfiling", v5.receiver, v5.super_class}];
}

@end