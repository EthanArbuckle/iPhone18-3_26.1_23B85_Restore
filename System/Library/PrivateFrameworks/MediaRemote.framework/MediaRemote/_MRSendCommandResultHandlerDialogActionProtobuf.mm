@interface _MRSendCommandResultHandlerDialogActionProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)type;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRSendCommandResultHandlerDialogActionProtobuf

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Default"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"Cancel"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Destructive"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRSendCommandResultHandlerDialogActionProtobuf;
  v4 = [(_MRSendCommandResultHandlerDialogActionProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRSendCommandResultHandlerDialogActionProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  type = self->_type;
  if (type >= 3)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_type];
  }

  else
  {
    v5 = off_1E769E198[type];
  }

  [dictionary setObject:v5 forKey:@"type"];

  title = self->_title;
  if (title)
  {
    [dictionary setObject:title forKey:@"title"];
  }

  event = self->_event;
  if (event)
  {
    dictionaryRepresentation = [(_MRSendCommandMessageProtobuf *)event dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"event"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  type = self->_type;
  v6 = toCopy;
  PBDataWriterWriteInt32Field();
  if (!self->_title)
  {
    [_MRSendCommandResultHandlerDialogActionProtobuf writeTo:];
  }

  PBDataWriterWriteStringField();
  if (self->_event)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[6] = self->_type;
  v5 = toCopy;
  [toCopy setTitle:self->_title];
  if (self->_event)
  {
    [v5 setEvent:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 24) = self->_type;
  v6 = [(NSString *)self->_title copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(_MRSendCommandMessageProtobuf *)self->_event copyWithZone:zone];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && self->_type == *(equalCopy + 6) && ((title = self->_title, !(title | equalCopy[2])) || -[NSString isEqual:](title, "isEqual:")))
  {
    event = self->_event;
    if (event | equalCopy[1])
    {
      v7 = [(_MRSendCommandMessageProtobuf *)event isEqual:?];
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
  v3 = 2654435761 * self->_type;
  v4 = [(NSString *)self->_title hash];
  return v4 ^ [(_MRSendCommandMessageProtobuf *)self->_event hash]^ v3;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_type = fromCopy[6];
  v7 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(_MRSendCommandResultHandlerDialogActionProtobuf *)self setTitle:?];
    fromCopy = v7;
  }

  event = self->_event;
  v6 = *(fromCopy + 1);
  if (event)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(_MRSendCommandMessageProtobuf *)event mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(_MRSendCommandResultHandlerDialogActionProtobuf *)self setEvent:?];
  }

  fromCopy = v7;
LABEL_9:
}

@end