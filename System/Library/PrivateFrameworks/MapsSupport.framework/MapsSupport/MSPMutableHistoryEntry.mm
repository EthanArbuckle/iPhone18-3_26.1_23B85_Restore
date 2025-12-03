@interface MSPMutableHistoryEntry
+ (id)mutableHistoryEntryForStorage:(id)storage;
- (BOOL)isUserVisibleDuplicateOfEntry:(id)entry;
- (MSPMutableHistoryEntry)initWithStorage:(id)storage;
- (NSString)description;
- (id)copyIfValidWithError:(id *)error;
- (id)debugTitle;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)transferToImmutableIfValidWithError:(id *)error;
- (void)ifMutableSearch:(id)search ifMutableRoute:(id)route ifMutablePlaceDisplay:(id)display ifMutableTransitLineItem:(id)item;
- (void)ifSearch:(id)search ifRoute:(id)route ifPlaceDisplay:(id)display ifTransitLineItem:(id)item;
- (void)setUsageDate:(id)date;
@end

@implementation MSPMutableHistoryEntry

- (MSPMutableHistoryEntry)initWithStorage:(id)storage
{
  storageCopy = storage;
  v21.receiver = self;
  v21.super_class = MSPMutableHistoryEntry;
  v5 = [(MSPMutableHistoryEntry *)&v21 init];
  if (v5)
  {
    v6 = [storageCopy copy];

    identifier = [v6 identifier];

    if (identifier)
    {
      v8 = objc_alloc(MEMORY[0x277CCAD78]);
      identifier2 = [v6 identifier];
      v10 = [v8 initWithUUIDString:identifier2];
      storageIdentifier = v5->_storageIdentifier;
      v5->_storageIdentifier = v10;
    }

    else
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      v13 = v5->_storageIdentifier;
      v5->_storageIdentifier = uUID;

      identifier2 = [(NSUUID *)v5->_storageIdentifier UUIDString];
      [v6 setIdentifier:identifier2];
    }

    hasTimestamp = [v6 hasTimestamp];
    v15 = MEMORY[0x277CBEAA8];
    if (hasTimestamp)
    {
      [v6 timestamp];
      v16 = [v15 dateWithTimeIntervalSinceReferenceDate:?];
      usageDate = v5->_usageDate;
      v5->_usageDate = v16;
    }

    else
    {
      date = [MEMORY[0x277CBEAA8] date];
      v19 = v5->_usageDate;
      v5->_usageDate = date;

      [(NSDate *)v5->_usageDate timeIntervalSinceReferenceDate];
      [v6 setTimestamp:?];
    }

    objc_storeStrong(&v5->_storage, v6);
  }

  else
  {
    v6 = storageCopy;
  }

  return v5;
}

- (void)setUsageDate:(id)date
{
  dateCopy = date;
  [dateCopy timeIntervalSinceReferenceDate];
  [(MSPHistoryEntryStorage *)self->_storage setTimestamp:?];
  v5 = [dateCopy copy];

  usageDate = self->_usageDate;
  self->_usageDate = v5;
}

