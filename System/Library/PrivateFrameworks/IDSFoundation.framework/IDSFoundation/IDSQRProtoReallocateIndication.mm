@interface IDSQRProtoReallocateIndication
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)reasonAsString:(int)a3;
- (int)StringAsReason:(id)a3;
- (int)reason;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasReason:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (void)setHasReason:(BOOL)a3
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

- (id)reasonAsString:(int)a3
{
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = @"PERFORMANCE_REDIRECT";
    }

    else
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
    }
  }

  else
  {
    v4 = @"SERVER_SHUTTING_DOWN";
  }

  return v4;
}

- (int)StringAsReason:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SERVER_SHUTTING_DOWN"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"PERFORMANCE_REDIRECT"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoReallocateIndication;
  v4 = [(IDSQRProtoReallocateIndication *)&v8 description];
  v5 = [(IDSQRProtoReallocateIndication *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  reallocateToken = self->_reallocateToken;
  if (reallocateToken)
  {
    [v3 setObject:reallocateToken forKey:@"reallocate_token"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_reallocateToken)
  {
    sub_1A7E12148();
  }

  v6 = v4;
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

- (void)copyTo:(id)a3
{
  v5 = a3;
  [v5 setReallocateToken:self->_reallocateToken];
  [v5 setSessionId:self->_sessionId];
  [v5 setClientAddress:self->_clientAddress];
  [v5 setServerAddress:self->_serverAddress];
  if (self->_serverBlob)
  {
    [v5 setServerBlob:?];
  }

  v4 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 8) = self->_reason;
    *(v5 + 80) |= 2u;
  }

  if (self->_serverIpAddressV4)
  {
    [v5 setServerIpAddressV4:?];
    v4 = v5;
  }

  if (self->_serverIpAddressV6)
  {
    [v5 setServerIpAddressV6:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[1] = self->_txnId;
    *(v4 + 80) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_reallocateToken copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSData *)self->_sessionId copyWithZone:a3];
  v9 = *(v5 + 72);
  *(v5 + 72) = v8;

  v10 = [(NSString *)self->_clientAddress copyWithZone:a3];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  v12 = [(NSString *)self->_serverAddress copyWithZone:a3];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  v14 = [(NSData *)self->_serverBlob copyWithZone:a3];
  v15 = *(v5 + 48);
  *(v5 + 48) = v14;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 32) = self->_reason;
    *(v5 + 80) |= 2u;
  }

  v16 = [(NSString *)self->_serverIpAddressV4 copyWithZone:a3];
  v17 = *(v5 + 56);
  *(v5 + 56) = v16;

  v18 = [(NSString *)self->_serverIpAddressV6 copyWithZone:a3];
  v19 = *(v5 + 64);
  *(v5 + 64) = v18;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_txnId;
    *(v5 + 80) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  reallocateToken = self->_reallocateToken;
  if (reallocateToken | *(v4 + 3))
  {
    if (![(NSData *)reallocateToken isEqual:?])
    {
      goto LABEL_25;
    }
  }

  sessionId = self->_sessionId;
  if (sessionId | *(v4 + 9))
  {
    if (![(NSData *)sessionId isEqual:?])
    {
      goto LABEL_25;
    }
  }

  clientAddress = self->_clientAddress;
  if (clientAddress | *(v4 + 2))
  {
    if (![(NSString *)clientAddress isEqual:?])
    {
      goto LABEL_25;
    }
  }

  serverAddress = self->_serverAddress;
  if (serverAddress | *(v4 + 5))
  {
    if (![(NSString *)serverAddress isEqual:?])
    {
      goto LABEL_25;
    }
  }

  serverBlob = self->_serverBlob;
  if (serverBlob | *(v4 + 6))
  {
    if (![(NSData *)serverBlob isEqual:?])
    {
      goto LABEL_25;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 80) & 2) == 0 || self->_reason != *(v4 + 8))
    {
      goto LABEL_25;
    }
  }

  else if ((*(v4 + 80) & 2) != 0)
  {
LABEL_25:
    v12 = 0;
    goto LABEL_26;
  }

  serverIpAddressV4 = self->_serverIpAddressV4;
  if (serverIpAddressV4 | *(v4 + 7) && ![(NSString *)serverIpAddressV4 isEqual:?])
  {
    goto LABEL_25;
  }

  serverIpAddressV6 = self->_serverIpAddressV6;
  if (serverIpAddressV6 | *(v4 + 8))
  {
    if (![(NSString *)serverIpAddressV6 isEqual:?])
    {
      goto LABEL_25;
    }
  }

  v12 = (*(v4 + 80) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 80) & 1) == 0 || self->_txnId != *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 3))
  {
    [(IDSQRProtoReallocateIndication *)self setReallocateToken:?];
    v4 = v5;
  }

  if (*(v4 + 9))
  {
    [(IDSQRProtoReallocateIndication *)self setSessionId:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(IDSQRProtoReallocateIndication *)self setClientAddress:?];
    v4 = v5;
  }

  if (*(v4 + 5))
  {
    [(IDSQRProtoReallocateIndication *)self setServerAddress:?];
    v4 = v5;
  }

  if (*(v4 + 6))
  {
    [(IDSQRProtoReallocateIndication *)self setServerBlob:?];
    v4 = v5;
  }

  if ((*(v4 + 80) & 2) != 0)
  {
    self->_reason = *(v4 + 8);
    *&self->_has |= 2u;
  }

  if (*(v4 + 7))
  {
    [(IDSQRProtoReallocateIndication *)self setServerIpAddressV4:?];
    v4 = v5;
  }

  if (*(v4 + 8))
  {
    [(IDSQRProtoReallocateIndication *)self setServerIpAddressV6:?];
    v4 = v5;
  }

  if (*(v4 + 80))
  {
    self->_txnId = *(v4 + 1);
    *&self->_has |= 1u;
  }
}

@end