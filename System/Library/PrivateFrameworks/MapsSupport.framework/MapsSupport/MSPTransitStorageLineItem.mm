@interface MSPTransitStorageLineItem
- (BOOL)departuresAreVehicleSpecific;
- (BOOL)hasIncidentComponent;
- (BOOL)hasLineColorString;
- (BOOL)isBus;
- (BOOL)isEqual:(id)equal;
- (BOOL)showVehicleNumber;
- (GEOMapItemIdentifier)identifier;
- (GEOTransitArtworkDataSource)alternateArtwork;
- (GEOTransitArtworkDataSource)artwork;
- (GEOTransitArtworkDataSource)headerArtwork;
- (GEOTransitArtworkDataSource)modeArtwork;
- (GEOTransitSystem)system;
- (MSPTransitStorageLineItem)initWithLineItem:(id)item;
- (NSArray)operatingHours;
- (NSString)description;
- (NSString)lineColorString;
- (NSString)name;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)departureTimeDisplayStyle;
- (unint64_t)hash;
- (unint64_t)muid;
- (void)addIncidents:(id)incidents;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation MSPTransitStorageLineItem

- (MSPTransitStorageLineItem)initWithLineItem:(id)item
{
  v26 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v24.receiver = self;
  v24.super_class = MSPTransitStorageLineItem;
  v5 = [(MSPTransitStorageLineItem *)&v24 init];
  if (v5)
  {
    v6 = [[MSPTransitStorageLine alloc] initWithLine:itemCopy];
    [(MSPTransitStorageLineItem *)v5 setLine:v6];

    v7 = [MSPTransitStorageAttribution alloc];
    attribution = [itemCopy attribution];
    v9 = [(MSPTransitStorageAttribution *)v7 initWithAttribution:attribution];
    [(MSPTransitStorageLineItem *)v5 setTransitAttribution:v9];

    v10 = objc_opt_new();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    incidents = [itemCopy incidents];
    v12 = [incidents countByEnumeratingWithState:&v20 objects:v25 count:16];
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
            objc_enumerationMutation(incidents);
          }

          v16 = [[MSPTransitStorageIncident alloc] initWithIncident:*(*(&v20 + 1) + 8 * v15)];
          [v10 addObject:v16];

          ++v15;
        }

        while (v13 != v15);
        v13 = [incidents countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v13);
    }

    [(MSPTransitStorageLineItem *)v5 setIncidents:v10];
    mapRegion = [itemCopy mapRegion];
    [(MSPTransitStorageLineItem *)v5 setStoredMapRegion:mapRegion];
  }

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

- (unint64_t)muid
{
  line = [(MSPTransitStorageLineItem *)self line];
  muid = [line muid];

  return muid;
}

- (GEOMapItemIdentifier)identifier
{
  storedMapRegion = [(MSPTransitStorageLineItem *)self storedMapRegion];

  if (storedMapRegion)
  {
    v4 = objc_alloc(MEMORY[0x277D0EBA8]);
    line = [(MSPTransitStorageLineItem *)self line];
    muid = [line muid];
    storedMapRegion2 = [(MSPTransitStorageLineItem *)self storedMapRegion];
    [storedMapRegion2 centerLat];
    v9 = v8;
    storedMapRegion3 = [(MSPTransitStorageLineItem *)self storedMapRegion];
    [storedMapRegion3 centerLng];
    identifier = [v4 initWithMUID:muid resultProviderID:0 coordinate:{v9, v11}];
  }

  else
  {
    line = [(MSPTransitStorageLineItem *)self line];
    identifier = [line identifier];
  }

  return identifier;
}

- (NSString)name
{
  line = [(MSPTransitStorageLineItem *)self line];
  name = [line name];

  return name;
}

- (GEOTransitSystem)system
{
  line = [(MSPTransitStorageLineItem *)self line];
  system = [line system];

  return system;
}

- (unint64_t)departureTimeDisplayStyle
{
  line = [(MSPTransitStorageLineItem *)self line];
  departureTimeDisplayStyle = [line departureTimeDisplayStyle];

  return departureTimeDisplayStyle;
}

- (BOOL)departuresAreVehicleSpecific
{
  line = [(MSPTransitStorageLineItem *)self line];
  departuresAreVehicleSpecific = [line departuresAreVehicleSpecific];

  return departuresAreVehicleSpecific;
}

- (GEOTransitArtworkDataSource)artwork
{
  line = [(MSPTransitStorageLineItem *)self line];
  artwork = [line artwork];

  return artwork;
}

- (GEOTransitArtworkDataSource)modeArtwork
{
  line = [(MSPTransitStorageLineItem *)self line];
  modeArtwork = [line modeArtwork];

  return modeArtwork;
}

