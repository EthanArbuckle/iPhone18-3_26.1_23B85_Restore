@interface IDSQRProtoH3EndToEndChannelRegisterIndication
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation IDSQRProtoH3EndToEndChannelRegisterIndication

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoH3EndToEndChannelRegisterIndication;
  v4 = [(IDSQRProtoH3EndToEndChannelRegisterIndication *)&v8 description];
  v5 = [(IDSQRProtoH3EndToEndChannelRegisterIndication *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  e2eChannelUuid = self->_e2eChannelUuid;
  if (e2eChannelUuid)
  {
    [v3 setObject:e2eChannelUuid forKey:@"e2e_channel_uuid"];
  }

  channelInfo = self->_channelInfo;
  if (channelInfo)
  {
    v7 = [(IDSQRProtoH3EndToEndChannelRegisterE2EChannelInfo *)channelInfo dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"channel_info"];
  }

  virtualQuicClientConnectionId = self->_virtualQuicClientConnectionId;
  if (virtualQuicClientConnectionId)
  {
    [v4 setObject:virtualQuicClientConnectionId forKey:@"virtual_quic_client_connection_id"];
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_txnId];
  [v4 setObject:v9 forKey:@"txn_id"];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_e2eChannelUuid)
  {
    sub_1A7E1BB74();
  }

  PBDataWriterWriteDataField();
  if (!self->_channelInfo)
  {
    sub_1A7E1BB48();
  }

  PBDataWriterWriteSubmessage();
  if (!self->_virtualQuicClientConnectionId)
  {
    sub_1A7E1BB1C();
  }

  PBDataWriterWriteDataField();
  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)a3
{
  e2eChannelUuid = self->_e2eChannelUuid;
  v5 = a3;
  [v5 setE2eChannelUuid:e2eChannelUuid];
  [v5 setChannelInfo:self->_channelInfo];
  [v5 setVirtualQuicClientConnectionId:self->_virtualQuicClientConnectionId];
  v5[1] = self->_txnId;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_e2eChannelUuid copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(IDSQRProtoH3EndToEndChannelRegisterE2EChannelInfo *)self->_channelInfo copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSData *)self->_virtualQuicClientConnectionId copyWithZone:a3];
  v11 = v5[4];
  v5[4] = v10;

  v5[1] = self->_txnId;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8 = [v4 isMemberOfClass:objc_opt_class()] && ((e2eChannelUuid = self->_e2eChannelUuid, !(e2eChannelUuid | v4[3])) || -[NSData isEqual:](e2eChannelUuid, "isEqual:")) && ((channelInfo = self->_channelInfo, !(channelInfo | v4[2])) || -[IDSQRProtoH3EndToEndChannelRegisterE2EChannelInfo isEqual:](channelInfo, "isEqual:")) && ((virtualQuicClientConnectionId = self->_virtualQuicClientConnectionId, !(virtualQuicClientConnectionId | v4[4])) || -[NSData isEqual:](virtualQuicClientConnectionId, "isEqual:")) && self->_txnId == v4[1];

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_e2eChannelUuid hash];
  v4 = [(IDSQRProtoH3EndToEndChannelRegisterE2EChannelInfo *)self->_channelInfo hash]^ v3;
  return v4 ^ [(NSData *)self->_virtualQuicClientConnectionId hash]^ (2654435761u * self->_txnId);
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4[3])
  {
    [(IDSQRProtoH3EndToEndChannelRegisterIndication *)self setE2eChannelUuid:?];
    v4 = v7;
  }

  channelInfo = self->_channelInfo;
  v6 = v4[2];
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

    [(IDSQRProtoH3EndToEndChannelRegisterIndication *)self setChannelInfo:?];
  }

  v4 = v7;
LABEL_9:
  if (v4[4])
  {
    [(IDSQRProtoH3EndToEndChannelRegisterIndication *)self setVirtualQuicClientConnectionId:?];
    v4 = v7;
  }

  self->_txnId = v4[1];
}

@end