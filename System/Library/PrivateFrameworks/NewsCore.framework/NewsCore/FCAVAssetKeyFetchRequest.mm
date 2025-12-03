@interface FCAVAssetKeyFetchRequest
- (id)initWithContentKeySession:(void *)session keyURIs:(char)is forceRefresh:(void *)refresh completionHandler:;
@end

@implementation FCAVAssetKeyFetchRequest

- (id)initWithContentKeySession:(void *)session keyURIs:(char)is forceRefresh:(void *)refresh completionHandler:
{
  v10 = a2;
  sessionCopy = session;
  refreshCopy = refresh;
  if (self)
  {
    v21.receiver = self;
    v21.super_class = FCAVAssetKeyFetchRequest;
    v13 = objc_msgSendSuper2(&v21, sel_init);
    self = v13;
    if (v13)
    {
      objc_storeStrong(v13 + 2, a2);
      v14 = [sessionCopy mutableCopy];
      v15 = self[3];
      self[3] = v14;

      *(self + 8) = is;
      array = [MEMORY[0x1E695DF70] array];
      v17 = self[4];
      self[4] = array;

      v18 = [refreshCopy copy];
      v19 = self[5];
      self[5] = v18;
    }
  }

  return self;
}

@end