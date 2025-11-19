@interface CHUISMutableWidgetVisibilitySettings
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CHUISMutableWidgetVisibilitySettings

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CHUISWidgetVisibilitySettings alloc];

  return [(CHUISWidgetVisibilitySettings *)v4 _initWithVisibilitySettings:self];
}

@end