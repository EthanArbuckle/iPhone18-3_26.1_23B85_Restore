@interface IDSQRProtoAllocBindStaleLink
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation IDSQRProtoAllocBindStaleLink

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoAllocBindStaleLink;
  v4 = [(IDSQRProtoAllocBindStaleLink *)&v8 description];
  v5 = [(IDSQRProtoAllocBindStaleLink *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  serverAddress = self->_serverAddress;
  if (serverAddress)
  {
    [v3 setObject:serverAddress forKey:@"server_address"];
  }

  clientAddress = self->_clientAddress;
  if (clientAddress)
  {
    [v4 setObject:clientAddress forKey:@"client_address"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_linkId];
    [v4 setObject:v7 forKey:@"link_id"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_serverAddress)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_clientAddress)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_serverAddress)
  {
    [v4 setServerAddress:?];
    v4 = v5;
  }

  if (self->_clientAddress)
  {
    [v5 setClientAddress:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 4) = self->_linkId;
    *(v4 + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_serverAddress copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_clientAddress copyWithZone:a3];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_linkId;
    *(v5 + 32) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  serverAddress = self->_serverAddress;
  if (serverAddress | *(v4 + 3))
  {
    if (![(NSString *)serverAddress isEqual:?])
    {
      goto LABEL_10;
    }
  }

  clientAddress = self->_clientAddress;
  if (clientAddress | *(v4 + 1))
  {
    if (![(NSString *)clientAddress isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(v4 + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) != 0 && self->_linkId == *(v4 + 4))
    {
      v7 = 1;
      goto LABEL_11;
    }

LABEL_10:
    v7 = 0;
  }

LABEL_11:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_serverAddress hash];
  v4 = [(NSString *)self->_clientAddress hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_linkId;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 3))
  {
    [(IDSQRProtoAllocBindStaleLink *)self setServerAddress:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(IDSQRProtoAllocBindStaleLink *)self setClientAddress:?];
    v4 = v5;
  }

  if (v4[8])
  {
    self->_linkId = v4[4];
    *&self->_has |= 1u;
  }
}

@end