@interface MKFCKSharedUserPrivateRoot
+ (id)createWithHomeModelID:(id)d persistentStore:(id)store context:(id)context;
@end

@implementation MKFCKSharedUserPrivateRoot

+ (id)createWithHomeModelID:(id)d persistentStore:(id)store context:(id)context
{
  contextCopy = context;
  storeCopy = store;
  dCopy = d;
  v11 = [[self alloc] initWithContext:contextCopy];
  [contextCopy assignObject:v11 toPersistentStore:storeCopy];

  [v11 setModelID:dCopy];
  [v11 setHomeModelID:dCopy];

  v12 = [MEMORY[0x277CBEAA8] now];
  [v11 setWriterTimestamp:v12];

  v13 = MKFCKModelCurrentWriterVersionString();
  [v11 setWriterVersion:v13];

  return v11;
}

@end