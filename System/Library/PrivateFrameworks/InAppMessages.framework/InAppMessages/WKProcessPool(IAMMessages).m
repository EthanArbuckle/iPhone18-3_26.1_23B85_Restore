@interface WKProcessPool(IAMMessages)
+ (id)webContentProcessPool;
@end

@implementation WKProcessPool(IAMMessages)

+ (id)webContentProcessPool
{
  if (webContentProcessPool_onceToken != -1)
  {
    +[WKProcessPool(IAMMessages) webContentProcessPool];
  }

  v1 = webContentProcessPool_contentProcessPool;

  return v1;
}

@end