@interface MSPTransitStorageLine
- (BOOL)isEqual:(id)equal;
- (GEOMapItemIdentifier)identifier;
- (MSPTransitStorageLine)initWithLine:(id)line;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation MSPTransitStorageLine

- (MSPTransitStorageLine)initWithLine:(id)line
{
  lineCopy = line;
  v33.receiver = self;
  v33.super_class = MSPTransitStorageLine;
  v5 = [(MSPTransitStorageLine *)&v33 init];
  if (v5)
  {
    identifier = [lineCopy identifier];
    -[MSPTransitStorageLine setMuid:](v5, "setMuid:", [identifier muid]);
    name = [lineCopy name];
    [(MSPTransitStorageLine *)v5 setName:name];

    lineColorString = [lineCopy lineColorString];
    [(MSPTransitStorageLine *)v5 setLineColorString:lineColorString];

    if ([identifier hasCoordinate])
    {
      v9 = objc_alloc(MEMORY[0x277D0EB58]);
      [identifier coordinate];
      v10 = [v9 initWithCoordinate:?];
      [(MSPTransitStorageLine *)v5 setLocationHint:v10];
    }

    system = [lineCopy system];

    if (system)
    {
      v12 = [MSPTransitStorageSystem alloc];
      system2 = [lineCopy system];
      v14 = [(MSPTransitStorageSystem *)v12 initWithSystem:system2];
      [(MSPTransitStorageLine *)v5 setSystem:v14];
    }

    artwork = [lineCopy artwork];

    if (artwork)
    {
      v16 = [MSPTransitStorageArtwork alloc];
      artwork2 = [lineCopy artwork];
      v18 = [(MSPTransitStorageArtwork *)v16 initWithArtwork:artwork2];
      [(MSPTransitStorageLine *)v5 setArtwork:v18];
    }

    modeArtwork = [lineCopy modeArtwork];

    if (modeArtwork)
    {
      v20 = [MSPTransitStorageArtwork alloc];
      modeArtwork2 = [lineCopy modeArtwork];
      v22 = [(MSPTransitStorageArtwork *)v20 initWithArtwork:modeArtwork2];
      [(MSPTransitStorageLine *)v5 setModeArtwork:v22];
    }

    alternateArtwork = [lineCopy alternateArtwork];

    if (alternateArtwork)
    {
      v24 = [MSPTransitStorageArtwork alloc];
      alternateArtwork2 = [lineCopy alternateArtwork];
      v26 = [(MSPTransitStorageArtwork *)v24 initWithArtwork:alternateArtwork2];
      [(MSPTransitStorageLine *)v5 setAlternateArtwork:v26];
    }

    headerArtwork = [lineCopy headerArtwork];

    if (headerArtwork)
    {
      v28 = [MSPTransitStorageArtwork alloc];
      headerArtwork2 = [lineCopy headerArtwork];
      v30 = [(MSPTransitStorageArtwork *)v28 initWithArtwork:headerArtwork2];
      [(MSPTransitStorageLine *)v5 setHeaderArtwork:v30];
    }

    v31 = v5;
  }

  return v5;
}

