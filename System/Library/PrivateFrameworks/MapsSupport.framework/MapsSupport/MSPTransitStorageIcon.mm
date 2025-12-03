@interface MSPTransitStorageIcon
- (BOOL)isEqual:(id)equal;
- (MSPTransitStorageIcon)initWithIcon:(id)icon;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (id)iconTypeAsString:(int)string;
- (int)StringAsIconType:(id)type;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDefaultTransitType:(BOOL)type;
- (void)setHasIconAttributeKey:(BOOL)key;
- (void)setHasIconAttributeValue:(BOOL)value;
- (void)setHasIconType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation MSPTransitStorageIcon

- (MSPTransitStorageIcon)initWithIcon:(id)icon
{
  iconCopy = icon;
  v8.receiver = self;
  v8.super_class = MSPTransitStorageIcon;
  v5 = [(MSPTransitStorageIcon *)&v8 init];
  if (v5)
  {
    -[MSPTransitStorageIcon setIconType:](v5, "setIconType:", [iconCopy iconType]);
    -[MSPTransitStorageIcon setCartoID:](v5, "setCartoID:", [iconCopy cartoID]);
    -[MSPTransitStorageIcon setDefaultTransitType:](v5, "setDefaultTransitType:", [iconCopy defaultTransitType]);
    -[MSPTransitStorageIcon setIconAttributeKey:](v5, "setIconAttributeKey:", [iconCopy iconAttributeKey]);
    -[MSPTransitStorageIcon setIconAttributeValue:](v5, "setIconAttributeValue:", [iconCopy iconAttributeValue]);
    v6 = v5;
  }

  return v5;
}

- (void)setHasIconType:(BOOL)type
{
  if (type)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (id)iconTypeAsString:(int)string
{
  if (string)
  {
    if (string == 1)
    {
      string = @"GEOTransitIconTypeGeneric";
    }

    else
    {
      string = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %ld)", string];
    }
  }

  else
  {
    string = @"GEOTransitIconTypeSystem";
  }

  return string;
}

- (int)StringAsIconType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"GEOTransitIconTypeSystem"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [typeCopy isEqualToString:@"GEOTransitIconTypeGeneric"];
  }

  return v4;
}

- (void)setHasDefaultTransitType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasIconAttributeKey:(BOOL)key
{
  if (key)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasIconAttributeValue:(BOOL)value
{
  if (value)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MSPTransitStorageIcon;
  v4 = [(MSPTransitStorageIcon *)&v8 description];
  dictionaryRepresentation = [(MSPTransitStorageIcon *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    iconType = self->_iconType;
    if (iconType)
    {
      if (iconType == 1)
      {
        iconType = @"GEOTransitIconTypeGeneric";
      }

      else
      {
        iconType = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %ld)", iconType];
      }
    }

    else
    {
      iconType = @"GEOTransitIconTypeSystem";
    }

    [dictionary setObject:iconType forKey:@"icon_type"];

    has = self->_has;
  }

  if (has)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_cartoID];
    [dictionary setObject:v11 forKey:@"cartoID"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_10:
      if ((has & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_20;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_10;
  }

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_defaultTransitType];
  [dictionary setObject:v12 forKey:@"default_transit_type"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_11:
    if ((has & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_20:
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_iconAttributeKey];
  [dictionary setObject:v13 forKey:@"icon_attribute_key"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_12:
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_iconAttributeValue];
    [dictionary setObject:v7 forKey:@"icon_attribute_value"];
  }

LABEL_13:
  unknownFields = self->_unknownFields;
  if (unknownFields)
  {
    dictionaryRepresentation = [(PBUnknownFields *)unknownFields dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"Unknown Fields"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    iconType = self->_iconType;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  cartoID = self->_cartoID;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  defaultTransitType = self->_defaultTransitType;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  iconAttributeKey = self->_iconAttributeKey;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_6:
    iconAttributeValue = self->_iconAttributeValue;
    PBDataWriterWriteUint32Field();
  }

LABEL_7:
  [(PBUnknownFields *)self->_unknownFields writeTo:toCopy];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    toCopy[8] = self->_iconType;
    *(toCopy + 36) |= 0x10u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  toCopy[4] = self->_cartoID;
  *(toCopy + 36) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  toCopy[5] = self->_defaultTransitType;
  *(toCopy + 36) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  toCopy[6] = self->_iconAttributeKey;
  *(toCopy + 36) |= 4u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_6:
    toCopy[7] = self->_iconAttributeValue;
    *(toCopy + 36) |= 8u;
  }

LABEL_7:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v4 + 32) = self->_iconType;
    *(v4 + 36) |= 0x10u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 16) = self->_cartoID;
  *(v4 + 36) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    *(v4 + 24) = self->_iconAttributeKey;
    *(v4 + 36) |= 4u;
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_10:
  *(v4 + 20) = self->_defaultTransitType;
  *(v4 + 36) |= 2u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((has & 8) != 0)
  {
LABEL_6:
    *(v4 + 28) = self->_iconAttributeValue;
    *(v4 + 36) |= 8u;
  }

LABEL_7:
  objc_storeStrong((v4 + 8), self->_unknownFields);
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 36) & 0x10) == 0 || self->_iconType != *(equalCopy + 8))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 36) & 0x10) != 0)
  {
LABEL_26:
    v5 = 0;
    goto LABEL_27;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_cartoID != *(equalCopy + 4))
    {
      goto LABEL_26;
    }
  }

  else if (*(equalCopy + 36))
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) == 0 || self->_defaultTransitType != *(equalCopy + 5))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 36) & 2) != 0)
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 36) & 4) == 0 || self->_iconAttributeKey != *(equalCopy + 6))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 36) & 4) != 0)
  {
    goto LABEL_26;
  }

  v5 = (*(equalCopy + 36) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 36) & 8) == 0 || self->_iconAttributeValue != *(equalCopy + 7))
    {
      goto LABEL_26;
    }

    v5 = 1;
  }

LABEL_27:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x10) != 0)
  {
    v2 = 2654435761 * self->_iconType;
    if (*&self->_has)
    {
LABEL_3:
      v3 = 2654435761 * self->_cartoID;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v2 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_defaultTransitType;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v5 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v6 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6;
  }

LABEL_9:
  v4 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v5 = 2654435761 * self->_iconAttributeKey;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v6 = 2654435761 * self->_iconAttributeValue;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 36);
  if ((v5 & 0x10) != 0)
  {
    self->_iconType = *(fromCopy + 8);
    *&self->_has |= 0x10u;
    v5 = *(fromCopy + 36);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(fromCopy + 36) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_cartoID = *(fromCopy + 4);
  *&self->_has |= 1u;
  v5 = *(fromCopy + 36);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  self->_defaultTransitType = *(fromCopy + 5);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 36);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  self->_iconAttributeKey = *(fromCopy + 6);
  *&self->_has |= 4u;
  if ((*(fromCopy + 36) & 8) != 0)
  {
LABEL_6:
    self->_iconAttributeValue = *(fromCopy + 7);
    *&self->_has |= 8u;
  }

LABEL_7:
}

@end