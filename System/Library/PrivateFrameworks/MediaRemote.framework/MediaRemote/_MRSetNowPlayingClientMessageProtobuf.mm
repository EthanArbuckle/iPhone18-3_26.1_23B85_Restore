@interface _MRSetNowPlayingClientMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRSetNowPlayingClientMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRSetNowPlayingClientMessageProtobuf;
  v4 = [(_MRSetNowPlayingClientMessageProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRSetNowPlayingClientMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  client = self->_client;
  if (client)
  {
    dictionaryRepresentation = [(_MRNowPlayingClientProtobuf *)client dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"client"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if (self->_client)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  client = self->_client;
  if (client)
  {
    [to setClient:client];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(_MRNowPlayingClientProtobuf *)self->_client copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    client = self->_client;
    if (client | equalCopy[1])
    {
      v6 = [(_MRNowPlayingClientProtobuf *)client isEqual:?];
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
  fromCopy = from;
  client = self->_client;
  v6 = fromCopy[1];
  if (client)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(_MRNowPlayingClientProtobuf *)client mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(_MRSetNowPlayingClientMessageProtobuf *)self setClient:?];
  }

  fromCopy = v7;
LABEL_7:
}

@end