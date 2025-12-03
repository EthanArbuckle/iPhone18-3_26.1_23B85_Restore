@interface CSSCalendarIcons
- (NSBundle)classroomKitBundle;
- (id)classroomKitImageNamed:(id)named;
@end

@implementation CSSCalendarIcons

- (id)classroomKitImageNamed:(id)named
{
  namedCopy = named;
  if (!+[NSThread isMainThread])
  {
    sub_100005DF0(a2, self);
  }

  classroomKitBundle = [(CSSCalendarIcons *)self classroomKitBundle];
  v7 = [UIImage imageNamed:namedCopy inBundle:classroomKitBundle];

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