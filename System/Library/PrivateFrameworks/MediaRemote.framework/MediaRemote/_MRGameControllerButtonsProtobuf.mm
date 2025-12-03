@interface _MRGameControllerButtonsProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasB:(BOOL)b;
- (void)setHasDPadX:(BOOL)x;
- (void)setHasDPadY:(BOOL)y;
- (void)setHasLeftShoulder:(BOOL)shoulder;
- (void)setHasLeftThumbstickX:(BOOL)x;
- (void)setHasLeftThumbstickY:(BOOL)y;
- (void)setHasLeftTrigger:(BOOL)trigger;
- (void)setHasPause:(BOOL)pause;
- (void)setHasRightShoulder:(BOOL)shoulder;
- (void)setHasRightThumbstickX:(BOOL)x;
- (void)setHasRightThumbstickY:(BOOL)y;
- (void)setHasRightTrigger:(BOOL)trigger;
- (void)setHasX:(BOOL)x;
- (void)setHasY:(BOOL)y;
- (void)writeTo:(id)to;
@end

@implementation _MRGameControllerButtonsProtobuf

- (void)setHasDPadX:(BOOL)x
{
  if (x)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasDPadY:(BOOL)y
{
  if (y)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasB:(BOOL)b
{
  if (b)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasX:(BOOL)x
{
  if (x)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasY:(BOOL)y
{
  if (y)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFF | v3;
}

- (void)setHasLeftShoulder:(BOOL)shoulder
{
  if (shoulder)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasRightShoulder:(BOOL)shoulder
{
  if (shoulder)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasLeftThumbstickX:(BOOL)x
{
  if (x)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasLeftThumbstickY:(BOOL)y
{
  if (y)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasRightThumbstickX:(BOOL)x
{
  if (x)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasRightThumbstickY:(BOOL)y
{
  if (y)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasLeftTrigger:(BOOL)trigger
{
  if (trigger)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasRightTrigger:(BOOL)trigger
{
  if (trigger)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasPause:(BOOL)pause
{
  if (pause)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRGameControllerButtonsProtobuf;
  v4 = [(_MRGameControllerButtonsProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRGameControllerButtonsProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    *&v4 = self->_dPadX;
    v8 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
    [dictionary setObject:v8 forKey:@"dPadX"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  *&v4 = self->_dPadY;
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [dictionary setObject:v9 forKey:@"dPadY"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  *&v4 = self->_a;
  v10 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [dictionary setObject:v10 forKey:@"a"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  *&v4 = self->_b;
  v11 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [dictionary setObject:v11 forKey:@"b"];

  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_6:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  *&v4 = self->_x;
  v12 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [dictionary setObject:v12 forKey:@"x"];

  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  *&v4 = self->_y;
  v13 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [dictionary setObject:v13 forKey:@"y"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  *&v4 = self->_leftShoulder;
  v14 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [dictionary setObject:v14 forKey:@"leftShoulder"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  *&v4 = self->_rightShoulder;
  v15 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [dictionary setObject:v15 forKey:@"rightShoulder"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  *&v4 = self->_leftThumbstickX;
  v16 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [dictionary setObject:v16 forKey:@"leftThumbstickX"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_11:
    if ((has & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  *&v4 = self->_leftThumbstickY;
  v17 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [dictionary setObject:v17 forKey:@"leftThumbstickY"];

  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_12:
    if ((has & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  *&v4 = self->_rightThumbstickX;
  v18 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [dictionary setObject:v18 forKey:@"rightThumbstickX"];

  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_13:
    if ((has & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  *&v4 = self->_rightThumbstickY;
  v19 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [dictionary setObject:v19 forKey:@"rightThumbstickY"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_14:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  *&v4 = self->_leftTrigger;
  v20 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [dictionary setObject:v20 forKey:@"leftTrigger"];

  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_15:
    if ((has & 0x100) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_33:
  *&v4 = self->_rightTrigger;
  v21 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [dictionary setObject:v21 forKey:@"rightTrigger"];

  if ((*&self->_has & 0x100) != 0)
  {
LABEL_16:
    *&v4 = self->_pause;
    v6 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
    [dictionary setObject:v6 forKey:@"pause"];
  }

LABEL_17:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 4) != 0)
  {
    dPadX = self->_dPadX;
    PBDataWriterWriteFloatField();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  dPadY = self->_dPadY;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  a = self->_a;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  b = self->_b;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_6:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  x = self->_x;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  y = self->_y;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  leftShoulder = self->_leftShoulder;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  rightShoulder = self->_rightShoulder;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  leftThumbstickX = self->_leftThumbstickX;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_11:
    if ((has & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  leftThumbstickY = self->_leftThumbstickY;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_12:
    if ((has & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  rightThumbstickX = self->_rightThumbstickX;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_13:
    if ((has & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  rightThumbstickY = self->_rightThumbstickY;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_14:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  leftTrigger = self->_leftTrigger;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_15:
    if ((has & 0x100) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_33:
  rightTrigger = self->_rightTrigger;
  PBDataWriterWriteFloatField();
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_16:
    pause = self->_pause;
    PBDataWriterWriteFloatField();
  }

LABEL_17:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 4) != 0)
  {
    toCopy[4] = LODWORD(self->_dPadX);
    *(toCopy + 34) |= 4u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  toCopy[5] = LODWORD(self->_dPadY);
  *(toCopy + 34) |= 8u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  toCopy[2] = LODWORD(self->_a);
  *(toCopy + 34) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  toCopy[3] = LODWORD(self->_b);
  *(toCopy + 34) |= 2u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_6:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  toCopy[15] = LODWORD(self->_x);
  *(toCopy + 34) |= 0x2000u;
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  toCopy[16] = LODWORD(self->_y);
  *(toCopy + 34) |= 0x4000u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  toCopy[6] = LODWORD(self->_leftShoulder);
  *(toCopy + 34) |= 0x10u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  toCopy[11] = LODWORD(self->_rightShoulder);
  *(toCopy + 34) |= 0x200u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  toCopy[7] = LODWORD(self->_leftThumbstickX);
  *(toCopy + 34) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_11:
    if ((has & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  toCopy[8] = LODWORD(self->_leftThumbstickY);
  *(toCopy + 34) |= 0x40u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_12:
    if ((has & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  toCopy[12] = LODWORD(self->_rightThumbstickX);
  *(toCopy + 34) |= 0x400u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_13:
    if ((has & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  toCopy[13] = LODWORD(self->_rightThumbstickY);
  *(toCopy + 34) |= 0x800u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_14:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  toCopy[9] = LODWORD(self->_leftTrigger);
  *(toCopy + 34) |= 0x80u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_15:
    if ((has & 0x100) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_33:
  toCopy[14] = LODWORD(self->_rightTrigger);
  *(toCopy + 34) |= 0x1000u;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_16:
    toCopy[10] = LODWORD(self->_pause);
    *(toCopy + 34) |= 0x100u;
  }

LABEL_17:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(result + 4) = LODWORD(self->_dPadX);
    *(result + 34) |= 4u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(result + 5) = LODWORD(self->_dPadY);
  *(result + 34) |= 8u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 2) = LODWORD(self->_a);
  *(result + 34) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(result + 3) = LODWORD(self->_b);
  *(result + 34) |= 2u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_6:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(result + 15) = LODWORD(self->_x);
  *(result + 34) |= 0x2000u;
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(result + 16) = LODWORD(self->_y);
  *(result + 34) |= 0x4000u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(result + 6) = LODWORD(self->_leftShoulder);
  *(result + 34) |= 0x10u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(result + 11) = LODWORD(self->_rightShoulder);
  *(result + 34) |= 0x200u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(result + 7) = LODWORD(self->_leftThumbstickX);
  *(result + 34) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_11:
    if ((has & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(result + 8) = LODWORD(self->_leftThumbstickY);
  *(result + 34) |= 0x40u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_12:
    if ((has & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(result + 12) = LODWORD(self->_rightThumbstickX);
  *(result + 34) |= 0x400u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_13:
    if ((has & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(result + 13) = LODWORD(self->_rightThumbstickY);
  *(result + 34) |= 0x800u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_14:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(result + 9) = LODWORD(self->_leftTrigger);
  *(result + 34) |= 0x80u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_15:
    if ((has & 0x100) == 0)
    {
      return result;
    }

    goto LABEL_16;
  }

LABEL_31:
  *(result + 14) = LODWORD(self->_rightTrigger);
  *(result + 34) |= 0x1000u;
  if ((*&self->_has & 0x100) == 0)
  {
    return result;
  }

LABEL_16:
  *(result + 10) = LODWORD(self->_pause);
  *(result + 34) |= 0x100u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_77;
  }

  has = self->_has;
  v6 = *(equalCopy + 34);
  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_dPadX != *(equalCopy + 4))
    {
      goto LABEL_77;
    }
  }

  else if ((v6 & 4) != 0)
  {
LABEL_77:
    v7 = 0;
    goto LABEL_78;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_dPadY != *(equalCopy + 5))
    {
      goto LABEL_77;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_77;
  }

  if (has)
  {
    if ((v6 & 1) == 0 || self->_a != *(equalCopy + 2))
    {
      goto LABEL_77;
    }
  }

  else if (v6)
  {
    goto LABEL_77;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_b != *(equalCopy + 3))
    {
      goto LABEL_77;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_77;
  }

  if ((*&self->_has & 0x2000) != 0)
  {
    if ((*(equalCopy + 34) & 0x2000) == 0 || self->_x != *(equalCopy + 15))
    {
      goto LABEL_77;
    }
  }

  else if ((*(equalCopy + 34) & 0x2000) != 0)
  {
    goto LABEL_77;
  }

  if ((*&self->_has & 0x4000) != 0)
  {
    if ((*(equalCopy + 34) & 0x4000) == 0 || self->_y != *(equalCopy + 16))
    {
      goto LABEL_77;
    }
  }

  else if ((*(equalCopy + 34) & 0x4000) != 0)
  {
    goto LABEL_77;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_leftShoulder != *(equalCopy + 6))
    {
      goto LABEL_77;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_77;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(equalCopy + 34) & 0x200) == 0 || self->_rightShoulder != *(equalCopy + 11))
    {
      goto LABEL_77;
    }
  }

  else if ((*(equalCopy + 34) & 0x200) != 0)
  {
    goto LABEL_77;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_leftThumbstickX != *(equalCopy + 7))
    {
      goto LABEL_77;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_77;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_leftThumbstickY != *(equalCopy + 8))
    {
      goto LABEL_77;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_77;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(equalCopy + 34) & 0x400) == 0 || self->_rightThumbstickX != *(equalCopy + 12))
    {
      goto LABEL_77;
    }
  }

  else if ((*(equalCopy + 34) & 0x400) != 0)
  {
    goto LABEL_77;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(equalCopy + 34) & 0x800) == 0 || self->_rightThumbstickY != *(equalCopy + 13))
    {
      goto LABEL_77;
    }
  }

  else if ((*(equalCopy + 34) & 0x800) != 0)
  {
    goto LABEL_77;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_leftTrigger != *(equalCopy + 9))
    {
      goto LABEL_77;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_77;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    if ((*(equalCopy + 34) & 0x1000) == 0 || self->_rightTrigger != *(equalCopy + 14))
    {
      goto LABEL_77;
    }
  }

  else if ((*(equalCopy + 34) & 0x1000) != 0)
  {
    goto LABEL_77;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(equalCopy + 34) & 0x100) == 0 || self->_pause != *(equalCopy + 10))
    {
      goto LABEL_77;
    }

    v7 = 1;
  }

  else
  {
    v7 = (v6 & 0x100) == 0;
  }

LABEL_78:

  return v7;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    dPadX = self->_dPadX;
    if (dPadX < 0.0)
    {
      dPadX = -dPadX;
    }

    *v2.i32 = floorf(dPadX + 0.5);
    v7 = (dPadX - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v8.i64[0] = 0x8000000080000000;
    v8.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v8, v3, v2);
    v5 = 2654435761u * *v2.i32;
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

  if ((has & 8) != 0)
  {
    dPadY = self->_dPadY;
    if (dPadY < 0.0)
    {
      dPadY = -dPadY;
    }

    *v2.i32 = floorf(dPadY + 0.5);
    v11 = (dPadY - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v12.i64[0] = 0x8000000080000000;
    v12.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v12, v3, v2);
    v9 = 2654435761u * *v2.i32;
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v9 += v11;
      }
    }

    else
    {
      v9 -= fabsf(v11);
    }
  }

  else
  {
    v9 = 0;
  }

  if (has)
  {
    a = self->_a;
    if (a < 0.0)
    {
      a = -a;
    }

    *v2.i32 = floorf(a + 0.5);
    v15 = (a - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v16.i64[0] = 0x8000000080000000;
    v16.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v16, v3, v2);
    v13 = 2654435761u * *v2.i32;
    if (v15 >= 0.0)
    {
      if (v15 > 0.0)
      {
        v13 += v15;
      }
    }

    else
    {
      v13 -= fabsf(v15);
    }
  }

  else
  {
    v13 = 0;
  }

  if ((has & 2) != 0)
  {
    b = self->_b;
    if (b < 0.0)
    {
      b = -b;
    }

    *v2.i32 = floorf(b + 0.5);
    v19 = (b - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v20.i64[0] = 0x8000000080000000;
    v20.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v20, v3, v2);
    v17 = 2654435761u * *v2.i32;
    if (v19 >= 0.0)
    {
      if (v19 > 0.0)
      {
        v17 += v19;
      }
    }

    else
    {
      v17 -= fabsf(v19);
    }
  }

  else
  {
    v17 = 0;
  }

  if ((*&self->_has & 0x2000) != 0)
  {
    x = self->_x;
    if (x < 0.0)
    {
      x = -x;
    }

    *v2.i32 = floorf(x + 0.5);
    v23 = (x - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v24.i64[0] = 0x8000000080000000;
    v24.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v24, v3, v2);
    v21 = 2654435761u * *v2.i32;
    if (v23 >= 0.0)
    {
      if (v23 > 0.0)
      {
        v21 += v23;
      }
    }

    else
    {
      v21 -= fabsf(v23);
    }
  }

  else
  {
    v21 = 0;
  }

  if ((*&self->_has & 0x4000) != 0)
  {
    y = self->_y;
    if (y < 0.0)
    {
      y = -y;
    }

    *v2.i32 = floorf(y + 0.5);
    v27 = (y - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v28.i64[0] = 0x8000000080000000;
    v28.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v28, v3, v2);
    v25 = 2654435761u * *v2.i32;
    if (v27 >= 0.0)
    {
      if (v27 > 0.0)
      {
        v25 += v27;
      }
    }

    else
    {
      v25 -= fabsf(v27);
    }
  }

  else
  {
    v25 = 0;
  }

  if ((has & 0x10) != 0)
  {
    leftShoulder = self->_leftShoulder;
    if (leftShoulder < 0.0)
    {
      leftShoulder = -leftShoulder;
    }

    *v2.i32 = floorf(leftShoulder + 0.5);
    v31 = (leftShoulder - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v32.i64[0] = 0x8000000080000000;
    v32.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v32, v3, v2);
    v29 = 2654435761u * *v2.i32;
    if (v31 >= 0.0)
    {
      if (v31 > 0.0)
      {
        v29 += v31;
      }
    }

    else
    {
      v29 -= fabsf(v31);
    }
  }

  else
  {
    v29 = 0;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    rightShoulder = self->_rightShoulder;
    if (rightShoulder < 0.0)
    {
      rightShoulder = -rightShoulder;
    }

    *v2.i32 = floorf(rightShoulder + 0.5);
    v35 = (rightShoulder - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v36.i64[0] = 0x8000000080000000;
    v36.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v36, v3, v2);
    v33 = 2654435761u * *v2.i32;
    if (v35 >= 0.0)
    {
      if (v35 > 0.0)
      {
        v33 += v35;
      }
    }

    else
    {
      v33 -= fabsf(v35);
    }
  }

  else
  {
    v33 = 0;
  }

  if ((has & 0x20) != 0)
  {
    leftThumbstickX = self->_leftThumbstickX;
    if (leftThumbstickX < 0.0)
    {
      leftThumbstickX = -leftThumbstickX;
    }

    *v2.i32 = floorf(leftThumbstickX + 0.5);
    v39 = (leftThumbstickX - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v40.i64[0] = 0x8000000080000000;
    v40.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v40, v3, v2);
    v37 = 2654435761u * *v2.i32;
    if (v39 >= 0.0)
    {
      if (v39 > 0.0)
      {
        v37 += v39;
      }
    }

    else
    {
      v37 -= fabsf(v39);
    }
  }

  else
  {
    v37 = 0;
  }

  if ((has & 0x40) != 0)
  {
    leftThumbstickY = self->_leftThumbstickY;
    if (leftThumbstickY < 0.0)
    {
      leftThumbstickY = -leftThumbstickY;
    }

    *v2.i32 = floorf(leftThumbstickY + 0.5);
    v43 = (leftThumbstickY - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v44.i64[0] = 0x8000000080000000;
    v44.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v44, v3, v2);
    v41 = 2654435761u * *v2.i32;
    if (v43 >= 0.0)
    {
      if (v43 > 0.0)
      {
        v41 += v43;
      }
    }

    else
    {
      v41 -= fabsf(v43);
    }
  }

  else
  {
    v41 = 0;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    rightThumbstickX = self->_rightThumbstickX;
    if (rightThumbstickX < 0.0)
    {
      rightThumbstickX = -rightThumbstickX;
    }

    *v2.i32 = floorf(rightThumbstickX + 0.5);
    v47 = (rightThumbstickX - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v48.i64[0] = 0x8000000080000000;
    v48.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v48, v3, v2);
    v45 = 2654435761u * *v2.i32;
    if (v47 >= 0.0)
    {
      if (v47 > 0.0)
      {
        v45 += v47;
      }
    }

    else
    {
      v45 -= fabsf(v47);
    }
  }

  else
  {
    v45 = 0;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    rightThumbstickY = self->_rightThumbstickY;
    if (rightThumbstickY < 0.0)
    {
      rightThumbstickY = -rightThumbstickY;
    }

    *v2.i32 = floorf(rightThumbstickY + 0.5);
    v51 = (rightThumbstickY - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v52.i64[0] = 0x8000000080000000;
    v52.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v52, v3, v2);
    v49 = 2654435761u * *v2.i32;
    if (v51 >= 0.0)
    {
      if (v51 > 0.0)
      {
        v49 += v51;
      }
    }

    else
    {
      v49 -= fabsf(v51);
    }
  }

  else
  {
    v49 = 0;
  }

  if ((has & 0x80) != 0)
  {
    leftTrigger = self->_leftTrigger;
    if (leftTrigger < 0.0)
    {
      leftTrigger = -leftTrigger;
    }

    *v2.i32 = floorf(leftTrigger + 0.5);
    v55 = (leftTrigger - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v56.i64[0] = 0x8000000080000000;
    v56.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v56, v3, v2);
    v53 = 2654435761u * *v2.i32;
    if (v55 >= 0.0)
    {
      if (v55 > 0.0)
      {
        v53 += v55;
      }
    }

    else
    {
      v53 -= fabsf(v55);
    }
  }

  else
  {
    v53 = 0;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    rightTrigger = self->_rightTrigger;
    if (rightTrigger < 0.0)
    {
      rightTrigger = -rightTrigger;
    }

    *v2.i32 = floorf(rightTrigger + 0.5);
    v59 = (rightTrigger - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v60.i64[0] = 0x8000000080000000;
    v60.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v60, v3, v2);
    v57 = 2654435761u * *v2.i32;
    if (v59 >= 0.0)
    {
      if (v59 > 0.0)
      {
        v57 += v59;
      }
    }

    else
    {
      v57 -= fabsf(v59);
    }
  }

  else
  {
    v57 = 0;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    pause = self->_pause;
    if (pause < 0.0)
    {
      pause = -pause;
    }

    *v2.i32 = floorf(pause + 0.5);
    v63 = (pause - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v64.i64[0] = 0x8000000080000000;
    v64.i64[1] = 0x8000000080000000;
    v61 = 2654435761u * *vbslq_s8(v64, v3, v2).i32;
    if (v63 >= 0.0)
    {
      if (v63 > 0.0)
      {
        v61 += v63;
      }
    }

    else
    {
      v61 -= fabsf(v63);
    }
  }

  else
  {
    v61 = 0;
  }

  return v9 ^ v5 ^ v13 ^ v17 ^ v21 ^ v25 ^ v29 ^ v33 ^ v37 ^ v41 ^ v45 ^ v49 ^ v53 ^ v57 ^ v61;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 34);
  if ((v5 & 4) != 0)
  {
    self->_dPadX = *(fromCopy + 4);
    *&self->_has |= 4u;
    v5 = *(fromCopy + 34);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_dPadY = *(fromCopy + 5);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 34);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_a = *(fromCopy + 2);
  *&self->_has |= 1u;
  v5 = *(fromCopy + 34);
  if ((v5 & 2) == 0)
  {
LABEL_5:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_b = *(fromCopy + 3);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 34);
  if ((v5 & 0x2000) == 0)
  {
LABEL_6:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_x = *(fromCopy + 15);
  *&self->_has |= 0x2000u;
  v5 = *(fromCopy + 34);
  if ((v5 & 0x4000) == 0)
  {
LABEL_7:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_y = *(fromCopy + 16);
  *&self->_has |= 0x4000u;
  v5 = *(fromCopy + 34);
  if ((v5 & 0x10) == 0)
  {
LABEL_8:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_leftShoulder = *(fromCopy + 6);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 34);
  if ((v5 & 0x200) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_rightShoulder = *(fromCopy + 11);
  *&self->_has |= 0x200u;
  v5 = *(fromCopy + 34);
  if ((v5 & 0x20) == 0)
  {
LABEL_10:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_leftThumbstickX = *(fromCopy + 7);
  *&self->_has |= 0x20u;
  v5 = *(fromCopy + 34);
  if ((v5 & 0x40) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_leftThumbstickY = *(fromCopy + 8);
  *&self->_has |= 0x40u;
  v5 = *(fromCopy + 34);
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_rightThumbstickX = *(fromCopy + 12);
  *&self->_has |= 0x400u;
  v5 = *(fromCopy + 34);
  if ((v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_rightThumbstickY = *(fromCopy + 13);
  *&self->_has |= 0x800u;
  v5 = *(fromCopy + 34);
  if ((v5 & 0x80) == 0)
  {
LABEL_14:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_leftTrigger = *(fromCopy + 9);
  *&self->_has |= 0x80u;
  v5 = *(fromCopy + 34);
  if ((v5 & 0x1000) == 0)
  {
LABEL_15:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_33:
  self->_rightTrigger = *(fromCopy + 14);
  *&self->_has |= 0x1000u;
  if ((*(fromCopy + 34) & 0x100) != 0)
  {
LABEL_16:
    self->_pause = *(fromCopy + 10);
    *&self->_has |= 0x100u;
  }

LABEL_17:
}

@end