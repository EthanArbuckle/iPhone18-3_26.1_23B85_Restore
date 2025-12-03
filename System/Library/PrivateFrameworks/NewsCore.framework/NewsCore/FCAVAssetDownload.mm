@interface FCAVAssetDownload
- (NSString)longOperationDescription;
- (NSString)shortOperationDescription;
- (id)initWithAssetID:(void *)d underlyingOperation:;
@end

@implementation FCAVAssetDownload

- (id)initWithAssetID:(void *)d underlyingOperation:
{
  v5 = a2;
  dCopy = d;
  if (self)
  {
    v12.receiver = self;
    v12.super_class = FCAVAssetDownload;
    self = objc_msgSendSuper2(&v12, sel_init);
    if (self)
    {
      v7 = [v5 copy];
      v8 = self[1];
      self[1] = v7;

      objc_storeStrong(self + 2, d);
      array = [MEMORY[0x1E695DF70] array];
      v10 = self[3];
      self[3] = array;
    }
  }

  return self;
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