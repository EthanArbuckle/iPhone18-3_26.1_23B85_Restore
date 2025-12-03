@interface PKProtobufIDSSharingMessageWrapper
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PKProtobufIDSSharingMessageWrapper

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufIDSSharingMessageWrapper;
  v4 = [(PKProtobufIDSSharingMessageWrapper *)&v8 description];
  dictionaryRepresentation = [(PKProtobufIDSSharingMessageWrapper *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_version];
  [dictionary setObject:v4 forKey:@"version"];

  sessionIdentifier = self->_sessionIdentifier;
  if (sessionIdentifier)
  {
    [dictionary setObject:sessionIdentifier forKey:@"sessionIdentifier"];
  }

  underlyingMessageData = self->_underlyingMessageData;
  if (underlyingMessageData)
  {
    [dictionary setObject:underlyingMessageData forKey:@"underlyingMessageData"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteUint32Field();
  PBDataWriterWriteStringField();
  PBDataWriterWriteDataField();
}

- (void)copyTo:(id)to
{
  *(to + 6) = self->_version;
  sessionIdentifier = self->_sessionIdentifier;
  toCopy = to;
  [toCopy setSessionIdentifier:sessionIdentifier];
  [toCopy setUnderlyingMessageData:self->_underlyingMessageData];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 24) = self->_version;
  v6 = [(NSString *)self->_sessionIdentifier copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSData *)self->_underlyingMessageData copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && self->_version == *(equalCopy + 6) && ((sessionIdentifier = self->_sessionIdentifier, !(sessionIdentifier | equalCopy[1])) || -[NSString isEqual:](sessionIdentifier, "isEqual:")))
  {
    underlyingMessageData = self->_underlyingMessageData;
    if (underlyingMessageData | equalCopy[2])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_version = fromCopy[6];
  v5 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(PKProtobufIDSSharingMessageWrapper *)self setSessionIdentifier:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(PKProtobufIDSSharingMessageWrapper *)self setUnderlyingMessageData:?];
    fromCopy = v5;
  }
}

@end