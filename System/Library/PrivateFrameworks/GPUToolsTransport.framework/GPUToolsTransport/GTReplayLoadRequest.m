@interface GTReplayLoadRequest
- (GTReplayLoadRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTReplayLoadRequest

- (GTReplayLoadRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = GTReplayLoadRequest;
  v5 = [(GTReplayRequest *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gputraceURL"];
    v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:v6];
    gputraceURL = v5->_gputraceURL;
    v5->_gputraceURL = v7;

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  gputraceURL = self->_gputraceURL;
  v4 = a3;
  v5 = [(NSURL *)gputraceURL path];
  [v4 encodeObject:v5 forKey:@"gputraceURL"];
}

@end