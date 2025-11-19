@interface MSPTransitStorageLine
- (BOOL)isEqual:(id)a3;
- (GEOMapItemIdentifier)identifier;
- (MSPTransitStorageLine)initWithLine:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MSPTransitStorageLine

- (MSPTransitStorageLine)initWithLine:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = MSPTransitStorageLine;
  v5 = [(MSPTransitStorageLine *)&v33 init];
  if (v5)
  {
    v6 = [v4 identifier];
    -[MSPTransitStorageLine setMuid:](v5, "setMuid:", [v6 muid]);
    v7 = [v4 name];
    [(MSPTransitStorageLine *)v5 setName:v7];

    v8 = [v4 lineColorString];
    [(MSPTransitStorageLine *)v5 setLineColorString:v8];

    if ([v6 hasCoordinate])
    {
      v9 = objc_alloc(MEMORY[0x277D0EB58]);
      [v6 coordinate];
      v10 = [v9 initWithCoordinate:?];
      [(MSPTransitStorageLine *)v5 setLocationHint:v10];
    }

    v11 = [v4 system];

    if (v11)
    {
      v12 = [MSPTransitStorageSystem alloc];
      v13 = [v4 system];
      v14 = [(MSPTransitStorageSystem *)v12 initWithSystem:v13];
      [(MSPTransitStorageLine *)v5 setSystem:v14];
    }

    v15 = [v4 artwork];

    if (v15)
    {
      v16 = [MSPTransitStorageArtwork alloc];
      v17 = [v4 artwork];
      v18 = [(MSPTransitStorageArtwork *)v16 initWithArtwork:v17];
      [(MSPTransitStorageLine *)v5 setArtwork:v18];
    }

    v19 = [v4 modeArtwork];

    if (v19)
    {
      v20 = [MSPTransitStorageArtwork alloc];
      v21 = [v4 modeArtwork];
      v22 = [(MSPTransitStorageArtwork *)v20 initWithArtwork:v21];
      [(MSPTransitStorageLine *)v5 setModeArtwork:v22];
    }

    v23 = [v4 alternateArtwork];

    if (v23)
    {
      v24 = [MSPTransitStorageArtwork alloc];
      v25 = [v4 alternateArtwork];
      v26 = [(MSPTransitStorageArtwork *)v24 initWithArtwork:v25];
      [(MSPTransitStorageLine *)v5 setAlternateArtwork:v26];
    }

    v27 = [v4 headerArtwork];

    if (v27)
    {
      v28 = [MSPTransitStorageArtwork alloc];
      v29 = [v4 headerArtwork];
      v30 = [(MSPTransitStorageArtwork *)v28 initWithArtwork:v29];
      [(MSPTransitStorageLine *)v5 setHeaderArtwork:v30];
    }

    v31 = v5;
  }

  return v5;
}

