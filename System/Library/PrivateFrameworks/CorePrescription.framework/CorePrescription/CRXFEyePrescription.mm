@interface CRXFEyePrescription
- (CRXFEyePrescription)initWithSphere:(float)sphere cylinder:(float)cylinder axis:(unint64_t)axis add:(float)add;
@end

@implementation CRXFEyePrescription

- (CRXFEyePrescription)initWithSphere:(float)sphere cylinder:(float)cylinder axis:(unint64_t)axis add:(float)add
{
  v11.receiver = self;
  v11.super_class = CRXFEyePrescription;
  result = [(CRXFEyePrescription *)&v11 init];
  if (result)
  {
    result->_sphere = sphere;
    result->_cylinder = cylinder;
    result->_axis = axis;
    result->_add = add;
  }

  return result;
}

@end