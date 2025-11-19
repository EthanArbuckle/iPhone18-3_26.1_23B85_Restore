@interface IDSQRProtoPluginControlResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation IDSQRProtoPluginControlResponse

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoPluginControlResponse;
  v4 = [(IDSQRProtoPluginControlResponse *)&v8 description];
  v5 = [(IDSQRProtoPluginControlResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_pluginParticipantId];
    [v3 setObject:v4 forKey:@"plugin_participant_id"];
  }

  pluginServerCertHostname = self->_pluginServerCertHostname;
  if (pluginServerCertHostname)
  {
    [v3 setObject:pluginServerCertHostname forKey:@"plugin_server_cert_hostname"];
  }

  pluginServerCertOid = self->_pluginServerCertOid;
  if (pluginServerCertOid)
  {
    [v3 setObject:pluginServerCertOid forKey:@"plugin_server_cert_oid"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
    v4 = v5;
  }

  if (self->_pluginServerCertHostname)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_pluginServerCertOid)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = self->_pluginParticipantId;
    *(v4 + 32) |= 1u;
  }

  v5 = v4;
  if (self->_pluginServerCertHostname)
  {
    [v4 setPluginServerCertHostname:?];
    v4 = v5;
  }

  if (self->_pluginServerCertOid)
  {
    [v5 setPluginServerCertOid:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_pluginParticipantId;
    *(v5 + 32) |= 1u;
  }

  v7 = [(NSString *)self->_pluginServerCertHostname copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(NSString *)self->_pluginServerCertOid copyWithZone:a3];
  v10 = v6[3];
  v6[3] = v9;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_pluginParticipantId != *(v4 + 1))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  pluginServerCertHostname = self->_pluginServerCertHostname;
  if (pluginServerCertHostname | *(v4 + 2) && ![(NSString *)pluginServerCertHostname isEqual:?])
  {
    goto LABEL_11;
  }

  pluginServerCertOid = self->_pluginServerCertOid;
  if (pluginServerCertOid | *(v4 + 3))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[4])
  {
    self->_pluginParticipantId = v4[1];
    *&self->_has |= 1u;
  }

  v5 = v4;
  if (v4[2])
  {
    [(IDSQRProtoPluginControlResponse *)self setPluginServerCertHostname:?];
    v4 = v5;
  }

  if (v4[3])
  {
    [(IDSQRProtoPluginControlResponse *)self setPluginServerCertOid:?];
    v4 = v5;
  }
}

@end