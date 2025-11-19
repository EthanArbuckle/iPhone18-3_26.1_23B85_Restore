@interface _MRSendCommandResultHandlerDialogActionProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)a3;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRSendCommandResultHandlerDialogActionProtobuf

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Default"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Cancel"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Destructive"])
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
  v5 = [(_MRSendCommandResultHandlerDialogActionProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  type = self->_type;
  if (type >= 3)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_type];
  }

  else
  {
    v5 = off_1E769E198[type];
  }

  [v3 setObject:v5 forKey:@"type"];

  title = self->_title;
  if (title)
  {
    [v3 setObject:title forKey:@"title"];
  }

  event = self->_event;
  if (event)
  {
    v8 = [(_MRSendCommandMessageProtobuf *)event dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"event"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  type = self->_type;
  v6 = v4;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  v4[6] = self->_type;
  v5 = v4;
  [v4 setTitle:self->_title];
  if (self->_event)
  {
    [v5 setEvent:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 24) = self->_type;
  v6 = [(NSString *)self->_title copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(_MRSendCommandMessageProtobuf *)self->_event copyWithZone:a3];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && self->_type == *(v4 + 6) && ((title = self->_title, !(title | v4[2])) || -[NSString isEqual:](title, "isEqual:")))
  {
    event = self->_event;
    if (event | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_type = v4[6];
  v7 = v4;
  if (*(v4 + 2))
  {
    [(_MRSendCommandResultHandlerDialogActionProtobuf *)self setTitle:?];
    v4 = v7;
  }

  event = self->_event;
  v6 = *(v4 + 1);
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

  v4 = v7;
LABEL_9:
}

@end