@interface PKProtobufPaymentContentItem
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PKProtobufPaymentContentItem

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufPaymentContentItem;
  v4 = [(PKProtobufPaymentContentItem *)&v8 description];
  v5 = [(PKProtobufPaymentContentItem *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  imageRequest = self->_imageRequest;
  if (imageRequest)
  {
    [v3 setObject:imageRequest forKey:@"imageRequest"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_imageRequest)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_image)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_title)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_label)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_imageRequest)
  {
    [v4 setImageRequest:?];
    v4 = v5;
  }

  if (self->_image)
  {
    [v5 setImage:?];
    v4 = v5;
  }

  if (self->_title)
  {
    [v5 setTitle:?];
    v4 = v5;
  }

  if (self->_label)
  {
    [v5 setLabel:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[40] = self->_centered;
    v4[44] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_imageRequest copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSData *)self->_image copyWithZone:a3];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  v10 = [(NSData *)self->_title copyWithZone:a3];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  v12 = [(NSData *)self->_label copyWithZone:a3];
  v13 = *(v5 + 24);
  *(v5 + 24) = v12;

  if (*&self->_has)
  {
    *(v5 + 40) = self->_centered;
    *(v5 + 44) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  imageRequest = self->_imageRequest;
  if (imageRequest | *(v4 + 2))
  {
    if (![(NSData *)imageRequest isEqual:?])
    {
      goto LABEL_12;
    }
  }

  image = self->_image;
  if (image | *(v4 + 1))
  {
    if (![(NSData *)image isEqual:?])
    {
      goto LABEL_12;
    }
  }

  title = self->_title;
  if (title | *(v4 + 4))
  {
    if (![(NSData *)title isEqual:?])
    {
      goto LABEL_12;
    }
  }

  label = self->_label;
  if (label | *(v4 + 3))
  {
    if (![(NSData *)label isEqual:?])
    {
      goto LABEL_12;
    }
  }

  v9 = (*(v4 + 44) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 44) & 1) == 0)
    {
LABEL_12:
      v9 = 0;
      goto LABEL_13;
    }

    if (self->_centered)
    {
      if ((*(v4 + 40) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else if (*(v4 + 40))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 2))
  {
    [(PKProtobufPaymentContentItem *)self setImageRequest:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(PKProtobufPaymentContentItem *)self setImage:?];
    v4 = v5;
  }

  if (*(v4 + 4))
  {
    [(PKProtobufPaymentContentItem *)self setTitle:?];
    v4 = v5;
  }

  if (*(v4 + 3))
  {
    [(PKProtobufPaymentContentItem *)self setLabel:?];
    v4 = v5;
  }

  if (v4[44])
  {
    self->_centered = v4[40];
    *&self->_has |= 1u;
  }
}

@end