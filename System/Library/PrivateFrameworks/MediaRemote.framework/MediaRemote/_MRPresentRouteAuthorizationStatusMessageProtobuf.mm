@interface _MRPresentRouteAuthorizationStatusMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsStatus:(id)status;
- (int)status;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRPresentRouteAuthorizationStatusMessageProtobuf

- (int)status
{
  if (*&self->_has)
  {
    return self->_status;
  }

  else
  {
    return -1;
  }
}

- (int)StringAsStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy isEqualToString:@"Unknown"])
  {
    v4 = -1;
  }

  else if ([statusCopy isEqualToString:@"OK"])
  {
    v4 = 0;
  }

  else if ([statusCopy isEqualToString:@"AuthenticationRequired"])
  {
    v4 = 1;
  }

  else if ([statusCopy isEqualToString:@"AuthenticationFailed"])
  {
    v4 = 2;
  }

  else if ([statusCopy isEqualToString:@"Busy"])
  {
    v4 = 3;
  }

  else if ([statusCopy isEqualToString:@"OutOfRange"])
  {
    v4 = 4;
  }

  else if ([statusCopy isEqualToString:@"UnknownError"])
  {
    v4 = 5;
  }

  else if ([statusCopy isEqualToString:@"NotConnected"])
  {
    v4 = 6;
  }

  else if ([statusCopy isEqualToString:@"IPAliasingNotSupported"])
  {
    v4 = 7;
  }

  else if ([statusCopy isEqualToString:@"RelayFailed2GHzNetwork"])
  {
    v4 = 8;
  }

  else if ([statusCopy isEqualToString:@"RelayFailedMultiDFSNetwork"])
  {
    v4 = 9;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRPresentRouteAuthorizationStatusMessageProtobuf;
  v4 = [(_MRPresentRouteAuthorizationStatusMessageProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRPresentRouteAuthorizationStatusMessageProtobuf *)self dictionaryRepresentation];
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
    v6 = self->_status + 1;
    if (v6 >= 0xB)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_status];
    }

    else
    {
      v7 = off_1E76A06F0[v6];
    }

    [dictionary setObject:v7 forKey:@"status"];
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
    status = self->_status;
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
    *(toCopy + 4) = self->_status;
    *(toCopy + 20) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(_MRAVOutputDeviceDescriptorProtobuf *)self->_route copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_status;
    *(v5 + 20) |= 1u;
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
  if (route | *(equalCopy + 1))
  {
    if (![(_MRAVOutputDeviceDescriptorProtobuf *)route isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(equalCopy + 20) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) != 0 && self->_status == *(equalCopy + 4))
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
    v4 = 2654435761 * self->_status;
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
  v6 = *(fromCopy + 1);
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
    [(_MRPresentRouteAuthorizationStatusMessageProtobuf *)self setRoute:?];
  }

  fromCopy = v7;
LABEL_7:
  if (*(fromCopy + 20))
  {
    self->_status = *(fromCopy + 4);
    *&self->_has |= 1u;
  }
}

@end