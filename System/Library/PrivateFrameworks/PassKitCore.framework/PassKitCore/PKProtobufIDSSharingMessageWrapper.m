@interface PKProtobufIDSSharingMessageWrapper
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PKProtobufIDSSharingMessageWrapper

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufIDSSharingMessageWrapper;
  v4 = [(PKProtobufIDSSharingMessageWrapper *)&v8 description];
  v5 = [(PKProtobufIDSSharingMessageWrapper *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_version];
  [v3 setObject:v4 forKey:@"version"];

  sessionIdentifier = self->_sessionIdentifier;
  if (sessionIdentifier)
  {
    [v3 setObject:sessionIdentifier forKey:@"sessionIdentifier"];
  }

  underlyingMessageData = self->_underlyingMessageData;
  if (underlyingMessageData)
  {
    [v3 setObject:underlyingMessageData forKey:@"underlyingMessageData"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v3 = a3;
  PBDataWriterWriteUint32Field();
  PBDataWriterWriteStringField();
  PBDataWriterWriteDataField();
}

- (void)copyTo:(id)a3
{
  *(a3 + 6) = self->_version;
  sessionIdentifier = self->_sessionIdentifier;
  v5 = a3;
  [v5 setSessionIdentifier:sessionIdentifier];
  [v5 setUnderlyingMessageData:self->_underlyingMessageData];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 24) = self->_version;
  v6 = [(NSString *)self->_sessionIdentifier copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSData *)self->_underlyingMessageData copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && self->_version == *(v4 + 6) && ((sessionIdentifier = self->_sessionIdentifier, !(sessionIdentifier | v4[1])) || -[NSString isEqual:](sessionIdentifier, "isEqual:")))
  {
    underlyingMessageData = self->_underlyingMessageData;
    if (underlyingMessageData | v4[2])
    {
      v7 = [(NSData *)underlyingMessageData isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = 2654435761 * self->_version;
  v4 = [(NSString *)self->_sessionIdentifier hash];
  return v4 ^ [(NSData *)self->_underlyingMessageData hash]^ v3;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_version = v4[6];
  v5 = v4;
  if (*(v4 + 1))
  {
    [(PKProtobufIDSSharingMessageWrapper *)self setSessionIdentifier:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(PKProtobufIDSSharingMessageWrapper *)self setUnderlyingMessageData:?];
    v4 = v5;
  }
}

@end