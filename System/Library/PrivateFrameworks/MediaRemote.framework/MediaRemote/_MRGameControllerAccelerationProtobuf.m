@interface _MRGameControllerAccelerationProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasX:(BOOL)a3;
- (void)setHasY:(BOOL)a3;
- (void)setHasZ:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRGameControllerAccelerationProtobuf

- (void)setHasX:(BOOL)a3
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

- (void)setHasY:(BOOL)a3
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

- (void)setHasZ:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRGameControllerAccelerationProtobuf;
  v4 = [(_MRGameControllerAccelerationProtobuf *)&v8 description];
  v5 = [(_MRGameControllerAccelerationProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v5 = v3;
  data = self->_data;
  if (data)
  {
    [v3 setObject:data forKey:@"data"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *&v4 = self->_x;
    v10 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
    [v5 setObject:v10 forKey:@"x"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  *&v4 = self->_y;
  v11 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [v5 setObject:v11 forKey:@"y"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  *&v4 = self->_z;
  v12 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [v5 setObject:v12 forKey:@"z"];

  if (*&self->_has)
  {
LABEL_7:
    *&v4 = self->_w;
    v8 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
    [v5 setObject:v8 forKey:@"w"];
  }

LABEL_8:

  return v5;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (self->_data)
  {
    PBDataWriterWriteDataField();
    v4 = v10;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    x = self->_x;
    PBDataWriterWriteFloatField();
    v4 = v10;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  y = self->_y;
  PBDataWriterWriteFloatField();
  v4 = v10;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  z = self->_z;
  PBDataWriterWriteFloatField();
  v4 = v10;
  if (*&self->_has)
  {
LABEL_7:
    w = self->_w;
    PBDataWriterWriteFloatField();
    v4 = v10;
  }

LABEL_8:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_data)
  {
    v6 = v4;
    [v4 setData:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 5) = LODWORD(self->_x);
    *(v4 + 32) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  *(v4 + 6) = LODWORD(self->_y);
  *(v4 + 32) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  *(v4 + 7) = LODWORD(self->_z);
  *(v4 + 32) |= 8u;
  if (*&self->_has)
  {
LABEL_7:
    *(v4 + 4) = LODWORD(self->_w);
    *(v4 + 32) |= 1u;
  }

LABEL_8:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_data copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 20) = self->_x;
    *(v5 + 32) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      *(v5 + 28) = self->_z;
      *(v5 + 32) |= 8u;
      if ((*&self->_has & 1) == 0)
      {
        return v5;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 24) = self->_y;
  *(v5 + 32) |= 4u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (has)
  {
LABEL_5:
    *(v5 + 16) = self->_w;
    *(v5 + 32) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  data = self->_data;
  if (data | *(v4 + 1))
  {
    if (![(NSData *)data isEqual:?])
    {
      goto LABEL_23;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0 || self->_x != *(v4 + 5))
    {
      goto LABEL_23;
    }
  }

  else if ((*(v4 + 32) & 2) != 0)
  {
LABEL_23:
    v6 = 0;
    goto LABEL_24;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 32) & 4) == 0 || self->_y != *(v4 + 6))
    {
      goto LABEL_23;
    }
  }

  else if ((*(v4 + 32) & 4) != 0)
  {
    goto LABEL_23;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 32) & 8) == 0 || self->_z != *(v4 + 7))
    {
      goto LABEL_23;
    }
  }

  else if ((*(v4 + 32) & 8) != 0)
  {
    goto LABEL_23;
  }

  v6 = (*(v4 + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_w != *(v4 + 4))
    {
      goto LABEL_23;
    }

    v6 = 1;
  }

LABEL_24:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_data hash];
  if ((*&self->_has & 2) != 0)
  {
    x = self->_x;
    if (x < 0.0)
    {
      x = -x;
    }

    *v4.i32 = floorf(x + 0.5);
    v8 = (x - *v4.i32) * 1.8447e19;
    *v5.i32 = *v4.i32 - (truncf(*v4.i32 * 5.421e-20) * 1.8447e19);
    v9.i64[0] = 0x8000000080000000;
    v9.i64[1] = 0x8000000080000000;
    v4 = vbslq_s8(v9, v5, v4);
    v6 = 2654435761u * *v4.i32;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabsf(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    y = self->_y;
    if (y < 0.0)
    {
      y = -y;
    }

    *v4.i32 = floorf(y + 0.5);
    v12 = (y - *v4.i32) * 1.8447e19;
    *v5.i32 = *v4.i32 - (truncf(*v4.i32 * 5.421e-20) * 1.8447e19);
    v13.i64[0] = 0x8000000080000000;
    v13.i64[1] = 0x8000000080000000;
    v4 = vbslq_s8(v13, v5, v4);
    v10 = 2654435761u * *v4.i32;
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

  if ((*&self->_has & 8) != 0)
  {
    z = self->_z;
    if (z < 0.0)
    {
      z = -z;
    }

    *v4.i32 = floorf(z + 0.5);
    v16 = (z - *v4.i32) * 1.8447e19;
    *v5.i32 = *v4.i32 - (truncf(*v4.i32 * 5.421e-20) * 1.8447e19);
    v17.i64[0] = 0x8000000080000000;
    v17.i64[1] = 0x8000000080000000;
    v4 = vbslq_s8(v17, v5, v4);
    v14 = 2654435761u * *v4.i32;
    if (v16 >= 0.0)
    {
      if (v16 > 0.0)
      {
        v14 += v16;
      }
    }

    else
    {
      v14 -= fabsf(v16);
    }
  }

  else
  {
    v14 = 0;
  }

  if (*&self->_has)
  {
    w = self->_w;
    if (w < 0.0)
    {
      w = -w;
    }

    *v4.i32 = floorf(w + 0.5);
    v20 = (w - *v4.i32) * 1.8447e19;
    *v5.i32 = *v4.i32 - (truncf(*v4.i32 * 5.421e-20) * 1.8447e19);
    v21.i64[0] = 0x8000000080000000;
    v21.i64[1] = 0x8000000080000000;
    v18 = 2654435761u * *vbslq_s8(v21, v5, v4).i32;
    if (v20 >= 0.0)
    {
      if (v20 > 0.0)
      {
        v18 += v20;
      }
    }

    else
    {
      v18 -= fabsf(v20);
    }
  }

  else
  {
    v18 = 0;
  }

  return v6 ^ v3 ^ v10 ^ v14 ^ v18;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 1))
  {
    v6 = v4;
    [(_MRGameControllerAccelerationProtobuf *)self setData:?];
    v4 = v6;
  }

  v5 = *(v4 + 32);
  if ((v5 & 2) != 0)
  {
    self->_x = v4[5];
    *&self->_has |= 2u;
    v5 = *(v4 + 32);
    if ((v5 & 4) == 0)
    {
LABEL_5:
      if ((v5 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((v4[8] & 4) == 0)
  {
    goto LABEL_5;
  }

  self->_y = v4[6];
  *&self->_has |= 4u;
  v5 = *(v4 + 32);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  self->_z = v4[7];
  *&self->_has |= 8u;
  if (v4[8])
  {
LABEL_7:
    self->_w = v4[4];
    *&self->_has |= 1u;
  }

LABEL_8:
}

@end