@interface CRKASMCourseCreateProperties
- (BOOL)areFulfilledByCourse:(id)course;
- (CRKASMCourseUpdateProperties)updateProperties;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CRKASMCourseCreateProperties

- (CRKASMCourseUpdateProperties)updateProperties
{
  updateProperties = self->_updateProperties;
  if (!updateProperties)
  {
    v4 = objc_opt_new();
    v5 = self->_updateProperties;
    self->_updateProperties = v4;

    updateProperties = self->_updateProperties;
  }

  return updateProperties;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  location = [(CRKASMCourseCreateProperties *)self location];
  [v4 setLocation:location];

  updateProperties = [(CRKASMCourseCreateProperties *)self updateProperties];
  [v4 setUpdateProperties:updateProperties];

  return v4;
}

- (BOOL)areFulfilledByCourse:(id)course
{
  courseCopy = course;
  location = [(CRKASMCourseCreateProperties *)self location];
  identifier = [location identifier];
  location2 = [courseCopy location];
  identifier2 = [location2 identifier];
  if ([identifier isEqual:identifier2])
  {
    updateProperties = [(CRKASMCourseCreateProperties *)self updateProperties];
    v10 = [updateProperties areFulfilledByCourse:courseCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end