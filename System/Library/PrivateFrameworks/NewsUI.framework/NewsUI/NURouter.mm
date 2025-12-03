@interface NURouter
- (NURouter)initWithURLHandler:(id)handler;
- (void)routeToNewsAppForYouFeed;
@end

@implementation NURouter

- (NURouter)initWithURLHandler:(id)handler
{
  handlerCopy = handler;
  v9.receiver = self;
  v9.super_class = NURouter;
  v6 = [(NURouter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_urlHandler, handler);
  }

  return v7;
}

- (void)routeToNewsAppForYouFeed
{
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"applenews:///foryou"];
  urlHandler = [(NURouter *)self urlHandler];
  [urlHandler openURL:v4 options:0 completion:0];
}

@end