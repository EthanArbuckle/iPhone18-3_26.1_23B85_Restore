@interface _MRRegisterVoiceInputDeviceMessageProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRRegisterVoiceInputDeviceMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRRegisterVoiceInputDeviceMessageProtobuf;
  v4 = [(_MRRegisterVoiceInputDeviceMessageProtobuf *)&v8 description];
  v5 = [(_MRRegisterVoiceInputDeviceMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  descriptor = self->_descriptor;
  if (descriptor)
  {
    v5 = [(_MRVoiceInputDeviceDescriptorProtobuf *)descriptor dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"descriptor"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if (self->_descriptor)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)a3
{
  descriptor = self->_descriptor;
  if (descriptor)
  {
    [a3 setDescriptor:descriptor];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(_MRVoiceInputDeviceDescriptorProtobuf *)self->_descriptor copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    descriptor = self->_descriptor;
    if (descriptor | v4[1])
    {
      v6 = [(_MRVoiceInputDeviceDescriptorProtobuf *)descriptor isEqual:?];
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
  descriptor = self->_descriptor;
  v6 = v4[1];
  if (descriptor)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(_MRVoiceInputDeviceDescriptorProtobuf *)descriptor mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(_MRRegisterVoiceInputDeviceMessageProtobuf *)self setDescriptor:?];
  }

  v4 = v7;
LABEL_7:
}

@end