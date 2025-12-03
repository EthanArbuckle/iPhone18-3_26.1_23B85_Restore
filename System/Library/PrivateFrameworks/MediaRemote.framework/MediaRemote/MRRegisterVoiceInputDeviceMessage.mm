@interface MRRegisterVoiceInputDeviceMessage
- (MRRegisterVoiceInputDeviceMessage)initWithDescriptor:(id)descriptor;
- (MRVirtualVoiceInputDeviceDescriptor)descriptor;
@end

@implementation MRRegisterVoiceInputDeviceMessage

- (MRRegisterVoiceInputDeviceMessage)initWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v11.receiver = self;
  v11.super_class = MRRegisterVoiceInputDeviceMessage;
  v5 = [(MRProtocolMessage *)&v11 init];
  if (v5)
  {
    v6 = [descriptorCopy copy];
    descriptor = v5->_descriptor;
    v5->_descriptor = v6;

    protobuf = [(MRVirtualVoiceInputDeviceDescriptor *)v5->_descriptor protobuf];
    v9 = objc_alloc_init(_MRRegisterVoiceInputDeviceMessageProtobuf);
    [(_MRRegisterVoiceInputDeviceMessageProtobuf *)v9 setDescriptor:protobuf];
    [(MRProtocolMessage *)v5 setUnderlyingCodableMessage:v9];
  }

  return v5;
}

- (MRVirtualVoiceInputDeviceDescriptor)descriptor
{
  descriptor = self->_descriptor;
  if (!descriptor)
  {
    v4 = [MRVirtualVoiceInputDeviceDescriptor alloc];
    underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
    descriptor = [underlyingCodableMessage descriptor];
    v7 = [(MRVirtualVoiceInputDeviceDescriptor *)v4 initWithProtobuf:descriptor];
    v8 = self->_descriptor;
    self->_descriptor = v7;

    descriptor = self->_descriptor;
  }

  return descriptor;
}

@end