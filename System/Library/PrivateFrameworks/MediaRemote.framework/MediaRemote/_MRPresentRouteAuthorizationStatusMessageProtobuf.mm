@interface _MRPresentRouteAuthorizationStatusMessageProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsStatus:(id)a3;
- (int)status;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

- (int)StringAsStatus:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = -1;
  }

  else if ([v3 isEqualToString:@"OK"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"AuthenticationRequired"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"AuthenticationFailed"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Busy"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"OutOfRange"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"UnknownError"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"NotConnected"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"IPAliasingNotSupported"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"RelayFailed2GHzNetwork"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"RelayFailedMultiDFSNetwork"])
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
  v5 = [(_MRPresentRouteAuthorizationStatusMessageProtobuf *)self dictionaryRepresentation];
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
    v6 = self->_status + 1;
    if (v6 >= 0xB)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_status];
    }

    else
    {
      v7 = off_1E76A06F0[v6];
    }

    [v3 setObject:v7 forKey:@"status"];
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
    status = self->_status;
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
    *(v4 + 4) = self->_status;
    *(v4 + 20) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(_MRAVOutputDeviceDescriptorProtobuf *)self->_route copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_status;
    *(v5 + 20) |= 1u;
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
  if (route | *(v4 + 1))
  {
    if (![(_MRAVOutputDeviceDescriptorProtobuf *)route isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(v4 + 20) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) != 0 && self->_status == *(v4 + 4))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  route = self->_route;
  v6 = *(v4 + 1);
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
    [(_MRPresentRouteAuthorizationStatusMessageProtobuf *)self setRoute:?];
  }

  v4 = v7;
LABEL_7:
  if (*(v4 + 20))
  {
    self->_status = *(v4 + 4);
    *&self->_has |= 1u;
  }
}

@end