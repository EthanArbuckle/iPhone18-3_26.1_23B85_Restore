@interface SGM2DDLinkShown
- (BOOL)isEqual:(id)a3;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsInterface:(id)a3;
- (int)interface;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SGM2DDLinkShown

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 2))
  {
    v5 = v4;
    [(SGM2DDLinkShown *)self setKey:?];
    v4 = v5;
  }

  if (v4[6])
  {
    self->_interface = v4[2];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  key = self->_key;
  if (key | *(v4 + 2))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(v4 + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) != 0 && self->_interface == *(v4 + 2))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_interface;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_key)
  {
    v5 = v4;
    [v4 setKey:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 2) = self->_interface;
    *(v4 + 24) |= 1u;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    interface = self->_interface;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  key = self->_key;
  if (key)
  {
    [v3 setObject:key forKey:@"key"];
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
  v5 = [(SGM2DDLinkShown *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)StringAsInterface:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SGMNLEventInterfaceSuggestd"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SGMNLEventInterfaceMail"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SGMNLEventInterfaceMailBanner"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SGMNLEventInterfaceMailDDLink"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SGMNLEventInterfaceMessages"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SGMNLEventInterfaceMessagesBanner"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"SGMNLEventInterfaceMessagesDDLink"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"SGMNLEventInterfaceCalendar"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"SGMNLEventInterfaceCalendarNotification"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"SGMNLEventInterfaceCalendarInbox"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"SGMNLEventInterfaceCalendarEventDetails"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"SGMNLEventInterfaceCalendarCanvas"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"SGMNLEventInterfaceCalendarWidget"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"SGMNLEventInterfaceCalendarWidgetUpNext"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"SGMNLEventInterfaceCalendarZKW"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"SGMNLEventInterfaceCalendarAutocomplete"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"SGMNLEventInterfaceMaps"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"SGMNLEventInterfaceMapsWidget"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"SGMNLEventInterfaceTTLNotification"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"SGMNLEventInterfaceSpotlight"])
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