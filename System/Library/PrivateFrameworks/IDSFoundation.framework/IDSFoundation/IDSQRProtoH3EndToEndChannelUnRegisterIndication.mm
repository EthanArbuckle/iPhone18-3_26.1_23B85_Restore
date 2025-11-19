@interface IDSQRProtoH3EndToEndChannelUnRegisterIndication
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation IDSQRProtoH3EndToEndChannelUnRegisterIndication

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoH3EndToEndChannelUnRegisterIndication;
  v4 = [(IDSQRProtoH3EndToEndChannelUnRegisterIndication *)&v8 description];
  v5 = [(IDSQRProtoH3EndToEndChannelUnRegisterIndication *)self dictionaryRepresentation];
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

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_txnId];
  [v4 setObject:v6 forKey:@"txn_id"];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_e2eChannelUuid)
  {
    sub_1A7E1A51C();
  }

  v5 = v4;
  PBDataWriterWriteDataField();
  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)a3
{
  e2eChannelUuid = self->_e2eChannelUuid;
  v5 = a3;
  [v5 setE2eChannelUuid:e2eChannelUuid];
  v5[1] = self->_txnId;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_e2eChannelUuid copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v5[1] = self->_txnId;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v6 = [v4 isMemberOfClass:objc_opt_class()] && ((e2eChannelUuid = self->_e2eChannelUuid, !(e2eChannelUuid | v4[2])) || -[NSData isEqual:](e2eChannelUuid, "isEqual:")) && self->_txnId == v4[1];

  return v6;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[2])
  {
    v5 = v4;
    [(IDSQRProtoH3EndToEndChannelUnRegisterIndication *)self setE2eChannelUuid:?];
    v4 = v5;
  }

  self->_txnId = v4[1];
}

@end