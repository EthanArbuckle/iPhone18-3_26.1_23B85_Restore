@interface MRRegisterHIDDeviceMessage
- (MRRegisterHIDDeviceMessage)initWithDeviceDescriptor:(id)descriptor;
- (MRVirtualTouchDeviceDescriptor)deviceDescriptor;
@end

@implementation MRRegisterHIDDeviceMessage

- (MRRegisterHIDDeviceMessage)initWithDeviceDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v11.receiver = self;
  v11.super_class = MRRegisterHIDDeviceMessage;
  v5 = [(MRProtocolMessage *)&v11 init];
  if (v5)
  {
    v6 = objc_alloc_init(_MRRegisterHIDDeviceMessageProtobuf);
    v7 = objc_alloc_init(_MRVirtualTouchDeviceDescriptorProtobuf);
    -[_MRVirtualTouchDeviceDescriptorProtobuf setAbsolute:](v7, "setAbsolute:", [descriptorCopy isAbsolute]);
    -[_MRVirtualTouchDeviceDescriptorProtobuf setIntegratedDisplay:](v7, "setIntegratedDisplay:", [descriptorCopy isIntegratedDisplay]);
    [descriptorCopy screenSize];
    [(_MRVirtualTouchDeviceDescriptorProtobuf *)v7 setScreenSizeWidth:?];
    [descriptorCopy screenSize];
    LODWORD(v9) = v8;
    [(_MRVirtualTouchDeviceDescriptorProtobuf *)v7 setScreenSizeHeight:v9];
    [(_MRRegisterHIDDeviceMessageProtobuf *)v6 setDeviceDescriptor:v7];
    [(MRProtocolMessage *)v5 setUnderlyingCodableMessage:v6];
  }

  return v5;
}

- (MRVirtualTouchDeviceDescriptor)deviceDescriptor
{
  deviceDescriptor = self->_deviceDescriptor;
  if (!deviceDescriptor)
  {
    underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
    v5 = objc_alloc_init(MRMutableVirtualTouchDeviceDescriptor);
    deviceDescriptor = [underlyingCodableMessage deviceDescriptor];
    -[MRMutableVirtualTouchDeviceDescriptor setAbsolute:](v5, "setAbsolute:", [deviceDescriptor absolute]);

    deviceDescriptor2 = [underlyingCodableMessage deviceDescriptor];
    -[MRMutableVirtualTouchDeviceDescriptor setIntegratedDisplay:](v5, "setIntegratedDisplay:", [deviceDescriptor2 integratedDisplay]);

    deviceDescriptor3 = [underlyingCodableMessage deviceDescriptor];
    [deviceDescriptor3 screenSizeWidth];
    v10 = v9;
    deviceDescriptor4 = [underlyingCodableMessage deviceDescriptor];
    [deviceDescriptor4 screenSizeHeight];
    v13 = v12;

    LODWORD(v14) = v10;
    LODWORD(v15) = v13;
    [(MRMutableVirtualTouchDeviceDescriptor *)v5 setScreenSize:v14, v15];
    v16 = self->_deviceDescriptor;
    self->_deviceDescriptor = &v5->super;

    deviceDescriptor = self->_deviceDescriptor;
  }

  return deviceDescriptor;
}

@end