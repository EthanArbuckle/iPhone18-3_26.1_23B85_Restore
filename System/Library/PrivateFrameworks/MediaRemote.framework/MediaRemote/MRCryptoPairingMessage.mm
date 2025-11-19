@interface MRCryptoPairingMessage
- (BOOL)isRetrying;
- (BOOL)isUsingSystemPairing;
- (NSData)pairingData;
- (int)status;
- (unint64_t)state;
@end

@implementation MRCryptoPairingMessage

- (NSData)pairingData
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 pairingData];

  return v3;
}

- (int)status
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 status];

  return v3;
}

- (BOOL)isRetrying
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 isRetrying];

  return v3;
}

- (BOOL)isUsingSystemPairing
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 isUsingSystemPairing];

  return v3;
}

- (unint64_t)state
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 state];

  return v3;
}

@end