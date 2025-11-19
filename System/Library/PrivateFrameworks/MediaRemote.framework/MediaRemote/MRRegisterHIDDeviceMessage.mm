@interface MRRegisterHIDDeviceMessage
- (MRRegisterHIDDeviceMessage)initWithDeviceDescriptor:(id)a3;
- (MRVirtualTouchDeviceDescriptor)deviceDescriptor;
@end

@implementation MRRegisterHIDDeviceMessage

- (MRRegisterHIDDeviceMessage)initWithDeviceDescriptor:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MRRegisterHIDDeviceMessage;
  v5 = [(MRProtocolMessage *)&v11 init];
  if (v5)
  {
    v6 = objc_alloc_init(_MRRegisterHIDDeviceMessageProtobuf);
    v7 = objc_alloc_init(_MRVirtualTouchDeviceDescriptorProtobuf);
    -[_MRVirtualTouchDeviceDescriptorProtobuf setAbsolute:](v7, "setAbsolute:", [v4 isAbsolute]);
    -[_MRVirtualTouchDeviceDescriptorProtobuf setIntegratedDisplay:](v7, "setIntegratedDisplay:", [v4 isIntegratedDisplay]);
    [v4 screenSize];
    [(_MRVirtualTouchDeviceDescriptorProtobuf *)v7 setScreenSizeWidth:?];
    [v4 screenSize];
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
    v4 = [(MRProtocolMessage *)self underlyingCodableMessage];
    v5 = objc_alloc_init(MRMutableVirtualTouchDeviceDescriptor);
    v6 = [v4 deviceDescriptor];
    -[MRMutableVirtualTouchDeviceDescriptor setAbsolute:](v5, "setAbsolute:", [v6 absolute]);

    v7 = [v4 deviceDescriptor];
    -[MRMutableVirtualTouchDeviceDescriptor setIntegratedDisplay:](v5, "setIntegratedDisplay:", [v7 integratedDisplay]);

    v8 = [v4 deviceDescriptor];
    [v8 screenSizeWidth];
    v10 = v9;
    v11 = [v4 deviceDescriptor];
    [v11 screenSizeHeight];
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