@interface _MRRequestGroupSessionMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRRequestGroupSessionMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRRequestGroupSessionMessageProtobuf;
  v4 = [(_MRRequestGroupSessionMessageProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRRequestGroupSessionMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  details = self->_details;
  if (details)
  {
    dictionaryRepresentation = [(_MRRequestDetailsProtobuf *)details dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"details"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if (self->_details)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  details = self->_details;
  if (details)
  {
    [to setDetails:details];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(_MRRequestDetailsProtobuf *)self->_details copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    details = self->_details;
    if (details | equalCopy[1])
    {
      v6 = [(_MRRequestDetailsProtobuf *)details isEqual:?];
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
  details = self->_details;
  v6 = fromCopy[1];
  if (details)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(_MRRequestDetailsProtobuf *)details mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(_MRRequestGroupSessionMessageProtobuf *)self setDetails:?];
  }

  fromCopy = v7;
LABEL_7:
}

@end