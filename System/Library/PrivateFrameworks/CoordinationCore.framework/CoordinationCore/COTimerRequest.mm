@interface COTimerRequest
- (COTimerRequest)initWithCoder:(id)a3;
- (COTimerRequest)initWithTimer:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation COTimerRequest

- (COTimerRequest)initWithTimer:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = COTimerRequest;
  v5 = [(COMeshCommand *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    timer = v5->_timer;
    v5->_timer = v6;
  }

  return v5;
}

- (COTimerRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = COTimerRequest;
  v5 = [(COMeshCommand *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timer"];
    timer = v5->_timer;
    v5->_timer = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = COTimerRequest;
  v4 = a3;
  [(COMeshCommand *)&v6 encodeWithCoder:v4];
  v5 = [(COTimerRequest *)self timer:v6.receiver];
  [v4 encodeObject:v5 forKey:@"timer"];
}

@end