@interface INCChronoIntentProvider
- (void)provideIntentWithOptions:(id)a3 completionHandler:(id)a4;
@end

@implementation INCChronoIntentProvider

- (void)provideIntentWithOptions:(id)a3 completionHandler:(id)a4
{
  v4.receiver = self;
  v4.super_class = INCChronoIntentProvider;
  [(INCWidgetIntentProvider *)&v4 provideIntentWithOptions:a3 completionHandler:a4];
}

@end