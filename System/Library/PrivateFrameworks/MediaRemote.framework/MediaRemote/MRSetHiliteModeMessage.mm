@interface MRSetHiliteModeMessage
- (BOOL)hiliteMode;
@end

@implementation MRSetHiliteModeMessage

- (BOOL)hiliteMode
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  hiliteMode = [underlyingCodableMessage hiliteMode];

  return hiliteMode;
}

@end