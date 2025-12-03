@interface EBOfficeArtWriterClient
- (void)writeClientAnchorFromDrawable:(id)drawable toObject:(id)object state:(id)state;
- (void)writeClientDataFromDrawable:(id)drawable toObject:(id)object state:(id)state;
- (void)writeClientTextFromShape:(id)shape toObject:(id)object state:(id)state;
@end

@implementation EBOfficeArtWriterClient

- (void)writeClientAnchorFromDrawable:(id)drawable toObject:(id)object state:(id)state
{
  drawable;
  objectCopy = object;
  stateCopy = state;
  operator new();
}

- (void)writeClientDataFromDrawable:(id)drawable toObject:(id)object state:(id)state
{
  drawable;
  objectCopy = object;
  stateCopy = state;
  operator new();
}

- (void)writeClientTextFromShape:(id)shape toObject:(id)object state:(id)state
{
  shapeCopy = shape;
  objectCopy = object;
  stateCopy = state;
  clientData = [shapeCopy clientData];
  if ([clientData conformsToProtocol:&unk_286FA9950] && objc_msgSend(clientData, "hasText"))
  {
    operator new();
  }
}

@end