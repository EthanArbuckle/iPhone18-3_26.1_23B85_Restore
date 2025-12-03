@interface CHSynthesisContractViolation
- (CHSynthesisContractViolation)initWithLocationRange:(_NSRange)range comment:(id)comment kind:(int64_t)kind;
- (_NSRange)locationRange;
@end

@implementation CHSynthesisContractViolation

- (CHSynthesisContractViolation)initWithLocationRange:(_NSRange)range comment:(id)comment kind:(int64_t)kind
{
  length = range.length;
  location = range.location;
  commentCopy = comment;
  v14.receiver = self;
  v14.super_class = CHSynthesisContractViolation;
  v11 = [(CHSynthesisContractViolation *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_locationRange.location = location;
    v11->_locationRange.length = length;
    objc_storeStrong(&v11->_comment, comment);
    v12->_kind = kind;
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