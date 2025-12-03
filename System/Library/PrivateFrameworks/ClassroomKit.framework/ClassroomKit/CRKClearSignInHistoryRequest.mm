@interface CRKClearSignInHistoryRequest
- (CRKClearSignInHistoryRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKClearSignInHistoryRequest

- (CRKClearSignInHistoryRequest)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = CRKClearSignInHistoryRequest;
  return [(CATTaskRequest *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = CRKClearSignInHistoryRequest;
  [(CATTaskRequest *)&v3 encodeWithCoder:coder];
}

@end