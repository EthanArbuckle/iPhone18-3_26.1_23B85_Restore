@interface CKTransientFileTransfer
- (CKTransientFileTransfer)initWithAttributionInfo:(id)a3;
@end

@implementation CKTransientFileTransfer

- (CKTransientFileTransfer)initWithAttributionInfo:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CKTransientFileTransfer;
  v5 = [(CKTransientFileTransfer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CKTransientFileTransfer *)v5 setAttributionInfo:v4];
  }

  return v6;
}

@end