- (GEOTransitArtworkDataSource)alternateArtwork
{
  line = [(MSPTransitStorageLineItem *)self line];
  alternateArtwork = [line alternateArtwork];

  return alternateArtwork;
}

- (GEOTransitArtworkDataSource)headerArtwork
{
  line = [(MSPTransitStorageLineItem *)self line];
  headerArtwork = [line headerArtwork];

  return headerArtwork;
}

- (BOOL)hasLineColorString
{
  line = [(MSPTransitStorageLineItem *)self line];
  hasLineColorString = [line hasLineColorString];

  return hasLineColorString;
}

- (NSString)lineColorString
{
  line = [(MSPTransitStorageLineItem *)self line];
  lineColorString = [line lineColorString];

  return lineColorString;
}

- (BOOL)showVehicleNumber
{
  line = [(MSPTransitStorageLineItem *)self line];
  showVehicleNumber = [line showVehicleNumber];

  return showVehicleNumber;
}

- (NSArray)operatingHours
{
  line = [(MSPTransitStorageLineItem *)self line];
  operatingHours = [line operatingHours];

  return operatingHours;
}

- (BOOL)hasIncidentComponent
{
  incidents = [(MSPTransitStorageLineItem *)self incidents];
  v3 = incidents != 0;

  return v3;
}

- (BOOL)isBus
{
  line = [(MSPTransitStorageLineItem *)self line];
  isBus = [line isBus];

  return isBus;
}

- (void)addIncidents:(id)incidents
{
  incidentsCopy = incidents;
  incidents = self->_incidents;
  v8 = incidentsCopy;
  if (!incidents)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_incidents;
    self->_incidents = v6;

    incidentsCopy = v8;
    incidents = self->_incidents;
  }

  [(NSMutableArray *)incidents addObject:incidentsCopy];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MSPTransitStorageLineItem;
  v4 = [(MSPTransitStorageLineItem *)&v8 description];
  dictionaryRepresentation = [(MSPTransitStorageLineItem *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v26 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  line = self->_line;
  if (line)
  {
    dictionaryRepresentation = [(MSPTransitStorageLine *)line dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"line"];
  }

  storedMapRegion = self->_storedMapRegion;
  if (storedMapRegion)
  {
    dictionaryRepresentation2 = [(GEOMapRegion *)storedMapRegion dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"stored_map_region"];
  }

  transitAttribution = self->_transitAttribution;
  if (transitAttribution)
  {
    dictionaryRepresentation3 = [(MSPTransitStorageAttribution *)transitAttribution dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"transit_attribution"];
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

          dictionaryRepresentation4 = [*(*(&v21 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:dictionaryRepresentation4];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v13);
    }

    [dictionary setObject:v10 forKey:@"incidents"];
  }

  unknownFields = self->_unknownFields;
  if (unknownFields)
  {
    dictionaryRepresentation5 = [(PBUnknownFields *)unknownFields dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation5 forKey:@"Unknown Fields"];
  }

  v19 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x277D85DE8];
  toCopy = to;
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

  [(PBUnknownFields *)self->_unknownFields writeTo:toCopy, v12];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_line)
  {
    [toCopy setLine:?];
  }

  if (self->_storedMapRegion)
  {
    [toCopy setStoredMapRegion:?];
  }

  if (self->_transitAttribution)
  {
    [toCopy setTransitAttribution:?];
  }

  if ([(MSPTransitStorageLineItem *)self incidentsCount])
  {
    [toCopy clearIncidents];
    incidentsCount = [(MSPTransitStorageLineItem *)self incidentsCount];
    if (incidentsCount)
    {
      v5 = incidentsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(MSPTransitStorageLineItem *)self incidentsAtIndex:i];
        [toCopy addIncidents:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(MSPTransitStorageLine *)self->_line copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(GEOMapRegion *)self->_storedMapRegion copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(MSPTransitStorageAttribution *)self->_transitAttribution copyWithZone:zone];
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

        v17 = [*(*(&v20 + 1) + 8 * v16) copyWithZone:{zone, v20}];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((line = self->_line, !(line | equalCopy[3])) || -[MSPTransitStorageLine isEqual:](line, "isEqual:")) && ((storedMapRegion = self->_storedMapRegion, !(storedMapRegion | equalCopy[4])) || -[GEOMapRegion isEqual:](storedMapRegion, "isEqual:")) && ((transitAttribution = self->_transitAttribution, !(transitAttribution | equalCopy[5])) || -[MSPTransitStorageAttribution isEqual:](transitAttribution, "isEqual:")))
  {
    incidents = self->_incidents;
    if (incidents | equalCopy[2])
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

- (void)mergeFrom:(id)from
{
  v22 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  line = self->_line;
  v6 = *(fromCopy + 3);
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
  v8 = *(fromCopy + 4);
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
  v10 = *(fromCopy + 5);
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
  v11 = *(fromCopy + 2);
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