@interface NCUpdateThumbnailRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsVideo:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NCUpdateThumbnailRequest

- (void)setHasIsVideo:(BOOL)a3
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
  v7.receiver = self;
  v7.super_class = NCUpdateThumbnailRequest;
  v3 = [(NCUpdateThumbnailRequest *)&v7 description];
  v4 = [(NCUpdateThumbnailRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  jpegData = self->_jpegData;
  if (jpegData)
  {
    [v3 setObject:jpegData forKey:@"jpegData"];
  }

  has = self->_has;
  if (has)
  {
    v7 = [NSNumber numberWithDouble:self->_captureDuration];
    [v4 setObject:v7 forKey:@"captureDuration"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v8 = [NSNumber numberWithBool:self->_isVideo];
    [v4 setObject:v8 forKey:@"isVideo"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_jpegData)
  {
    PBDataWriterWriteDataField();
    v4 = v8;
  }

  has = self->_has;
  if (has)
  {
    captureDuration = self->_captureDuration;
    PBDataWriterWriteDoubleField();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    isVideo = self->_isVideo;
    PBDataWriterWriteBOOLField();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_jpegData)
  {
    v6 = v4;
    [v4 setJpegData:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = *&self->_captureDuration;
    *(v4 + 28) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 24) = self->_isVideo;
    *(v4 + 28) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_jpegData copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  has = self->_has;
  if (has)
  {
    v5[1] = *&self->_captureDuration;
    *(v5 + 28) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 24) = self->_isVideo;
    *(v5 + 28) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  jpegData = self->_jpegData;
  if (jpegData | *(v4 + 2))
  {
    if (![(NSData *)jpegData isEqual:?])
    {
      goto LABEL_11;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_captureDuration != *(v4 + 1))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 28))
  {
    goto LABEL_11;
  }

  v6 = (*(v4 + 28) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 28) & 2) == 0)
    {
LABEL_11:
      v6 = 0;
      goto LABEL_12;
    }

    if (self->_isVideo)
    {
      if ((*(v4 + 24) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else if (*(v4 + 24))
    {
      goto LABEL_11;
    }

    v6 = 1;
  }

LABEL_12:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_jpegData hash];
  if (*&self->_has)
  {
    captureDuration = self->_captureDuration;
    if (captureDuration < 0.0)
    {
      captureDuration = -captureDuration;
    }

    *v4.i64 = floor(captureDuration + 0.5);
    v8 = (captureDuration - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v6 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v5, v4).i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabs(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    v10 = 2654435761 * self->_isVideo;
  }

  else
  {
    v10 = 0;
  }

  return v6 ^ v3 ^ v10;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 2))
  {
    v6 = v4;
    [(NCUpdateThumbnailRequest *)self setJpegData:?];
    v4 = v6;
  }

  v5 = *(v4 + 28);
  if (v5)
  {
    self->_captureDuration = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 28);
  }

  if ((v5 & 2) != 0)
  {
    self->_isVideo = *(v4 + 24);
    *&self->_has |= 2u;
  }
}

@end