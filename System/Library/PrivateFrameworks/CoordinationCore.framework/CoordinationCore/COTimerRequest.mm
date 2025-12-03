@interface COTimerRequest
- (COTimerRequest)initWithCoder:(id)coder;
- (COTimerRequest)initWithTimer:(id)timer;
- (void)encodeWithCoder:(id)coder;
@end

@implementation COTimerRequest

- (COTimerRequest)initWithTimer:(id)timer
{
  timerCopy = timer;
  v9.receiver = self;
  v9.super_class = COTimerRequest;
  v5 = [(COMeshCommand *)&v9 init];
  if (v5)
  {
    v6 = [timerCopy copy];
    timer = v5->_timer;
    v5->_timer = v6;
  }

  return v5;
}

- (COTimerRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = COTimerRequest;
  v5 = [(COMeshCommand *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timer"];
    timer = v5->_timer;
    v5->_timer = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = COTimerRequest;
  coderCopy = coder;
  [(COMeshCommand *)&v6 encodeWithCoder:coderCopy];
  v5 = [(COTimerRequest *)self timer:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"timer"];
}

@end