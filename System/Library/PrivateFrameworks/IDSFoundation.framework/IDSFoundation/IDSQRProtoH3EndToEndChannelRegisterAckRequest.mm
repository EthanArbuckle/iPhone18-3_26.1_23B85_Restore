@interface IDSQRProtoH3EndToEndChannelRegisterAckRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation IDSQRProtoH3EndToEndChannelRegisterAckRequest

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoH3EndToEndChannelRegisterAckRequest;
  v4 = [(IDSQRProtoH3EndToEndChannelRegisterAckRequest *)&v8 description];
  dictionaryRepresentation = [(IDSQRProtoH3EndToEndChannelRegisterAckRequest *)self dictionaryRepresentation];
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

  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_accept];
  [v4 setObject:v6 forKey:@"accept"];

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_e2eChannelUuid)
  {
    sub_1A7E20548();
  }

  v5 = toCopy;
  PBDataWriterWriteDataField();
  PBDataWriterWriteBOOLField();
}

- (void)copyTo:(id)to
{
  e2eChannelUuid = self->_e2eChannelUuid;
  toCopy = to;
  [toCopy setE2eChannelUuid:e2eChannelUuid];
  toCopy[16] = self->_accept;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_e2eChannelUuid copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  *(v5 + 16) = self->_accept;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = [equalCopy isMemberOfClass:objc_opt_class()] && ((e2eChannelUuid = self->_e2eChannelUuid, !(e2eChannelUuid | *(equalCopy + 1))) || -[NSData isEqual:](e2eChannelUuid, "isEqual:")) && self->_accept == equalCopy[16];

  return v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 1))
  {
    v5 = fromCopy;
    [(IDSQRProtoH3EndToEndChannelRegisterAckRequest *)self setE2eChannelUuid:?];
    fromCopy = v5;
  }

  self->_accept = fromCopy[16];
}

@end