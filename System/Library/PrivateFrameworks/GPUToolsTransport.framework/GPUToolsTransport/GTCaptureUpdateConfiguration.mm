@interface GTCaptureUpdateConfiguration
- (GTCaptureUpdateConfiguration)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTCaptureUpdateConfiguration

- (GTCaptureUpdateConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = GTCaptureUpdateConfiguration;
  v5 = [(GTCaptureRequest *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"configuration"];
    configuration = v5->_configuration;
    v5->_configuration = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = GTCaptureUpdateConfiguration;
  coderCopy = coder;
  [(GTCaptureRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_configuration forKey:{@"configuration", v5.receiver, v5.super_class}];
}

@end