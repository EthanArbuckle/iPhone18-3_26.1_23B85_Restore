@interface CSSCalendarIcons
- (NSBundle)classroomKitBundle;
- (id)classroomKitImageNamed:(id)a3;
@end

@implementation CSSCalendarIcons

- (id)classroomKitImageNamed:(id)a3
{
  v5 = a3;
  if (!+[NSThread isMainThread])
  {
    sub_100005DF0(a2, self);
  }

  v6 = [(CSSCalendarIcons *)self classroomKitBundle];
  v7 = [UIImage imageNamed:v5 inBundle:v6];

  if (v7)
  {
    v8 = UIImagePNGRepresentation(v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSBundle)classroomKitBundle
{
  classroomKitBundle = self->_classroomKitBundle;
  if (!classroomKitBundle)
  {
    v4 = [NSBundle bundleWithIdentifier:CRKClassroomKitBundleIdentifier];
    v5 = self->_classroomKitBundle;
    self->_classroomKitBundle = v4;

    classroomKitBundle = self->_classroomKitBundle;
  }

  return classroomKitBundle;
}

@end