@interface NURouter
- (NURouter)initWithURLHandler:(id)a3;
- (void)routeToNewsAppForYouFeed;
@end

@implementation NURouter

- (NURouter)initWithURLHandler:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NURouter;
  v6 = [(NURouter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_urlHandler, a3);
  }

  return v7;
}

- (void)routeToNewsAppForYouFeed
{
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"applenews:///foryou"];
  v3 = [(NURouter *)self urlHandler];
  [v3 openURL:v4 options:0 completion:0];
}

@end