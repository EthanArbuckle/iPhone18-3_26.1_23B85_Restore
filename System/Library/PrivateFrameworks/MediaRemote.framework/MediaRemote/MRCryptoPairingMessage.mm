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
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  pairingData = [underlyingCodableMessage pairingData];

  return pairingData;
}

- (int)status
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  status = [underlyingCodableMessage status];

  return status;
}

- (BOOL)isRetrying
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  isRetrying = [underlyingCodableMessage isRetrying];

  return isRetrying;
}

- (BOOL)isUsingSystemPairing
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  isUsingSystemPairing = [underlyingCodableMessage isUsingSystemPairing];

  return isUsingSystemPairing;
}

- (unint64_t)state
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  state = [underlyingCodableMessage state];

  return state;
}

@end