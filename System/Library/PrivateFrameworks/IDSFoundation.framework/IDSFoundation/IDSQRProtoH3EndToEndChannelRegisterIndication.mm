@interface IDSQRProtoH3EndToEndChannelRegisterIndication
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation IDSQRProtoH3EndToEndChannelRegisterIndication

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoH3EndToEndChannelRegisterIndication;
  v4 = [(IDSQRProtoH3EndToEndChannelRegisterIndication *)&v8 description];
  dictionaryRepresentation = [(IDSQRProtoH3EndToEndChannelRegisterIndication *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  e2eChannelUuid = self->_e2eChannelUuid;
  if (e2eChannelUuid)
  {
    [dictionary setObject:e2eChannelUuid forKey:@"e2e_channel_uuid"];
  }

  channelInfo = self->_channelInfo;
  if (channelInfo)
  {
    dictionaryRepresentation = [(IDSQRProtoH3EndToEndChannelRegisterE2EChannelInfo *)channelInfo dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"channel_info"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
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

- (void)copyTo:(id)to
{
  e2eChannelUuid = self->_e2eChannelUuid;
  toCopy = to;
  [toCopy setE2eChannelUuid:e2eChannelUuid];
  [toCopy setChannelInfo:self->_channelInfo];
  [toCopy setVirtualQuicClientConnectionId:self->_virtualQuicClientConnectionId];
  toCopy[1] = self->_txnId;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_e2eChannelUuid copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(IDSQRProtoH3EndToEndChannelRegisterE2EChannelInfo *)self->_channelInfo copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSData *)self->_virtualQuicClientConnectionId copyWithZone:zone];
  v11 = v5[4];
  v5[4] = v10;

  v5[1] = self->_txnId;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8 = [equalCopy isMemberOfClass:objc_opt_class()] && ((e2eChannelUuid = self->_e2eChannelUuid, !(e2eChannelUuid | equalCopy[3])) || -[NSData isEqual:](e2eChannelUuid, "isEqual:")) && ((channelInfo = self->_channelInfo, !(channelInfo | equalCopy[2])) || -[IDSQRProtoH3EndToEndChannelRegisterE2EChannelInfo isEqual:](channelInfo, "isEqual:")) && ((virtualQuicClientConnectionId = self->_virtualQuicClientConnectionId, !(virtualQuicClientConnectionId | equalCopy[4])) || -[NSData isEqual:](virtualQuicClientConnectionId, "isEqual:")) && self->_txnId == equalCopy[1];

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_e2eChannelUuid hash];
  v4 = [(IDSQRProtoH3EndToEndChannelRegisterE2EChannelInfo *)self->_channelInfo hash]^ v3;
  return v4 ^ [(NSData *)self->_virtualQuicClientConnectionId hash]^ (2654435761u * self->_txnId);
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (fromCopy[3])
  {
    [(IDSQRProtoH3EndToEndChannelRegisterIndication *)self setE2eChannelUuid:?];
    fromCopy = v7;
  }

  channelInfo = self->_channelInfo;
  v6 = fromCopy[2];
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

  fromCopy = v7;
LABEL_9:
  if (fromCopy[4])
  {
    [(IDSQRProtoH3EndToEndChannelRegisterIndication *)self setVirtualQuicClientConnectionId:?];
    fromCopy = v7;
  }

  self->_txnId = fromCopy[1];
}

@end