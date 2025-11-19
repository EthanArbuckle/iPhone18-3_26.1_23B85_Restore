@interface BLTPBSectionIconVariant
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation BLTPBSectionIconVariant

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BLTPBSectionIconVariant;
  v4 = [(BLTPBSectionIconVariant *)&v8 description];
  v5 = [(BLTPBSectionIconVariant *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_format];
  [v3 setObject:v4 forKey:@"format"];

  imageData = self->_imageData;
  if (imageData)
  {
    [v3 setObject:imageData forKey:@"imageData"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_precomposed];
    [v3 setObject:v6 forKey:@"precomposed"];
  }

  systemImageName = self->_systemImageName;
  if (systemImageName)
  {
    [v3 setObject:systemImageName forKey:@"systemImageName"];
  }

  uti = self->_uti;
  if (uti)
  {
    [v3 setObject:uti forKey:@"uti"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  format = self->_format;
  v8 = v4;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  v4[2] = self->_format;
  v5 = v4;
  if (self->_imageData)
  {
    [v4 setImageData:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 40) = self->_precomposed;
    *(v4 + 44) |= 1u;
  }

  if (self->_systemImageName)
  {
    [v5 setSystemImageName:?];
    v4 = v5;
  }

  if (self->_uti)
  {
    [v5 setUti:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 8) = self->_format;
  v6 = [(NSData *)self->_imageData copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 40) = self->_precomposed;
    *(v5 + 44) |= 1u;
  }

  v8 = [(NSString *)self->_systemImageName copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_uti copyWithZone:a3];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  if (self->_format != *(v4 + 2))
  {
    goto LABEL_12;
  }

  imageData = self->_imageData;
  if (imageData | *(v4 + 2))
  {
    if (![(NSData *)imageData isEqual:?])
    {
      goto LABEL_12;
    }
  }

  v6 = *(v4 + 44);
  if (*&self->_has)
  {
    if ((*(v4 + 44) & 1) == 0)
    {
      goto LABEL_12;
    }

    v6 = *(v4 + 40);
    if (self->_precomposed)
    {
      if (*(v4 + 40))
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
  if (systemImageName | *(v4 + 3) && ![(NSString *)systemImageName isEqual:?])
  {
    goto LABEL_12;
  }

  uti = self->_uti;
  if (uti | *(v4 + 4))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_format = *(v4 + 2);
  v5 = v4;
  if (*(v4 + 2))
  {
    [(BLTPBSectionIconVariant *)self setImageData:?];
    v4 = v5;
  }

  if (*(v4 + 44))
  {
    self->_precomposed = *(v4 + 40);
    *&self->_has |= 1u;
  }

  if (*(v4 + 3))
  {
    [(BLTPBSectionIconVariant *)self setSystemImageName:?];
    v4 = v5;
  }

  if (*(v4 + 4))
  {
    [(BLTPBSectionIconVariant *)self setUti:?];
    v4 = v5;
  }
}

@end