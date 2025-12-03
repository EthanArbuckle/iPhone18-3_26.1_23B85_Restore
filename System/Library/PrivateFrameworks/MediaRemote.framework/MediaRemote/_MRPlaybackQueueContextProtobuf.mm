@interface _MRPlaybackQueueContextProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRPlaybackQueueContextProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRPlaybackQueueContextProtobuf;
  v4 = [(_MRPlaybackQueueContextProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRPlaybackQueueContextProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  revision = self->_revision;
  if (revision)
  {
    [dictionary setObject:revision forKey:@"revision"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  if (self->_revision)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  revision = self->_revision;
  if (revision)
  {
    [to setRevision:revision];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_revision copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    revision = self->_revision;
    if (revision | equalCopy[1])
    {
      v6 = [(NSString *)revision isEqual:?];
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
    [(_MRPlaybackQueueContextProtobuf *)self setRevision:?];
  }
}

@end