@interface IDSQRProtoInfoRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation IDSQRProtoInfoRequest

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoInfoRequest;
  v4 = [(IDSQRProtoInfoRequest *)&v8 description];
  v5 = [(IDSQRProtoInfoRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_infoFlags];
  [v3 setObject:v4 forKey:@"info_flags"];

  accessToken = self->_accessToken;
  if (accessToken)
  {
    [v3 setObject:accessToken forKey:@"access_token"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  PBDataWriterWriteUint32Field();
  if (self->_accessToken)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)a3
{
  *(a3 + 4) = self->_infoFlags;
  accessToken = self->_accessToken;
  if (accessToken)
  {
    [a3 setAccessToken:accessToken];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 16) = self->_infoFlags;
  v6 = [(NSData *)self->_accessToken copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && self->_infoFlags == *(v4 + 4))
  {
    accessToken = self->_accessToken;
    if (accessToken | v4[1])
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

- (void)mergeFrom:(id)a3
{
  self->_infoFlags = *(a3 + 4);
  if (*(a3 + 1))
  {
    [(IDSQRProtoInfoRequest *)self setAccessToken:?];
  }
}

@end