@interface ArtworkLoaderURLSession
- (_TtC12GameStoreKit23ArtworkLoaderURLSession)initWithConfiguration:(id)a3 delegate:(id)a4 delegateQueue:(id)a5;
@end

@implementation ArtworkLoaderURLSession

- (_TtC12GameStoreKit23ArtworkLoaderURLSession)initWithConfiguration:(id)a3 delegate:(id)a4 delegateQueue:(id)a5
{
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  return [(AMSURLSession *)&v9 initWithConfiguration:a3 delegate:a4 delegateQueue:a5];
}

@end