@interface _MRAdjustVolumeMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAdjustment:(id)adjustment;
- (int)adjustment;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRAdjustVolumeMessageProtobuf

- (int)adjustment
{
  if (*&self->_has)
  {
    return self->_adjustment;
  }

  else
  {
    return 1;
  }
}

- (int)StringAsAdjustment:(id)adjustment
{
  adjustmentCopy = adjustment;
  if ([adjustmentCopy isEqualToString:@"IncrementSmall"])
  {
    v4 = 1;
  }

  else if ([adjustmentCopy isEqualToString:@"IncrementMedium"])
  {
    v4 = 2;
  }

  else if ([adjustmentCopy isEqualToString:@"IncrementLarge"])
  {
    v4 = 3;
  }

  else if ([adjustmentCopy isEqualToString:@"DecrementSmall"])
  {
    v4 = 4;
  }

  else if ([adjustmentCopy isEqualToString:@"DecrementMedium"])
  {
    v4 = 5;
  }

  else if ([adjustmentCopy isEqualToString:@"DecrementLarge"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRAdjustVolumeMessageProtobuf;
  v4 = [(_MRAdjustVolumeMessageProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRAdjustVolumeMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = self->_adjustment - 1;
    if (v4 >= 6)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_adjustment];
    }

    else
    {
      v5 = off_1E769F198[v4];
    }

    [dictionary setObject:v5 forKey:@"adjustment"];
  }

  outputDeviceUID = self->_outputDeviceUID;
  if (outputDeviceUID)
  {
    [dictionary setObject:outputDeviceUID forKey:@"outputDeviceUID"];
  }

  details = self->_details;
  if (details)
  {
    dictionaryRepresentation = [(_MRRequestDetailsProtobuf *)details dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"details"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    adjustment = self->_adjustment;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_outputDeviceUID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_details)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[2] = self->_adjustment;
    *(toCopy + 32) |= 1u;
  }

  v5 = toCopy;
  if (self->_outputDeviceUID)
  {
    [toCopy setOutputDeviceUID:?];
    toCopy = v5;
  }

  if (self->_details)
  {
    [v5 setDetails:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_adjustment;
    *(v5 + 32) |= 1u;
  }

  v7 = [(NSString *)self->_outputDeviceUID copyWithZone:zone];
  v8 = v6[3];
  v6[3] = v7;

  v9 = [(_MRRequestDetailsProtobuf *)self->_details copyWithZone:zone];
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

  v5 = *(equalCopy + 32);
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_adjustment != *(equalCopy + 2))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  outputDeviceUID = self->_outputDeviceUID;
  if (outputDeviceUID | *(equalCopy + 3) && ![(NSString *)outputDeviceUID isEqual:?])
  {
    goto LABEL_11;
  }

  details = self->_details;
  if (details | *(equalCopy + 2))
  {
    v8 = [(_MRRequestDetailsProtobuf *)details isEqual:?];
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
    v3 = 2654435761 * self->_adjustment;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_outputDeviceUID hash]^ v3;
  return v4 ^ [(_MRRequestDetailsProtobuf *)self->_details hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 32))
  {
    self->_adjustment = *(fromCopy + 2);
    *&self->_has |= 1u;
  }

  v8 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(_MRAdjustVolumeMessageProtobuf *)self setOutputDeviceUID:?];
    v5 = v8;
  }

  details = self->_details;
  v7 = v5[2];
  if (details)
  {
    if (!v7)
    {
      goto LABEL_11;
    }

    [(_MRRequestDetailsProtobuf *)details mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_11;
    }

    [(_MRAdjustVolumeMessageProtobuf *)self setDetails:?];
  }

  v5 = v8;
LABEL_11:
}

@end