@interface IDSQRProtoPluginControlRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation IDSQRProtoPluginControlRequest

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoPluginControlRequest;
  v4 = [(IDSQRProtoPluginControlRequest *)&v8 description];
  v5 = [(IDSQRProtoPluginControlRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_pluginOperation];
  [v3 setObject:v4 forKey:@"plugin_operation"];

  pluginName = self->_pluginName;
  if (pluginName)
  {
    [v3 setObject:pluginName forKey:@"plugin_name"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_pluginStreamId];
    [v3 setObject:v6 forKey:@"plugin_stream_id"];
  }

  pluginClientRawPublicKey = self->_pluginClientRawPublicKey;
  if (pluginClientRawPublicKey)
  {
    [v3 setObject:pluginClientRawPublicKey forKey:@"plugin_client_raw_public_key"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
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

  v4 = v5;
  if (self->_pluginClientRawPublicKey)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v5 = a3;
  v5[6] = self->_pluginOperation;
  [v5 setPluginName:self->_pluginName];
  v4 = v5;
  if (*&self->_has)
  {
    v5[7] = self->_pluginStreamId;
    *(v5 + 32) |= 1u;
  }

  if (self->_pluginClientRawPublicKey)
  {
    [v5 setPluginClientRawPublicKey:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 24) = self->_pluginOperation;
  v6 = [(NSString *)self->_pluginName copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 28) = self->_pluginStreamId;
    *(v5 + 32) |= 1u;
  }

  v8 = [(NSData *)self->_pluginClientRawPublicKey copyWithZone:a3];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  if (self->_pluginOperation != *(v4 + 6))
  {
    goto LABEL_12;
  }

  pluginName = self->_pluginName;
  if (pluginName | *(v4 + 2))
  {
    if (![(NSString *)pluginName isEqual:?])
    {
      goto LABEL_12;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_pluginStreamId != *(v4 + 7))
    {
      goto LABEL_12;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_12:
    v7 = 0;
    goto LABEL_13;
  }

  pluginClientRawPublicKey = self->_pluginClientRawPublicKey;
  if (pluginClientRawPublicKey | *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_pluginOperation = v4[6];
  v5 = v4;
  if (*(v4 + 2))
  {
    [(IDSQRProtoPluginControlRequest *)self setPluginName:?];
    v4 = v5;
  }

  if (v4[8])
  {
    self->_pluginStreamId = v4[7];
    *&self->_has |= 1u;
  }

  if (*(v4 + 1))
  {
    [(IDSQRProtoPluginControlRequest *)self setPluginClientRawPublicKey:?];
    v4 = v5;
  }
}

@end