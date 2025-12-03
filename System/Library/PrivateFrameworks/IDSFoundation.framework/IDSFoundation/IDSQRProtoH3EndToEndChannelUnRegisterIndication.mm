@interface IDSQRProtoH3EndToEndChannelUnRegisterIndication
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation IDSQRProtoH3EndToEndChannelUnRegisterIndication

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoH3EndToEndChannelUnRegisterIndication;
  v4 = [(IDSQRProtoH3EndToEndChannelUnRegisterIndication *)&v8 description];
  dictionaryRepresentation = [(IDSQRProtoH3EndToEndChannelUnRegisterIndication *)self dictionaryRepresentation];
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

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_txnId];
  [v4 setObject:v6 forKey:@"txn_id"];

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_e2eChannelUuid)
  {
    sub_1A7E1A51C();
  }

  v5 = toCopy;
  PBDataWriterWriteDataField();
  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)to
{
  e2eChannelUuid = self->_e2eChannelUuid;
  toCopy = to;
  [toCopy setE2eChannelUuid:e2eChannelUuid];
  toCopy[1] = self->_txnId;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_e2eChannelUuid copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v5[1] = self->_txnId;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = [equalCopy isMemberOfClass:objc_opt_class()] && ((e2eChannelUuid = self->_e2eChannelUuid, !(e2eChannelUuid | equalCopy[2])) || -[NSData isEqual:](e2eChannelUuid, "isEqual:")) && self->_txnId == equalCopy[1];

  return v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[2])
  {
    v5 = fromCopy;
    [(IDSQRProtoH3EndToEndChannelUnRegisterIndication *)self setE2eChannelUuid:?];
    fromCopy = v5;
  }

  self->_txnId = fromCopy[1];
}

@end