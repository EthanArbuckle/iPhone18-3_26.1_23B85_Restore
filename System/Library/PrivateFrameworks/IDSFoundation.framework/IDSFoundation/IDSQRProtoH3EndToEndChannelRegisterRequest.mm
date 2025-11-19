@interface IDSQRProtoH3EndToEndChannelRegisterRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation IDSQRProtoH3EndToEndChannelRegisterRequest

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoH3EndToEndChannelRegisterRequest;
  v4 = [(IDSQRProtoH3EndToEndChannelRegisterRequest *)&v8 description];
  v5 = [(IDSQRProtoH3EndToEndChannelRegisterRequest *)self dictionaryRepresentation];
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

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_e2eChannelUuid)
  {
    sub_1A7E21564();
  }

  v5 = v4;
  PBDataWriterWriteDataField();
  if (!self->_channelInfo)
  {
    sub_1A7E21538();
  }

  PBDataWriterWriteSubmessage();
}

- (void)copyTo:(id)a3
{
  e2eChannelUuid = self->_e2eChannelUuid;
  v5 = a3;
  [v5 setE2eChannelUuid:e2eChannelUuid];
  [v5 setChannelInfo:self->_channelInfo];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_e2eChannelUuid copyWithZone:a3];
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
  if ([v4 isMemberOfClass:objc_opt_class()] && ((e2eChannelUuid = self->_e2eChannelUuid, !(e2eChannelUuid | v4[2])) || -[NSData isEqual:](e2eChannelUuid, "isEqual:")))
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
    [(IDSQRProtoH3EndToEndChannelRegisterRequest *)self setE2eChannelUuid:?];
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

    [(IDSQRProtoH3EndToEndChannelRegisterRequest *)self setChannelInfo:?];
  }

  v4 = v7;
LABEL_9:
}

@end