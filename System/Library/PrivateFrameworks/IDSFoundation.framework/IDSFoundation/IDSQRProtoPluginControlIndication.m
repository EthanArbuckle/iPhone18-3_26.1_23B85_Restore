@interface IDSQRProtoPluginControlIndication
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation IDSQRProtoPluginControlIndication

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoPluginControlIndication;
  v4 = [(IDSQRProtoPluginControlIndication *)&v8 description];
  v5 = [(IDSQRProtoPluginControlIndication *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_pluginOperation];
  [v3 setObject:v4 forKey:@"plugin_operation"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_pluginParticipantId];
  [v3 setObject:v5 forKey:@"plugin_participant_id"];

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_txnId];
    [v3 setObject:v6 forKey:@"txn_id"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  PBDataWriterWriteUint32Field();
  PBDataWriterWriteUint64Field();
  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }
}

- (void)copyTo:(id)a3
{
  *(a3 + 6) = self->_pluginOperation;
  *(a3 + 1) = self->_pluginParticipantId;
  if (*&self->_has)
  {
    *(a3 + 2) = self->_txnId;
    *(a3 + 28) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 6) = self->_pluginOperation;
  *(result + 1) = self->_pluginParticipantId;
  if (*&self->_has)
  {
    *(result + 2) = self->_txnId;
    *(result + 28) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()] || self->_pluginOperation != *(v4 + 6) || self->_pluginParticipantId != *(v4 + 1))
  {
    goto LABEL_8;
  }

  v5 = (*(v4 + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) != 0 && self->_txnId == *(v4 + 2))
    {
      v5 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v5 = 0;
  }

LABEL_9:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761u * self->_txnId;
  }

  else
  {
    v2 = 0;
  }

  return (2654435761u * self->_pluginParticipantId) ^ (2654435761 * self->_pluginOperation) ^ v2;
}

- (void)mergeFrom:(id)a3
{
  self->_pluginOperation = *(a3 + 6);
  self->_pluginParticipantId = *(a3 + 1);
  if (*(a3 + 28))
  {
    self->_txnId = *(a3 + 2);
    *&self->_has |= 1u;
  }
}

@end