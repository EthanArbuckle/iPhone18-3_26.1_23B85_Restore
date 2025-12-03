@interface _MRApplicationConnectionMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRApplicationConnectionMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRApplicationConnectionMessageProtobuf;
  v4 = [(_MRApplicationConnectionMessageProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRApplicationConnectionMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  header = self->_header;
  if (header)
  {
    dictionaryRepresentation = [(_MRApplicationConnectionMessageHeaderProtobuf *)header dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"header"];
  }

  underlyingMessage = self->_underlyingMessage;
  if (underlyingMessage)
  {
    [dictionary setObject:underlyingMessage forKey:@"underlyingMessage"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_header)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_underlyingMessage)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_header)
  {
    [toCopy setHeader:?];
    toCopy = v5;
  }

  if (self->_underlyingMessage)
  {
    [v5 setUnderlyingMessage:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(_MRApplicationConnectionMessageHeaderProtobuf *)self->_header copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_underlyingMessage copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((header = self->_header, !(header | equalCopy[1])) || -[_MRApplicationConnectionMessageHeaderProtobuf isEqual:](header, "isEqual:")))
  {
    underlyingMessage = self->_underlyingMessage;
    if (underlyingMessage | equalCopy[2])
    {
      v7 = [(NSData *)underlyingMessage isEqual:?];
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
  header = self->_header;
  v6 = fromCopy[1];
  v7 = fromCopy;
  if (header)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(_MRApplicationConnectionMessageHeaderProtobuf *)header mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(_MRApplicationConnectionMessageProtobuf *)self setHeader:?];
  }

  fromCopy = v7;
LABEL_7:
  if (fromCopy[2])
  {
    [(_MRApplicationConnectionMessageProtobuf *)self setUnderlyingMessage:?];
    fromCopy = v7;
  }
}

@end