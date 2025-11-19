@interface MRSetHiliteModeMessage
- (BOOL)hiliteMode;
@end

@implementation MRSetHiliteModeMessage

- (BOOL)hiliteMode
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 hiliteMode];

  return v3;
}

@end