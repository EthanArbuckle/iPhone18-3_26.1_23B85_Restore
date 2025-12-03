@interface IDSQRProtoH3EndToEndChannelUnRegisterRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation IDSQRProtoH3EndToEndChannelUnRegisterRequest

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoH3EndToEndChannelUnRegisterRequest;
  v4 = [(IDSQRProtoH3EndToEndChannelUnRegisterRequest *)&v8 description];
  dictionaryRepresentation = [(IDSQRProtoH3EndToEndChannelUnRegisterRequest *)self dictionaryRepresentation];
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

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_e2eChannelUuid)
  {
    sub_1A7E1BAF0();
  }

  v5 = toCopy;
  PBDataWriterWriteDataField();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_e2eChannelUuid copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    e2eChannelUuid = self->_e2eChannelUuid;
    if (e2eChannelUuid | equalCopy[1])
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

- (void)mergeFrom:(id)from
{
  if (*(from + 1))
  {
    [(IDSQRProtoH3EndToEndChannelUnRegisterRequest *)self setE2eChannelUuid:?];
  }
}

@end