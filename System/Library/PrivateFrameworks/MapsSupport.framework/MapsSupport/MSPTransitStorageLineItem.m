@interface MSPTransitStorageLineItem
- (BOOL)departuresAreVehicleSpecific;
- (BOOL)hasIncidentComponent;
- (BOOL)hasLineColorString;
- (BOOL)isBus;
- (BOOL)isEqual:(id)a3;
- (BOOL)showVehicleNumber;
- (GEOMapItemIdentifier)identifier;
- (GEOTransitArtworkDataSource)alternateArtwork;
- (GEOTransitArtworkDataSource)artwork;
- (GEOTransitArtworkDataSource)headerArtwork;
- (GEOTransitArtworkDataSource)modeArtwork;
- (GEOTransitSystem)system;
- (MSPTransitStorageLineItem)initWithLineItem:(id)a3;
- (NSArray)operatingHours;
- (NSString)description;
- (NSString)lineColorString;
- (NSString)name;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)departureTimeDisplayStyle;
- (unint64_t)hash;
- (unint64_t)muid;
- (void)addIncidents:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MSPTransitStorageLineItem

- (MSPTransitStorageLineItem)initWithLineItem:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = MSPTransitStorageLineItem;
  v5 = [(MSPTransitStorageLineItem *)&v24 init];
  if (v5)
  {
    v6 = [[MSPTransitStorageLine alloc] initWithLine:v4];
    [(MSPTransitStorageLineItem *)v5 setLine:v6];

    v7 = [MSPTransitStorageAttribution alloc];
    v8 = [v4 attribution];
    v9 = [(MSPTransitStorageAttribution *)v7 initWithAttribution:v8];
    [(MSPTransitStorageLineItem *)v5 setTransitAttribution:v9];

    v10 = objc_opt_new();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = [v4 incidents];
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        v15 = 0;
        do
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [[MSPTransitStorageIncident alloc] initWithIncident:*(*(&v20 + 1) + 8 * v15)];
          [v10 addObject:v16];

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v13);
    }

    [(MSPTransitStorageLineItem *)v5 setIncidents:v10];
    v17 = [v4 mapRegion];
    [(MSPTransitStorageLineItem *)v5 setStoredMapRegion:v17];
  }

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

- (unint64_t)muid
{
  v2 = [(MSPTransitStorageLineItem *)self line];
  v3 = [v2 muid];

  return v3;
}

- (GEOMapItemIdentifier)identifier
{
  v3 = [(MSPTransitStorageLineItem *)self storedMapRegion];

  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D0EBA8]);
    v5 = [(MSPTransitStorageLineItem *)self line];
    v6 = [v5 muid];
    v7 = [(MSPTransitStorageLineItem *)self storedMapRegion];
    [v7 centerLat];
    v9 = v8;
    v10 = [(MSPTransitStorageLineItem *)self storedMapRegion];
    [v10 centerLng];
    v12 = [v4 initWithMUID:v6 resultProviderID:0 coordinate:{v9, v11}];
  }

  else
  {
    v5 = [(MSPTransitStorageLineItem *)self line];
    v12 = [v5 identifier];
  }

  return v12;
}

- (NSString)name
{
  v2 = [(MSPTransitStorageLineItem *)self line];
  v3 = [v2 name];

  return v3;
}

- (GEOTransitSystem)system
{
  v2 = [(MSPTransitStorageLineItem *)self line];
  v3 = [v2 system];

  return v3;
}

- (unint64_t)departureTimeDisplayStyle
{
  v2 = [(MSPTransitStorageLineItem *)self line];
  v3 = [v2 departureTimeDisplayStyle];

  return v3;
}

- (BOOL)departuresAreVehicleSpecific
{
  v2 = [(MSPTransitStorageLineItem *)self line];
  v3 = [v2 departuresAreVehicleSpecific];

  return v3;
}

- (GEOTransitArtworkDataSource)artwork
{
  v2 = [(MSPTransitStorageLineItem *)self line];
  v3 = [v2 artwork];

  return v3;
}

- (GEOTransitArtworkDataSource)modeArtwork
{
  v2 = [(MSPTransitStorageLineItem *)self line];
  v3 = [v2 modeArtwork];

  return v3;
}

- (GEOTransitArtworkDataSource)alternateArtwork
{
  v2 = [(MSPTransitStorageLineItem *)self line];
  v3 = [v2 alternateArtwork];

  return v3;
}

- (GEOTransitArtworkDataSource)headerArtwork
{
  v2 = [(MSPTransitStorageLineItem *)self line];
  v3 = [v2 headerArtwork];

  return v3;
}

- (BOOL)hasLineColorString
{
  v2 = [(MSPTransitStorageLineItem *)self line];
  v3 = [v2 hasLineColorString];

  return v3;
}

- (NSString)lineColorString
{
  v2 = [(MSPTransitStorageLineItem *)self line];
  v3 = [v2 lineColorString];

  return v3;
}

- (BOOL)showVehicleNumber
{
  v2 = [(MSPTransitStorageLineItem *)self line];
  v3 = [v2 showVehicleNumber];

  return v3;
}

