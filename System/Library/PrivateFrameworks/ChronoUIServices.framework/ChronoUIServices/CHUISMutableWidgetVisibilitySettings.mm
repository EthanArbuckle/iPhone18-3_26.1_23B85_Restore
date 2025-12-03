@interface CHUISMutableWidgetVisibilitySettings
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CHUISMutableWidgetVisibilitySettings

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CHUISWidgetVisibilitySettings alloc];

  return [(CHUISWidgetVisibilitySettings *)v4 _initWithVisibilitySettings:self];
}

@end