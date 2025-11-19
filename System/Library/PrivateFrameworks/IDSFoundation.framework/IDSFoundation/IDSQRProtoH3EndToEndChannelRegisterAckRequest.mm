@interface IDSQRProtoH3EndToEndChannelRegisterAckRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation IDSQRProtoH3EndToEndChannelRegisterAckRequest

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoH3EndToEndChannelRegisterAckRequest;
  v4 = [(IDSQRProtoH3EndToEndChannelRegisterAckRequest *)&v8 description];
  v5 = [(IDSQRProtoH3EndToEndChannelRegisterAckRequest *)self dictionaryRepresentation];
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

  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_accept];
  [v4 setObject:v6 forKey:@"accept"];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_e2eChannelUuid)
  {
    sub_1A7E20548();
  }

  v5 = v4;
  PBDataWriterWriteDataField();
  PBDataWriterWriteBOOLField();
}

- (void)copyTo:(id)a3
{
  e2eChannelUuid = self->_e2eChannelUuid;
  v5 = a3;
  [v5 setE2eChannelUuid:e2eChannelUuid];
  v5[16] = self->_accept;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_e2eChannelUuid copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  *(v5 + 16) = self->_accept;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v6 = [v4 isMemberOfClass:objc_opt_class()] && ((e2eChannelUuid = self->_e2eChannelUuid, !(e2eChannelUuid | *(v4 + 1))) || -[NSData isEqual:](e2eChannelUuid, "isEqual:")) && self->_accept == v4[16];

  return v6;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 1))
  {
    v5 = v4;
    [(IDSQRProtoH3EndToEndChannelRegisterAckRequest *)self setE2eChannelUuid:?];
    v4 = v5;
  }

  self->_accept = v4[16];
}

@end