- (GEOMapItemIdentifier)identifier
{
  v3 = objc_alloc(MEMORY[0x277D0EBA8]);
  v4 = [(MSPTransitStorageLine *)self muid];
  if ([(MSPTransitStorageLine *)self hasLocationHint])
  {
    v5 = [(MSPTransitStorageLine *)self locationHint];
    [v5 coordinate];
    v6 = [v3 initWithMUID:v4 resultProviderID:0 coordinate:?];
  }

  else
  {
    v6 = [v3 initWithMUID:v4 resultProviderID:0 coordinate:{-180.0, -180.0}];
  }

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MSPTransitStorageLine;
  v4 = [(MSPTransitStorageLine *)&v8 description];
  v5 = [(MSPTransitStorageLine *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_muid];
    [v3 setObject:v4 forKey:@"muid"];
  }

  name = self->_name;
  if (name)
  {
    [v3 setObject:name forKey:@"name"];
  }

  lineColorString = self->_lineColorString;
  if (lineColorString)
  {
    [v3 setObject:lineColorString forKey:@"line_color_string"];
  }

  artwork = self->_artwork;
  if (artwork)
  {
    v8 = [(MSPTransitStorageArtwork *)artwork dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"artwork"];
  }

  modeArtwork = self->_modeArtwork;
  if (modeArtwork)
  {
    v10 = [(MSPTransitStorageArtwork *)modeArtwork dictionaryRepresentation];
    [v3 setObject:v10 forKey:@"mode_artwork"];
  }

  system = self->_system;
  if (system)
  {
    v12 = [(MSPTransitStorageSystem *)system dictionaryRepresentation];
    [v3 setObject:v12 forKey:@"system"];
  }

  alternateArtwork = self->_alternateArtwork;
  if (alternateArtwork)
  {
    v14 = [(MSPTransitStorageArtwork *)alternateArtwork dictionaryRepresentation];
    [v3 setObject:v14 forKey:@"alternate_artwork"];
  }

  locationHint = self->_locationHint;
  if (locationHint)
  {
    v16 = [(GEOLatLng *)locationHint dictionaryRepresentation];
    [v3 setObject:v16 forKey:@"location_hint"];
  }

  headerArtwork = self->_headerArtwork;
  if (headerArtwork)
  {
    v18 = [(MSPTransitStorageArtwork *)headerArtwork dictionaryRepresentation];
    [v3 setObject:v18 forKey:@"header_artwork"];
  }

  unknownFields = self->_unknownFields;
  if (unknownFields)
  {
    v20 = [(PBUnknownFields *)unknownFields dictionaryRepresentation];
    [v3 setObject:v20 forKey:@"Unknown Fields"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    muid = self->_muid;
    PBDataWriterWriteUint64Field();
    v4 = v6;
  }

  if (self->_name)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_lineColorString)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_artwork)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_modeArtwork)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_system)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_alternateArtwork)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_locationHint)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_headerArtwork)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  [(PBUnknownFields *)self->_unknownFields writeTo:v4];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[2] = self->_muid;
    *(v4 + 88) |= 1u;
  }

  v5 = v4;
  if (self->_name)
  {
    [v4 setName:?];
    v4 = v5;
  }

  if (self->_lineColorString)
  {
    [v5 setLineColorString:?];
    v4 = v5;
  }

  if (self->_artwork)
  {
    [v5 setArtwork:?];
    v4 = v5;
  }

  if (self->_modeArtwork)
  {
    [v5 setModeArtwork:?];
    v4 = v5;
  }

  if (self->_system)
  {
    [v5 setSystem:?];
    v4 = v5;
  }

  if (self->_alternateArtwork)
  {
    [v5 setAlternateArtwork:?];
    v4 = v5;
  }

  if (self->_locationHint)
  {
    [v5 setLocationHint:?];
    v4 = v5;
  }

  if (self->_headerArtwork)
  {
    [v5 setHeaderArtwork:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_muid;
    *(v5 + 88) |= 1u;
  }

  v7 = [(NSString *)self->_name copyWithZone:a3];
  v8 = *(v6 + 72);
  *(v6 + 72) = v7;

  v9 = [(NSString *)self->_lineColorString copyWithZone:a3];
  v10 = *(v6 + 48);
  *(v6 + 48) = v9;

  v11 = [(MSPTransitStorageArtwork *)self->_artwork copyWithZone:a3];
  v12 = *(v6 + 32);
  *(v6 + 32) = v11;

  v13 = [(MSPTransitStorageArtwork *)self->_modeArtwork copyWithZone:a3];
  v14 = *(v6 + 64);
  *(v6 + 64) = v13;

  v15 = [(MSPTransitStorageSystem *)self->_system copyWithZone:a3];
  v16 = *(v6 + 80);
  *(v6 + 80) = v15;

  v17 = [(MSPTransitStorageArtwork *)self->_alternateArtwork copyWithZone:a3];
  v18 = *(v6 + 24);
  *(v6 + 24) = v17;

  v19 = [(GEOLatLng *)self->_locationHint copyWithZone:a3];
  v20 = *(v6 + 56);
  *(v6 + 56) = v19;

  v21 = [(MSPTransitStorageArtwork *)self->_headerArtwork copyWithZone:a3];
  v22 = *(v6 + 40);
  *(v6 + 40) = v21;

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

  v5 = *(v4 + 88);
  if (*&self->_has)
  {
    if ((*(v4 + 88) & 1) == 0 || self->_muid != *(v4 + 2))
    {
      goto LABEL_23;
    }
  }

  else if (*(v4 + 88))
  {
LABEL_23:
    v14 = 0;
    goto LABEL_24;
  }

  name = self->_name;
  if (name | *(v4 + 9) && ![(NSString *)name isEqual:?])
  {
    goto LABEL_23;
  }

  lineColorString = self->_lineColorString;
  if (lineColorString | *(v4 + 6))
  {
    if (![(NSString *)lineColorString isEqual:?])
    {
      goto LABEL_23;
    }
  }

  artwork = self->_artwork;
  if (artwork | *(v4 + 4))
  {
    if (![(MSPTransitStorageArtwork *)artwork isEqual:?])
    {
      goto LABEL_23;
    }
  }

  modeArtwork = self->_modeArtwork;
  if (modeArtwork | *(v4 + 8))
  {
    if (![(MSPTransitStorageArtwork *)modeArtwork isEqual:?])
    {
      goto LABEL_23;
    }
  }

  system = self->_system;
  if (system | *(v4 + 10))
  {
    if (![(MSPTransitStorageSystem *)system isEqual:?])
    {
      goto LABEL_23;
    }
  }

  alternateArtwork = self->_alternateArtwork;
  if (alternateArtwork | *(v4 + 3))
  {
    if (![(MSPTransitStorageArtwork *)alternateArtwork isEqual:?])
    {
      goto LABEL_23;
    }
  }

  locationHint = self->_locationHint;
  if (locationHint | *(v4 + 7))
  {
    if (![(GEOLatLng *)locationHint isEqual:?])
    {
      goto LABEL_23;
    }
  }

  headerArtwork = self->_headerArtwork;
  if (headerArtwork | *(v4 + 5))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[11])
  {
    self->_muid = v4[2];
    *&self->_has |= 1u;
  }

  v18 = v4;
  if (v4[9])
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