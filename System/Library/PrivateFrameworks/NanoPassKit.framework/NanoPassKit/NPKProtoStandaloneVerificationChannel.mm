@interface NPKProtoStandaloneVerificationChannel
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)type;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasRequiresUserInteraction:(BOOL)interaction;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoStandaloneVerificationChannel

- (int)type
{
  if (*&self->_has)
  {
    return self->_type;
  }

  else
  {
    return 110;
  }
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Email"])
  {
    v4 = 110;
  }

  else if ([typeCopy isEqualToString:@"SMS"])
  {
    v4 = 120;
  }

  else if ([typeCopy isEqualToString:@"InboundPhoneCall"])
  {
    v4 = 130;
  }

  else if ([typeCopy isEqualToString:@"OutboundPhoneCall"])
  {
    v4 = 140;
  }

  else if ([typeCopy isEqualToString:@"BankApp"])
  {
    v4 = 150;
  }

  else if ([typeCopy isEqualToString:@"Statement"])
  {
    v4 = 160;
  }

  else if ([typeCopy isEqualToString:@"Other"])
  {
    v4 = 170;
  }

  else if ([typeCopy isEqualToString:@"AppClip"])
  {
    v4 = 180;
  }

  else if ([typeCopy isEqualToString:@"WebPage"])
  {
    v4 = 190;
  }

  else if ([typeCopy isEqualToString:@"URL"])
  {
    v4 = 200;
  }

  else if ([typeCopy isEqualToString:@"Count"])
  {
    v4 = 210;
  }

  else
  {
    v4 = 110;
  }

  return v4;
}

