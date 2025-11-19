@interface EBOfficeArtWriterClient
- (void)writeClientAnchorFromDrawable:(id)a3 toObject:(id)a4 state:(id)a5;
- (void)writeClientDataFromDrawable:(id)a3 toObject:(id)a4 state:(id)a5;
- (void)writeClientTextFromShape:(id)a3 toObject:(id)a4 state:(id)a5;
@end

@implementation EBOfficeArtWriterClient

- (void)writeClientAnchorFromDrawable:(id)a3 toObject:(id)a4 state:(id)a5
{
  a3;
  v7 = a4;
  v8 = a5;
  operator new();
}

- (void)writeClientDataFromDrawable:(id)a3 toObject:(id)a4 state:(id)a5
{
  a3;
  v7 = a4;
  v8 = a5;
  operator new();
}

- (void)writeClientTextFromShape:(id)a3 toObject:(id)a4 state:(id)a5
{
  v10 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v10 clientData];
  if ([v9 conformsToProtocol:&unk_286FA9950] && objc_msgSend(v9, "hasText"))
  {
    operator new();
  }
}

@end