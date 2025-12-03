@interface MSPTransitStorageArtwork
- (BOOL)isEqual:(id)equal;
- (MSPTransitStorageArtwork)initWithArtwork:(id)artwork;
- (NSString)description;
- (id)artworkSourceTypeAsString:(int)string;
- (id)artworkUseTypeAsString:(int)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsArtworkSourceType:(id)type;
- (int)StringAsArtworkUseType:(id)type;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasArtworkUseType:(BOOL)type;
- (void)setHasHasRoutingIncidentBadge:(BOOL)badge;
- (void)writeTo:(id)to;
@end

@implementation MSPTransitStorageArtwork

- (MSPTransitStorageArtwork)initWithArtwork:(id)artwork
{
  artworkCopy = artwork;
  v21.receiver = self;
  v21.super_class = MSPTransitStorageArtwork;
  v5 = [(MSPTransitStorageArtwork *)&v21 init];
  if (v5)
  {
    -[MSPTransitStorageArtwork setArtworkSourceType:](v5, "setArtworkSourceType:", [artworkCopy artworkSourceType]);
    -[MSPTransitStorageArtwork setArtworkUseType:](v5, "setArtworkUseType:", [artworkCopy artworkUseType]);
    shieldDataSource = [artworkCopy shieldDataSource];

    if (shieldDataSource)
    {
      v7 = [MSPTransitStorageShield alloc];
      shieldDataSource2 = [artworkCopy shieldDataSource];
      v9 = [(MSPTransitStorageShield *)v7 initWithShield:shieldDataSource2];
      [(MSPTransitStorageArtwork *)v5 setShield:v9];
    }

    iconDataSource = [artworkCopy iconDataSource];

    if (iconDataSource)
    {
      v11 = [MSPTransitStorageIcon alloc];
      iconDataSource2 = [artworkCopy iconDataSource];
      v13 = [(MSPTransitStorageIcon *)v11 initWithIcon:iconDataSource2];
      [(MSPTransitStorageArtwork *)v5 setIcon:v13];
    }

    iconFallbackShieldDataSource = [artworkCopy iconFallbackShieldDataSource];

    if (iconFallbackShieldDataSource)
    {
      v15 = [MSPTransitStorageShield alloc];
      iconFallbackShieldDataSource2 = [artworkCopy iconFallbackShieldDataSource];
      v17 = [(MSPTransitStorageShield *)v15 initWithShield:iconFallbackShieldDataSource2];
      [(MSPTransitStorageArtwork *)v5 setIconFallbackShield:v17];
    }

    -[MSPTransitStorageArtwork setHasRoutingIncidentBadge:](v5, "setHasRoutingIncidentBadge:", [artworkCopy hasRoutingIncidentBadge]);
    accessibilityText = [artworkCopy accessibilityText];
    [(MSPTransitStorageArtwork *)v5 setAccessibilityText:accessibilityText];

    v19 = v5;
  }

  return v5;
}

- (id)artworkSourceTypeAsString:(int)string
{
  if (string >= 5)
  {
    string = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %ld)", string];
  }

  else
  {
    string = off_279866640[string];
  }

  return string;
}

- (int)StringAsArtworkSourceType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"GEOTransitArtworkSourceTypeNone"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"GEOTransitArtworkSourceTypeShield"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"GEOTransitArtworkSourceTypeIcon"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"GEOTransitArtworkSourceTypeText"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"GEOTransitArtworkSourceTypeSFSymbol"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasArtworkUseType:(BOOL)type
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

- (id)artworkUseTypeAsString:(int)string
{
  if (string >= 0xD)
  {
    string = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %ld)", string];
  }

  else
  {
    string = off_279866668[string];
  }

  return string;
}

