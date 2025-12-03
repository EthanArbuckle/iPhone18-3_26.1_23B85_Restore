@interface _MRGameControllerMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRGameControllerMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRGameControllerMessageProtobuf;
  v4 = [(_MRGameControllerMessageProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRGameControllerMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_controllerID];
    [dictionary setObject:v4 forKey:@"controllerID"];
  }

  motion = self->_motion;
  if (motion)
  {
    dictionaryRepresentation = [(_MRGameControllerMotionProtobuf *)motion dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"motion"];
  }

  buttons = self->_buttons;
  if (buttons)
  {
    dictionaryRepresentation2 = [(_MRGameControllerButtonsProtobuf *)buttons dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"buttons"];
  }

  digitizer = self->_digitizer;
  if (digitizer)
  {
    dictionaryRepresentation3 = [(_MRGameControllerDigitizerProtobuf *)digitizer dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"digitizer"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    controllerID = self->_controllerID;
    PBDataWriterWriteUint64Field();
    toCopy = v6;
  }

  if (self->_motion)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_buttons)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_digitizer)
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
    toCopy[1] = self->_controllerID;
    *(toCopy + 40) |= 1u;
  }

  v5 = toCopy;
  if (self->_motion)
  {
    [toCopy setMotion:?];
    toCopy = v5;
  }

  if (self->_buttons)
  {
    [v5 setButtons:?];
    toCopy = v5;
  }

  if (self->_digitizer)
  {
    [v5 setDigitizer:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_controllerID;
    *(v5 + 40) |= 1u;
  }

  v7 = [(_MRGameControllerMotionProtobuf *)self->_motion copyWithZone:zone];
  v8 = v6[4];
  v6[4] = v7;

  v9 = [(_MRGameControllerButtonsProtobuf *)self->_buttons copyWithZone:zone];
  v10 = v6[2];
  v6[2] = v9;

  v11 = [(_MRGameControllerDigitizerProtobuf *)self->_digitizer copyWithZone:zone];
  v12 = v6[3];
  v6[3] = v11;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  v5 = *(equalCopy + 40);
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_controllerID != *(equalCopy + 1))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  motion = self->_motion;
  if (motion | *(equalCopy + 4) && ![(_MRGameControllerMotionProtobuf *)motion isEqual:?])
  {
    goto LABEL_13;
  }

  buttons = self->_buttons;
  if (buttons | *(equalCopy + 2))
  {
    if (![(_MRGameControllerButtonsProtobuf *)buttons isEqual:?])
    {
      goto LABEL_13;
    }
  }

  digitizer = self->_digitizer;
  if (digitizer | *(equalCopy + 3))
  {
    v9 = [(_MRGameControllerDigitizerProtobuf *)digitizer isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_14:

  return v9;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_controllerID;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(_MRGameControllerMotionProtobuf *)self->_motion hash]^ v3;
  v5 = [(_MRGameControllerButtonsProtobuf *)self->_buttons hash];
  return v4 ^ v5 ^ [(_MRGameControllerDigitizerProtobuf *)self->_digitizer hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[5])
  {
    self->_controllerID = fromCopy[1];
    *&self->_has |= 1u;
  }

  motion = self->_motion;
  v7 = v5[4];
  v12 = v5;
  if (motion)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(_MRGameControllerMotionProtobuf *)motion mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(_MRGameControllerMessageProtobuf *)self setMotion:?];
  }

  v5 = v12;
LABEL_9:
  buttons = self->_buttons;
  v9 = v5[2];
  if (buttons)
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(_MRGameControllerButtonsProtobuf *)buttons mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(_MRGameControllerMessageProtobuf *)self setButtons:?];
  }

  v5 = v12;
LABEL_15:
  digitizer = self->_digitizer;
  v11 = v5[3];
  if (digitizer)
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    [(_MRGameControllerDigitizerProtobuf *)digitizer mergeFrom:?];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    [(_MRGameControllerMessageProtobuf *)self setDigitizer:?];
  }

  v5 = v12;
LABEL_21:
}

@end