- (GEOMapItemIdentifier)identifier
{
  v3 = objc_alloc(MEMORY[0x277D0EBA8]);
  muid = [(MSPTransitStorageLine *)self muid];
  if ([(MSPTransitStorageLine *)self hasLocationHint])
  {
    locationHint = [(MSPTransitStorageLine *)self locationHint];
    [locationHint coordinate];
    v6 = [v3 initWithMUID:muid resultProviderID:0 coordinate:?];
  }

  else
  {
    v6 = [v3 initWithMUID:muid resultProviderID:0 coordinate:{-180.0, -180.0}];
  }

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MSPTransitStorageLine;
  v4 = [(MSPTransitStorageLine *)&v8 description];
  dictionaryRepresentation = [(MSPTransitStorageLine *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_muid];
    [dictionary setObject:v4 forKey:@"muid"];
  }

  name = self->_name;
  if (name)
  {
    [dictionary setObject:name forKey:@"name"];
  }

  lineColorString = self->_lineColorString;
  if (lineColorString)
  {
    [dictionary setObject:lineColorString forKey:@"line_color_string"];
  }

  artwork = self->_artwork;
  if (artwork)
  {
    dictionaryRepresentation = [(MSPTransitStorageArtwork *)artwork dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"artwork"];
  }

  modeArtwork = self->_modeArtwork;
  if (modeArtwork)
  {
    dictionaryRepresentation2 = [(MSPTransitStorageArtwork *)modeArtwork dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"mode_artwork"];
  }

  system = self->_system;
  if (system)
  {
    dictionaryRepresentation3 = [(MSPTransitStorageSystem *)system dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"system"];
  }

  alternateArtwork = self->_alternateArtwork;
  if (alternateArtwork)
  {
    dictionaryRepresentation4 = [(MSPTransitStorageArtwork *)alternateArtwork dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"alternate_artwork"];
  }

  locationHint = self->_locationHint;
  if (locationHint)
  {
    dictionaryRepresentation5 = [(GEOLatLng *)locationHint dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation5 forKey:@"location_hint"];
  }

  headerArtwork = self->_headerArtwork;
  if (headerArtwork)
  {
    dictionaryRepresentation6 = [(MSPTransitStorageArtwork *)headerArtwork dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation6 forKey:@"header_artwork"];
  }

  unknownFields = self->_unknownFields;
  if (unknownFields)
  {
    dictionaryRepresentation7 = [(PBUnknownFields *)unknownFields dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation7 forKey:@"Unknown Fields"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    muid = self->_muid;
    PBDataWriterWriteUint64Field();
    toCopy = v6;
  }

  if (self->_name)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_lineColorString)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_artwork)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_modeArtwork)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_system)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_alternateArtwork)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_locationHint)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_headerArtwork)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  [(PBUnknownFields *)self->_unknownFields writeTo:toCopy];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[2] = self->_muid;
    *(toCopy + 88) |= 1u;
  }

  v5 = toCopy;
  if (self->_name)
  {
    [toCopy setName:?];
    toCopy = v5;
  }

  if (self->_lineColorString)
  {
    [v5 setLineColorString:?];
    toCopy = v5;
  }

  if (self->_artwork)
  {
    [v5 setArtwork:?];
    toCopy = v5;
  }

  if (self->_modeArtwork)
  {
    [v5 setModeArtwork:?];
    toCopy = v5;
  }

  if (self->_system)
  {
    [v5 setSystem:?];
    toCopy = v5;
  }

  if (self->_alternateArtwork)
  {
    [v5 setAlternateArtwork:?];
    toCopy = v5;
  }

  if (self->_locationHint)
  {
    [v5 setLocationHint:?];
    toCopy = v5;
  }

  if (self->_headerArtwork)
  {
    [v5 setHeaderArtwork:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_muid;
    *(v5 + 88) |= 1u;
  }

  v7 = [(NSString *)self->_name copyWithZone:zone];
  v8 = *(v6 + 72);
  *(v6 + 72) = v7;

  v9 = [(NSString *)self->_lineColorString copyWithZone:zone];
  v10 = *(v6 + 48);
  *(v6 + 48) = v9;

  v11 = [(MSPTransitStorageArtwork *)self->_artwork copyWithZone:zone];
  v12 = *(v6 + 32);
  *(v6 + 32) = v11;

  v13 = [(MSPTransitStorageArtwork *)self->_modeArtwork copyWithZone:zone];
  v14 = *(v6 + 64);
  *(v6 + 64) = v13;

  v15 = [(MSPTransitStorageSystem *)self->_system copyWithZone:zone];
  v16 = *(v6 + 80);
  *(v6 + 80) = v15;

  v17 = [(MSPTransitStorageArtwork *)self->_alternateArtwork copyWithZone:zone];
  v18 = *(v6 + 24);
  *(v6 + 24) = v17;

  v19 = [(GEOLatLng *)self->_locationHint copyWithZone:zone];
  v20 = *(v6 + 56);
  *(v6 + 56) = v19;

  v21 = [(MSPTransitStorageArtwork *)self->_headerArtwork copyWithZone:zone];
  v22 = *(v6 + 40);
  *(v6 + 40) = v21;

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

  v5 = *(equalCopy + 88);
  if (*&self->_has)
  {
    if ((*(equalCopy + 88) & 1) == 0 || self->_muid != *(equalCopy + 2))
    {
      goto LABEL_23;
    }
  }

  else if (*(equalCopy + 88))
  {
LABEL_23:
    v14 = 0;
    goto LABEL_24;
  }

  name = self->_name;
  if (name | *(equalCopy + 9) && ![(NSString *)name isEqual:?])
  {
    goto LABEL_23;
  }

  lineColorString = self->_lineColorString;
  if (lineColorString | *(equalCopy + 6))
  {
    if (![(NSString *)lineColorString isEqual:?])
    {
      goto LABEL_23;
    }
  }

  artwork = self->_artwork;
  if (artwork | *(equalCopy + 4))
  {
    if (![(MSPTransitStorageArtwork *)artwork isEqual:?])
    {
      goto LABEL_23;
    }
  }

  modeArtwork = self->_modeArtwork;
  if (modeArtwork | *(equalCopy + 8))
  {
    if (![(MSPTransitStorageArtwork *)modeArtwork isEqual:?])
    {
      goto LABEL_23;
    }
  }

  system = self->_system;
  if (system | *(equalCopy + 10))
  {
    if (![(MSPTransitStorageSystem *)system isEqual:?])
    {
      goto LABEL_23;
    }
  }

  alternateArtwork = self->_alternateArtwork;
  if (alternateArtwork | *(equalCopy + 3))
  {
    if (![(MSPTransitStorageArtwork *)alternateArtwork isEqual:?])
    {
      goto LABEL_23;
    }
  }

  locationHint = self->_locationHint;
  if (locationHint | *(equalCopy + 7))
  {
    if (![(GEOLatLng *)locationHint isEqual:?])
    {
      goto LABEL_23;
    }
  }

  headerArtwork = self->_headerArtwork;
  if (headerArtwork | *(equalCopy + 5))
  {
    v14 = [(MSPTransitStorageArtwork *)headerArtwork isEqual:?];
  }

  else
  {
    v14 = 1;
  }

LABEL_24:

  return v14;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_muid;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_name hash]^ v3;
  v5 = [(NSString *)self->_lineColorString hash];
  v6 = v4 ^ v5 ^ [(MSPTransitStorageArtwork *)self->_artwork hash];
  v7 = [(MSPTransitStorageArtwork *)self->_modeArtwork hash];
  v8 = v7 ^ [(MSPTransitStorageSystem *)self->_system hash];
  v9 = v6 ^ v8 ^ [(MSPTransitStorageArtwork *)self->_alternateArtwork hash];
  v10 = [(GEOLatLng *)self->_locationHint hash];
  return v9 ^ v10 ^ [(MSPTransitStorageArtwork *)self->_headerArtwork hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[11])
  {
    self->_muid = fromCopy[2];
    *&self->_has |= 1u;
  }

  v18 = fromCopy;
  if (fromCopy[9])
  {
    [(MSPTransitStorageLine *)self setName:?];
    v5 = v18;
  }

  if (v5[6])
  {
    [(MSPTransitStorageLine *)self setLineColorString:?];
    v5 = v18;
  }

  artwork = self->_artwork;
  v7 = v5[4];
  if (artwork)
  {
    if (!v7)
    {
      goto LABEL_13;
    }

    [(MSPTransitStorageArtwork *)artwork mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_13;
    }

    [(MSPTransitStorageLine *)self setArtwork:?];
  }

  v5 = v18;
