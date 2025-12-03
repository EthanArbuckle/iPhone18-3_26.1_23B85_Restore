@interface _MRRegisterHIDDeviceMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRRegisterHIDDeviceMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRRegisterHIDDeviceMessageProtobuf;
  v4 = [(_MRRegisterHIDDeviceMessageProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRRegisterHIDDeviceMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  deviceDescriptor = self->_deviceDescriptor;
  if (deviceDescriptor)
  {
    dictionaryRepresentation = [(_MRVirtualTouchDeviceDescriptorProtobuf *)deviceDescriptor dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"deviceDescriptor"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if (self->_deviceDescriptor)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  deviceDescriptor = self->_deviceDescriptor;
  if (deviceDescriptor)
  {
    [to setDeviceDescriptor:deviceDescriptor];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(_MRVirtualTouchDeviceDescriptorProtobuf *)self->_deviceDescriptor copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    deviceDescriptor = self->_deviceDescriptor;
    if (deviceDescriptor | equalCopy[1])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  deviceDescriptor = self->_deviceDescriptor;
  v6 = fromCopy[1];
  if (deviceDescriptor)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(_MRVirtualTouchDeviceDescriptorProtobuf *)deviceDescriptor mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(_MRRegisterHIDDeviceMessageProtobuf *)self setDeviceDescriptor:?];
  }

  fromCopy = v7;
LABEL_7:
}

@end