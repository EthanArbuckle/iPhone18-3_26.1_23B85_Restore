@interface MSPTransitStorageIcon
- (BOOL)isEqual:(id)a3;
- (MSPTransitStorageIcon)initWithIcon:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (id)iconTypeAsString:(int)a3;
- (int)StringAsIconType:(id)a3;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDefaultTransitType:(BOOL)a3;
- (void)setHasIconAttributeKey:(BOOL)a3;
- (void)setHasIconAttributeValue:(BOOL)a3;
- (void)setHasIconType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MSPTransitStorageIcon

- (MSPTransitStorageIcon)initWithIcon:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MSPTransitStorageIcon;
  v5 = [(MSPTransitStorageIcon *)&v8 init];
  if (v5)
  {
    -[MSPTransitStorageIcon setIconType:](v5, "setIconType:", [v4 iconType]);
    -[MSPTransitStorageIcon setCartoID:](v5, "setCartoID:", [v4 cartoID]);
    -[MSPTransitStorageIcon setDefaultTransitType:](v5, "setDefaultTransitType:", [v4 defaultTransitType]);
    -[MSPTransitStorageIcon setIconAttributeKey:](v5, "setIconAttributeKey:", [v4 iconAttributeKey]);
    -[MSPTransitStorageIcon setIconAttributeValue:](v5, "setIconAttributeValue:", [v4 iconAttributeValue]);
    v6 = v5;
  }

  return v5;
}

- (void)setHasIconType:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (id)iconTypeAsString:(int)a3
{
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = @"GEOTransitIconTypeGeneric";
    }

    else
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %ld)", a3];
    }
  }

  else
  {
    v4 = @"GEOTransitIconTypeSystem";
  }

  return v4;
}

- (int)StringAsIconType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"GEOTransitIconTypeSystem"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"GEOTransitIconTypeGeneric"];
  }

  return v4;
}

- (void)setHasDefaultTransitType:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasIconAttributeKey:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasIconAttributeValue:(BOOL)a3
{
  if (a3)
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
  v5 = [(MSPTransitStorageIcon *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    iconType = self->_iconType;
    if (iconType)
    {
      if (iconType == 1)
      {
        v6 = @"GEOTransitIconTypeGeneric";
      }

      else
      {
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %ld)", iconType];
      }
    }

    else
    {
      v6 = @"GEOTransitIconTypeSystem";
    }

    [v3 setObject:v6 forKey:@"icon_type"];

    has = self->_has;
  }

  if (has)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_cartoID];
    [v3 setObject:v11 forKey:@"cartoID"];

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
  [v3 setObject:v12 forKey:@"default_transit_type"];

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
  [v3 setObject:v13 forKey:@"icon_attribute_key"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_12:
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_iconAttributeValue];
    [v3 setObject:v7 forKey:@"icon_attribute_value"];
  }

LABEL_13:
  unknownFields = self->_unknownFields;
  if (unknownFields)
  {
    v9 = [(PBUnknownFields *)unknownFields dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"Unknown Fields"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
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
  [(PBUnknownFields *)self->_unknownFields writeTo:v10];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v4[8] = self->_iconType;
    *(v4 + 36) |= 0x10u;
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

  v4[4] = self->_cartoID;
  *(v4 + 36) |= 1u;
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
  v4[5] = self->_defaultTransitType;
  *(v4 + 36) |= 2u;
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
  v4[6] = self->_iconAttributeKey;
  *(v4 + 36) |= 4u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_6:
    v4[7] = self->_iconAttributeValue;
    *(v4 + 36) |= 8u;
  }

LABEL_7:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 36) & 0x10) == 0 || self->_iconType != *(v4 + 8))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 36) & 0x10) != 0)
  {
LABEL_26:
    v5 = 0;
    goto LABEL_27;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_cartoID != *(v4 + 4))
    {
      goto LABEL_26;
    }
  }

  else if (*(v4 + 36))
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 36) & 2) == 0 || self->_defaultTransitType != *(v4 + 5))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 36) & 2) != 0)
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 36) & 4) == 0 || self->_iconAttributeKey != *(v4 + 6))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 36) & 4) != 0)
  {
    goto LABEL_26;
  }

  v5 = (*(v4 + 36) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 36) & 8) == 0 || self->_iconAttributeValue != *(v4 + 7))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 36);
  if ((v5 & 0x10) != 0)
  {
    self->_iconType = *(v4 + 8);
    *&self->_has |= 0x10u;
    v5 = *(v4 + 36);
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

  else if ((*(v4 + 36) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_cartoID = *(v4 + 4);
  *&self->_has |= 1u;
  v5 = *(v4 + 36);
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
  self->_defaultTransitType = *(v4 + 5);
  *&self->_has |= 2u;
  v5 = *(v4 + 36);
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
  self->_iconAttributeKey = *(v4 + 6);
  *&self->_has |= 4u;
  if ((*(v4 + 36) & 8) != 0)
  {
LABEL_6:
    self->_iconAttributeValue = *(v4 + 7);
    *&self->_has |= 8u;
  }

LABEL_7:
}

@end