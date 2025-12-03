@interface IDSQRProtoReallocateIndication
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)reasonAsString:(int)string;
- (int)StringAsReason:(id)reason;
- (int)reason;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasReason:(BOOL)reason;
- (void)writeTo:(id)to;
@end

@implementation IDSQRProtoReallocateIndication

- (int)reason
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_reason;
  }

  else
  {
    return 0;
  }
}

- (void)setHasReason:(BOOL)reason
{
  if (reason)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)reasonAsString:(int)string
{
  if (string)
  {
    if (string == 1)
    {
      v4 = @"PERFORMANCE_REDIRECT";
    }

    else
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
    }
  }

  else
  {
    v4 = @"SERVER_SHUTTING_DOWN";
  }

  return v4;
}

- (int)StringAsReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:@"SERVER_SHUTTING_DOWN"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [reasonCopy isEqualToString:@"PERFORMANCE_REDIRECT"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoReallocateIndication;
  v4 = [(IDSQRProtoReallocateIndication *)&v8 description];
  dictionaryRepresentation = [(IDSQRProtoReallocateIndication *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  reallocateToken = self->_reallocateToken;
  if (reallocateToken)
  {
    [dictionary setObject:reallocateToken forKey:@"reallocate_token"];
  }

  sessionId = self->_sessionId;
  if (sessionId)
  {
    [v4 setObject:sessionId forKey:@"session_id"];
  }

  clientAddress = self->_clientAddress;
  if (clientAddress)
  {
    [v4 setObject:clientAddress forKey:@"client_address"];
  }

  serverAddress = self->_serverAddress;
  if (serverAddress)
  {
    [v4 setObject:serverAddress forKey:@"server_address"];
  }

  serverBlob = self->_serverBlob;
  if (serverBlob)
  {
    [v4 setObject:serverBlob forKey:@"server_blob"];
  }

  if ((*&self->_has & 2) != 0)
  {
    reason = self->_reason;
    if (reason)
    {
      if (reason == 1)
      {
        v11 = @"PERFORMANCE_REDIRECT";
      }

      else
      {
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_reason];
      }
    }

    else
    {
      v11 = @"SERVER_SHUTTING_DOWN";
    }

    [v4 setObject:v11 forKey:@"reason"];
  }

  serverIpAddressV4 = self->_serverIpAddressV4;
  if (serverIpAddressV4)
  {
    [v4 setObject:serverIpAddressV4 forKey:@"server_ip_address_v4"];
  }

  serverIpAddressV6 = self->_serverIpAddressV6;
  if (serverIpAddressV6)
  {
    [v4 setObject:serverIpAddressV6 forKey:@"server_ip_address_v6"];
  }

  if (*&self->_has)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_txnId];
    [v4 setObject:v14 forKey:@"txn_id"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_reallocateToken)
  {
    sub_1A7E12148();
  }

  v6 = toCopy;
  PBDataWriterWriteDataField();
  if (!self->_sessionId)
  {
    sub_1A7E1211C();
  }

  PBDataWriterWriteDataField();
  if (!self->_clientAddress)
  {
    sub_1A7E120F0();
  }

  PBDataWriterWriteStringField();
  if (!self->_serverAddress)
  {
    sub_1A7E120C4();
  }

  PBDataWriterWriteStringField();
  if (self->_serverBlob)
  {
    PBDataWriterWriteDataField();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v5 = v6;
  if (self->_serverIpAddressV4)
  {
    PBDataWriterWriteStringField();
    v5 = v6;
  }

  if (self->_serverIpAddressV6)
  {
    PBDataWriterWriteStringField();
    v5 = v6;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
    v5 = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setReallocateToken:self->_reallocateToken];
  [toCopy setSessionId:self->_sessionId];
  [toCopy setClientAddress:self->_clientAddress];
  [toCopy setServerAddress:self->_serverAddress];
  if (self->_serverBlob)
  {
    [toCopy setServerBlob:?];
  }

  v4 = toCopy;
  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 8) = self->_reason;
    *(toCopy + 80) |= 2u;
  }

  if (self->_serverIpAddressV4)
  {
    [toCopy setServerIpAddressV4:?];
    v4 = toCopy;
  }

  if (self->_serverIpAddressV6)
  {
    [toCopy setServerIpAddressV6:?];
    v4 = toCopy;
  }

  if (*&self->_has)
  {
    v4[1] = self->_txnId;
    *(v4 + 80) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_reallocateToken copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSData *)self->_sessionId copyWithZone:zone];
  v9 = *(v5 + 72);
  *(v5 + 72) = v8;

  v10 = [(NSString *)self->_clientAddress copyWithZone:zone];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  v12 = [(NSString *)self->_serverAddress copyWithZone:zone];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  v14 = [(NSData *)self->_serverBlob copyWithZone:zone];
  v15 = *(v5 + 48);
  *(v5 + 48) = v14;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 32) = self->_reason;
    *(v5 + 80) |= 2u;
  }

  v16 = [(NSString *)self->_serverIpAddressV4 copyWithZone:zone];
  v17 = *(v5 + 56);
  *(v5 + 56) = v16;

  v18 = [(NSString *)self->_serverIpAddressV6 copyWithZone:zone];
  v19 = *(v5 + 64);
  *(v5 + 64) = v18;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_txnId;
    *(v5 + 80) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  reallocateToken = self->_reallocateToken;
  if (reallocateToken | *(equalCopy + 3))
  {
    if (![(NSData *)reallocateToken isEqual:?])
    {
      goto LABEL_25;
    }
  }

  sessionId = self->_sessionId;
  if (sessionId | *(equalCopy + 9))
  {
    if (![(NSData *)sessionId isEqual:?])
    {
      goto LABEL_25;
    }
  }

  clientAddress = self->_clientAddress;
  if (clientAddress | *(equalCopy + 2))
  {
    if (![(NSString *)clientAddress isEqual:?])
    {
      goto LABEL_25;
    }
  }

  serverAddress = self->_serverAddress;
  if (serverAddress | *(equalCopy + 5))
  {
    if (![(NSString *)serverAddress isEqual:?])
    {
      goto LABEL_25;
    }
  }

  serverBlob = self->_serverBlob;
  if (serverBlob | *(equalCopy + 6))
  {
    if (![(NSData *)serverBlob isEqual:?])
    {
      goto LABEL_25;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 80) & 2) == 0 || self->_reason != *(equalCopy + 8))
    {
      goto LABEL_25;
    }
  }

  else if ((*(equalCopy + 80) & 2) != 0)
  {
LABEL_25:
    v12 = 0;
    goto LABEL_26;
  }

  serverIpAddressV4 = self->_serverIpAddressV4;
  if (serverIpAddressV4 | *(equalCopy + 7) && ![(NSString *)serverIpAddressV4 isEqual:?])
  {
    goto LABEL_25;
  }

  serverIpAddressV6 = self->_serverIpAddressV6;
  if (serverIpAddressV6 | *(equalCopy + 8))
  {
    if (![(NSString *)serverIpAddressV6 isEqual:?])
    {
      goto LABEL_25;
    }
  }

  v12 = (*(equalCopy + 80) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 80) & 1) == 0 || self->_txnId != *(equalCopy + 1))
    {
      goto LABEL_25;
    }

    v12 = 1;
  }

