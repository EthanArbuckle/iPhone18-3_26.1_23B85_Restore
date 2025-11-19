@interface _MRAdjustVolumeMessageProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAdjustment:(id)a3;
- (int)adjustment;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

- (int)StringAsAdjustment:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"IncrementSmall"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"IncrementMedium"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"IncrementLarge"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"DecrementSmall"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"DecrementMedium"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"DecrementLarge"])
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
  v5 = [(_MRAdjustVolumeMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
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

    [v3 setObject:v5 forKey:@"adjustment"];
  }

  outputDeviceUID = self->_outputDeviceUID;
  if (outputDeviceUID)
  {
    [v3 setObject:outputDeviceUID forKey:@"outputDeviceUID"];
  }

  details = self->_details;
  if (details)
  {
    v8 = [(_MRRequestDetailsProtobuf *)details dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"details"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    adjustment = self->_adjustment;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_outputDeviceUID)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_details)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[2] = self->_adjustment;
    *(v4 + 32) |= 1u;
  }

  v5 = v4;
  if (self->_outputDeviceUID)
  {
    [v4 setOutputDeviceUID:?];
    v4 = v5;
  }

  if (self->_details)
  {
    [v5 setDetails:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_adjustment;
    *(v5 + 32) |= 1u;
  }

  v7 = [(NSString *)self->_outputDeviceUID copyWithZone:a3];
  v8 = v6[3];
  v6[3] = v7;

  v9 = [(_MRRequestDetailsProtobuf *)self->_details copyWithZone:a3];
  v10 = v6[2];
  v6[2] = v9;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(v4 + 32);
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_adjustment != *(v4 + 2))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  outputDeviceUID = self->_outputDeviceUID;
  if (outputDeviceUID | *(v4 + 3) && ![(NSString *)outputDeviceUID isEqual:?])
  {
    goto LABEL_11;
  }

  details = self->_details;
  if (details | *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 32))
  {
    self->_adjustment = *(v4 + 2);
    *&self->_has |= 1u;
  }

  v8 = v4;
  if (*(v4 + 3))
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