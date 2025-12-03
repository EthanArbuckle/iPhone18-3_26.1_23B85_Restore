@interface CacheDeleteListener
+ (id)daemonListenerWithExportedObject:(id)object;
+ (id)daemonPrivateListenerWithExportedObject:(id)object;
+ (id)daemonPublicListenerWithExportedObject:(id)object;
@end

@implementation CacheDeleteListener

+ (id)daemonListenerWithExportedObject:(id)object
{
  objectCopy = object;
  v4 = [[CacheDeleteListener alloc] initWithName:@"com.apple.cache_delete" listener:0 protocol:&OBJC_PROTOCOL___CacheDeleteClientProtocol exportedObj:objectCopy isExtension:0];

  return v4;
}

+ (id)daemonPublicListenerWithExportedObject:(id)object
{
  objectCopy = object;
  v4 = [[CacheDeleteListener alloc] initWithName:@"com.apple.cache_delete.public" listener:0 protocol:&OBJC_PROTOCOL___CacheDeletePublicClientProtocol exportedObj:objectCopy isExtension:0];

  return v4;
}

+ (id)daemonPrivateListenerWithExportedObject:(id)object
{
  objectCopy = object;
  v4 = [[CacheDeleteListener alloc] initWithName:@"com.apple.cache_delete.private" listener:0 protocol:&OBJC_PROTOCOL___CacheDeletePrivateClientProtocol exportedObj:objectCopy isExtension:0];

  return v4;
}

@end