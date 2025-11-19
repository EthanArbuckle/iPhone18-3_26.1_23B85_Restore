@interface _MRTransactionPacketProtobuf
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)customDictionaryRepresentation;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasTotalWritePosition:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRTransactionPacketProtobuf

- (void)setHasTotalWritePosition:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRTransactionPacketProtobuf;
  v4 = [(_MRTransactionPacketProtobuf *)&v8 description];
  v5 = [(_MRTransactionPacketProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  key = self->_key;
  if (key)
  {
    v5 = [(_MRTransactionKeyProtobuf *)key dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"key"];
  }

  packetData = self->_packetData;
  if (packetData)
  {
    [v3 setObject:packetData forKey:@"packetData"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  has = self->_has;
  if (has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_totalLength];
    [v3 setObject:v9 forKey:@"totalLength"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_totalWritePosition];
    [v3 setObject:v10 forKey:@"totalWritePosition"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_key)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }

  if (self->_packetData)
  {
    PBDataWriterWriteDataField();
    v4 = v8;
  }

  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  has = self->_has;
  if (has)
  {
    totalLength = self->_totalLength;
    PBDataWriterWriteUint64Field();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    totalWritePosition = self->_totalWritePosition;
    PBDataWriterWriteUint64Field();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_key)
  {
    [v4 setKey:?];
    v4 = v6;
  }

  if (self->_packetData)
  {
    [v6 setPacketData:?];
    v4 = v6;
  }

  if (self->_identifier)
  {
    [v6 setIdentifier:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = self->_totalLength;
    *(v4 + 48) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 2) = self->_totalWritePosition;
    *(v4 + 48) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(_MRTransactionKeyProtobuf *)self->_key copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSData *)self->_packetData copyWithZone:a3];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  v10 = [(NSString *)self->_identifier copyWithZone:a3];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_totalLength;
    *(v5 + 48) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_totalWritePosition;
    *(v5 + 48) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  key = self->_key;
  if (key | *(v4 + 4))
  {
    if (![(_MRTransactionKeyProtobuf *)key isEqual:?])
    {
      goto LABEL_17;
    }
  }

  packetData = self->_packetData;
  if (packetData | *(v4 + 5))
  {
    if (![(NSData *)packetData isEqual:?])
    {
      goto LABEL_17;
    }
  }

  identifier = self->_identifier;
  if (identifier | *(v4 + 3))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_17;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_totalLength != *(v4 + 1))
    {
      goto LABEL_17;
    }
  }

  else if (*(v4 + 48))
  {
LABEL_17:
    v8 = 0;
    goto LABEL_18;
  }

  v8 = (*(v4 + 48) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 48) & 2) == 0 || self->_totalWritePosition != *(v4 + 2))
    {
      goto LABEL_17;
    }

    v8 = 1;
  }

LABEL_18:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(_MRTransactionKeyProtobuf *)self->_key hash];
  v4 = [(NSData *)self->_packetData hash];
  v5 = [(NSString *)self->_identifier hash];
  if (*&self->_has)
  {
    v6 = 2654435761u * self->_totalLength;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7;
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761u * self->_totalWritePosition;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  key = self->_key;
  v6 = v4[4];
  v8 = v4;
  if (key)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(_MRTransactionKeyProtobuf *)key mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(_MRTransactionPacketProtobuf *)self setKey:?];
  }

  v4 = v8;
LABEL_7:
  if (v4[5])
  {
    [(_MRTransactionPacketProtobuf *)self setPacketData:?];
    v4 = v8;
  }

  if (v4[3])
  {
    [(_MRTransactionPacketProtobuf *)self setIdentifier:?];
    v4 = v8;
  }

  v7 = *(v4 + 48);
  if (v7)
  {
    self->_totalLength = v4[1];
    *&self->_has |= 1u;
    v7 = *(v4 + 48);
  }

  if ((v7 & 2) != 0)
  {
    self->_totalWritePosition = v4[2];
    *&self->_has |= 2u;
  }
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = objc_opt_class();

    MRClassSwizzleMethod(v2, sel_dictionaryRepresentation, sel_customDictionaryRepresentation);
  }
}

- (id)customDictionaryRepresentation
{
  v3 = [(_MRTransactionPacketProtobuf *)self customDictionaryRepresentation];
  v4 = [v3 mutableCopy];

  v5 = [(_MRTransactionPacketProtobuf *)self packetData];

  if (v5)
  {
    v6 = [(_MRTransactionPacketProtobuf *)self packetData];
    StringRepresentation = MRDataCreateStringRepresentation(v6);

    [v4 setObject:StringRepresentation forKey:@"packetData"];
  }

  return v4;
}

@end