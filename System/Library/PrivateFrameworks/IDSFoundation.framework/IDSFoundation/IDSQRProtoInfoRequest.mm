@interface IDSQRProtoInfoRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation IDSQRProtoInfoRequest

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoInfoRequest;
  v4 = [(IDSQRProtoInfoRequest *)&v8 description];
  dictionaryRepresentation = [(IDSQRProtoInfoRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_infoFlags];
  [dictionary setObject:v4 forKey:@"info_flags"];

  accessToken = self->_accessToken;
  if (accessToken)
  {
    [dictionary setObject:accessToken forKey:@"access_token"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteUint32Field();
  if (self->_accessToken)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  *(to + 4) = self->_infoFlags;
  accessToken = self->_accessToken;
  if (accessToken)
  {
    [to setAccessToken:accessToken];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 16) = self->_infoFlags;
  v6 = [(NSData *)self->_accessToken copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && self->_infoFlags == *(equalCopy + 4))
  {
    accessToken = self->_accessToken;
    if (accessToken | equalCopy[1])
    {
      v6 = [(NSData *)accessToken isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)from
{
  self->_infoFlags = *(from + 4);
  if (*(from + 1))
  {
    [(IDSQRProtoInfoRequest *)self setAccessToken:?];
  }
}

@end