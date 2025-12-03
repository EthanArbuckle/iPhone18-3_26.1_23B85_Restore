@interface MRDiscoveryUpdateOutputDevicesMessage
- (MRDiscoveryUpdateOutputDevicesMessage)initWithOutputDevices:(id)devices configuration:(id)configuration;
- (MRDiscoveryUpdateOutputDevicesMessage)initWithUnderlyingCodableMessage:(id)message error:(id)error;
@end

@implementation MRDiscoveryUpdateOutputDevicesMessage

- (MRDiscoveryUpdateOutputDevicesMessage)initWithUnderlyingCodableMessage:(id)message error:(id)error
{
  messageCopy = message;
  v16.receiver = self;
  v16.super_class = MRDiscoveryUpdateOutputDevicesMessage;
  v7 = [(MRProtocolMessage *)&v16 initWithUnderlyingCodableMessage:messageCopy error:error];
  if (v7)
  {
    v8 = [MRAVRoutingDiscoverySessionConfiguration alloc];
    configuration = [messageCopy configuration];
    v10 = [(MRAVRoutingDiscoverySessionConfiguration *)v8 initWithProtobuf:configuration];
    configuration = v7->_configuration;
    v7->_configuration = v10;

    outputDevices = [messageCopy outputDevices];
    v13 = [outputDevices mr_map:&__block_literal_global_44];
    outputDevices = v7->_outputDevices;
    v7->_outputDevices = v13;
  }

  return v7;
}

MRAVDistantOutputDevice *__80__MRDiscoveryUpdateOutputDevicesMessage_initWithUnderlyingCodableMessage_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRAVDistantOutputDevice alloc] initWithDescriptor:v2];

  return v3;
}

- (MRDiscoveryUpdateOutputDevicesMessage)initWithOutputDevices:(id)devices configuration:(id)configuration
{
  devicesCopy = devices;
  configurationCopy = configuration;
  v18.receiver = self;
  v18.super_class = MRDiscoveryUpdateOutputDevicesMessage;
  v8 = [(MRProtocolMessage *)&v18 init];
  if (v8)
  {
    v9 = [devicesCopy copy];
    outputDevices = v8->_outputDevices;
    v8->_outputDevices = v9;

    v11 = [configurationCopy copy];
    configuration = v8->_configuration;
    v8->_configuration = v11;

    v13 = objc_alloc_init(_MRDiscoveryUpdateOutputDevicesProtobufMessage);
    v14 = [devicesCopy mr_map:&__block_literal_global_49_0];
    v15 = [v14 mutableCopy];
    [(_MRDiscoveryUpdateOutputDevicesProtobufMessage *)v13 setOutputDevices:v15];

    protobuf = [configurationCopy protobuf];
    [(_MRDiscoveryUpdateOutputDevicesProtobufMessage *)v13 setConfiguration:protobuf];

    [(MRProtocolMessage *)v8 setUnderlyingCodableMessage:v13];
  }

  return v8;
}

@end