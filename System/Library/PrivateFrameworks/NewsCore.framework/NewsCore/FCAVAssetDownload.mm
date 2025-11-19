@interface FCAVAssetDownload
- (NSString)longOperationDescription;
- (NSString)shortOperationDescription;
- (id)initWithAssetID:(void *)a3 underlyingOperation:;
@end

@implementation FCAVAssetDownload

- (id)initWithAssetID:(void *)a3 underlyingOperation:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = FCAVAssetDownload;
    a1 = objc_msgSendSuper2(&v12, sel_init);
    if (a1)
    {
      v7 = [v5 copy];
      v8 = a1[1];
      a1[1] = v7;

      objc_storeStrong(a1 + 2, a3);
      v9 = [MEMORY[0x1E695DF70] array];
      v10 = a1[3];
      a1[3] = v9;
    }
  }

  return a1;
}

- (NSString)shortOperationDescription
{
  if (self)
  {
    self = self->_underlyingOperation;
  }

  return [(FCAVAssetDownload *)self shortOperationDescription];
}

- (NSString)longOperationDescription
{
  if (self)
  {
    self = self->_underlyingOperation;
  }

  return [(FCAVAssetDownload *)self longOperationDescription];
}

@end