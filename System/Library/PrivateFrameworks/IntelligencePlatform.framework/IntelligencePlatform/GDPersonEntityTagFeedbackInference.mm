@interface GDPersonEntityTagFeedbackInference
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPersonEntityTagFeedbackInference:(id)inference;
- (GDPersonEntityTagFeedbackInference)initWithIDValue:(int64_t)value tag:(int64_t)tag;
@end

@implementation GDPersonEntityTagFeedbackInference

- (BOOL)isEqualToPersonEntityTagFeedbackInference:(id)inference
{
  inferenceCopy = inference;
  v5 = inferenceCopy == self || inferenceCopy && self->_idValue == inferenceCopy->_idValue && self->_tag == inferenceCopy->_tag;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(GDPersonEntityTagFeedbackInference *)self isEqualToPersonEntityTagFeedbackInference:equalCopy];
  }

  return v5;
}

- (GDPersonEntityTagFeedbackInference)initWithIDValue:(int64_t)value tag:(int64_t)tag
{
  v7.receiver = self;
  v7.super_class = GDPersonEntityTagFeedbackInference;
  result = [(GDPersonEntityTagFeedbackInference *)&v7 init];
  if (result)
  {
    result->_tag = tag;
    result->_idValue = value;
  }

  return result;
}

@end