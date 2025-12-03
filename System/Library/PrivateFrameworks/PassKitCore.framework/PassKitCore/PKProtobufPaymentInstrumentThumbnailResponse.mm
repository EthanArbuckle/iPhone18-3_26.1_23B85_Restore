@interface PKProtobufPaymentInstrumentThumbnailResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)statusAsString:(int)string;
- (int)StringAsStatus:(id)status;
- (int)status;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
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

- (id)statusAsString:(int)string
{
  if (string >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E79DE158[string];
  }

  return v4;
}

- (int)StringAsStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy isEqualToString:@"SUCCESS"])
  {
    v4 = 0;
  }

  else if ([statusCopy isEqualToString:@"NOT_FOUND"])
  {
    v4 = 1;
  }

  else if ([statusCopy isEqualToString:@"TOO_LARGE"])
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
  dictionaryRepresentation = [(PKProtobufPaymentInstrumentThumbnailResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  thumbnailImage = self->_thumbnailImage;
  if (thumbnailImage)
  {
    [dictionary setObject:thumbnailImage forKey:@"thumbnailImage"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_thumbnailImage)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v5;
  }

  if (self->_manifestHash)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_thumbnailImage)
  {
    [toCopy setThumbnailImage:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 4) = self->_status;
    *(toCopy + 32) |= 1u;
  }

  if (self->_manifestHash)
  {
    [v5 setManifestHash:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_thumbnailImage copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_status;
    *(v5 + 32) |= 1u;
  }

  v8 = [(NSString *)self->_manifestHash copyWithZone:zone];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  thumbnailImage = self->_thumbnailImage;
  if (thumbnailImage | *(equalCopy + 3))
  {
    if (![(NSData *)thumbnailImage isEqual:?])
    {
      goto LABEL_11;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_status != *(equalCopy + 4))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  manifestHash = self->_manifestHash;
  if (manifestHash | *(equalCopy + 1))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(PKProtobufPaymentInstrumentThumbnailResponse *)self setThumbnailImage:?];
    fromCopy = v5;
  }

  if (fromCopy[8])
  {
    self->_status = fromCopy[4];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 1))
  {
    [(PKProtobufPaymentInstrumentThumbnailResponse *)self setManifestHash:?];
    fromCopy = v5;
  }
}

@end