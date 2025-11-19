@interface _MRVirtualTouchDeviceDescriptorProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAbsolute:(BOOL)a3;
- (void)setHasIntegratedDisplay:(BOOL)a3;
- (void)setHasScreenSizeWidth:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRVirtualTouchDeviceDescriptorProtobuf

- (void)setHasAbsolute:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasIntegratedDisplay:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasScreenSizeWidth:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRVirtualTouchDeviceDescriptorProtobuf;
  v4 = [(_MRVirtualTouchDeviceDescriptorProtobuf *)&v8 description];
  v5 = [(_MRVirtualTouchDeviceDescriptorProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_absolute];
    [v3 setObject:v8 forKey:@"absolute"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_integratedDisplay];
  [v3 setObject:v9 forKey:@"integratedDisplay"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  *&v4 = self->_screenSizeWidth;
  v10 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [v3 setObject:v10 forKey:@"screenSizeWidth"];

  if (*&self->_has)
  {
LABEL_5:
    *&v4 = self->_screenSizeHeight;
    v6 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
    [v3 setObject:v6 forKey:@"screenSizeHeight"];
  }

LABEL_6:

  return v3;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  has = self->_has;
  if ((has & 4) != 0)
  {
    absolute = self->_absolute;
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  integratedDisplay = self->_integratedDisplay;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  screenSizeWidth = self->_screenSizeWidth;
  PBDataWriterWriteFloatField();
  if (*&self->_has)
  {
LABEL_5:
    screenSizeHeight = self->_screenSizeHeight;
    PBDataWriterWriteFloatField();
  }

LABEL_6:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 4) != 0)
  {
    v4[16] = self->_absolute;
    v4[20] |= 4u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  v4[17] = self->_integratedDisplay;
  v4[20] |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  *(v4 + 3) = LODWORD(self->_screenSizeWidth);
  v4[20] |= 2u;
  if (*&self->_has)
  {
LABEL_5:
    *(v4 + 2) = LODWORD(self->_screenSizeHeight);
    v4[20] |= 1u;
  }

LABEL_6:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(result + 16) = self->_absolute;
    *(result + 20) |= 4u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(result + 17) = self->_integratedDisplay;
  *(result + 20) |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_9:
  *(result + 3) = LODWORD(self->_screenSizeWidth);
  *(result + 20) |= 2u;
  if ((*&self->_has & 1) == 0)
  {
    return result;
  }

LABEL_5:
  *(result + 2) = LODWORD(self->_screenSizeHeight);
  *(result + 20) |= 1u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 20) & 4) == 0)
    {
      goto LABEL_26;
    }

    v5 = *(v4 + 16);
    if (self->_absolute)
    {
      if ((*(v4 + 16) & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else if (*(v4 + 16))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 20) & 4) != 0)
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 8) == 0)
  {
    if ((*(v4 + 20) & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_26:
    v7 = 0;
    goto LABEL_27;
  }

  if ((*(v4 + 20) & 8) == 0)
  {
    goto LABEL_26;
  }

  v6 = *(v4 + 17);
  if (self->_integratedDisplay)
  {
    if ((*(v4 + 17) & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (*(v4 + 17))
  {
    goto LABEL_26;
  }

LABEL_6:
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 20) & 2) == 0 || self->_screenSizeWidth != *(v4 + 3))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 20) & 2) != 0)
  {
    goto LABEL_26;
  }

  v7 = (*(v4 + 20) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) == 0 || self->_screenSizeHeight != *(v4 + 2))
    {
      goto LABEL_26;
    }

    v7 = 1;
  }

LABEL_27:

  return v7;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) == 0)
  {
    v4 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v5 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  v4 = 2654435761 * self->_absolute;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v5 = 2654435761 * self->_integratedDisplay;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  screenSizeWidth = self->_screenSizeWidth;
  if (screenSizeWidth < 0.0)
  {
    screenSizeWidth = -screenSizeWidth;
  }

  *v2.i32 = floorf(screenSizeWidth + 0.5);
  v7 = (screenSizeWidth - *v2.i32) * 1.8447e19;
  *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
  v8.i64[0] = 0x8000000080000000;
  v8.i64[1] = 0x8000000080000000;
  v2 = vbslq_s8(v8, v3, v2);
  v9 = 2654435761u * *v2.i32;
  if (v7 >= 0.0)
  {
    if (v7 > 0.0)
    {
      v9 += v7;
    }
  }

  else
  {
    v9 -= fabsf(v7);
  }

LABEL_11:
  if (*&self->_has)
  {
    screenSizeHeight = self->_screenSizeHeight;
    if (screenSizeHeight < 0.0)
    {
      screenSizeHeight = -screenSizeHeight;
    }

    *v2.i32 = floorf(screenSizeHeight + 0.5);
    v12 = (screenSizeHeight - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v13.i64[0] = 0x8000000080000000;
    v13.i64[1] = 0x8000000080000000;
    v10 = 2654435761u * *vbslq_s8(v13, v3, v2).i32;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v10 += v12;
      }
    }

    else
    {
      v10 -= fabsf(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  return v5 ^ v4 ^ v9 ^ v10;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 20);
  if ((v5 & 4) != 0)
  {
    self->_absolute = *(v4 + 16);
    *&self->_has |= 4u;
    v5 = *(v4 + 20);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(v4 + 20) & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_integratedDisplay = *(v4 + 17);
  *&self->_has |= 8u;
  v5 = *(v4 + 20);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  self->_screenSizeWidth = *(v4 + 3);
  *&self->_has |= 2u;
  if (*(v4 + 20))
  {
LABEL_5:
    self->_screenSizeHeight = *(v4 + 2);
    *&self->_has |= 1u;
  }

LABEL_6:
}

@end