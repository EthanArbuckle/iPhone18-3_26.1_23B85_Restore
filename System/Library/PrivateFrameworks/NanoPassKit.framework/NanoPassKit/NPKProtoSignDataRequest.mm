@interface NPKProtoSignDataRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsEntanglementMode:(id)a3;
- (int)entanglementMode;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

- (int)StringAsEntanglementMode:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PlatformIdentifier"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"JCOPInfo"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoSignDataRequest;
  v4 = [(NPKProtoSignDataRequest *)&v8 description];
  v5 = [(NPKProtoSignDataRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  dataToSign = self->_dataToSign;
  if (dataToSign)
  {
    [v3 setObject:dataToSign forKey:@"dataToSign"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_dataToSign)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (self->_digestToSign)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    entanglementMode = self->_entanglementMode;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_aid)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_dataToSign)
  {
    [v4 setDataToSign:?];
    v4 = v5;
  }

  if (self->_digestToSign)
  {
    [v5 setDigestToSign:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 8) = self->_entanglementMode;
    *(v4 + 36) |= 1u;
  }

  if (self->_aid)
  {
    [v5 setAid:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_dataToSign copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSData *)self->_digestToSign copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  if (*&self->_has)
  {
    *(v5 + 32) = self->_entanglementMode;
    *(v5 + 36) |= 1u;
  }

  v10 = [(NSString *)self->_aid copyWithZone:a3];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  dataToSign = self->_dataToSign;
  if (dataToSign | *(v4 + 2))
  {
    if (![(NSData *)dataToSign isEqual:?])
    {
      goto LABEL_13;
    }
  }

  digestToSign = self->_digestToSign;
  if (digestToSign | *(v4 + 3))
  {
    if (![(NSData *)digestToSign isEqual:?])
    {
      goto LABEL_13;
    }
  }

  v7 = *(v4 + 36);
  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_entanglementMode != *(v4 + 8))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 36))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  aid = self->_aid;
  if (aid | *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 2))
  {
    [(NPKProtoSignDataRequest *)self setDataToSign:?];
    v4 = v5;
  }

  if (*(v4 + 3))
  {
    [(NPKProtoSignDataRequest *)self setDigestToSign:?];
    v4 = v5;
  }

  if (v4[9])
  {
    self->_entanglementMode = v4[8];
    *&self->_has |= 1u;
  }

  if (*(v4 + 1))
  {
    [(NPKProtoSignDataRequest *)self setAid:?];
    v4 = v5;
  }
}

@end