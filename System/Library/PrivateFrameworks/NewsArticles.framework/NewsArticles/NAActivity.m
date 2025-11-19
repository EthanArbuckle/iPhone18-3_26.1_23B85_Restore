@interface NAActivity
- (id)_bundleIdentifierForActivityImageCreation;
- (id)_systemImageName;
@end

@implementation NAActivity

- (id)_systemImageName
{
  v4.receiver = self;
  v4.super_class = NAActivity;
  v2 = [(UIActivity *)&v4 _systemImageName];

  return v2;
}

- (id)_bundleIdentifierForActivityImageCreation
{
  v4.receiver = self;
  v4.super_class = NAActivity;
  v2 = [(UIActivity *)&v4 _bundleIdentifierForActivityImageCreation];

  return v2;
}

@end