@interface MXSpeechRecognitionFeature
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MXSpeechRecognitionFeature

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MXSpeechRecognitionFeature;
  v4 = [(MXSpeechRecognitionFeature *)&v8 description];
  v5 = [(MXSpeechRecognitionFeature *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v5 = v3;
  key = self->_key;
  if (key)
  {
    [v3 setObject:key forKey:@"key"];
  }

  if (*&self->_has)
  {
    *&v4 = self->_value;
    v7 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
    [v5 setObject:v7 forKey:@"value"];
  }

  return v5;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    value = self->_value;
    PBDataWriterWriteFloatField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_key)
  {
    v5 = v4;
    [v4 setKey:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 4) = LODWORD(self->_value);
    *(v4 + 20) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_value;
    *(v5 + 20) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  key = self->_key;
  if (key | *(v4 + 1))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(v4 + 20) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) != 0 && self->_value == *(v4 + 4))
    {
      v6 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  if (*&self->_has)
  {
    value = self->_value;
    if (value < 0.0)
    {
      value = -value;
    }

    *v4.i32 = floorf(value + 0.5);
    v8 = (value - *v4.i32) * 1.8447e19;
    *v5.i32 = *v4.i32 - (truncf(*v4.i32 * 5.421e-20) * 1.8447e19);
    v9.i64[0] = 0x8000000080000000;
    v9.i64[1] = 0x8000000080000000;
    v6 = 2654435761u * *vbslq_s8(v9, v5, v4).i32;
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

  return v6 ^ v3;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 1))
  {
    v5 = v4;
    [(MXSpeechRecognitionFeature *)self setKey:?];
    v4 = v5;
  }

  if (v4[5])
  {
    self->_value = v4[4];
    *&self->_has |= 1u;
  }
}

@end