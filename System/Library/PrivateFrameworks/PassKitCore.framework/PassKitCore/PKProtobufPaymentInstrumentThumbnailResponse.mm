@interface PKProtobufPaymentInstrumentThumbnailResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)statusAsString:(int)a3;
- (int)StringAsStatus:(id)a3;
- (int)status;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PKProtobufPaymentInstrumentThumbnailResponse

- (int)status
{
  if (*&self->_has)
  {
    return self->_status;
  }

  else
  {
    return 0;
  }
}

- (id)statusAsString:(int)a3
{
  if (a3 >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_1E79DE158[a3];
  }

  return v4;
}

- (int)StringAsStatus:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SUCCESS"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"NOT_FOUND"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"TOO_LARGE"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufPaymentInstrumentThumbnailResponse;
  v4 = [(PKProtobufPaymentInstrumentThumbnailResponse *)&v8 description];
  v5 = [(PKProtobufPaymentInstrumentThumbnailResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  thumbnailImage = self->_thumbnailImage;
  if (thumbnailImage)
  {
    [v3 setObject:thumbnailImage forKey:@"thumbnailImage"];
  }

  if (*&self->_has)
  {
    status = self->_status;
    if (status >= 3)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_status];
    }

    else
    {
      v7 = off_1E79DE158[status];
    }

    [v4 setObject:v7 forKey:@"status"];
  }

  manifestHash = self->_manifestHash;
  if (manifestHash)
  {
    [v4 setObject:manifestHash forKey:@"manifestHash"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_thumbnailImage)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    v4 = v5;
  }

  if (self->_manifestHash)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_thumbnailImage)
  {
    [v4 setThumbnailImage:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 4) = self->_status;
    *(v4 + 32) |= 1u;
  }

  if (self->_manifestHash)
  {
    [v5 setManifestHash:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_thumbnailImage copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_status;
    *(v5 + 32) |= 1u;
  }

  v8 = [(NSString *)self->_manifestHash copyWithZone:a3];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  thumbnailImage = self->_thumbnailImage;
  if (thumbnailImage | *(v4 + 3))
  {
    if (![(NSData *)thumbnailImage isEqual:?])
    {
      goto LABEL_11;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_status != *(v4 + 4))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  manifestHash = self->_manifestHash;
  if (manifestHash | *(v4 + 1))
  {
    v7 = [(NSString *)manifestHash isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_12:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_thumbnailImage hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_status;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ [(NSString *)self->_manifestHash hash]^ v3;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 3))
  {
    [(PKProtobufPaymentInstrumentThumbnailResponse *)self setThumbnailImage:?];
    v4 = v5;
  }

  if (v4[8])
  {
    self->_status = v4[4];
    *&self->_has |= 1u;
  }

  if (*(v4 + 1))
  {
    [(PKProtobufPaymentInstrumentThumbnailResponse *)self setManifestHash:?];
    v4 = v5;
  }
}

@end