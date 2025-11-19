@interface IDSQRProtoH3EndToEndChannelRegisterE2EChannelInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation IDSQRProtoH3EndToEndChannelRegisterE2EChannelInfo

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoH3EndToEndChannelRegisterE2EChannelInfo;
  v4 = [(IDSQRProtoH3EndToEndChannelRegisterE2EChannelInfo *)&v8 description];
  v5 = [(IDSQRProtoH3EndToEndChannelRegisterE2EChannelInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  quicClientConnectionId = self->_quicClientConnectionId;
  if (quicClientConnectionId)
  {
    [v3 setObject:quicClientConnectionId forKey:@"quic_client_connection_id"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_quicClientConnectionId)
  {
    [v4 setQuicClientConnectionId:?];
    v4 = v5;
  }

  if (self->_quicServerConnectionId)
  {
    [v5 setQuicServerConnectionId:?];
    v4 = v5;
  }

  *(v4 + 4) = self->_quicClientLinkId;
  *(v4 + 8) = self->_quicServerLinkId;
  *(v4 + 36) = self->_serverGeneratedConnectionIds;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_quicClientConnectionId copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSData *)self->_quicServerConnectionId copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  *(v5 + 16) = self->_quicClientLinkId;
  *(v5 + 32) = self->_quicServerLinkId;
  *(v5 + 36) = self->_serverGeneratedConnectionIds;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7 = [v4 isMemberOfClass:objc_opt_class()] && ((quicClientConnectionId = self->_quicClientConnectionId, !(quicClientConnectionId | *(v4 + 1))) || -[NSData isEqual:](quicClientConnectionId, "isEqual:")) && ((quicServerConnectionId = self->_quicServerConnectionId, !(quicServerConnectionId | *(v4 + 3))) || -[NSData isEqual:](quicServerConnectionId, "isEqual:")) && self->_quicClientLinkId == *(v4 + 4) && self->_quicServerLinkId == *(v4 + 8) && self->_serverGeneratedConnectionIds == v4[36];

  return v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 1))
  {
    [(IDSQRProtoH3EndToEndChannelRegisterE2EChannelInfo *)self setQuicClientConnectionId:?];
    v4 = v5;
  }

  if (*(v4 + 3))
  {
    [(IDSQRProtoH3EndToEndChannelRegisterE2EChannelInfo *)self setQuicServerConnectionId:?];
    v4 = v5;
  }

  self->_quicClientLinkId = *(v4 + 4);
  self->_quicServerLinkId = *(v4 + 8);
  self->_serverGeneratedConnectionIds = *(v4 + 36);
}

@end