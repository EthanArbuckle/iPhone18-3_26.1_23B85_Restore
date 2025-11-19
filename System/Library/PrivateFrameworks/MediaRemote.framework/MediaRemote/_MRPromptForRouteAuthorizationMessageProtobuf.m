@interface _MRPromptForRouteAuthorizationMessageProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsInputType:(id)a3;
- (int)inputType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

- (int)StringAsInputType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Alphabet"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Number"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Email"])
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
  v5 = [(_MRPromptForRouteAuthorizationMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  route = self->_route;
  if (route)
  {
    v5 = [(_MRAVOutputDeviceDescriptorProtobuf *)route dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"route"];
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

    [v3 setObject:v7 forKey:@"inputType"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_route)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (*&self->_has)
  {
    inputType = self->_inputType;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_route)
  {
    v5 = v4;
    [v4 setRoute:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 2) = self->_inputType;
    *(v4 + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(_MRAVOutputDeviceDescriptorProtobuf *)self->_route copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_inputType;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  route = self->_route;
  if (route | *(v4 + 2))
  {
    if (![(_MRAVOutputDeviceDescriptorProtobuf *)route isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(v4 + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) != 0 && self->_inputType == *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  route = self->_route;
  v6 = *(v4 + 2);
  if (route)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(_MRAVOutputDeviceDescriptorProtobuf *)route mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(_MRPromptForRouteAuthorizationMessageProtobuf *)self setRoute:?];
  }

  v4 = v7;
LABEL_7:
  if (*(v4 + 24))
  {
    self->_inputType = *(v4 + 2);
    *&self->_has |= 1u;
  }
}

@end