@interface CHSMutableWidgetRenderScheme
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CHSMutableWidgetRenderScheme

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CHSWidgetRenderScheme allocWithZone:zone];

  return [(CHSWidgetRenderScheme *)v4 _initWithWidgetRenderScheme:?];
}

@end