@interface SGM2DDLinkShown
- (BOOL)isEqual:(id)equal;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsInterface:(id)interface;
- (int)interface;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SGM2DDLinkShown

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 2))
  {
    v5 = fromCopy;
    [(SGM2DDLinkShown *)self setKey:?];
    fromCopy = v5;
  }

  if (fromCopy[6])
  {
    self->_interface = fromCopy[2];
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_interface;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  key = self->_key;
  if (key | *(equalCopy + 2))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(equalCopy + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) != 0 && self->_interface == *(equalCopy + 2))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_interface;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_key)
  {
    v5 = toCopy;
    [toCopy setKey:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 2) = self->_interface;
    *(toCopy + 24) |= 1u;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    interface = self->_interface;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  key = self->_key;
  if (key)
  {
    [dictionary setObject:key forKey:@"key"];
  }

  if (*&self->_has)
  {
    interface = self->_interface;
    if (interface >= 0x14)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_interface];
    }

    else
    {
      v7 = off_1E7EFC418[interface];
    }

    [v4 setObject:v7 forKey:@"interface"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SGM2DDLinkShown;
  v4 = [(SGM2DDLinkShown *)&v8 description];
  dictionaryRepresentation = [(SGM2DDLinkShown *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int)StringAsInterface:(id)interface
{
  interfaceCopy = interface;
  if ([interfaceCopy isEqualToString:@"SGMNLEventInterfaceSuggestd"])
  {
    v4 = 0;
  }

  else if ([interfaceCopy isEqualToString:@"SGMNLEventInterfaceMail"])
  {
    v4 = 1;
  }

  else if ([interfaceCopy isEqualToString:@"SGMNLEventInterfaceMailBanner"])
  {
    v4 = 2;
  }

  else if ([interfaceCopy isEqualToString:@"SGMNLEventInterfaceMailDDLink"])
  {
    v4 = 3;
  }

  else if ([interfaceCopy isEqualToString:@"SGMNLEventInterfaceMessages"])
  {
    v4 = 4;
  }

  else if ([interfaceCopy isEqualToString:@"SGMNLEventInterfaceMessagesBanner"])
  {
    v4 = 5;
  }

  else if ([interfaceCopy isEqualToString:@"SGMNLEventInterfaceMessagesDDLink"])
  {
    v4 = 6;
  }

  else if ([interfaceCopy isEqualToString:@"SGMNLEventInterfaceCalendar"])
  {
    v4 = 7;
  }

  else if ([interfaceCopy isEqualToString:@"SGMNLEventInterfaceCalendarNotification"])
  {
    v4 = 8;
  }

  else if ([interfaceCopy isEqualToString:@"SGMNLEventInterfaceCalendarInbox"])
  {
    v4 = 9;
  }

  else if ([interfaceCopy isEqualToString:@"SGMNLEventInterfaceCalendarEventDetails"])
  {
    v4 = 10;
  }

  else if ([interfaceCopy isEqualToString:@"SGMNLEventInterfaceCalendarCanvas"])
  {
    v4 = 11;
  }

  else if ([interfaceCopy isEqualToString:@"SGMNLEventInterfaceCalendarWidget"])
  {
    v4 = 12;
  }

  else if ([interfaceCopy isEqualToString:@"SGMNLEventInterfaceCalendarWidgetUpNext"])
  {
    v4 = 13;
  }

  else if ([interfaceCopy isEqualToString:@"SGMNLEventInterfaceCalendarZKW"])
  {
    v4 = 14;
  }

  else if ([interfaceCopy isEqualToString:@"SGMNLEventInterfaceCalendarAutocomplete"])
  {
    v4 = 15;
  }

  else if ([interfaceCopy isEqualToString:@"SGMNLEventInterfaceMaps"])
  {
    v4 = 16;
  }

  else if ([interfaceCopy isEqualToString:@"SGMNLEventInterfaceMapsWidget"])
  {
    v4 = 17;
  }

  else if ([interfaceCopy isEqualToString:@"SGMNLEventInterfaceTTLNotification"])
  {
    v4 = 18;
  }

  else if ([interfaceCopy isEqualToString:@"SGMNLEventInterfaceSpotlight"])
  {
    v4 = 19;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)interface
{
  if (*&self->_has)
  {
    return self->_interface;
  }

  else
  {
    return 0;
  }
}

- (NSString)key
{
  if (self->_key)
  {
    return self->_key;
  }

  else
  {
    return @"DDLinkShown";
  }
}

@end