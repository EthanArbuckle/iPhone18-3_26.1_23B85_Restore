@interface CRKEmptyRequest
- (CRKEmptyRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKEmptyRequest

- (CRKEmptyRequest)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = CRKEmptyRequest;
  return [(CATTaskRequest *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = CRKEmptyRequest;
  [(CATTaskRequest *)&v3 encodeWithCoder:coder];
}

@end