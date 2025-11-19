@interface _MRGameControllerMessageProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRGameControllerMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRGameControllerMessageProtobuf;
  v4 = [(_MRGameControllerMessageProtobuf *)&v8 description];
  v5 = [(_MRGameControllerMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_controllerID];
    [v3 setObject:v4 forKey:@"controllerID"];
  }

  motion = self->_motion;
  if (motion)
  {
    v6 = [(_MRGameControllerMotionProtobuf *)motion dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"motion"];
  }

  buttons = self->_buttons;
  if (buttons)
  {
    v8 = [(_MRGameControllerButtonsProtobuf *)buttons dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"buttons"];
  }

  digitizer = self->_digitizer;
  if (digitizer)
  {
    v10 = [(_MRGameControllerDigitizerProtobuf *)digitizer dictionaryRepresentation];
    [v3 setObject:v10 forKey:@"digitizer"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    controllerID = self->_controllerID;
    PBDataWriterWriteUint64Field();
    v4 = v6;
  }

  if (self->_motion)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_buttons)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_digitizer)
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
    v4[1] = self->_controllerID;
    *(v4 + 40) |= 1u;
  }

  v5 = v4;
  if (self->_motion)
  {
    [v4 setMotion:?];
    v4 = v5;
  }

  if (self->_buttons)
  {
    [v5 setButtons:?];
    v4 = v5;
  }

  if (self->_digitizer)
  {
    [v5 setDigitizer:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_controllerID;
    *(v5 + 40) |= 1u;
  }

  v7 = [(_MRGameControllerMotionProtobuf *)self->_motion copyWithZone:a3];
  v8 = v6[4];
  v6[4] = v7;

  v9 = [(_MRGameControllerButtonsProtobuf *)self->_buttons copyWithZone:a3];
  v10 = v6[2];
  v6[2] = v9;

  v11 = [(_MRGameControllerDigitizerProtobuf *)self->_digitizer copyWithZone:a3];
  v12 = v6[3];
  v6[3] = v11;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  v5 = *(v4 + 40);
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_controllerID != *(v4 + 1))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 40))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  motion = self->_motion;
  if (motion | *(v4 + 4) && ![(_MRGameControllerMotionProtobuf *)motion isEqual:?])
  {
    goto LABEL_13;
  }

  buttons = self->_buttons;
  if (buttons | *(v4 + 2))
  {
    if (![(_MRGameControllerButtonsProtobuf *)buttons isEqual:?])
    {
      goto LABEL_13;
    }
  }

  digitizer = self->_digitizer;
  if (digitizer | *(v4 + 3))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[5])
  {
    self->_controllerID = v4[1];
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