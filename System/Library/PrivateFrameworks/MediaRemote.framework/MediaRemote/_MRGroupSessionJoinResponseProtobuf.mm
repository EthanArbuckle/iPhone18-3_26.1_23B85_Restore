@interface _MRGroupSessionJoinResponseProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRGroupSessionJoinResponseProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRGroupSessionJoinResponseProtobuf;
  v4 = [(_MRGroupSessionJoinResponseProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRGroupSessionJoinResponseProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  publicSigningKeyData = self->_publicSigningKeyData;
  if (publicSigningKeyData)
  {
    [dictionary setObject:publicSigningKeyData forKey:@"publicSigningKeyData"];
  }

  joinURL = self->_joinURL;
  if (joinURL)
  {
    [v4 setObject:joinURL forKey:@"joinURL"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_publicSigningKeyData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_joinURL)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_publicSigningKeyData)
  {
    [toCopy setPublicSigningKeyData:?];
    toCopy = v5;
  }

  if (self->_joinURL)
  {
    [v5 setJoinURL:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_publicSigningKeyData copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_joinURL copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((publicSigningKeyData = self->_publicSigningKeyData, !(publicSigningKeyData | equalCopy[2])) || -[NSData isEqual:](publicSigningKeyData, "isEqual:")))
  {
    joinURL = self->_joinURL;
    if (joinURL | equalCopy[1])
    {
      v7 = [(NSString *)joinURL isEqual:?];
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(_MRGroupSessionJoinResponseProtobuf *)self setPublicSigningKeyData:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(_MRGroupSessionJoinResponseProtobuf *)self setJoinURL:?];
    fromCopy = v5;
  }
}

@end