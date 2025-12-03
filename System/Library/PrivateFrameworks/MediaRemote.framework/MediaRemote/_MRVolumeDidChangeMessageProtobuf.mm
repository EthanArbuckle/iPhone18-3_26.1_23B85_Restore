@interface _MRVolumeDidChangeMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRVolumeDidChangeMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRVolumeDidChangeMessageProtobuf;
  v4 = [(_MRVolumeDidChangeMessageProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRVolumeDidChangeMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    *&v4 = self->_volume;
    v5 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
    [dictionary setObject:v5 forKey:@"volume"];
  }

  endpointUID = self->_endpointUID;
  if (endpointUID)
  {
    [dictionary setObject:endpointUID forKey:@"endpointUID"];
  }

  outputDeviceUID = self->_outputDeviceUID;
  if (outputDeviceUID)
  {
    [dictionary setObject:outputDeviceUID forKey:@"outputDeviceUID"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    volume = self->_volume;
    PBDataWriterWriteFloatField();
    toCopy = v6;
  }

  if (self->_endpointUID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_outputDeviceUID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[6] = LODWORD(self->_volume);
    *(toCopy + 28) |= 1u;
  }

  v5 = toCopy;
  if (self->_endpointUID)
  {
    [toCopy setEndpointUID:?];
    toCopy = v5;
  }

  if (self->_outputDeviceUID)
  {
    [v5 setOutputDeviceUID:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_volume;
    *(v5 + 28) |= 1u;
  }

  v7 = [(NSString *)self->_endpointUID copyWithZone:zone];
  v8 = v6[1];
  v6[1] = v7;

  v9 = [(NSString *)self->_outputDeviceUID copyWithZone:zone];
  v10 = v6[2];
  v6[2] = v9;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(equalCopy + 28);
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_volume != *(equalCopy + 6))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 28))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  endpointUID = self->_endpointUID;
  if (endpointUID | *(equalCopy + 1) && ![(NSString *)endpointUID isEqual:?])
  {
    goto LABEL_11;
  }

  outputDeviceUID = self->_outputDeviceUID;
  if (outputDeviceUID | *(equalCopy + 2))
  {
    v8 = [(NSString *)outputDeviceUID isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_12:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    volume = self->_volume;
    if (volume < 0.0)
    {
      volume = -volume;
    }

    *v2.i32 = floorf(volume + 0.5);
    v7 = (volume - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v8.i64[0] = 0x8000000080000000;
    v8.i64[1] = 0x8000000080000000;
    v5 = 2654435761u * *vbslq_s8(v8, v3, v2).i32;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabsf(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = [(NSString *)self->_endpointUID hash]^ v5;
  return v9 ^ [(NSString *)self->_outputDeviceUID hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[7])
  {
    self->_volume = fromCopy[6];
    *&self->_has |= 1u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(_MRVolumeDidChangeMessageProtobuf *)self setEndpointUID:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(_MRVolumeDidChangeMessageProtobuf *)self setOutputDeviceUID:?];
    fromCopy = v5;
  }
}

@end