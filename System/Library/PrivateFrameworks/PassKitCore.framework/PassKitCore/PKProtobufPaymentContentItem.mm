@interface PKProtobufPaymentContentItem
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PKProtobufPaymentContentItem

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufPaymentContentItem;
  v4 = [(PKProtobufPaymentContentItem *)&v8 description];
  dictionaryRepresentation = [(PKProtobufPaymentContentItem *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  imageRequest = self->_imageRequest;
  if (imageRequest)
  {
    [dictionary setObject:imageRequest forKey:@"imageRequest"];
  }

  image = self->_image;
  if (image)
  {
    [v4 setObject:image forKey:@"image"];
  }

  title = self->_title;
  if (title)
  {
    [v4 setObject:title forKey:@"title"];
  }

  label = self->_label;
  if (label)
  {
    [v4 setObject:label forKey:@"label"];
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_centered];
    [v4 setObject:v9 forKey:@"centered"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_imageRequest)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_image)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_title)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_label)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_imageRequest)
  {
    [toCopy setImageRequest:?];
    toCopy = v5;
  }

  if (self->_image)
  {
    [v5 setImage:?];
    toCopy = v5;
  }

  if (self->_title)
  {
    [v5 setTitle:?];
    toCopy = v5;
  }

  if (self->_label)
  {
    [v5 setLabel:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[40] = self->_centered;
    toCopy[44] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_imageRequest copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSData *)self->_image copyWithZone:zone];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  v10 = [(NSData *)self->_title copyWithZone:zone];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  v12 = [(NSData *)self->_label copyWithZone:zone];
  v13 = *(v5 + 24);
  *(v5 + 24) = v12;

  if (*&self->_has)
  {
    *(v5 + 40) = self->_centered;
    *(v5 + 44) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  imageRequest = self->_imageRequest;
  if (imageRequest | *(equalCopy + 2))
  {
    if (![(NSData *)imageRequest isEqual:?])
    {
      goto LABEL_12;
    }
  }

  image = self->_image;
  if (image | *(equalCopy + 1))
  {
    if (![(NSData *)image isEqual:?])
    {
      goto LABEL_12;
    }
  }

  title = self->_title;
  if (title | *(equalCopy + 4))
  {
    if (![(NSData *)title isEqual:?])
    {
      goto LABEL_12;
    }
  }

  label = self->_label;
  if (label | *(equalCopy + 3))
  {
    if (![(NSData *)label isEqual:?])
    {
      goto LABEL_12;
    }
  }

  v9 = (*(equalCopy + 44) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 44) & 1) == 0)
    {
LABEL_12:
      v9 = 0;
      goto LABEL_13;
    }

    if (self->_centered)
    {
      if ((*(equalCopy + 40) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else if (*(equalCopy + 40))
    {
      goto LABEL_12;
    }

    v9 = 1;
  }

LABEL_13:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_imageRequest hash];
  v4 = [(NSData *)self->_image hash];
  v5 = [(NSData *)self->_title hash];
  v6 = [(NSData *)self->_label hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_centered;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(PKProtobufPaymentContentItem *)self setImageRequest:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 1))
  {
    [(PKProtobufPaymentContentItem *)self setImage:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 4))
  {
    [(PKProtobufPaymentContentItem *)self setTitle:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(PKProtobufPaymentContentItem *)self setLabel:?];
    fromCopy = v5;
  }

  if (fromCopy[44])
  {
    self->_centered = fromCopy[40];
    *&self->_has |= 1u;
  }
}

@end