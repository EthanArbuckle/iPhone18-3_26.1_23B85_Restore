@interface NPKProtoUpdateShareForPassIdentifierRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoUpdateShareForPassIdentifierRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoUpdateShareForPassIdentifierRequest;
  v4 = [(NPKProtoUpdateShareForPassIdentifierRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoUpdateShareForPassIdentifierRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  passIdentifier = self->_passIdentifier;
  if (passIdentifier)
  {
    [dictionary setObject:passIdentifier forKey:@"passIdentifier"];
  }

  shareData = self->_shareData;
  if (shareData)
  {
    [v4 setObject:shareData forKey:@"shareData"];
  }

  authorization = self->_authorization;
  if (authorization)
  {
    [v4 setObject:authorization forKey:@"authorization"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_passIdentifier)
  {
    [NPKProtoUpdateShareForPassIdentifierRequest writeTo:];
  }

  PBDataWriterWriteStringField();
  if (!self->_shareData)
  {
    [NPKProtoUpdateShareForPassIdentifierRequest writeTo:];
  }

  PBDataWriterWriteDataField();
  if (self->_authorization)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setPassIdentifier:self->_passIdentifier];
  [toCopy setShareData:self->_shareData];
  if (self->_authorization)
  {
    [toCopy setAuthorization:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_passIdentifier copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_shareData copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSData *)self->_authorization copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((passIdentifier = self->_passIdentifier, !(passIdentifier | equalCopy[2])) || -[NSString isEqual:](passIdentifier, "isEqual:")) && ((shareData = self->_shareData, !(shareData | equalCopy[3])) || -[NSData isEqual:](shareData, "isEqual:")))
  {
    authorization = self->_authorization;
    if (authorization | equalCopy[1])
    {
      v8 = [(NSData *)authorization isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_passIdentifier hash];
  v4 = [(NSData *)self->_shareData hash]^ v3;
  return v4 ^ [(NSData *)self->_authorization hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(NPKProtoUpdateShareForPassIdentifierRequest *)self setPassIdentifier:?];
    fromCopy = v5;
  }

  if (fromCopy[3])
  {
    [(NPKProtoUpdateShareForPassIdentifierRequest *)self setShareData:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(NPKProtoUpdateShareForPassIdentifierRequest *)self setAuthorization:?];
    fromCopy = v5;
  }
}

@end