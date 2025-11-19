@interface GDPersonEntityTagFeedbackInference
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPersonEntityTagFeedbackInference:(id)a3;
- (GDPersonEntityTagFeedbackInference)initWithIDValue:(int64_t)a3 tag:(int64_t)a4;
@end

@implementation GDPersonEntityTagFeedbackInference

- (BOOL)isEqualToPersonEntityTagFeedbackInference:(id)a3
{
  v4 = a3;
  v5 = v4 == self || v4 && self->_idValue == v4->_idValue && self->_tag == v4->_tag;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(GDPersonEntityTagFeedbackInference *)self isEqualToPersonEntityTagFeedbackInference:v4];
  }

  return v5;
}

- (GDPersonEntityTagFeedbackInference)initWithIDValue:(int64_t)a3 tag:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = GDPersonEntityTagFeedbackInference;
  result = [(GDPersonEntityTagFeedbackInference *)&v7 init];
  if (result)
  {
    result->_tag = a4;
    result->_idValue = a3;
  }

  return result;
}

@end