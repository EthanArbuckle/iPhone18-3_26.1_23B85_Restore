@interface _MRRegisterHIDDeviceMessageProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRRegisterHIDDeviceMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRRegisterHIDDeviceMessageProtobuf;
  v4 = [(_MRRegisterHIDDeviceMessageProtobuf *)&v8 description];
  v5 = [(_MRRegisterHIDDeviceMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  deviceDescriptor = self->_deviceDescriptor;
  if (deviceDescriptor)
  {
    v5 = [(_MRVirtualTouchDeviceDescriptorProtobuf *)deviceDescriptor dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"deviceDescriptor"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if (self->_deviceDescriptor)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)a3
{
  deviceDescriptor = self->_deviceDescriptor;
  if (deviceDescriptor)
  {
    [a3 setDeviceDescriptor:deviceDescriptor];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(_MRVirtualTouchDeviceDescriptorProtobuf *)self->_deviceDescriptor copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    deviceDescriptor = self->_deviceDescriptor;
    if (deviceDescriptor | v4[1])
    {
      v6 = [(_MRVirtualTouchDeviceDescriptorProtobuf *)deviceDescriptor isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  deviceDescriptor = self->_deviceDescriptor;
  v6 = v4[1];
  if (deviceDescriptor)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(_MRVirtualTouchDeviceDescriptorProtobuf *)deviceDescriptor mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(_MRRegisterHIDDeviceMessageProtobuf *)self setDeviceDescriptor:?];
  }

  v4 = v7;
LABEL_7:
}

@end