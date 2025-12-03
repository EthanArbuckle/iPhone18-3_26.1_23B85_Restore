@interface IDSQRProtoMaterialInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)materialTypeAsString:(int)string;
- (int)StringAsMaterialType:(id)type;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation IDSQRProtoMaterialInfo

- (id)materialTypeAsString:(int)string
{
  if (string < 0xF && ((0x78E1u >> string) & 1) != 0)
  {
    v4 = off_1E77E0048[string];
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  return v4;
}

- (int)StringAsMaterialType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"UNDEFINED"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"PREKEY"])
  {
    v4 = 11;
  }

  else if ([typeCopy isEqualToString:@"AVCBLOB"])
  {
    v4 = 12;
  }

  else if ([typeCopy isEqualToString:@"MKM"])
  {
    v4 = 13;
  }

  else if ([typeCopy isEqualToString:@"SKM"])
  {
    v4 = 14;
  }

  else if ([typeCopy isEqualToString:@"MIRAGEKEY"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"MIRAGEBLOB"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"IDS_CONTEXT_BLOB"])
  {
    v4 = 7;
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
  v8.super_class = IDSQRProtoMaterialInfo;
  v4 = [(IDSQRProtoMaterialInfo *)&v8 description];
  dictionaryRepresentation = [(IDSQRProtoMaterialInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  materialId = self->_materialId;
  if (materialId)
  {
    [dictionary setObject:materialId forKey:@"material_id"];
  }

  materialType = self->_materialType;
  if (materialType < 0xF && ((0x78E1u >> materialType) & 1) != 0)
  {
    v7 = off_1E77E0048[materialType];
  }

  else
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_materialType];
  }

  [v4 setObject:v7 forKey:@"material_type"];

  materialContent = self->_materialContent;
  if (materialContent)
  {
    [v4 setObject:materialContent forKey:@"material_content"];
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_shortMaterialIdLength];
    [v4 setObject:v9 forKey:@"short_material_id_length"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_materialId)
  {
    sub_1A7E121A0();
  }

  PBDataWriterWriteDataField();
  PBDataWriterWriteInt32Field();
  if (!self->_materialContent)
  {
    sub_1A7E12174();
  }

  PBDataWriterWriteDataField();
  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setMaterialId:self->_materialId];
  *(toCopy + 6) = self->_materialType;
  [toCopy setMaterialContent:self->_materialContent];
  if (*&self->_has)
  {
    *(toCopy + 7) = self->_shortMaterialIdLength;
    *(toCopy + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_materialId copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  *(v5 + 24) = self->_materialType;
  v8 = [(NSData *)self->_materialContent copyWithZone:zone];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  if (*&self->_has)
  {
    *(v5 + 28) = self->_shortMaterialIdLength;
    *(v5 + 32) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  materialId = self->_materialId;
  if (materialId | *(equalCopy + 2))
  {
    if (![(NSData *)materialId isEqual:?])
    {
      goto LABEL_11;
    }
  }

  if (self->_materialType != *(equalCopy + 6))
  {
    goto LABEL_11;
  }

  materialContent = self->_materialContent;
  if (materialContent | *(equalCopy + 1))
  {
    if (![(NSData *)materialContent isEqual:?])
    {
      goto LABEL_11;
    }
  }

  v7 = (*(equalCopy + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) != 0 && self->_shortMaterialIdLength == *(equalCopy + 7))
    {
      v7 = 1;
      goto LABEL_12;
    }

LABEL_11:
    v7 = 0;
  }

LABEL_12:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_materialId hash];
  materialType = self->_materialType;
  v5 = [(NSData *)self->_materialContent hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_shortMaterialIdLength;
  }

  else
  {
    v6 = 0;
  }

  return (2654435761 * materialType) ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(IDSQRProtoMaterialInfo *)self setMaterialId:?];
    fromCopy = v5;
  }

  self->_materialType = *(fromCopy + 6);
  if (*(fromCopy + 1))
  {
    [(IDSQRProtoMaterialInfo *)self setMaterialContent:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 32))
  {
    self->_shortMaterialIdLength = *(fromCopy + 7);
    *&self->_has |= 1u;
  }
}

@end