@interface _MRGetVoiceInputDevicesResponseMessageProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)deviceIDsAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRGetVoiceInputDevicesResponseMessageProtobuf

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = _MRGetVoiceInputDevicesResponseMessageProtobuf;
  [(_MRGetVoiceInputDevicesResponseMessageProtobuf *)&v3 dealloc];
}

- (unsigned)deviceIDsAtIndex:(unint64_t)a3
{
  p_deviceIDs = &self->_deviceIDs;
  count = self->_deviceIDs.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_deviceIDs->list[a3];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRGetVoiceInputDevicesResponseMessageProtobuf;
  v4 = [(_MRGetVoiceInputDevicesResponseMessageProtobuf *)&v8 description];
  v5 = [(_MRGetVoiceInputDevicesResponseMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = PBRepeatedUInt32NSArray();
  [v3 setObject:v4 forKey:@"deviceIDs"];

  if (*&self->_has)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_errorCode];
    [v3 setObject:v5 forKey:@"errorCode"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_deviceIDs.count)
  {
    v5 = 0;
    do
    {
      v6 = self->_deviceIDs.list[v5];
      PBDataWriterWriteUint32Field();
      v4 = v8;
      ++v5;
    }

    while (v5 < self->_deviceIDs.count);
  }

  if (*&self->_has)
  {
    errorCode = self->_errorCode;
    PBDataWriterWriteUint32Field();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v7 = a3;
  if ([(_MRGetVoiceInputDevicesResponseMessageProtobuf *)self deviceIDsCount])
  {
    [v7 clearDeviceIDs];
    v4 = [(_MRGetVoiceInputDevicesResponseMessageProtobuf *)self deviceIDsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        [v7 addDeviceIDs:{-[_MRGetVoiceInputDevicesResponseMessageProtobuf deviceIDsAtIndex:](self, "deviceIDsAtIndex:", i)}];
      }
    }
  }

  if (*&self->_has)
  {
    *(v7 + 8) = self->_errorCode;
    *(v7 + 36) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  PBRepeatedUInt32Copy();
  if (*&self->_has)
  {
    *(v4 + 32) = self->_errorCode;
    *(v4 + 36) |= 1u;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()] || !PBRepeatedUInt32IsEqual())
  {
    goto LABEL_7;
  }

  v5 = (*(v4 + 36) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) != 0 && self->_errorCode == *(v4 + 8))
    {
      v5 = 1;
      goto LABEL_8;
    }

LABEL_7:
    v5 = 0;
  }

LABEL_8:

  return v5;
}

- (unint64_t)hash
{
  v3 = PBRepeatedUInt32Hash();
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_errorCode;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (void)mergeFrom:(id)a3
{
  v7 = a3;
  v4 = [v7 deviceIDsCount];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      -[_MRGetVoiceInputDevicesResponseMessageProtobuf addDeviceIDs:](self, "addDeviceIDs:", [v7 deviceIDsAtIndex:i]);
    }
  }

  if (v7[9])
  {
    self->_errorCode = v7[8];
    *&self->_has |= 1u;
  }
}

@end