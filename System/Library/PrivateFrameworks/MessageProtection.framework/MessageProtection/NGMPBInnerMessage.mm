@interface NGMPBInnerMessage
- (BOOL)isEqual:(id)a3;
- (id)attributes;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NGMPBInnerMessage

- (id)attributes
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if ([(NGMPBInnerMessage *)self hasKtGossipData])
  {
    v4 = [(NGMPBInnerMessage *)self ktGossipData];
    [v3 setObject:v4 forKeyedSubscript:NGMEncryptedAttributeKTGossipData];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NGMPBInnerMessage;
  v4 = [(NGMPBInnerMessage *)&v8 description];
  v5 = [(NGMPBInnerMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  message = self->_message;
  if (message)
  {
    [v3 setObject:message forKey:@"message"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_message)
  {
    [NGMPBInnerMessage writeTo:];
  }

  v7 = v4;
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

- (void)copyTo:(id)a3
{
  v5 = a3;
  [v5 setMessage:self->_message];
  v4 = v5;
  if (*&self->_has)
  {
    *(v5 + 2) = self->_counter;
    *(v5 + 40) |= 1u;
  }

  if (self->_ktGossipData)
  {
    [v5 setKtGossipData:?];
    v4 = v5;
  }

  if (self->_debugInfo)
  {
    [v5 setDebugInfo:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_message copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_counter;
    *(v5 + 40) |= 1u;
  }

  v8 = [(NSData *)self->_ktGossipData copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSData *)self->_debugInfo copyWithZone:a3];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  message = self->_message;
  if (message | *(v4 + 4))
  {
    if (![(NSData *)message isEqual:?])
    {
      goto LABEL_13;
    }
  }

  v6 = *(v4 + 40);
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_counter != *(v4 + 2))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 40))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  ktGossipData = self->_ktGossipData;
  if (ktGossipData | *(v4 + 3) && ![(NSData *)ktGossipData isEqual:?])
  {
    goto LABEL_13;
  }

  debugInfo = self->_debugInfo;
  if (debugInfo | *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 4))
  {
    [(NGMPBInnerMessage *)self setMessage:?];
    v4 = v5;
  }

  if (v4[10])
  {
    self->_counter = v4[2];
    *&self->_has |= 1u;
  }

  if (*(v4 + 3))
  {
    [(NGMPBInnerMessage *)self setKtGossipData:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(NGMPBInnerMessage *)self setDebugInfo:?];
    v4 = v5;
  }
}

@end