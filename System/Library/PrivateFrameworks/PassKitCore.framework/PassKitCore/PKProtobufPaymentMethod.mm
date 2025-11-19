@interface PKProtobufPaymentMethod
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PKProtobufPaymentMethod

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufPaymentMethod;
  v4 = [(PKProtobufPaymentMethod *)&v8 description];
  v5 = [(PKProtobufPaymentMethod *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  displayName = self->_displayName;
  if (displayName)
  {
    [v3 setObject:displayName forKey:@"displayName"];
  }

  network = self->_network;
  if (network)
  {
    [v4 setObject:network forKey:@"network"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_type];
    [v4 setObject:v7 forKey:@"type"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_displayName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_network)
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
  if (self->_displayName)
  {
    [v4 setDisplayName:?];
    v4 = v5;
  }

  if (self->_network)
  {
    [v5 setNetwork:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 6) = self->_type;
    *(v4 + 28) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_displayName copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSString *)self->_network copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_type;
    *(v5 + 28) |= 1u;
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

  displayName = self->_displayName;
  if (displayName | *(v4 + 1))
  {
    if (![(NSString *)displayName isEqual:?])
    {
      goto LABEL_10;
    }
  }

  network = self->_network;
  if (network | *(v4 + 2))
  {
    if (![(NSString *)network isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(v4 + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) != 0 && self->_type == *(v4 + 6))
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
  v3 = [(NSString *)self->_displayName hash];
  v4 = [(NSString *)self->_network hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_type;
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
  if (*(v4 + 1))
  {
    [(PKProtobufPaymentMethod *)self setDisplayName:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(PKProtobufPaymentMethod *)self setNetwork:?];
    v4 = v5;
  }

  if (v4[7])
  {
    self->_type = v4[6];
    *&self->_has |= 1u;
  }
}

@end