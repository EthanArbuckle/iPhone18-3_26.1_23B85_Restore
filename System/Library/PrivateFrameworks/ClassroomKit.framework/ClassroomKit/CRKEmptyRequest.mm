@interface CRKEmptyRequest
- (CRKEmptyRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKEmptyRequest

- (CRKEmptyRequest)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = CRKEmptyRequest;
  return [(CATTaskRequest *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = CRKEmptyRequest;
  [(CATTaskRequest *)&v3 encodeWithCoder:a3];
}

@end