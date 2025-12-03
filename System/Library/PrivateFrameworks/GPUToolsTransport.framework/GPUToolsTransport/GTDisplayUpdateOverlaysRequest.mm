@interface GTDisplayUpdateOverlaysRequest
- (GTDisplayUpdateOverlaysRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTDisplayUpdateOverlaysRequest

- (GTDisplayUpdateOverlaysRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = GTDisplayUpdateOverlaysRequest;
  v5 = [(GTDisplayRequest *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_overlays = [coderCopy decodeInt64ForKey:@"overlays"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = GTDisplayUpdateOverlaysRequest;
  coderCopy = coder;
  [(GTDisplayRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt64:self->_overlays forKey:{@"overlays", v5.receiver, v5.super_class}];
}

@end