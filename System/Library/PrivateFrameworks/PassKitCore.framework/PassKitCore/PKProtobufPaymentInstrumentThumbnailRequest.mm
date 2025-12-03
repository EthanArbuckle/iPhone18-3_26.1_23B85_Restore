@interface PKProtobufPaymentInstrumentThumbnailRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasWidth:(BOOL)width;
- (void)writeTo:(id)to;
@end

@implementation PKProtobufPaymentInstrumentThumbnailRequest

- (void)setHasWidth:(BOOL)width
{
  if (width)
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
  v8.super_class = PKProtobufPaymentInstrumentThumbnailRequest;
  v4 = [(PKProtobufPaymentInstrumentThumbnailRequest *)&v8 description];
  dictionaryRepresentation = [(PKProtobufPaymentInstrumentThumbnailRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  passIdentifier = self->_passIdentifier;
  if (passIdentifier)
  {
    [dictionary setObject:passIdentifier forKey:@"passIdentifier"];
  }

  manifestHash = self->_manifestHash;
  if (manifestHash)
  {
    [v4 setObject:manifestHash forKey:@"manifestHash"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_width];
    [v4 setObject:v8 forKey:@"width"];

    has = self->_has;
  }

  if (has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_height];
    [v4 setObject:v9 forKey:@"height"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_passIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_manifestHash)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v6;
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_passIdentifier)
  {
    [toCopy setPassIdentifier:?];
    toCopy = v6;
  }

  if (self->_manifestHash)
  {
    [v6 setManifestHash:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 2) = *&self->_width;
    *(toCopy + 40) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 1) = *&self->_height;
    *(toCopy + 40) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_passIdentifier copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSString *)self->_manifestHash copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_width;
    *(v5 + 40) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_height;
    *(v5 + 40) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  passIdentifier = self->_passIdentifier;
  if (passIdentifier | *(equalCopy + 4))
  {
    if (![(NSString *)passIdentifier isEqual:?])
    {
      goto LABEL_15;
    }
  }

  manifestHash = self->_manifestHash;
  if (manifestHash | *(equalCopy + 3))
  {
    if (![(NSString *)manifestHash isEqual:?])
    {
      goto LABEL_15;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_width != *(equalCopy + 2))
    {
      goto LABEL_15;
    }
  }

  else if ((*(equalCopy + 40) & 2) != 0)
  {
LABEL_15:
    v7 = 0;
    goto LABEL_16;
  }

  v7 = (*(equalCopy + 40) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_height != *(equalCopy + 1))
    {
      goto LABEL_15;
    }

    v7 = 1;
  }

LABEL_16:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_passIdentifier hash];
  v4 = [(NSString *)self->_manifestHash hash];
  if ((*&self->_has & 2) != 0)
  {
    width = self->_width;
    if (width < 0.0)
    {
      width = -width;
    }

    *v5.i64 = floor(width + 0.5);
    v9 = (width - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v5 = vbslq_s8(vnegq_f64(v10), v6, v5);
    v7 = 2654435761u * *v5.i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v7 += v9;
      }
    }

    else
    {
      v7 -= fabs(v9);
    }
  }

  else
  {
    v7 = 0;
  }

  if (*&self->_has)
  {
    height = self->_height;
    if (height < 0.0)
    {
      height = -height;
    }

    *v5.i64 = floor(height + 0.5);
    v13 = (height - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v11 = 2654435761u * *vbslq_s8(vnegq_f64(v14), v6, v5).i64;
    if (v13 >= 0.0)
    {
      if (v13 > 0.0)
      {
        v11 += v13;
      }
    }

    else
    {
      v11 -= fabs(v13);
    }
  }

  else
  {
    v11 = 0;
  }

  return v4 ^ v3 ^ v7 ^ v11;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(PKProtobufPaymentInstrumentThumbnailRequest *)self setPassIdentifier:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 3))
  {
    [(PKProtobufPaymentInstrumentThumbnailRequest *)self setManifestHash:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 40);
  if ((v5 & 2) != 0)
  {
    self->_width = fromCopy[2];
    *&self->_has |= 2u;
    v5 = *(fromCopy + 40);
  }

  if (v5)
  {
    self->_height = fromCopy[1];
    *&self->_has |= 1u;
  }
}

@end