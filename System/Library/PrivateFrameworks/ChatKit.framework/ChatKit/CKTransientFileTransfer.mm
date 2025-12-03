@interface CKTransientFileTransfer
- (CKTransientFileTransfer)initWithAttributionInfo:(id)info;
@end

@implementation CKTransientFileTransfer

- (CKTransientFileTransfer)initWithAttributionInfo:(id)info
{
  infoCopy = info;
  v8.receiver = self;
  v8.super_class = CKTransientFileTransfer;
  v5 = [(CKTransientFileTransfer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CKTransientFileTransfer *)v5 setAttributionInfo:infoCopy];
  }

  return v6;
}

@end