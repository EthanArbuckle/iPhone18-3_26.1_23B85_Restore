@interface NPKProtoSignDataRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsEntanglementMode:(id)mode;
- (int)entanglementMode;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoSignDataRequest

- (int)entanglementMode
{
  if (*&self->_has)
  {
    return self->_entanglementMode;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsEntanglementMode:(id)mode
{
  modeCopy = mode;
  if ([modeCopy isEqualToString:@"PlatformIdentifier"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [modeCopy isEqualToString:@"JCOPInfo"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoSignDataRequest;
  v4 = [(NPKProtoSignDataRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoSignDataRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  dataToSign = self->_dataToSign;
  if (dataToSign)
  {
    [dictionary setObject:dataToSign forKey:@"dataToSign"];
  }

  digestToSign = self->_digestToSign;
  if (digestToSign)
  {
    [v4 setObject:digestToSign forKey:@"digestToSign"];
  }

  if (*&self->_has)
  {
    entanglementMode = self->_entanglementMode;
    if (entanglementMode)
    {
      if (entanglementMode == 1)
      {
        v8 = @"JCOPInfo";
      }

      else
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_entanglementMode];
      }
    }

    else
    {
      v8 = @"PlatformIdentifier";
    }

    [v4 setObject:v8 forKey:@"entanglementMode"];
  }

  aid = self->_aid;
  if (aid)
  {
    [v4 setObject:aid forKey:@"aid"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_dataToSign)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (self->_digestToSign)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    entanglementMode = self->_entanglementMode;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_aid)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_dataToSign)
  {
    [toCopy setDataToSign:?];
    toCopy = v5;
  }

  if (self->_digestToSign)
  {
    [v5 setDigestToSign:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 8) = self->_entanglementMode;
    *(toCopy + 36) |= 1u;
  }

  if (self->_aid)
  {
    [v5 setAid:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_dataToSign copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSData *)self->_digestToSign copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  if (*&self->_has)
  {
    *(v5 + 32) = self->_entanglementMode;
    *(v5 + 36) |= 1u;
  }

  v10 = [(NSString *)self->_aid copyWithZone:zone];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  dataToSign = self->_dataToSign;
  if (dataToSign | *(equalCopy + 2))
  {
    if (![(NSData *)dataToSign isEqual:?])
    {
      goto LABEL_13;
    }
  }

  digestToSign = self->_digestToSign;
  if (digestToSign | *(equalCopy + 3))
  {
    if (![(NSData *)digestToSign isEqual:?])
    {
      goto LABEL_13;
    }
  }

  v7 = *(equalCopy + 36);
  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_entanglementMode != *(equalCopy + 8))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 36))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  aid = self->_aid;
  if (aid | *(equalCopy + 1))
  {
    v9 = [(NSString *)aid isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_14:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_dataToSign hash];
  v4 = [(NSData *)self->_digestToSign hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_entanglementMode;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5 ^ [(NSString *)self->_aid hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(NPKProtoSignDataRequest *)self setDataToSign:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(NPKProtoSignDataRequest *)self setDigestToSign:?];
    fromCopy = v5;
  }

  if (fromCopy[9])
  {
    self->_entanglementMode = fromCopy[8];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 1))
  {
    [(NPKProtoSignDataRequest *)self setAid:?];
    fromCopy = v5;
  }
}

@end