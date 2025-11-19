@interface GTCaptureUpdateHighlight
- (GTCaptureUpdateHighlight)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTCaptureUpdateHighlight

- (GTCaptureUpdateHighlight)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = GTCaptureUpdateHighlight;
  v5 = [(GTCaptureRequest *)&v8 initWithCoder:v4];
  if (v5)
  {
    v5->_streamRef = [v4 decodeInt64ForKey:@"streamRef"];
    v5->_enable = [v4 decodeBoolForKey:@"enable"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = GTCaptureUpdateHighlight;
  v4 = a3;
  [(GTCaptureRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeInt64:self->_streamRef forKey:{@"streamRef", v5.receiver, v5.super_class}];
  [v4 encodeBool:self->_enable forKey:@"enable"];
}

@end