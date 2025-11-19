@interface MSPTransitStorageArtwork
- (BOOL)isEqual:(id)a3;
- (MSPTransitStorageArtwork)initWithArtwork:(id)a3;
- (NSString)description;
- (id)artworkSourceTypeAsString:(int)a3;
- (id)artworkUseTypeAsString:(int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsArtworkSourceType:(id)a3;
- (int)StringAsArtworkUseType:(id)a3;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasArtworkUseType:(BOOL)a3;
- (void)setHasHasRoutingIncidentBadge:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MSPTransitStorageArtwork

- (MSPTransitStorageArtwork)initWithArtwork:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = MSPTransitStorageArtwork;
  v5 = [(MSPTransitStorageArtwork *)&v21 init];
  if (v5)
  {
    -[MSPTransitStorageArtwork setArtworkSourceType:](v5, "setArtworkSourceType:", [v4 artworkSourceType]);
    -[MSPTransitStorageArtwork setArtworkUseType:](v5, "setArtworkUseType:", [v4 artworkUseType]);
    v6 = [v4 shieldDataSource];

    if (v6)
    {
      v7 = [MSPTransitStorageShield alloc];
      v8 = [v4 shieldDataSource];
      v9 = [(MSPTransitStorageShield *)v7 initWithShield:v8];
      [(MSPTransitStorageArtwork *)v5 setShield:v9];
    }

    v10 = [v4 iconDataSource];

    if (v10)
    {
      v11 = [MSPTransitStorageIcon alloc];
      v12 = [v4 iconDataSource];
      v13 = [(MSPTransitStorageIcon *)v11 initWithIcon:v12];
      [(MSPTransitStorageArtwork *)v5 setIcon:v13];
    }

    v14 = [v4 iconFallbackShieldDataSource];

    if (v14)
    {
      v15 = [MSPTransitStorageShield alloc];
      v16 = [v4 iconFallbackShieldDataSource];
      v17 = [(MSPTransitStorageShield *)v15 initWithShield:v16];
      [(MSPTransitStorageArtwork *)v5 setIconFallbackShield:v17];
    }

    -[MSPTransitStorageArtwork setHasRoutingIncidentBadge:](v5, "setHasRoutingIncidentBadge:", [v4 hasRoutingIncidentBadge]);
    v18 = [v4 accessibilityText];
    [(MSPTransitStorageArtwork *)v5 setAccessibilityText:v18];

    v19 = v5;
  }

  return v5;
}

- (id)artworkSourceTypeAsString:(int)a3
{
  if (a3 >= 5)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %ld)", a3];
  }

  else
  {
    v4 = off_279866640[a3];
  }

  return v4;
}

- (int)StringAsArtworkSourceType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"GEOTransitArtworkSourceTypeNone"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"GEOTransitArtworkSourceTypeShield"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"GEOTransitArtworkSourceTypeIcon"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"GEOTransitArtworkSourceTypeText"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"GEOTransitArtworkSourceTypeSFSymbol"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasArtworkUseType:(BOOL)a3
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

- (id)artworkUseTypeAsString:(int)a3
{
  if (a3 >= 0xD)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %ld)", a3];
  }

  else
  {
    v4 = off_279866668[a3];
  }

  return v4;
}

