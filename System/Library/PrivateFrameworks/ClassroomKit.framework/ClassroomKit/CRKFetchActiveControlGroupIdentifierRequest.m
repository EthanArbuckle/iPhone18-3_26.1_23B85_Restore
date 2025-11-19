@interface CRKFetchActiveControlGroupIdentifierRequest
- (CRKFetchActiveControlGroupIdentifierRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKFetchActiveControlGroupIdentifierRequest

- (CRKFetchActiveControlGroupIdentifierRequest)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = CRKFetchActiveControlGroupIdentifierRequest;
  return [(CATTaskRequest *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = CRKFetchActiveControlGroupIdentifierRequest;
  [(CATTaskRequest *)&v3 encodeWithCoder:a3];
}

@end