- (NSArray)operatingHours
{
  v2 = [(MSPTransitStorageLineItem *)self line];
  v3 = [v2 operatingHours];

  return v3;
}

- (BOOL)hasIncidentComponent
{
  v2 = [(MSPTransitStorageLineItem *)self incidents];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isBus
{
  v2 = [(MSPTransitStorageLineItem *)self line];
  v3 = [v2 isBus];

  return v3;
}

- (void)addIncidents:(id)a3
{
  v4 = a3;
  incidents = self->_incidents;
  v8 = v4;
  if (!incidents)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_incidents;
    self->_incidents = v6;

    v4 = v8;
    incidents = self->_incidents;
  }

  [(NSMutableArray *)incidents addObject:v4];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MSPTransitStorageLineItem;
  v4 = [(MSPTransitStorageLineItem *)&v8 description];
  v5 = [(MSPTransitStorageLineItem *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  line = self->_line;
  if (line)
  {
    v5 = [(MSPTransitStorageLine *)line dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"line"];
  }

  storedMapRegion = self->_storedMapRegion;
  if (storedMapRegion)
  {
    v7 = [(GEOMapRegion *)storedMapRegion dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"stored_map_region"];
  }

  transitAttribution = self->_transitAttribution;
  if (transitAttribution)
  {
    v9 = [(MSPTransitStorageAttribution *)transitAttribution dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"transit_attribution"];
  }

  if ([(NSMutableArray *)self->_incidents count])
  {
    v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_incidents, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = self->_incidents;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v21 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:v16];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v13);
    }

    [v3 setObject:v10 forKey:@"incidents"];
  }

  unknownFields = self->_unknownFields;
  if (unknownFields)
  {
    v18 = [(PBUnknownFields *)unknownFields dictionaryRepresentation];
    [v3 setObject:v18 forKey:@"Unknown Fields"];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_line)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_storedMapRegion)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_transitAttribution)
  {
    PBDataWriterWriteSubmessage();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_incidents;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [(PBUnknownFields *)self->_unknownFields writeTo:v4, v12];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v8 = a3;
  if (self->_line)
  {
    [v8 setLine:?];
  }

  if (self->_storedMapRegion)
  {
    [v8 setStoredMapRegion:?];
  }

  if (self->_transitAttribution)
  {
    [v8 setTransitAttribution:?];
  }

  if ([(MSPTransitStorageLineItem *)self incidentsCount])
  {
    [v8 clearIncidents];
    v4 = [(MSPTransitStorageLineItem *)self incidentsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(MSPTransitStorageLineItem *)self incidentsAtIndex:i];
        [v8 addIncidents:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(MSPTransitStorageLine *)self->_line copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(GEOMapRegion *)self->_storedMapRegion copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(MSPTransitStorageAttribution *)self->_transitAttribution copyWithZone:a3];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = self->_incidents;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v20 + 1) + 8 * v16) copyWithZone:{a3, v20}];
        [v5 addIncidents:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  objc_storeStrong((v5 + 8), self->_unknownFields);
  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((line = self->_line, !(line | v4[3])) || -[MSPTransitStorageLine isEqual:](line, "isEqual:")) && ((storedMapRegion = self->_storedMapRegion, !(storedMapRegion | v4[4])) || -[GEOMapRegion isEqual:](storedMapRegion, "isEqual:")) && ((transitAttribution = self->_transitAttribution, !(transitAttribution | v4[5])) || -[MSPTransitStorageAttribution isEqual:](transitAttribution, "isEqual:")))
  {
    incidents = self->_incidents;
    if (incidents | v4[2])
    {
      v9 = [(NSMutableArray *)incidents isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(MSPTransitStorageLine *)self->_line hash];
  v4 = [(GEOMapRegion *)self->_storedMapRegion hash]^ v3;
  v5 = [(MSPTransitStorageAttribution *)self->_transitAttribution hash];
  return v4 ^ v5 ^ [(NSMutableArray *)self->_incidents hash];
}

- (void)mergeFrom:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  line = self->_line;
  v6 = *(v4 + 3);
  if (line)
  {
    if (v6)
    {
      [(MSPTransitStorageLine *)line mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(MSPTransitStorageLineItem *)self setLine:?];
  }

  storedMapRegion = self->_storedMapRegion;
  v8 = *(v4 + 4);
  if (storedMapRegion)
  {
    if (v8)
    {
      [(GEOMapRegion *)storedMapRegion mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(MSPTransitStorageLineItem *)self setStoredMapRegion:?];
  }

  transitAttribution = self->_transitAttribution;
  v10 = *(v4 + 5);
  if (transitAttribution)
  {
    if (v10)
    {
      [(MSPTransitStorageAttribution *)transitAttribution mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(MSPTransitStorageLineItem *)self setTransitAttribution:?];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = *(v4 + 2);
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(MSPTransitStorageLineItem *)self addIncidents:*(*(&v17 + 1) + 8 * i), v17];
      }

      v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end