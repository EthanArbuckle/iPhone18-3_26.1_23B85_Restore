@interface IDSQRProtoPluginControlRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation IDSQRProtoPluginControlRequest

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoPluginControlRequest;
  v4 = [(IDSQRProtoPluginControlRequest *)&v8 description];
  dictionaryRepresentation = [(IDSQRProtoPluginControlRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_pluginOperation];
  [dictionary setObject:v4 forKey:@"plugin_operation"];

  pluginName = self->_pluginName;
  if (pluginName)
  {
    [dictionary setObject:pluginName forKey:@"plugin_name"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_pluginStreamId];
    [dictionary setObject:v6 forKey:@"plugin_stream_id"];
  }

  pluginClientRawPublicKey = self->_pluginClientRawPublicKey;
  if (pluginClientRawPublicKey)
  {
    [dictionary setObject:pluginClientRawPublicKey forKey:@"plugin_client_raw_public_key"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteUint32Field();
  if (!self->_pluginName)
  {
    sub_1A7E1AC90();
  }

  PBDataWriterWriteStringField();
  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  v4 = toCopy;
  if (self->_pluginClientRawPublicKey)
  {
    PBDataWriterWriteDataField();
    v4 = toCopy;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[6] = self->_pluginOperation;
  [toCopy setPluginName:self->_pluginName];
  v4 = toCopy;
  if (*&self->_has)
  {
    toCopy[7] = self->_pluginStreamId;
    *(toCopy + 32) |= 1u;
  }

  if (self->_pluginClientRawPublicKey)
  {
    [toCopy setPluginClientRawPublicKey:?];
    v4 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 24) = self->_pluginOperation;
  v6 = [(NSString *)self->_pluginName copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 28) = self->_pluginStreamId;
    *(v5 + 32) |= 1u;
  }

  v8 = [(NSData *)self->_pluginClientRawPublicKey copyWithZone:zone];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  if (self->_pluginOperation != *(equalCopy + 6))
  {
    goto LABEL_12;
  }

  pluginName = self->_pluginName;
  if (pluginName | *(equalCopy + 2))
  {
    if (![(NSString *)pluginName isEqual:?])
    {
      goto LABEL_12;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_pluginStreamId != *(equalCopy + 7))
    {
      goto LABEL_12;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_12:
    v7 = 0;
    goto LABEL_13;
  }

  pluginClientRawPublicKey = self->_pluginClientRawPublicKey;
  if (pluginClientRawPublicKey | *(equalCopy + 1))
  {
    v7 = [(NSData *)pluginClientRawPublicKey isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_13:

  return v7;
}

- (unint64_t)hash
{
  pluginOperation = self->_pluginOperation;
  v4 = [(NSString *)self->_pluginName hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_pluginStreamId;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v5 ^ [(NSData *)self->_pluginClientRawPublicKey hash]^ (2654435761 * pluginOperation);
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_pluginOperation = fromCopy[6];
  v5 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(IDSQRProtoPluginControlRequest *)self setPluginName:?];
    fromCopy = v5;
  }

  if (fromCopy[8])
  {
    self->_pluginStreamId = fromCopy[7];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 1))
  {
    [(IDSQRProtoPluginControlRequest *)self setPluginClientRawPublicKey:?];
    fromCopy = v5;
  }
}

@end