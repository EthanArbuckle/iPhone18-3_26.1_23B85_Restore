@interface _MRTransactionPacketProtobuf
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)customDictionaryRepresentation;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasTotalWritePosition:(BOOL)position;
- (void)writeTo:(id)to;
@end

@implementation _MRTransactionPacketProtobuf

- (void)setHasTotalWritePosition:(BOOL)position
{
  if (position)
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
  dictionaryRepresentation = [(_MRTransactionPacketProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  key = self->_key;
  if (key)
  {
    dictionaryRepresentation = [(_MRTransactionKeyProtobuf *)key dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"key"];
  }

  packetData = self->_packetData;
  if (packetData)
  {
    [dictionary setObject:packetData forKey:@"packetData"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  has = self->_has;
  if (has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_totalLength];
    [dictionary setObject:v9 forKey:@"totalLength"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_totalWritePosition];
    [dictionary setObject:v10 forKey:@"totalWritePosition"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_key)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  if (self->_packetData)
  {
    PBDataWriterWriteDataField();
    toCopy = v8;
  }

  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  has = self->_has;
  if (has)
  {
    totalLength = self->_totalLength;
    PBDataWriterWriteUint64Field();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    totalWritePosition = self->_totalWritePosition;
    PBDataWriterWriteUint64Field();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_key)
  {
    [toCopy setKey:?];
    toCopy = v6;
  }

  if (self->_packetData)
  {
    [v6 setPacketData:?];
    toCopy = v6;
  }

  if (self->_identifier)
  {
    [v6 setIdentifier:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = self->_totalLength;
    *(toCopy + 48) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 2) = self->_totalWritePosition;
    *(toCopy + 48) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(_MRTransactionKeyProtobuf *)self->_key copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSData *)self->_packetData copyWithZone:zone];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  v10 = [(NSString *)self->_identifier copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  key = self->_key;
  if (key | *(equalCopy + 4))
  {
    if (![(_MRTransactionKeyProtobuf *)key isEqual:?])
    {
      goto LABEL_17;
    }
  }

  packetData = self->_packetData;
  if (packetData | *(equalCopy + 5))
  {
    if (![(NSData *)packetData isEqual:?])
    {
      goto LABEL_17;
    }
  }

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 3))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_17;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_totalLength != *(equalCopy + 1))
    {
      goto LABEL_17;
    }
  }

  else if (*(equalCopy + 48))
  {
LABEL_17:
    v8 = 0;
    goto LABEL_18;
  }

  v8 = (*(equalCopy + 48) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0 || self->_totalWritePosition != *(equalCopy + 2))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  key = self->_key;
  v6 = fromCopy[4];
  v8 = fromCopy;
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

  fromCopy = v8;
LABEL_7:
  if (fromCopy[5])
  {
    [(_MRTransactionPacketProtobuf *)self setPacketData:?];
    fromCopy = v8;
  }

  if (fromCopy[3])
  {
    [(_MRTransactionPacketProtobuf *)self setIdentifier:?];
    fromCopy = v8;
  }

  v7 = *(fromCopy + 48);
  if (v7)
  {
    self->_totalLength = fromCopy[1];
    *&self->_has |= 1u;
    v7 = *(fromCopy + 48);
  }

  if ((v7 & 2) != 0)
  {
    self->_totalWritePosition = fromCopy[2];
    *&self->_has |= 2u;
  }
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = objc_opt_class();

    MRClassSwizzleMethod(v2, sel_dictionaryRepresentation, sel_customDictionaryRepresentation);
  }
}

- (id)customDictionaryRepresentation
{
  customDictionaryRepresentation = [(_MRTransactionPacketProtobuf *)self customDictionaryRepresentation];
  v4 = [customDictionaryRepresentation mutableCopy];

  packetData = [(_MRTransactionPacketProtobuf *)self packetData];

  if (packetData)
  {
    packetData2 = [(_MRTransactionPacketProtobuf *)self packetData];
    StringRepresentation = MRDataCreateStringRepresentation(packetData2);

    [v4 setObject:StringRepresentation forKey:@"packetData"];
  }

  return v4;
}

@end