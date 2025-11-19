@interface FCAVAssetKeyFetchRequest
- (id)initWithContentKeySession:(void *)a3 keyURIs:(char)a4 forceRefresh:(void *)a5 completionHandler:;
@end

@implementation FCAVAssetKeyFetchRequest

- (id)initWithContentKeySession:(void *)a3 keyURIs:(char)a4 forceRefresh:(void *)a5 completionHandler:
{
  v10 = a2;
  v11 = a3;
  v12 = a5;
  if (a1)
  {
    v21.receiver = a1;
    v21.super_class = FCAVAssetKeyFetchRequest;
    v13 = objc_msgSendSuper2(&v21, sel_init);
    a1 = v13;
    if (v13)
    {
      objc_storeStrong(v13 + 2, a2);
      v14 = [v11 mutableCopy];
      v15 = a1[3];
      a1[3] = v14;

      *(a1 + 8) = a4;
      v16 = [MEMORY[0x1E695DF70] array];
      v17 = a1[4];
      a1[4] = v16;

      v18 = [v12 copy];
      v19 = a1[5];
      a1[5] = v18;
    }
  }

  return a1;
}

@end