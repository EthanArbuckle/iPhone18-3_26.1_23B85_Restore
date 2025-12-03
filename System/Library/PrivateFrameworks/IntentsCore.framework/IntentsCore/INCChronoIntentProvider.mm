@interface INCChronoIntentProvider
- (void)provideIntentWithOptions:(id)options completionHandler:(id)handler;
@end

@implementation INCChronoIntentProvider

- (void)provideIntentWithOptions:(id)options completionHandler:(id)handler
{
  v4.receiver = self;
  v4.super_class = INCChronoIntentProvider;
  [(INCWidgetIntentProvider *)&v4 provideIntentWithOptions:options completionHandler:handler];
}

@end