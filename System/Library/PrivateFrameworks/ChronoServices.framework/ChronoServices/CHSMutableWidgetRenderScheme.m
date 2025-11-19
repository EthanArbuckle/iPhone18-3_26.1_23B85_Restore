@interface CHSMutableWidgetRenderScheme
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CHSMutableWidgetRenderScheme

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CHSWidgetRenderScheme allocWithZone:a3];

  return [(CHSWidgetRenderScheme *)v4 _initWithWidgetRenderScheme:?];
}

@end