@interface BLTPBSectionIconVariant
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BLTPBSectionIconVariant

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BLTPBSectionIconVariant;
  v4 = [(BLTPBSectionIconVariant *)&v8 description];
  dictionaryRepresentation = [(BLTPBSectionIconVariant *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_format];
  [dictionary setObject:v4 forKey:@"format"];

  imageData = self->_imageData;
  if (imageData)
  {
    [dictionary setObject:imageData forKey:@"imageData"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_precomposed];
    [dictionary setObject:v6 forKey:@"precomposed"];
  }

  systemImageName = self->_systemImageName;
  if (systemImageName)
  {
    [dictionary setObject:systemImageName forKey:@"systemImageName"];
  }

  uti = self->_uti;
  if (uti)
  {
    [dictionary setObject:uti forKey:@"uti"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  format = self->_format;
  v8 = toCopy;
  PBDataWriterWriteUint32Field();
  if (self->_imageData)
  {
    PBDataWriterWriteDataField();
  }

  if (*&self->_has)
  {
    precomposed = self->_precomposed;
    PBDataWriterWriteBOOLField();
  }

  v7 = v8;
  if (self->_systemImageName)
  {
    PBDataWriterWriteStringField();
    v7 = v8;
  }

  if (self->_uti)
  {
    PBDataWriterWriteStringField();
    v7 = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[2] = self->_format;
  v5 = toCopy;
  if (self->_imageData)
  {
    [toCopy setImageData:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 40) = self->_precomposed;
    *(toCopy + 44) |= 1u;
  }

  if (self->_systemImageName)
  {
    [v5 setSystemImageName:?];
    toCopy = v5;
  }

  if (self->_uti)
  {
    [v5 setUti:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 8) = self->_format;
  v6 = [(NSData *)self->_imageData copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 40) = self->_precomposed;
    *(v5 + 44) |= 1u;
  }

  v8 = [(NSString *)self->_systemImageName copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_uti copyWithZone:zone];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  if (self->_format != *(equalCopy + 2))
  {
    goto LABEL_12;
  }

  imageData = self->_imageData;
  if (imageData | *(equalCopy + 2))
  {
    if (![(NSData *)imageData isEqual:?])
    {
      goto LABEL_12;
    }
  }

  v6 = *(equalCopy + 44);
  if (*&self->_has)
  {
    if ((*(equalCopy + 44) & 1) == 0)
    {
      goto LABEL_12;
    }

    v6 = *(equalCopy + 40);
    if (self->_precomposed)
    {
      if (*(equalCopy + 40))
      {
        goto LABEL_7;
      }

LABEL_12:
      v9 = 0;
      goto LABEL_13;
    }
  }

  if (v6)
  {
    goto LABEL_12;
  }

LABEL_7:
  systemImageName = self->_systemImageName;
  if (systemImageName | *(equalCopy + 3) && ![(NSString *)systemImageName isEqual:?])
  {
    goto LABEL_12;
  }

  uti = self->_uti;
  if (uti | *(equalCopy + 4))
  {
    v9 = [(NSString *)uti isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_13:

  return v9;
}

- (unint64_t)hash
{
  format = self->_format;
  v4 = [(NSData *)self->_imageData hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_precomposed;
  }

  else
  {
    v5 = 0;
  }

  v6 = 2654435761 * format;
  v7 = v4 ^ v5 ^ [(NSString *)self->_systemImageName hash];
  return v7 ^ [(NSString *)self->_uti hash]^ v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_format = *(fromCopy + 2);
  v5 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(BLTPBSectionIconVariant *)self setImageData:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 44))
  {
    self->_precomposed = *(fromCopy + 40);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 3))
  {
    [(BLTPBSectionIconVariant *)self setSystemImageName:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 4))
  {
    [(BLTPBSectionIconVariant *)self setUti:?];
    fromCopy = v5;
  }
}

@end