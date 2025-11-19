@interface NPKProtoRemoteAdminPerformRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoRemoteAdminPerformRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoRemoteAdminPerformRequest;
  v4 = [(NPKProtoRemoteAdminPerformRequest *)&v8 description];
  v5 = [(NPKProtoRemoteAdminPerformRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  url = self->_url;
  if (url)
  {
    [v3 setObject:url forKey:@"url"];
  }

  seid = self->_seid;
  if (seid)
  {
    [v4 setObject:seid forKey:@"seid"];
  }

  command = self->_command;
  if (command)
  {
    [v4 setObject:command forKey:@"command"];
  }

  infoDictionary = self->_infoDictionary;
  if (infoDictionary)
  {
    [v4 setObject:infoDictionary forKey:@"infoDictionary"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_url)
  {
    [NPKProtoRemoteAdminPerformRequest writeTo:];
  }

  PBDataWriterWriteDataField();
  if (!self->_seid)
  {
    [NPKProtoRemoteAdminPerformRequest writeTo:];
  }

  PBDataWriterWriteStringField();
  if (!self->_command)
  {
    [NPKProtoRemoteAdminPerformRequest writeTo:];
  }

  PBDataWriterWriteStringField();
  if (self->_infoDictionary)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  [v4 setUrl:self->_url];
  [v4 setSeid:self->_seid];
  [v4 setCommand:self->_command];
  if (self->_infoDictionary)
  {
    [v4 setInfoDictionary:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_url copyWithZone:a3];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_seid copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_command copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(NSData *)self->_infoDictionary copyWithZone:a3];
  v13 = v5[2];
  v5[2] = v12;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((url = self->_url, !(url | v4[4])) || -[NSData isEqual:](url, "isEqual:")) && ((seid = self->_seid, !(seid | v4[3])) || -[NSString isEqual:](seid, "isEqual:")) && ((command = self->_command, !(command | v4[1])) || -[NSString isEqual:](command, "isEqual:")))
  {
    infoDictionary = self->_infoDictionary;
    if (infoDictionary | v4[2])
    {
      v9 = [(NSData *)infoDictionary isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_url hash];
  v4 = [(NSString *)self->_seid hash]^ v3;
  v5 = [(NSString *)self->_command hash];
  return v4 ^ v5 ^ [(NSData *)self->_infoDictionary hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[4])
  {
    [(NPKProtoRemoteAdminPerformRequest *)self setUrl:?];
  }

  if (v4[3])
  {
    [(NPKProtoRemoteAdminPerformRequest *)self setSeid:?];
  }

  if (v4[1])
  {
    [(NPKProtoRemoteAdminPerformRequest *)self setCommand:?];
  }

  if (v4[2])
  {
    [(NPKProtoRemoteAdminPerformRequest *)self setInfoDictionary:?];
  }
}

@end