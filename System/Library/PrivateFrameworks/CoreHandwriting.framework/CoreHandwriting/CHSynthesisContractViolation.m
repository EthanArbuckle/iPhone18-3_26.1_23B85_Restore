@interface CHSynthesisContractViolation
- (CHSynthesisContractViolation)initWithLocationRange:(_NSRange)a3 comment:(id)a4 kind:(int64_t)a5;
- (_NSRange)locationRange;
@end

@implementation CHSynthesisContractViolation

- (CHSynthesisContractViolation)initWithLocationRange:(_NSRange)a3 comment:(id)a4 kind:(int64_t)a5
{
  length = a3.length;
  location = a3.location;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = CHSynthesisContractViolation;
  v11 = [(CHSynthesisContractViolation *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_locationRange.location = location;
    v11->_locationRange.length = length;
    objc_storeStrong(&v11->_comment, a4);
    v12->_kind = a5;
  }

  return v12;
}

- (_NSRange)locationRange
{
  length = self->_locationRange.length;
  location = self->_locationRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end