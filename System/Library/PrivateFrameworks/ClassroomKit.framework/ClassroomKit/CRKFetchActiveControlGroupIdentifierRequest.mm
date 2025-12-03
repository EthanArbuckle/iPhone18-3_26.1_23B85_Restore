@interface CRKFetchActiveControlGroupIdentifierRequest
- (CRKFetchActiveControlGroupIdentifierRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKFetchActiveControlGroupIdentifierRequest

- (CRKFetchActiveControlGroupIdentifierRequest)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = CRKFetchActiveControlGroupIdentifierRequest;
  return [(CATTaskRequest *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = CRKFetchActiveControlGroupIdentifierRequest;
  [(CATTaskRequest *)&v3 encodeWithCoder:coder];
}

@end