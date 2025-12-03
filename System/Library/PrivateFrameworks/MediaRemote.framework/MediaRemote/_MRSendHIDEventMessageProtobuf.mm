@interface _MRSendHIDEventMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRSendHIDEventMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRSendHIDEventMessageProtobuf;
  v4 = [(_MRSendHIDEventMessageProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRSendHIDEventMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  hidEventData = self->_hidEventData;
  if (hidEventData)
  {
    [dictionary setObject:hidEventData forKey:@"hidEventData"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  if (self->_hidEventData)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  hidEventData = self->_hidEventData;
  if (hidEventData)
  {
    [to setHidEventData:hidEventData];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_hidEventData copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    hidEventData = self->_hidEventData;
    if (hidEventData | equalCopy[1])
    {
      v6 = [(NSData *)hidEventData isEqual:?];
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
    [(_MRSendHIDEventMessageProtobuf *)self setHidEventData:?];
  }
}

@end