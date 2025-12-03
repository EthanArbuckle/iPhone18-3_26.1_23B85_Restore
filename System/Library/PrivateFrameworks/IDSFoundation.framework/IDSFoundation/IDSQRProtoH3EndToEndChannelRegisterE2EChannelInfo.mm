@interface IDSQRProtoH3EndToEndChannelRegisterE2EChannelInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation IDSQRProtoH3EndToEndChannelRegisterE2EChannelInfo

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoH3EndToEndChannelRegisterE2EChannelInfo;
  v4 = [(IDSQRProtoH3EndToEndChannelRegisterE2EChannelInfo *)&v8 description];
  dictionaryRepresentation = [(IDSQRProtoH3EndToEndChannelRegisterE2EChannelInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  quicClientConnectionId = self->_quicClientConnectionId;
  if (quicClientConnectionId)
  {
    [dictionary setObject:quicClientConnectionId forKey:@"quic_client_connection_id"];
  }

  quicServerConnectionId = self->_quicServerConnectionId;
  if (quicServerConnectionId)
  {
    [v4 setObject:quicServerConnectionId forKey:@"quic_server_connection_id"];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_quicClientLinkId];
  [v4 setObject:v7 forKey:@"quic_client_link_id"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_quicServerLinkId];
  [v4 setObject:v8 forKey:@"quic_server_link_id"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_serverGeneratedConnectionIds];
  [v4 setObject:v9 forKey:@"server_generated_connection_ids"];

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_quicClientConnectionId)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_quicServerConnectionId)
  {
    PBDataWriterWriteDataField();
  }

  PBDataWriterWriteUint32Field();
  PBDataWriterWriteUint32Field();
  PBDataWriterWriteBOOLField();
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_quicClientConnectionId)
  {
    [toCopy setQuicClientConnectionId:?];
    toCopy = v5;
  }

  if (self->_quicServerConnectionId)
  {
    [v5 setQuicServerConnectionId:?];
    toCopy = v5;
  }

  *(toCopy + 4) = self->_quicClientLinkId;
  *(toCopy + 8) = self->_quicServerLinkId;
  *(toCopy + 36) = self->_serverGeneratedConnectionIds;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_quicClientConnectionId copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSData *)self->_quicServerConnectionId copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  *(v5 + 16) = self->_quicClientLinkId;
  *(v5 + 32) = self->_quicServerLinkId;
  *(v5 + 36) = self->_serverGeneratedConnectionIds;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7 = [equalCopy isMemberOfClass:objc_opt_class()] && ((quicClientConnectionId = self->_quicClientConnectionId, !(quicClientConnectionId | *(equalCopy + 1))) || -[NSData isEqual:](quicClientConnectionId, "isEqual:")) && ((quicServerConnectionId = self->_quicServerConnectionId, !(quicServerConnectionId | *(equalCopy + 3))) || -[NSData isEqual:](quicServerConnectionId, "isEqual:")) && self->_quicClientLinkId == *(equalCopy + 4) && self->_quicServerLinkId == *(equalCopy + 8) && self->_serverGeneratedConnectionIds == equalCopy[36];

  return v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(IDSQRProtoH3EndToEndChannelRegisterE2EChannelInfo *)self setQuicClientConnectionId:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(IDSQRProtoH3EndToEndChannelRegisterE2EChannelInfo *)self setQuicServerConnectionId:?];
    fromCopy = v5;
  }

  self->_quicClientLinkId = *(fromCopy + 4);
  self->_quicServerLinkId = *(fromCopy + 8);
  self->_serverGeneratedConnectionIds = *(fromCopy + 36);
}

@end