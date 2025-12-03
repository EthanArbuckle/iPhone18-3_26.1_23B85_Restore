@interface CRKStudentDaemonActivityAssertionRequest
- (CRKStudentDaemonActivityAssertionRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKStudentDaemonActivityAssertionRequest

- (CRKStudentDaemonActivityAssertionRequest)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = CRKStudentDaemonActivityAssertionRequest;
  return [(CATTaskRequest *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = CRKStudentDaemonActivityAssertionRequest;
  [(CATTaskRequest *)&v3 encodeWithCoder:coder];
}

@end