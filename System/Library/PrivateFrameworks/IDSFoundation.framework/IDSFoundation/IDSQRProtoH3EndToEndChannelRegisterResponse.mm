@interface IDSQRProtoH3EndToEndChannelRegisterResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation IDSQRProtoH3EndToEndChannelRegisterResponse

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoH3EndToEndChannelRegisterResponse;
  v4 = [(IDSQRProtoH3EndToEndChannelRegisterResponse *)&v8 description];
  dictionaryRepresentation = [(IDSQRProtoH3EndToEndChannelRegisterResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  virtualQuicServerConnectionId = self->_virtualQuicServerConnectionId;
  if (virtualQuicServerConnectionId)
  {
    [dictionary setObject:virtualQuicServerConnectionId forKey:@"virtual_quic_server_connection_id"];
  }

  channelInfo = self->_channelInfo;
  if (channelInfo)
  {
    dictionaryRepresentation = [(IDSQRProtoH3EndToEndChannelRegisterE2EChannelInfo *)channelInfo dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"channel_info"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_virtualQuicServerConnectionId)
  {
    sub_1A7E1B5E0();
  }

  v5 = toCopy;
  PBDataWriterWriteDataField();
  if (!self->_channelInfo)
  {
    sub_1A7E1B5B4();
  }

  PBDataWriterWriteSubmessage();
}

- (void)copyTo:(id)to
{
  virtualQuicServerConnectionId = self->_virtualQuicServerConnectionId;
  toCopy = to;
  [toCopy setVirtualQuicServerConnectionId:virtualQuicServerConnectionId];
  [toCopy setChannelInfo:self->_channelInfo];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_virtualQuicServerConnectionId copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(IDSQRProtoH3EndToEndChannelRegisterE2EChannelInfo *)self->_channelInfo copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((virtualQuicServerConnectionId = self->_virtualQuicServerConnectionId, !(virtualQuicServerConnectionId | equalCopy[2])) || -[NSData isEqual:](virtualQuicServerConnectionId, "isEqual:")))
  {
    channelInfo = self->_channelInfo;
    if (channelInfo | equalCopy[1])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (fromCopy[2])
  {
    [(IDSQRProtoH3EndToEndChannelRegisterResponse *)self setVirtualQuicServerConnectionId:?];
    fromCopy = v7;
  }

  channelInfo = self->_channelInfo;
  v6 = fromCopy[1];
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

  fromCopy = v7;
LABEL_9:
}

@end