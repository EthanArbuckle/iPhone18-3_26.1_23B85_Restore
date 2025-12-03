@interface IDSQRProtoPluginControlResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation IDSQRProtoPluginControlResponse

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoPluginControlResponse;
  v4 = [(IDSQRProtoPluginControlResponse *)&v8 description];
  dictionaryRepresentation = [(IDSQRProtoPluginControlResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_pluginParticipantId];
    [dictionary setObject:v4 forKey:@"plugin_participant_id"];
  }

  pluginServerCertHostname = self->_pluginServerCertHostname;
  if (pluginServerCertHostname)
  {
    [dictionary setObject:pluginServerCertHostname forKey:@"plugin_server_cert_hostname"];
  }

  pluginServerCertOid = self->_pluginServerCertOid;
  if (pluginServerCertOid)
  {
    [dictionary setObject:pluginServerCertOid forKey:@"plugin_server_cert_oid"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
    toCopy = v5;
  }

  if (self->_pluginServerCertHostname)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_pluginServerCertOid)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = self->_pluginParticipantId;
    *(toCopy + 32) |= 1u;
  }

  v5 = toCopy;
  if (self->_pluginServerCertHostname)
  {
    [toCopy setPluginServerCertHostname:?];
    toCopy = v5;
  }

  if (self->_pluginServerCertOid)
  {
    [v5 setPluginServerCertOid:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_pluginParticipantId;
    *(v5 + 32) |= 1u;
  }

  v7 = [(NSString *)self->_pluginServerCertHostname copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(NSString *)self->_pluginServerCertOid copyWithZone:zone];
  v10 = v6[3];
  v6[3] = v9;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_pluginParticipantId != *(equalCopy + 1))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  pluginServerCertHostname = self->_pluginServerCertHostname;
  if (pluginServerCertHostname | *(equalCopy + 2) && ![(NSString *)pluginServerCertHostname isEqual:?])
  {
    goto LABEL_11;
  }

  pluginServerCertOid = self->_pluginServerCertOid;
  if (pluginServerCertOid | *(equalCopy + 3))
  {
    v7 = [(NSString *)pluginServerCertOid isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_12:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_pluginParticipantId;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_pluginServerCertHostname hash]^ v3;
  return v4 ^ [(NSString *)self->_pluginServerCertOid hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[4])
  {
    self->_pluginParticipantId = fromCopy[1];
    *&self->_has |= 1u;
  }

  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(IDSQRProtoPluginControlResponse *)self setPluginServerCertHostname:?];
    fromCopy = v5;
  }

  if (fromCopy[3])
  {
    [(IDSQRProtoPluginControlResponse *)self setPluginServerCertOid:?];
    fromCopy = v5;
  }
}

@end