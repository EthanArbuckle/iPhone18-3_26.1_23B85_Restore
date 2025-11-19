@interface MRGameControllerMessage
- (BOOL)shouldLog;
- (MRGameControllerMessage)initWithGameControllerEvent:(id)a3 controllerID:(unint64_t)a4;
- (unint64_t)controllerID;
@end

@implementation MRGameControllerMessage

- (MRGameControllerMessage)initWithGameControllerEvent:(id)a3 controllerID:(unint64_t)a4
{
  v6 = a3;
  v9.receiver = self;
  v9.super_class = MRGameControllerMessage;
  v7 = [(MRProtocolMessage *)&v9 init];
  if (v7)
  {
    [v6 setControllerID:a4];
    [(MRProtocolMessage *)v7 setUnderlyingCodableMessage:v6];
  }

  return v7;
}

- (unint64_t)controllerID
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 controllerID];

  return v3;
}

- (BOOL)shouldLog
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 hasMotion];

  return v3 ^ 1;
}

@end