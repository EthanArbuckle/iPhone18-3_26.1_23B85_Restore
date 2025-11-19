@interface GTReplayResponseStream
- (GTReplayResponseStream)initWithCoder:(id)a3;
- (GTReplayResponseStream)initWithState:(unsigned int)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTReplayResponseStream

- (GTReplayResponseStream)initWithState:(unsigned int)a3
{
  v8.receiver = self;
  v8.super_class = GTReplayResponseStream;
  v4 = [(GTReplayResponse *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_state = a3;
    v6 = v4;
  }

  return v5;
}

- (GTReplayResponseStream)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = GTReplayResponseStream;
  v5 = [(GTReplayResponse *)&v8 initWithCoder:v4];
  if (v5)
  {
    v5->_state = [v4 decodeInt32ForKey:@"state"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = GTReplayResponseStream;
  v4 = a3;
  [(GTReplayResponse *)&v5 encodeWithCoder:v4];
  [v4 encodeInt32:self->_state forKey:{@"state", v5.receiver, v5.super_class}];
}

@end