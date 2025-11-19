@interface IDSQRProtoH3EndToEndChannelUnRegisterRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation IDSQRProtoH3EndToEndChannelUnRegisterRequest

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoH3EndToEndChannelUnRegisterRequest;
  v4 = [(IDSQRProtoH3EndToEndChannelUnRegisterRequest *)&v8 description];
  v5 = [(IDSQRProtoH3EndToEndChannelUnRegisterRequest *)self dictionaryRepresentation];
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

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_e2eChannelUuid)
  {
    sub_1A7E1BAF0();
  }

  v5 = v4;
  PBDataWriterWriteDataField();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_e2eChannelUuid copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    e2eChannelUuid = self->_e2eChannelUuid;
    if (e2eChannelUuid | v4[1])
    {
      v6 = [(NSData *)e2eChannelUuid isEqual:?];
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

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 1))
  {
    [(IDSQRProtoH3EndToEndChannelUnRegisterRequest *)self setE2eChannelUuid:?];
  }
}

@end