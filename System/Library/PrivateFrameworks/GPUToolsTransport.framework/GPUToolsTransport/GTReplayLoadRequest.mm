@interface GTReplayLoadRequest
- (GTReplayLoadRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTReplayLoadRequest

- (GTReplayLoadRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = GTReplayLoadRequest;
  v5 = [(GTReplayRequest *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gputraceURL"];
    v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:v6];
    gputraceURL = v5->_gputraceURL;
    v5->_gputraceURL = v7;

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  gputraceURL = self->_gputraceURL;
  coderCopy = coder;
  path = [(NSURL *)gputraceURL path];
  [coderCopy encodeObject:path forKey:@"gputraceURL"];
}

@end