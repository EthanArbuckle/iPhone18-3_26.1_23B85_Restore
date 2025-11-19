@interface GTDisplayUpdateOverlaysRequest
- (GTDisplayUpdateOverlaysRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTDisplayUpdateOverlaysRequest

- (GTDisplayUpdateOverlaysRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = GTDisplayUpdateOverlaysRequest;
  v5 = [(GTDisplayRequest *)&v8 initWithCoder:v4];
  if (v5)
  {
    v5->_overlays = [v4 decodeInt64ForKey:@"overlays"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = GTDisplayUpdateOverlaysRequest;
  v4 = a3;
  [(GTDisplayRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeInt64:self->_overlays forKey:{@"overlays", v5.receiver, v5.super_class}];
}

@end