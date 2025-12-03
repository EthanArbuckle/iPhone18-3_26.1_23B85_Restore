@interface NPKProtoRemoteAdminPerformRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoRemoteAdminPerformRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoRemoteAdminPerformRequest;
  v4 = [(NPKProtoRemoteAdminPerformRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoRemoteAdminPerformRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  url = self->_url;
  if (url)
  {
    [dictionary setObject:url forKey:@"url"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setUrl:self->_url];
  [toCopy setSeid:self->_seid];
  [toCopy setCommand:self->_command];
  if (self->_infoDictionary)
  {
    [toCopy setInfoDictionary:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_url copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_seid copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_command copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(NSData *)self->_infoDictionary copyWithZone:zone];
  v13 = v5[2];
  v5[2] = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((url = self->_url, !(url | equalCopy[4])) || -[NSData isEqual:](url, "isEqual:")) && ((seid = self->_seid, !(seid | equalCopy[3])) || -[NSString isEqual:](seid, "isEqual:")) && ((command = self->_command, !(command | equalCopy[1])) || -[NSString isEqual:](command, "isEqual:")))
  {
    infoDictionary = self->_infoDictionary;
    if (infoDictionary | equalCopy[2])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[4])
  {
    [(NPKProtoRemoteAdminPerformRequest *)self setUrl:?];
  }

  if (fromCopy[3])
  {
    [(NPKProtoRemoteAdminPerformRequest *)self setSeid:?];
  }

  if (fromCopy[1])
  {
    [(NPKProtoRemoteAdminPerformRequest *)self setCommand:?];
  }

  if (fromCopy[2])
  {
    [(NPKProtoRemoteAdminPerformRequest *)self setInfoDictionary:?];
  }
}

@end