- (int)StringAsArtworkUseType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"GEOTransitArtworkUseTypeNone"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"GEOTransitArtworkUseTypeLine"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"GEOTransitArtworkUseTypeBrand"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"GEOTransitArtworkUseTypeMode"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"GEOTransitArtworkUseTypeSystem"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"GEOTransitArtworkUseTypeTrip"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"GEOTransitArtworkUseTypeAccessPoint"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"GEOTransitArtworkUseTypeStation"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"GEOTransitArtworkUseTypeTripRoutePlanning"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"GEOTransitArtworkUseTypeManeuver"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"GEOTransitArtworkUseTypeHall"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"GEOTransitArtworkUseTypeStationLine"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"GEOTransitArtworkUseTypeVehiclePosition"])
  {
    v4 = 12;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasHasRoutingIncidentBadge:(BOOL)a3
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

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MSPTransitStorageArtwork;
  v4 = [(MSPTransitStorageArtwork *)&v8 description];
  v5 = [(MSPTransitStorageArtwork *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    artworkSourceType = self->_artworkSourceType;
    if (artworkSourceType >= 5)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %ld)", self->_artworkSourceType];
    }

    else
    {
      v6 = off_279866640[artworkSourceType];
    }

    [v3 setObject:v6 forKey:@"artwork_source_type"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    artworkUseType = self->_artworkUseType;
    if (artworkUseType >= 0xD)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %ld)", self->_artworkUseType];
    }

    else
    {
      v8 = off_279866668[artworkUseType];
    }

    [v3 setObject:v8 forKey:@"artwork_use_type"];
  }

  shield = self->_shield;
  if (shield)
  {
    v10 = [(MSPTransitStorageShield *)shield dictionaryRepresentation];
    [v3 setObject:v10 forKey:@"shield"];
  }

  icon = self->_icon;
  if (icon)
  {
    v12 = [(MSPTransitStorageIcon *)icon dictionaryRepresentation];
    [v3 setObject:v12 forKey:@"icon"];
  }

  iconFallbackShield = self->_iconFallbackShield;
  if (iconFallbackShield)
  {
    v14 = [(MSPTransitStorageShield *)iconFallbackShield dictionaryRepresentation];
    [v3 setObject:v14 forKey:@"icon_fallback_shield"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasRoutingIncidentBadge];
    [v3 setObject:v15 forKey:@"has_routing_incident_badge"];
  }

  accessibilityText = self->_accessibilityText;
  if (accessibilityText)
  {
    [v3 setObject:accessibilityText forKey:@"accessibility_text"];
  }

  unknownFields = self->_unknownFields;
  if (unknownFields)
  {
    v18 = [(PBUnknownFields *)unknownFields dictionaryRepresentation];
    [v3 setObject:v18 forKey:@"Unknown Fields"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v9 = v4;
  if (has)
  {
    artworkSourceType = self->_artworkSourceType;
    PBDataWriterWriteInt32Field();
    v4 = v9;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    artworkUseType = self->_artworkUseType;
    PBDataWriterWriteInt32Field();
    v4 = v9;
  }

  if (self->_shield)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_icon)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_iconFallbackShield)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if ((*&self->_has & 4) != 0)
  {
    hasRoutingIncidentBadge = self->_hasRoutingIncidentBadge;
    PBDataWriterWriteBOOLField();
    v4 = v9;
  }

  if (self->_accessibilityText)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  [(PBUnknownFields *)self->_unknownFields writeTo:v4];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[6] = self->_artworkSourceType;
    *(v4 + 60) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v4[7] = self->_artworkUseType;
    *(v4 + 60) |= 2u;
  }

  v6 = v4;
  if (self->_shield)
  {
    [v4 setShield:?];
    v4 = v6;
  }

  if (self->_icon)
  {
    [v6 setIcon:?];
    v4 = v6;
  }

  if (self->_iconFallbackShield)
  {
    [v6 setIconFallbackShield:?];
    v4 = v6;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v4 + 56) = self->_hasRoutingIncidentBadge;
    *(v4 + 60) |= 4u;
  }

  if (self->_accessibilityText)
  {
    [v6 setAccessibilityText:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 24) = self->_artworkSourceType;
    *(v5 + 60) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 28) = self->_artworkUseType;
    *(v5 + 60) |= 2u;
  }

  v8 = [(MSPTransitStorageShield *)self->_shield copyWithZone:a3];
  v9 = *(v6 + 48);
  *(v6 + 48) = v8;

  v10 = [(MSPTransitStorageIcon *)self->_icon copyWithZone:a3];
  v11 = *(v6 + 32);
  *(v6 + 32) = v10;

  v12 = [(MSPTransitStorageShield *)self->_iconFallbackShield copyWithZone:a3];
  v13 = *(v6 + 40);
  *(v6 + 40) = v12;

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 56) = self->_hasRoutingIncidentBadge;
    *(v6 + 60) |= 4u;
  }

  v14 = [(NSString *)self->_accessibilityText copyWithZone:a3];
  v15 = *(v6 + 16);
  *(v6 + 16) = v14;

  objc_storeStrong((v6 + 8), self->_unknownFields);
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  v5 = *(v4 + 60);
  if (*&self->_has)
  {
    if ((*(v4 + 60) & 1) == 0 || self->_artworkSourceType != *(v4 + 6))
    {
      goto LABEL_23;
    }
  }

  else if (*(v4 + 60))
  {
    goto LABEL_23;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 60) & 2) == 0 || self->_artworkUseType != *(v4 + 7))
    {
      goto LABEL_23;
    }
  }

  else if ((*(v4 + 60) & 2) != 0)
  {
    goto LABEL_23;
  }

  shield = self->_shield;
  if (shield | *(v4 + 6) && ![(MSPTransitStorageShield *)shield isEqual:?])
  {
    goto LABEL_23;
  }

  icon = self->_icon;
  if (icon | *(v4 + 4))
  {
    if (![(MSPTransitStorageIcon *)icon isEqual:?])
    {
      goto LABEL_23;
    }
  }

  iconFallbackShield = self->_iconFallbackShield;
  if (iconFallbackShield | *(v4 + 5))
  {
    if (![(MSPTransitStorageShield *)iconFallbackShield isEqual:?])
    {
      goto LABEL_23;
    }
  }

  v9 = *(v4 + 60);
  if ((*&self->_has & 4) == 0)
  {
    if ((*(v4 + 60) & 4) == 0)
    {
      goto LABEL_20;
    }

LABEL_23:
    v11 = 0;
    goto LABEL_24;
  }

  if ((*(v4 + 60) & 4) == 0)
  {
    goto LABEL_23;
  }

  v13 = *(v4 + 56);
  if (self->_hasRoutingIncidentBadge)
  {
    if ((*(v4 + 56) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if (*(v4 + 56))
  {
    goto LABEL_23;
  }

LABEL_20:
  accessibilityText = self->_accessibilityText;
  if (accessibilityText | *(v4 + 2))
  {
    v11 = [(NSString *)accessibilityText isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_24:

  return v11;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_artworkSourceType;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_artworkUseType;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(MSPTransitStorageShield *)self->_shield hash];
  v6 = [(MSPTransitStorageIcon *)self->_icon hash];
  v7 = [(MSPTransitStorageShield *)self->_iconFallbackShield hash];
  if ((*&self->_has & 4) != 0)
  {
    v8 = 2654435761 * self->_hasRoutingIncidentBadge;
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ [(NSString *)self->_accessibilityText hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 60);
  if (v6)
  {
    self->_artworkSourceType = v4[6];
    *&self->_has |= 1u;
    v6 = *(v4 + 60);
  }

  if ((v6 & 2) != 0)
  {
    self->_artworkUseType = v4[7];
    *&self->_has |= 2u;
  }

  shield = self->_shield;
  v8 = *(v5 + 6);
  v13 = v5;
  if (shield)
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    [(MSPTransitStorageShield *)shield mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    [(MSPTransitStorageArtwork *)self setShield:?];
  }

  v5 = v13;
LABEL_11:
  icon = self->_icon;
  v10 = *(v5 + 4);
  if (icon)
  {
    if (!v10)
    {
      goto LABEL_17;
    }

    [(MSPTransitStorageIcon *)icon mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_17;
    }

    [(MSPTransitStorageArtwork *)self setIcon:?];
  }

  v5 = v13;
LABEL_17:
  iconFallbackShield = self->_iconFallbackShield;
  v12 = *(v5 + 5);
  if (iconFallbackShield)
  {
    if (!v12)
    {
      goto LABEL_23;
    }

    [(MSPTransitStorageShield *)iconFallbackShield mergeFrom:?];
  }

  else
  {
    if (!v12)
    {
      goto LABEL_23;
    }

    [(MSPTransitStorageArtwork *)self setIconFallbackShield:?];
  }

  v5 = v13;
LABEL_23:
  if ((v5[15] & 4) != 0)
  {
    self->_hasRoutingIncidentBadge = *(v5 + 56);
    *&self->_has |= 4u;
  }

  if (*(v5 + 2))
  {
    [(MSPTransitStorageArtwork *)self setAccessibilityText:?];
  }

  MEMORY[0x2821F96F8]();
}

@end