- (void)setHasRequiresUserInteraction:(BOOL)interaction
{
  if (interaction)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandaloneVerificationChannel;
  v4 = [(NPKProtoStandaloneVerificationChannel *)&v8 description];
  dictionaryRepresentation = [(NPKProtoStandaloneVerificationChannel *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  if (*&self->_has)
  {
    type = self->_type;
    if (type <= 159)
    {
      if (type <= 129)
      {
        if (type == 110)
        {
          v7 = @"Email";
          goto LABEL_30;
        }

        if (type == 120)
        {
          v7 = @"SMS";
          goto LABEL_30;
        }
      }

      else
      {
        switch(type)
        {
          case 130:
            v7 = @"InboundPhoneCall";
            goto LABEL_30;
          case 140:
            v7 = @"OutboundPhoneCall";
            goto LABEL_30;
          case 150:
            v7 = @"BankApp";
            goto LABEL_30;
        }
      }
    }

    else if (type > 189)
    {
      switch(type)
      {
        case 190:
          v7 = @"WebPage";
          goto LABEL_30;
        case 200:
          v7 = @"URL";
          goto LABEL_30;
        case 210:
          v7 = @"Count";
          goto LABEL_30;
      }
    }

    else
    {
      switch(type)
      {
        case 160:
          v7 = @"Statement";
          goto LABEL_30;
        case 170:
          v7 = @"Other";
          goto LABEL_30;
        case 180:
          v7 = @"AppClip";
LABEL_30:
          [v4 setObject:v7 forKey:@"type"];

          goto LABEL_31;
      }
    }

    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_type];
    goto LABEL_30;
  }

LABEL_31:
  typeDescriptionUnlocalized = self->_typeDescriptionUnlocalized;
  if (typeDescriptionUnlocalized)
  {
    [v4 setObject:typeDescriptionUnlocalized forKey:@"typeDescriptionUnlocalized"];
  }

  typeDescription = self->_typeDescription;
  if (typeDescription)
  {
    [v4 setObject:typeDescription forKey:@"typeDescription"];
  }

  organizationName = self->_organizationName;
  if (organizationName)
  {
    [v4 setObject:organizationName forKey:@"organizationName"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_requiresUserInteraction];
    [v4 setObject:v11 forKey:@"requiresUserInteraction"];
  }

  contactPoint = self->_contactPoint;
  if (contactPoint)
  {
    [v4 setObject:contactPoint forKey:@"contactPoint"];
  }

  sourceAddress = self->_sourceAddress;
  if (sourceAddress)
  {
    [v4 setObject:sourceAddress forKey:@"sourceAddress"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (*&self->_has)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
    toCopy = v7;
  }

  if (self->_typeDescriptionUnlocalized)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (self->_typeDescription)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (self->_organizationName)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    requiresUserInteraction = self->_requiresUserInteraction;
    PBDataWriterWriteBOOLField();
    toCopy = v7;
  }

  if (self->_contactPoint)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (self->_sourceAddress)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_identifier)
  {
    [toCopy setIdentifier:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 10) = self->_type;
    *(toCopy + 68) |= 1u;
  }

  if (self->_typeDescriptionUnlocalized)
  {
    [v5 setTypeDescriptionUnlocalized:?];
    toCopy = v5;
  }

  if (self->_typeDescription)
  {
    [v5 setTypeDescription:?];
    toCopy = v5;
  }

  if (self->_organizationName)
  {
    [v5 setOrganizationName:?];
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 64) = self->_requiresUserInteraction;
    *(toCopy + 68) |= 2u;
  }

  if (self->_contactPoint)
  {
    [v5 setContactPoint:?];
    toCopy = v5;
  }

  if (self->_sourceAddress)
  {
    [v5 setSourceAddress:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 40) = self->_type;
    *(v5 + 68) |= 1u;
  }

  v8 = [(NSString *)self->_typeDescriptionUnlocalized copyWithZone:zone];
  v9 = *(v5 + 56);
  *(v5 + 56) = v8;

  v10 = [(NSString *)self->_typeDescription copyWithZone:zone];
  v11 = *(v5 + 48);
  *(v5 + 48) = v10;

  v12 = [(NSString *)self->_organizationName copyWithZone:zone];
  v13 = *(v5 + 24);
  *(v5 + 24) = v12;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 64) = self->_requiresUserInteraction;
    *(v5 + 68) |= 2u;
  }

  v14 = [(NSString *)self->_contactPoint copyWithZone:zone];
  v15 = *(v5 + 8);
  *(v5 + 8) = v14;

  v16 = [(NSString *)self->_sourceAddress copyWithZone:zone];
  v17 = *(v5 + 32);
  *(v5 + 32) = v16;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 2))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_22;
    }
  }

  v6 = *(equalCopy + 68);
  if (*&self->_has)
  {
    if ((*(equalCopy + 68) & 1) == 0 || self->_type != *(equalCopy + 10))
    {
      goto LABEL_22;
    }
  }

  else if (*(equalCopy + 68))
  {
    goto LABEL_22;
  }

  typeDescriptionUnlocalized = self->_typeDescriptionUnlocalized;
  if (typeDescriptionUnlocalized | *(equalCopy + 7) && ![(NSString *)typeDescriptionUnlocalized isEqual:?])
  {
    goto LABEL_22;
  }

  typeDescription = self->_typeDescription;
  if (typeDescription | *(equalCopy + 6))
  {
    if (![(NSString *)typeDescription isEqual:?])
    {
      goto LABEL_22;
    }
  }

  organizationName = self->_organizationName;
  if (organizationName | *(equalCopy + 3))
  {
    if (![(NSString *)organizationName isEqual:?])
    {
      goto LABEL_22;
    }
  }

  v10 = *(equalCopy + 68);
  if ((*&self->_has & 2) == 0)
  {
    if ((*(equalCopy + 68) & 2) == 0)
    {
      goto LABEL_17;
    }

LABEL_22:
    v13 = 0;
    goto LABEL_23;
  }

  if ((*(equalCopy + 68) & 2) == 0)
  {
    goto LABEL_22;
  }

  v15 = *(equalCopy + 64);
  if (self->_requiresUserInteraction)
  {
    if ((*(equalCopy + 64) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (*(equalCopy + 64))
  {
    goto LABEL_22;
  }

LABEL_17:
  contactPoint = self->_contactPoint;
  if (contactPoint | *(equalCopy + 1) && ![(NSString *)contactPoint isEqual:?])
  {
    goto LABEL_22;
  }

  sourceAddress = self->_sourceAddress;
  if (sourceAddress | *(equalCopy + 4))
  {
    v13 = [(NSString *)sourceAddress isEqual:?];
  }

  else
  {
    v13 = 1;
  }

LABEL_23:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_type;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSString *)self->_typeDescriptionUnlocalized hash];
  v6 = [(NSString *)self->_typeDescription hash];
  v7 = [(NSString *)self->_organizationName hash];
  if ((*&self->_has & 2) != 0)
  {
    v8 = 2654435761 * self->_requiresUserInteraction;
  }

  else
  {
    v8 = 0;
  }

  v9 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ [(NSString *)self->_contactPoint hash];
  return v9 ^ [(NSString *)self->_sourceAddress hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(NPKProtoStandaloneVerificationChannel *)self setIdentifier:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 68))
  {
    self->_type = *(fromCopy + 10);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 7))
  {
    [(NPKProtoStandaloneVerificationChannel *)self setTypeDescriptionUnlocalized:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 6))
  {
    [(NPKProtoStandaloneVerificationChannel *)self setTypeDescription:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(NPKProtoStandaloneVerificationChannel *)self setOrganizationName:?];
    fromCopy = v5;
  }

  if ((*(fromCopy + 68) & 2) != 0)
  {
    self->_requiresUserInteraction = *(fromCopy + 64);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 1))
  {
    [(NPKProtoStandaloneVerificationChannel *)self setContactPoint:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 4))
  {
    [(NPKProtoStandaloneVerificationChannel *)self setSourceAddress:?];
    fromCopy = v5;
  }
}

@end