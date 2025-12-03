@interface GTReplayResponseStream
- (GTReplayResponseStream)initWithCoder:(id)coder;
- (GTReplayResponseStream)initWithState:(unsigned int)state;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTReplayResponseStream

- (GTReplayResponseStream)initWithState:(unsigned int)state
{
  v8.receiver = self;
  v8.super_class = GTReplayResponseStream;
  v4 = [(GTReplayResponse *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_state = state;
    v6 = v4;
  }

  return v5;
}

- (GTReplayResponseStream)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = GTReplayResponseStream;
  v5 = [(GTReplayResponse *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_state = [coderCopy decodeInt32ForKey:@"state"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = GTReplayResponseStream;
  coderCopy = coder;
  [(GTReplayResponse *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt32:self->_state forKey:{@"state", v5.receiver, v5.super_class}];
}

@end