LABEL_26:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_reallocateToken hash];
  v4 = [(NSData *)self->_sessionId hash];
  v5 = [(NSString *)self->_clientAddress hash];
  v6 = [(NSString *)self->_serverAddress hash];
  v7 = [(NSData *)self->_serverBlob hash];
  if ((*&self->_has & 2) != 0)
  {
    v8 = 2654435761 * self->_reason;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(NSString *)self->_serverIpAddressV4 hash];
  v10 = [(NSString *)self->_serverIpAddressV6 hash];
  if (*&self->_has)
  {
    v11 = 2654435761u * self->_txnId;
  }

  else
  {
    v11 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(IDSQRProtoReallocateIndication *)self setReallocateToken:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 9))
  {
    [(IDSQRProtoReallocateIndication *)self setSessionId:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(IDSQRProtoReallocateIndication *)self setClientAddress:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 5))
  {
    [(IDSQRProtoReallocateIndication *)self setServerAddress:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 6))
  {
    [(IDSQRProtoReallocateIndication *)self setServerBlob:?];
    fromCopy = v5;
  }

  if ((*(fromCopy + 80) & 2) != 0)
  {
    self->_reason = *(fromCopy + 8);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 7))
  {
    [(IDSQRProtoReallocateIndication *)self setServerIpAddressV4:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 8))
  {
    [(IDSQRProtoReallocateIndication *)self setServerIpAddressV6:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 80))
  {
    self->_txnId = *(fromCopy + 1);
    *&self->_has |= 1u;
  }
}

@end