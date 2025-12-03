@interface _MRGroupSessionIdentityShareMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRGroupSessionIdentityShareMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRGroupSessionIdentityShareMessageProtobuf;
  v4 = [(_MRGroupSessionIdentityShareMessageProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRGroupSessionIdentityShareMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  identity = self->_identity;
  if (identity)
  {
    dictionaryRepresentation = [(_MRUserIdentityProtobuf *)identity dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"identity"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if (self->_identity)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  identity = self->_identity;
  if (identity)
  {
    [to setIdentity:identity];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(_MRUserIdentityProtobuf *)self->_identity copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    identity = self->_identity;
    if (identity | equalCopy[1])
    {
      v6 = [(_MRUserIdentityProtobuf *)identity isEqual:?];
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
  identity = self->_identity;
  v6 = fromCopy[1];
  if (identity)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(_MRUserIdentityProtobuf *)identity mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(_MRGroupSessionIdentityShareMessageProtobuf *)self setIdentity:?];
  }

  fromCopy = v7;
LABEL_7:
}

@end