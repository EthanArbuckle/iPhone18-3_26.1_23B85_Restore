@interface MRGameControllerMessage
- (BOOL)shouldLog;
- (MRGameControllerMessage)initWithGameControllerEvent:(id)event controllerID:(unint64_t)d;
- (unint64_t)controllerID;
@end

@implementation MRGameControllerMessage

- (MRGameControllerMessage)initWithGameControllerEvent:(id)event controllerID:(unint64_t)d
{
  eventCopy = event;
  v9.receiver = self;
  v9.super_class = MRGameControllerMessage;
  v7 = [(MRProtocolMessage *)&v9 init];
  if (v7)
  {
    [eventCopy setControllerID:d];
    [(MRProtocolMessage *)v7 setUnderlyingCodableMessage:eventCopy];
  }

  return v7;
}

- (unint64_t)controllerID
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  controllerID = [underlyingCodableMessage controllerID];

  return controllerID;
}

- (BOOL)shouldLog
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  hasMotion = [underlyingCodableMessage hasMotion];

  return hasMotion ^ 1;
}

@end