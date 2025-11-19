@interface _MRGroupSessionFastSyncMessageProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsMessageType:(id)a3;
- (int)messageType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRGroupSessionFastSyncMessageProtobuf

- (int)messageType
{
  if (*&self->_has)
  {
    return self->_messageType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsMessageType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"LeaderDiscovery"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"IdentityShare"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"IdentityShareReply"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"MemberSync"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SessionEnd"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"RemoteControl"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"TransportMigration"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"TransportMigrationReply"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"RemoteJoinResponse"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"RemoteRemoveRequest"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"RemoteRemoveAllRequest"])
  {
    v4 = 10;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRGroupSessionFastSyncMessageProtobuf;
  v4 = [(_MRGroupSessionFastSyncMessageProtobuf *)&v8 description];
  v5 = [(_MRGroupSessionFastSyncMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    messageType = self->_messageType;
    if (messageType >= 0xB)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_messageType];
    }

    else
    {
      v5 = off_1E769E048[messageType];
    }

    [v3 setObject:v5 forKey:@"messageType"];
  }

  payload = self->_payload;
  if (payload)
  {
    [v3 setObject:payload forKey:@"payload"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    messageType = self->_messageType;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_payload)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[2] = self->_messageType;
    *(v4 + 24) |= 1u;
  }

  if (self->_payload)
  {
    v5 = v4;
    [v4 setPayload:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_messageType;
    *(v5 + 24) |= 1u;
  }

  v7 = [(NSData *)self->_payload copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(v4 + 24);
  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_messageType != *(v4 + 2))
    {
      goto LABEL_9;
    }
  }

  else if (*(v4 + 24))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  payload = self->_payload;
  if (payload | *(v4 + 2))
  {
    v7 = [(NSData *)payload isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_10:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_messageType;
  }

  else
  {
    v2 = 0;
  }

  return [(NSData *)self->_payload hash]^ v2;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[6])
  {
    self->_messageType = v4[2];
    *&self->_has |= 1u;
  }

  if (*(v4 + 2))
  {
    v5 = v4;
    [(_MRGroupSessionFastSyncMessageProtobuf *)self setPayload:?];
    v4 = v5;
  }
}

@end