@interface MRConfigureConnectionServiceMessage
- (MRConfigureConnectionServiceMessage)initWithServiceType:(id)type sourceOutputDeviceUID:(id)d sourceOutputDeviceName:(id)name;
- (NSString)destinationOutputDeviceUID;
- (NSString)serviceType;
- (NSString)sourceOutputDeviceName;
- (NSString)sourceOutputDeviceUID;
@end

@implementation MRConfigureConnectionServiceMessage

- (MRConfigureConnectionServiceMessage)initWithServiceType:(id)type sourceOutputDeviceUID:(id)d sourceOutputDeviceName:(id)name
{
  typeCopy = type;
  dCopy = d;
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = MRConfigureConnectionServiceMessage;
  v11 = [(MRConfigureConnectionMessage *)&v17 initWithGroupID:&stru_1F1513E38];
  v12 = v11;
  if (v11)
  {
    underlyingCodableMessage = [(MRProtocolMessage *)v11 underlyingCodableMessage];
    [underlyingCodableMessage setServiceName:typeCopy];

    underlyingCodableMessage2 = [(MRProtocolMessage *)v12 underlyingCodableMessage];
    [underlyingCodableMessage2 setSourceOutputDeviceUID:dCopy];

    underlyingCodableMessage3 = [(MRProtocolMessage *)v12 underlyingCodableMessage];
    [underlyingCodableMessage3 setSourceOutputDeviceName:nameCopy];
  }

  return v12;
}

- (NSString)serviceType
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  serviceName = [underlyingCodableMessage serviceName];

  return serviceName;
}

- (NSString)sourceOutputDeviceUID
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  sourceOutputDeviceUID = [underlyingCodableMessage sourceOutputDeviceUID];

  return sourceOutputDeviceUID;
}

- (NSString)sourceOutputDeviceName
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  sourceOutputDeviceName = [underlyingCodableMessage sourceOutputDeviceName];

  return sourceOutputDeviceName;
}

- (NSString)destinationOutputDeviceUID
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  destinationOutputDeviceUID = [underlyingCodableMessage destinationOutputDeviceUID];

  return destinationOutputDeviceUID;
}

@end