LABEL_13:
  modeArtwork = self->_modeArtwork;
  v9 = v5[8];
  if (modeArtwork)
  {
    if (!v9)
    {
      goto LABEL_19;
    }

    [(MSPTransitStorageArtwork *)modeArtwork mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_19;
    }

    [(MSPTransitStorageLine *)self setModeArtwork:?];
  }

  v5 = v18;
LABEL_19:
  system = self->_system;
  v11 = v5[10];
  if (system)
  {
    if (!v11)
    {
      goto LABEL_25;
    }

    [(MSPTransitStorageSystem *)system mergeFrom:?];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_25;
    }

    [(MSPTransitStorageLine *)self setSystem:?];
  }

  v5 = v18;
LABEL_25:
  alternateArtwork = self->_alternateArtwork;
  v13 = v5[3];
  if (alternateArtwork)
  {
    if (!v13)
    {
      goto LABEL_31;
    }

    [(MSPTransitStorageArtwork *)alternateArtwork mergeFrom:?];
  }

  else
  {
    if (!v13)
    {
      goto LABEL_31;
    }

    [(MSPTransitStorageLine *)self setAlternateArtwork:?];
  }

  v5 = v18;
LABEL_31:
  locationHint = self->_locationHint;
  v15 = v5[7];
  if (locationHint)
  {
    if (!v15)
    {
      goto LABEL_37;
    }

    [(GEOLatLng *)locationHint mergeFrom:?];
  }

  else
  {
    if (!v15)
    {
      goto LABEL_37;
    }

    [(MSPTransitStorageLine *)self setLocationHint:?];
  }

  v5 = v18;
LABEL_37:
  headerArtwork = self->_headerArtwork;
  v17 = v5[5];
  if (headerArtwork)
  {
    if (v17)
    {
      [(MSPTransitStorageArtwork *)headerArtwork mergeFrom:?];
    }
  }

  else if (v17)
  {
    [(MSPTransitStorageLine *)self setHeaderArtwork:?];
  }

  MEMORY[0x2821F96F8]();
}

@end