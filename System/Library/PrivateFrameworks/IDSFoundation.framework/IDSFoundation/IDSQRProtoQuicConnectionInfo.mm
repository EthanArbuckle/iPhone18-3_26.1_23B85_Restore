@interface IDSQRProtoQuicConnectionInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)quicConnectionTypeAsString:(int)string;
- (int)StringAsQuicConnectionType:(id)type;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation IDSQRProtoQuicConnectionInfo

- (id)quicConnectionTypeAsString:(int)string
{
  if (string)
  {
    if (string == 1)
    {
      v4 = @"IDS";
    }

    else
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
    }
  }

  else
  {
    v4 = @"AVC";
  }

  return v4;
}

- (int)StringAsQuicConnectionType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"AVC"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [typeCopy isEqualToString:@"IDS"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoQuicConnectionInfo;
  v4 = [(IDSQRProtoQuicConnectionInfo *)&v8 description];
  dictionaryRepresentation = [(IDSQRProtoQuicConnectionInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
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

  [dictionary setObject:v5 forKey:@"quic_connection_type"];

  quicConnectionId = self->_quicConnectionId;
  if (quicConnectionId)
  {
    [dictionary setObject:quicConnectionId forKey:@"quic_connection_id"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteInt32Field();
  if (!self->_quicConnectionId)
  {
    sub_1A7E204F4();
  }

  PBDataWriterWriteDataField();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 16) = self->_quicConnectionType;
  v6 = [(NSData *)self->_quicConnectionId copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && self->_quicConnectionType == *(equalCopy + 4))
  {
    quicConnectionId = self->_quicConnectionId;
    if (quicConnectionId | equalCopy[1])
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

- (void)mergeFrom:(id)from
{
  self->_quicConnectionType = *(from + 4);
  if (*(from + 1))
  {
    [(IDSQRProtoQuicConnectionInfo *)self setQuicConnectionId:?];
  }
}

@end