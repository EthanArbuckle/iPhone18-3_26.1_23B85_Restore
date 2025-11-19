@interface NPKProtoPassAssociatedDataRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoPassAssociatedDataRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoPassAssociatedDataRequest;
  v4 = [(NPKProtoPassAssociatedDataRequest *)&v8 description];
  v5 = [(NPKProtoPassAssociatedDataRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  passUniqueID = self->_passUniqueID;
  if (passUniqueID)
  {
    [v3 setObject:passUniqueID forKey:@"passUniqueID"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_passRequestedData];
    [v4 setObject:v6 forKey:@"passRequestedData"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_passUniqueID)
  {
    [NPKProtoPassAssociatedDataRequest writeTo:];
  }

  v6 = v4;
  PBDataWriterWriteStringField();
  if (*&self->_has)
  {
    passRequestedData = self->_passRequestedData;
    PBDataWriterWriteUint64Field();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  [v4 setPassUniqueID:self->_passUniqueID];
  if (*&self->_has)
  {
    *(v4 + 1) = self->_passRequestedData;
    *(v4 + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_passUniqueID copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_passRequestedData;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  passUniqueID = self->_passUniqueID;
  if (passUniqueID | *(v4 + 2))
  {
    if (![(NSString *)passUniqueID isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(v4 + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) != 0 && self->_passRequestedData == *(v4 + 1))
    {
      v6 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_passUniqueID hash];
  if (*&self->_has)
  {
    v4 = 2654435761u * self->_passRequestedData;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[2])
  {
    v5 = v4;
    [(NPKProtoPassAssociatedDataRequest *)self setPassUniqueID:?];
    v4 = v5;
  }

  if (v4[3])
  {
    self->_passRequestedData = v4[1];
    *&self->_has |= 1u;
  }
}

@end