- (int)StringAsArtworkUseType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"GEOTransitArtworkUseTypeNone"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"GEOTransitArtworkUseTypeLine"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"GEOTransitArtworkUseTypeBrand"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"GEOTransitArtworkUseTypeMode"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"GEOTransitArtworkUseTypeSystem"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"GEOTransitArtworkUseTypeTrip"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"GEOTransitArtworkUseTypeAccessPoint"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"GEOTransitArtworkUseTypeStation"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"GEOTransitArtworkUseTypeTripRoutePlanning"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"GEOTransitArtworkUseTypeManeuver"])
  {
    v4 = 9;
  }

  else if ([typeCopy isEqualToString:@"GEOTransitArtworkUseTypeHall"])
  {
    v4 = 10;
  }

  else if ([typeCopy isEqualToString:@"GEOTransitArtworkUseTypeStationLine"])
  {
    v4 = 11;
  }

  else if ([typeCopy isEqualToString:@"GEOTransitArtworkUseTypeVehiclePosition"])
  {
    v4 = 12;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasHasRoutingIncidentBadge:(BOOL)badge
{
  if (badge)
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
  dictionaryRepresentation = [(MSPTransitStorageArtwork *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
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

    [dictionary setObject:v6 forKey:@"artwork_source_type"];

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

    [dictionary setObject:v8 forKey:@"artwork_use_type"];
  }

  shield = self->_shield;
  if (shield)
  {
    dictionaryRepresentation = [(MSPTransitStorageShield *)shield dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"shield"];
  }

  icon = self->_icon;
  if (icon)
  {
    dictionaryRepresentation2 = [(MSPTransitStorageIcon *)icon dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"icon"];
  }

  iconFallbackShield = self->_iconFallbackShield;
  if (iconFallbackShield)
  {
    dictionaryRepresentation3 = [(MSPTransitStorageShield *)iconFallbackShield dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"icon_fallback_shield"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasRoutingIncidentBadge];
    [dictionary setObject:v15 forKey:@"has_routing_incident_badge"];
  }

  accessibilityText = self->_accessibilityText;
  if (accessibilityText)
  {
    [dictionary setObject:accessibilityText forKey:@"accessibility_text"];
  }

  unknownFields = self->_unknownFields;
  if (unknownFields)
  {
    dictionaryRepresentation4 = [(PBUnknownFields *)unknownFields dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"Unknown Fields"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v9 = toCopy;
  if (has)
  {
    artworkSourceType = self->_artworkSourceType;
    PBDataWriterWriteInt32Field();
    toCopy = v9;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    artworkUseType = self->_artworkUseType;
    PBDataWriterWriteInt32Field();
    toCopy = v9;
  }

  if (self->_shield)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_icon)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_iconFallbackShield)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if ((*&self->_has & 4) != 0)
  {
    hasRoutingIncidentBadge = self->_hasRoutingIncidentBadge;
    PBDataWriterWriteBOOLField();
    toCopy = v9;
  }

  if (self->_accessibilityText)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  [(PBUnknownFields *)self->_unknownFields writeTo:toCopy];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[6] = self->_artworkSourceType;
    *(toCopy + 60) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    toCopy[7] = self->_artworkUseType;
    *(toCopy + 60) |= 2u;
  }

  v6 = toCopy;
  if (self->_shield)
  {
    [toCopy setShield:?];
    toCopy = v6;
  }

  if (self->_icon)
  {
    [v6 setIcon:?];
    toCopy = v6;
  }

  if (self->_iconFallbackShield)
  {
    [v6 setIconFallbackShield:?];
    toCopy = v6;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(toCopy + 56) = self->_hasRoutingIncidentBadge;
    *(toCopy + 60) |= 4u;
  }

  if (self->_accessibilityText)
  {
    [v6 setAccessibilityText:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

  v8 = [(MSPTransitStorageShield *)self->_shield copyWithZone:zone];
  v9 = *(v6 + 48);
  *(v6 + 48) = v8;

  v10 = [(MSPTransitStorageIcon *)self->_icon copyWithZone:zone];
  v11 = *(v6 + 32);
  *(v6 + 32) = v10;

  v12 = [(MSPTransitStorageShield *)self->_iconFallbackShield copyWithZone:zone];
  v13 = *(v6 + 40);
  *(v6 + 40) = v12;

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 56) = self->_hasRoutingIncidentBadge;
    *(v6 + 60) |= 4u;
  }

  v14 = [(NSString *)self->_accessibilityText copyWithZone:zone];
  v15 = *(v6 + 16);
  *(v6 + 16) = v14;

  objc_storeStrong((v6 + 8), self->_unknownFields);
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  v5 = *(equalCopy + 60);
  if (*&self->_has)
  {
    if ((*(equalCopy + 60) & 1) == 0 || self->_artworkSourceType != *(equalCopy + 6))
    {
      goto LABEL_23;
    }
  }

  else if (*(equalCopy + 60))
  {
    goto LABEL_23;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 60) & 2) == 0 || self->_artworkUseType != *(equalCopy + 7))
    {
      goto LABEL_23;
    }
  }

  else if ((*(equalCopy + 60) & 2) != 0)
  {
    goto LABEL_23;
  }

  shield = self->_shield;
  if (shield | *(equalCopy + 6) && ![(MSPTransitStorageShield *)shield isEqual:?])
  {
    goto LABEL_23;
  }

  icon = self->_icon;
  if (icon | *(equalCopy + 4))
  {
    if (![(MSPTransitStorageIcon *)icon isEqual:?])
    {
      goto LABEL_23;
    }
  }

  iconFallbackShield = self->_iconFallbackShield;
  if (iconFallbackShield | *(equalCopy + 5))
  {
    if (![(MSPTransitStorageShield *)iconFallbackShield isEqual:?])
    {
      goto LABEL_23;
    }
  }

  v9 = *(equalCopy + 60);
  if ((*&self->_has & 4) == 0)
  {
    if ((*(equalCopy + 60) & 4) == 0)
    {
      goto LABEL_20;
    }

LABEL_23:
    v11 = 0;
    goto LABEL_24;
  }

  if ((*(equalCopy + 60) & 4) == 0)
  {
    goto LABEL_23;
  }

  v13 = *(equalCopy + 56);
  if (self->_hasRoutingIncidentBadge)
  {
    if ((*(equalCopy + 56) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if (*(equalCopy + 56))
  {
    goto LABEL_23;
  }

LABEL_20:
  accessibilityText = self->_accessibilityText;
  if (accessibilityText | *(equalCopy + 2))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 60);
  if (v6)
  {
    self->_artworkSourceType = fromCopy[6];
    *&self->_has |= 1u;
    v6 = *(fromCopy + 60);
  }

  if ((v6 & 2) != 0)
  {
    self->_artworkUseType = fromCopy[7];
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