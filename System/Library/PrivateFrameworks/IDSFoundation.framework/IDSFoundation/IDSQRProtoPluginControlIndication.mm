@interface IDSQRProtoPluginControlIndication
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation IDSQRProtoPluginControlIndication

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoPluginControlIndication;
  v4 = [(IDSQRProtoPluginControlIndication *)&v8 description];
  dictionaryRepresentation = [(IDSQRProtoPluginControlIndication *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_pluginOperation];
  [dictionary setObject:v4 forKey:@"plugin_operation"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_pluginParticipantId];
  [dictionary setObject:v5 forKey:@"plugin_participant_id"];

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_txnId];
    [dictionary setObject:v6 forKey:@"txn_id"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteUint32Field();
  PBDataWriterWriteUint64Field();
  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }
}

- (void)copyTo:(id)to
{
  *(to + 6) = self->_pluginOperation;
  *(to + 1) = self->_pluginParticipantId;
  if (*&self->_has)
  {
    *(to + 2) = self->_txnId;
    *(to + 28) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 6) = self->_pluginOperation;
  *(result + 1) = self->_pluginParticipantId;
  if (*&self->_has)
  {
    *(result + 2) = self->_txnId;
    *(result + 28) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()] || self->_pluginOperation != *(equalCopy + 6) || self->_pluginParticipantId != *(equalCopy + 1))
  {
    goto LABEL_8;
  }

  v5 = (*(equalCopy + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) != 0 && self->_txnId == *(equalCopy + 2))
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

- (void)mergeFrom:(id)from
{
  self->_pluginOperation = *(from + 6);
  self->_pluginParticipantId = *(from + 1);
  if (*(from + 28))
  {
    self->_txnId = *(from + 2);
    *&self->_has |= 1u;
  }
}

@end