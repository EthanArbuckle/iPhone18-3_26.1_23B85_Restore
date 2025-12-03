@interface CSUObjectDetectionResult
- (CGRect)box;
- (CSUObjectDetectionResult)initWithCGRect:(CGRect)rect score:(float)score label:(id)label;
@end

@implementation CSUObjectDetectionResult

- (CSUObjectDetectionResult)initWithCGRect:(CGRect)rect score:(float)score label:(id)label
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  labelCopy = label;
  v17.receiver = self;
  v17.super_class = CSUObjectDetectionResult;
  v13 = [(CSUObjectDetectionResult *)&v17 init];
  v14 = v13;
  if (v13)
  {
    v13->_box.origin.x = x;
    v13->_box.origin.y = y;
    v13->_box.size.width = width;
    v13->_box.size.height = height;
    v13->_score = score;
    objc_storeStrong(&v13->_label, label);
    v15 = v14;
  }

  return v14;
}

- (CGRect)box
{
  x = self->_box.origin.x;
  y = self->_box.origin.y;
  width = self->_box.size.width;
  height = self->_box.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end