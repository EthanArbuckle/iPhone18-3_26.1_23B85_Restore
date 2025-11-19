@interface IDSQRProtoQuicConnectionInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)quicConnectionTypeAsString:(int)a3;
- (int)StringAsQuicConnectionType:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation IDSQRProtoQuicConnectionInfo

- (id)quicConnectionTypeAsString:(int)a3
{
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = @"IDS";
    }

    else
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
    }
  }

  else
  {
    v4 = @"AVC";
  }

  return v4;
}

- (int)StringAsQuicConnectionType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"AVC"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"IDS"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoQuicConnectionInfo;
  v4 = [(IDSQRProtoQuicConnectionInfo *)&v8 description];
  v5 = [(IDSQRProtoQuicConnectionInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  quicConnectionType = self->_quicConnectionType;
  if (quicConnectionType)
  {
    if (quicConnectionType == 1)
    {
      v5 = @"IDS";
    }

    else
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_quicConnectionType];
    }
  }

  else
  {
    v5 = @"AVC";
  }

  [v3 setObject:v5 forKey:@"quic_connection_type"];

  quicConnectionId = self->_quicConnectionId;
  if (quicConnectionId)
  {
    [v3 setObject:quicConnectionId forKey:@"quic_connection_id"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  PBDataWriterWriteInt32Field();
  if (!self->_quicConnectionId)
  {
    sub_1A7E204F4();
  }

  PBDataWriterWriteDataField();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 16) = self->_quicConnectionType;
  v6 = [(NSData *)self->_quicConnectionId copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && self->_quicConnectionType == *(v4 + 4))
  {
    quicConnectionId = self->_quicConnectionId;
    if (quicConnectionId | v4[1])
    {
      v6 = [(NSData *)quicConnectionId isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)a3
{
  self->_quicConnectionType = *(a3 + 4);
  if (*(a3 + 1))
  {
    [(IDSQRProtoQuicConnectionInfo *)self setQuicConnectionId:?];
  }
}

@end