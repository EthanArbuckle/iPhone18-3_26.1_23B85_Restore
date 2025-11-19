@interface MKFCKSharedUserPrivateRoot
+ (id)createWithHomeModelID:(id)a3 persistentStore:(id)a4 context:(id)a5;
@end

@implementation MKFCKSharedUserPrivateRoot

+ (id)createWithHomeModelID:(id)a3 persistentStore:(id)a4 context:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithContext:v8];
  [v8 assignObject:v11 toPersistentStore:v9];

  [v11 setModelID:v10];
  [v11 setHomeModelID:v10];

  v12 = [MEMORY[0x277CBEAA8] now];
  [v11 setWriterTimestamp:v12];

  v13 = MKFCKModelCurrentWriterVersionString();
  [v11 setWriterVersion:v13];

  return v11;
}

@end