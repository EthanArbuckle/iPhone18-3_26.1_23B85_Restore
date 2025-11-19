@interface MRConfigureConnectionServiceMessage
- (MRConfigureConnectionServiceMessage)initWithServiceType:(id)a3 sourceOutputDeviceUID:(id)a4 sourceOutputDeviceName:(id)a5;
- (NSString)destinationOutputDeviceUID;
- (NSString)serviceType;
- (NSString)sourceOutputDeviceName;
- (NSString)sourceOutputDeviceUID;
@end

@implementation MRConfigureConnectionServiceMessage

- (MRConfigureConnectionServiceMessage)initWithServiceType:(id)a3 sourceOutputDeviceUID:(id)a4 sourceOutputDeviceName:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = MRConfigureConnectionServiceMessage;
  v11 = [(MRConfigureConnectionMessage *)&v17 initWithGroupID:&stru_1F1513E38];
  v12 = v11;
  if (v11)
  {
    v13 = [(MRProtocolMessage *)v11 underlyingCodableMessage];
    [v13 setServiceName:v8];

    v14 = [(MRProtocolMessage *)v12 underlyingCodableMessage];
    [v14 setSourceOutputDeviceUID:v9];

    v15 = [(MRProtocolMessage *)v12 underlyingCodableMessage];
    [v15 setSourceOutputDeviceName:v10];
  }

  return v12;
}

- (NSString)serviceType
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 serviceName];

  return v3;
}

- (NSString)sourceOutputDeviceUID
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 sourceOutputDeviceUID];

  return v3;
}

- (NSString)sourceOutputDeviceName
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 sourceOutputDeviceName];

  return v3;
}

- (NSString)destinationOutputDeviceUID
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 destinationOutputDeviceUID];

  return v3;
}

@end