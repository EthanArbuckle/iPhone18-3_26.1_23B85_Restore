@interface NGMPBInnerMessage
- (BOOL)isEqual:(id)equal;
- (id)attributes;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NGMPBInnerMessage

- (id)attributes
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([(NGMPBInnerMessage *)self hasKtGossipData])
  {
    ktGossipData = [(NGMPBInnerMessage *)self ktGossipData];
    [dictionary setObject:ktGossipData forKeyedSubscript:NGMEncryptedAttributeKTGossipData];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NGMPBInnerMessage;
  v4 = [(NGMPBInnerMessage *)&v8 description];
  dictionaryRepresentation = [(NGMPBInnerMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  message = self->_message;
  if (message)
  {
    [dictionary setObject:message forKey:@"message"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_counter];
    [v4 setObject:v6 forKey:@"counter"];
  }

  ktGossipData = self->_ktGossipData;
  if (ktGossipData)
  {
    [v4 setObject:ktGossipData forKey:@"ktGossipData"];
  }

  debugInfo = self->_debugInfo;
  if (debugInfo)
  {
    [v4 setObject:debugInfo forKey:@"debugInfo"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_message)
  {
    [NGMPBInnerMessage writeTo:];
  }

  v7 = toCopy;
  PBDataWriterWriteDataField();
  if (*&self->_has)
  {
    counter = self->_counter;
    PBDataWriterWriteUint32Field();
  }

  if (self->_ktGossipData)
  {
    PBDataWriterWriteDataField();
  }

  v6 = v7;
  if (self->_debugInfo)
  {
    PBDataWriterWriteDataField();
    v6 = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setMessage:self->_message];
  v4 = toCopy;
  if (*&self->_has)
  {
    *(toCopy + 2) = self->_counter;
    *(toCopy + 40) |= 1u;
  }

  if (self->_ktGossipData)
  {
    [toCopy setKtGossipData:?];
    v4 = toCopy;
  }

  if (self->_debugInfo)
  {
    [toCopy setDebugInfo:?];
    v4 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_message copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_counter;
    *(v5 + 40) |= 1u;
  }

  v8 = [(NSData *)self->_ktGossipData copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSData *)self->_debugInfo copyWithZone:zone];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  message = self->_message;
  if (message | *(equalCopy + 4))
  {
    if (![(NSData *)message isEqual:?])
    {
      goto LABEL_13;
    }
  }

  v6 = *(equalCopy + 40);
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_counter != *(equalCopy + 2))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  ktGossipData = self->_ktGossipData;
  if (ktGossipData | *(equalCopy + 3) && ![(NSData *)ktGossipData isEqual:?])
  {
    goto LABEL_13;
  }

  debugInfo = self->_debugInfo;
  if (debugInfo | *(equalCopy + 2))
  {
    v9 = [(NSData *)debugInfo isEqual:?];
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
  v3 = [(NSData *)self->_message hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_counter;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ v3;
  v6 = [(NSData *)self->_ktGossipData hash];
  return v5 ^ v6 ^ [(NSData *)self->_debugInfo hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(NGMPBInnerMessage *)self setMessage:?];
    fromCopy = v5;
  }

  if (fromCopy[10])
  {
    self->_counter = fromCopy[2];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 3))
  {
    [(NGMPBInnerMessage *)self setKtGossipData:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(NGMPBInnerMessage *)self setDebugInfo:?];
    fromCopy = v5;
  }
}

@end