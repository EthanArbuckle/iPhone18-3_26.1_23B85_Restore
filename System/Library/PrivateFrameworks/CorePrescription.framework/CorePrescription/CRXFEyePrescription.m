@interface CRXFEyePrescription
- (CRXFEyePrescription)initWithSphere:(float)a3 cylinder:(float)a4 axis:(unint64_t)a5 add:(float)a6;
@end

@implementation CRXFEyePrescription

- (CRXFEyePrescription)initWithSphere:(float)a3 cylinder:(float)a4 axis:(unint64_t)a5 add:(float)a6
{
  v11.receiver = self;
  v11.super_class = CRXFEyePrescription;
  result = [(CRXFEyePrescription *)&v11 init];
  if (result)
  {
    result->_sphere = a3;
    result->_cylinder = a4;
    result->_axis = a5;
    result->_add = a6;
  }

  return result;
}

@end