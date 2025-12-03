@interface _MRGetVoiceInputDevicesResponseMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)deviceIDsAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRGetVoiceInputDevicesResponseMessageProtobuf

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = _MRGetVoiceInputDevicesResponseMessageProtobuf;
  [(_MRGetVoiceInputDevicesResponseMessageProtobuf *)&v3 dealloc];
}

- (unsigned)deviceIDsAtIndex:(unint64_t)index
{
  p_deviceIDs = &self->_deviceIDs;
  count = self->_deviceIDs.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_deviceIDs->list[index];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRGetVoiceInputDevicesResponseMessageProtobuf;
  v4 = [(_MRGetVoiceInputDevicesResponseMessageProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRGetVoiceInputDevicesResponseMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = PBRepeatedUInt32NSArray();
  [dictionary setObject:v4 forKey:@"deviceIDs"];

  if (*&self->_has)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_errorCode];
    [dictionary setObject:v5 forKey:@"errorCode"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_deviceIDs.count)
  {
    v5 = 0;
    do
    {
      v6 = self->_deviceIDs.list[v5];
      PBDataWriterWriteUint32Field();
      toCopy = v8;
      ++v5;
    }

    while (v5 < self->_deviceIDs.count);
  }

  if (*&self->_has)
  {
    errorCode = self->_errorCode;
    PBDataWriterWriteUint32Field();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(_MRGetVoiceInputDevicesResponseMessageProtobuf *)self deviceIDsCount])
  {
    [toCopy clearDeviceIDs];
    deviceIDsCount = [(_MRGetVoiceInputDevicesResponseMessageProtobuf *)self deviceIDsCount];
    if (deviceIDsCount)
    {
      v5 = deviceIDsCount;
      for (i = 0; i != v5; ++i)
      {
        [toCopy addDeviceIDs:{-[_MRGetVoiceInputDevicesResponseMessageProtobuf deviceIDsAtIndex:](self, "deviceIDsAtIndex:", i)}];
      }
    }
  }

  if (*&self->_has)
  {
    *(toCopy + 8) = self->_errorCode;
    *(toCopy + 36) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  PBRepeatedUInt32Copy();
  if (*&self->_has)
  {
    *(v4 + 32) = self->_errorCode;
    *(v4 + 36) |= 1u;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()] || !PBRepeatedUInt32IsEqual())
  {
    goto LABEL_7;
  }

  v5 = (*(equalCopy + 36) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) != 0 && self->_errorCode == *(equalCopy + 8))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  deviceIDsCount = [fromCopy deviceIDsCount];
  if (deviceIDsCount)
  {
    v5 = deviceIDsCount;
    for (i = 0; i != v5; ++i)
    {
      -[_MRGetVoiceInputDevicesResponseMessageProtobuf addDeviceIDs:](self, "addDeviceIDs:", [fromCopy deviceIDsAtIndex:i]);
    }
  }

  if (fromCopy[9])
  {
    self->_errorCode = fromCopy[8];
    *&self->_has |= 1u;
  }
}

@end