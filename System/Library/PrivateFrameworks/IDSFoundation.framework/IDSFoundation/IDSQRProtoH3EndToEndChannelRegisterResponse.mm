@interface IDSQRProtoH3EndToEndChannelRegisterResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation IDSQRProtoH3EndToEndChannelRegisterResponse

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoH3EndToEndChannelRegisterResponse;
  v4 = [(IDSQRProtoH3EndToEndChannelRegisterResponse *)&v8 description];
  v5 = [(IDSQRProtoH3EndToEndChannelRegisterResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  virtualQuicServerConnectionId = self->_virtualQuicServerConnectionId;
  if (virtualQuicServerConnectionId)
  {
    [v3 setObject:virtualQuicServerConnectionId forKey:@"virtual_quic_server_connection_id"];
  }

  channelInfo = self->_channelInfo;
  if (channelInfo)
  {
    v7 = [(IDSQRProtoH3EndToEndChannelRegisterE2EChannelInfo *)channelInfo dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"channel_info"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_virtualQuicServerConnectionId)
  {
    sub_1A7E1B5E0();
  }

  v5 = v4;
  PBDataWriterWriteDataField();
  if (!self->_channelInfo)
  {
    sub_1A7E1B5B4();
  }

  PBDataWriterWriteSubmessage();
}

- (void)copyTo:(id)a3
{
  virtualQuicServerConnectionId = self->_virtualQuicServerConnectionId;
  v5 = a3;
  [v5 setVirtualQuicServerConnectionId:virtualQuicServerConnectionId];
  [v5 setChannelInfo:self->_channelInfo];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_virtualQuicServerConnectionId copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(IDSQRProtoH3EndToEndChannelRegisterE2EChannelInfo *)self->_channelInfo copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((virtualQuicServerConnectionId = self->_virtualQuicServerConnectionId, !(virtualQuicServerConnectionId | v4[2])) || -[NSData isEqual:](virtualQuicServerConnectionId, "isEqual:")))
  {
    channelInfo = self->_channelInfo;
    if (channelInfo | v4[1])
    {
      v7 = [(IDSQRProtoH3EndToEndChannelRegisterE2EChannelInfo *)channelInfo isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4[2])
  {
    [(IDSQRProtoH3EndToEndChannelRegisterResponse *)self setVirtualQuicServerConnectionId:?];
    v4 = v7;
  }

  channelInfo = self->_channelInfo;
  v6 = v4[1];
  if (channelInfo)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(IDSQRProtoH3EndToEndChannelRegisterE2EChannelInfo *)channelInfo mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(IDSQRProtoH3EndToEndChannelRegisterResponse *)self setChannelInfo:?];
  }

  v4 = v7;
LABEL_9:
}

@end