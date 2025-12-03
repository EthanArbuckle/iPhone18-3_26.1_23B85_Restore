@interface _MRPromptForRouteAuthorizationMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsInputType:(id)type;
- (int)inputType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRPromptForRouteAuthorizationMessageProtobuf

- (int)inputType
{
  if (*&self->_has)
  {
    return self->_inputType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsInputType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"Alphabet"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Number"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"Email"])
  {
    v4 = 3;
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
  v8.super_class = _MRPromptForRouteAuthorizationMessageProtobuf;
  v4 = [(_MRPromptForRouteAuthorizationMessageProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRPromptForRouteAuthorizationMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  route = self->_route;
  if (route)
  {
    dictionaryRepresentation = [(_MRAVOutputDeviceDescriptorProtobuf *)route dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"route"];
  }

  if (*&self->_has)
  {
    inputType = self->_inputType;
    if (inputType >= 4)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_inputType];
    }

    else
    {
      v7 = off_1E769ECB0[inputType];
    }

    [dictionary setObject:v7 forKey:@"inputType"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_route)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    inputType = self->_inputType;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_route)
  {
    v5 = toCopy;
    [toCopy setRoute:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 2) = self->_inputType;
    *(toCopy + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(_MRAVOutputDeviceDescriptorProtobuf *)self->_route copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_inputType;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  route = self->_route;
  if (route | *(equalCopy + 2))
  {
    if (![(_MRAVOutputDeviceDescriptorProtobuf *)route isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(equalCopy + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) != 0 && self->_inputType == *(equalCopy + 2))
    {
      v6 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(_MRAVOutputDeviceDescriptorProtobuf *)self->_route hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_inputType;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  route = self->_route;
  v6 = *(fromCopy + 2);
  if (route)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(_MRAVOutputDeviceDescriptorProtobuf *)route mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(_MRPromptForRouteAuthorizationMessageProtobuf *)self setRoute:?];
  }

  fromCopy = v7;
LABEL_7:
  if (*(fromCopy + 24))
  {
    self->_inputType = *(fromCopy + 2);
    *&self->_has |= 1u;
  }
}

@end