- (void)ifSearch:(id)search ifRoute:(id)route ifPlaceDisplay:(id)display ifTransitLineItem:(id)item
{
  searchCopy = search;
  routeCopy = route;
  displayCopy = display;
  itemCopy = item;
  if (searchCopy)
  {
    v15 = v26;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __76__MSPMutableHistoryEntry_ifSearch_ifRoute_ifPlaceDisplay_ifTransitLineItem___block_invoke;
    v26[3] = &unk_279867558;
    v19 = &v27;
    v27 = searchCopy;
    if (routeCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = 0;
    if (routeCopy)
    {
LABEL_3:
      v16 = v24;
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __76__MSPMutableHistoryEntry_ifSearch_ifRoute_ifPlaceDisplay_ifTransitLineItem___block_invoke_2;
      v24[3] = &unk_279867580;
      v18 = &v25;
      v25 = routeCopy;
      if (displayCopy)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  v16 = 0;
  if (displayCopy)
  {
LABEL_4:
    v17 = v22;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __76__MSPMutableHistoryEntry_ifSearch_ifRoute_ifPlaceDisplay_ifTransitLineItem___block_invoke_3;
    v22[3] = &unk_2798675A8;
    v6 = &v23;
    v23 = displayCopy;
    if (itemCopy)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v17 = 0;
  if (itemCopy)
  {
LABEL_5:
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __76__MSPMutableHistoryEntry_ifSearch_ifRoute_ifPlaceDisplay_ifTransitLineItem___block_invoke_4;
    v20[3] = &unk_2798675D0;
    v21 = itemCopy;
    [(MSPMutableHistoryEntry *)self ifMutableSearch:v15 ifMutableRoute:v16 ifMutablePlaceDisplay:v17 ifMutableTransitLineItem:v20];

    if (!displayCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_15:
  [(MSPMutableHistoryEntry *)self ifMutableSearch:v15 ifMutableRoute:v16 ifMutablePlaceDisplay:v17 ifMutableTransitLineItem:0];
  if (displayCopy)
  {
LABEL_6:
  }

LABEL_7:
  if (routeCopy)
  {
  }

  if (searchCopy)
  {
  }
}

- (void)ifMutableSearch:(id)search ifMutableRoute:(id)route ifMutablePlaceDisplay:(id)display ifMutableTransitLineItem:(id)item
{
  searchCopy = search;
  routeCopy = route;
  displayCopy = display;
  itemCopy = item;
  if (searchCopy)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v14 = searchCopy;
    if (isKindOfClass)
    {
      goto LABEL_9;
    }
  }

  if (routeCopy)
  {
    objc_opt_class();
    v15 = objc_opt_isKindOfClass();
    v14 = routeCopy;
    if (v15)
    {
      goto LABEL_9;
    }
  }

  if (displayCopy && (objc_opt_class(), v16 = objc_opt_isKindOfClass(), v14 = displayCopy, (v16 & 1) != 0) || itemCopy && (objc_opt_class(), v17 = objc_opt_isKindOfClass(), v14 = itemCopy, (v17 & 1) != 0))
  {
LABEL_9:
    v14[2](v14, self);
  }
}

+ (id)mutableHistoryEntryForStorage:(id)storage
{
  storageCopy = storage;
  v4 = storageCopy;
  if (storageCopy && [storageCopy hasSearchType] && (v5 = objc_msgSend(v4, "searchType") - 1, v5 <= 4))
  {
    v6 = [objc_alloc(*off_2798675F0[v5]) initWithStorage:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();
  storage = [(MSPMutableHistoryEntry *)self storage];
  v6 = [v4 mutableHistoryEntryForStorage:storage];

  return v6;
}

- (id)transferToImmutableIfValidWithError:(id *)error
{
  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3072 userInfo:0];
  }

  return 0;
}

- (id)copyIfValidWithError:(id *)error
{
  v4 = [(MSPMutableHistoryEntry *)self mutableCopy];
  v5 = [v4 transferToImmutableIfValidWithError:error];

  return v5;
}

- (BOOL)isUserVisibleDuplicateOfEntry:(id)entry
{
  entryCopy = entry;
  if (self != entryCopy)
  {
    if (![(MSPMutableHistoryEntry *)self isMemberOfClass:objc_opt_class()])
    {
      v8 = 0;
      goto LABEL_7;
    }

    storageIdentifier = [(MSPMutableHistoryEntry *)self storageIdentifier];
    storageIdentifier2 = [(MSPMutableHistoryEntry *)entryCopy storageIdentifier];
    v7 = [storageIdentifier isEqual:storageIdentifier2];

    if ((v7 & 1) == 0)
    {
      v8 = [(MSPMutableHistoryEntry *)self _isUserVisibleDuplicateOfSameClassObject:entryCopy];
      goto LABEL_7;
    }
  }

  v8 = 1;
LABEL_7:

  return v8;
}

- (id)debugTitle
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
    routeInformationSource = [(MSPMutableHistoryEntry *)selfCopy routeInformationSource];
    ifRidesharingInformationSource = [routeInformationSource ifRidesharingInformationSource];

    routeInformationSource2 = [(MSPMutableHistoryEntry *)selfCopy routeInformationSource];

    ifGEOStorageRouteRequestStorage = [routeInformationSource2 ifGEOStorageRouteRequestStorage];

    if (ifRidesharingInformationSource)
    {
      v8 = MEMORY[0x277CCACA8];
      _startWaypoint = [ifRidesharingInformationSource _startWaypoint];
      latLng = [_startWaypoint latLng];
      _endWaypoint = [ifRidesharingInformationSource _endWaypoint];
      latLng2 = [(__CFString *)_endWaypoint latLng];
      query = [v8 stringWithFormat:@"Route (ride sharing) from %@ to %@", latLng, latLng2];
LABEL_18:

      goto LABEL_19;
    }

    if (ifGEOStorageRouteRequestStorage)
    {
      waypoints = [ifGEOStorageRouteRequestStorage waypoints];
      _startWaypoint = [waypoints firstObject];

      waypoints2 = [ifGEOStorageRouteRequestStorage waypoints];
      latLng = [waypoints2 lastObject];

      v16 = MEMORY[0x277CCACA8];
      transportType = [ifGEOStorageRouteRequestStorage transportType];
      if (transportType >= 7)
      {
        _endWaypoint = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", transportType];
      }

      else
      {
        _endWaypoint = off_279867618[transportType];
      }

      latLng2 = [_startWaypoint latLng];
      v10LatLng = [latLng latLng];
      query = [v16 stringWithFormat:@"Route (%@) with waypoints: [ %@ ... %@ ]", _endWaypoint, latLng2, v10LatLng];

      goto LABEL_18;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    query = [(MSPMutableHistoryEntry *)self query];
    goto LABEL_20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    geoMapItem = [(MSPMutableHistoryEntry *)self geoMapItem];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      query = 0;
      goto LABEL_20;
    }

    geoMapItem = [(MSPMutableHistoryEntry *)self lineItem];
  }

  ifRidesharingInformationSource = geoMapItem;
  query = [geoMapItem name];
LABEL_19:

LABEL_20:

  return query;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MSPMutableHistoryEntry;
  v4 = [(MSPMutableHistoryEntry *)&v8 description];
  debugTitle = [(MSPMutableHistoryEntry *)self debugTitle];
  v6 = [v3 stringWithFormat:@"%@ { %@ }", v4, debugTitle];

  return v6;
}

@end