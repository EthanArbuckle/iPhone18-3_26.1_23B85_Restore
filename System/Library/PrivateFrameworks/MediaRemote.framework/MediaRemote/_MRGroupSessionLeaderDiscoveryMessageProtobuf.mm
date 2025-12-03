@interface _MRGroupSessionLeaderDiscoveryMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRGroupSessionLeaderDiscoveryMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRGroupSessionLeaderDiscoveryMessageProtobuf;
  v4 = [(_MRGroupSessionLeaderDiscoveryMessageProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRGroupSessionLeaderDiscoveryMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  signature = self->_signature;
  if (signature)
  {
    [dictionary setObject:signature forKey:@"signature"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  if (self->_signature)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  signature = self->_signature;
  if (signature)
  {
    [to setSignature:signature];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_signature copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    signature = self->_signature;
    if (signature | equalCopy[1])
    {
      v6 = [(NSData *)signature isEqual:?];
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
  if (*(from + 1))
  {
    [(_MRGroupSessionLeaderDiscoveryMessageProtobuf *)self setSignature:?];
  }
}

@end