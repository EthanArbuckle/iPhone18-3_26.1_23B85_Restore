@interface NSXPCInterface(ISIconCacheServiceProtocol)
+ (id)_IS_iconCacheServiceInterface;
@end

@implementation NSXPCInterface(ISIconCacheServiceProtocol)

+ (id)_IS_iconCacheServiceInterface
{
  if (_IS_iconCacheServiceInterface_onceToken != -1)
  {
    +[NSXPCInterface(ISIconCacheServiceProtocol) _IS_iconCacheServiceInterface];
  }

  v1 = _IS_iconCacheServiceInterface_interface;

  return v1;
}

@end