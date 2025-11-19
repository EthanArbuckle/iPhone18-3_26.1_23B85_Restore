@interface MSPMutableHistoryEntry
+ (id)mutableHistoryEntryForStorage:(id)a3;
- (BOOL)isUserVisibleDuplicateOfEntry:(id)a3;
- (MSPMutableHistoryEntry)initWithStorage:(id)a3;
- (NSString)description;
- (id)copyIfValidWithError:(id *)a3;
- (id)debugTitle;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)transferToImmutableIfValidWithError:(id *)a3;
- (void)ifMutableSearch:(id)a3 ifMutableRoute:(id)a4 ifMutablePlaceDisplay:(id)a5 ifMutableTransitLineItem:(id)a6;
- (void)ifSearch:(id)a3 ifRoute:(id)a4 ifPlaceDisplay:(id)a5 ifTransitLineItem:(id)a6;
- (void)setUsageDate:(id)a3;
@end

@implementation MSPMutableHistoryEntry

- (MSPMutableHistoryEntry)initWithStorage:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = MSPMutableHistoryEntry;
  v5 = [(MSPMutableHistoryEntry *)&v21 init];
  if (v5)
  {
    v6 = [v4 copy];

    v7 = [v6 identifier];

    if (v7)
    {
      v8 = objc_alloc(MEMORY[0x277CCAD78]);
      v9 = [v6 identifier];
      v10 = [v8 initWithUUIDString:v9];
      storageIdentifier = v5->_storageIdentifier;
      v5->_storageIdentifier = v10;
    }

    else
    {
      v12 = [MEMORY[0x277CCAD78] UUID];
      v13 = v5->_storageIdentifier;
      v5->_storageIdentifier = v12;

      v9 = [(NSUUID *)v5->_storageIdentifier UUIDString];
      [v6 setIdentifier:v9];
    }

    v14 = [v6 hasTimestamp];
    v15 = MEMORY[0x277CBEAA8];
    if (v14)
    {
      [v6 timestamp];
      v16 = [v15 dateWithTimeIntervalSinceReferenceDate:?];
      usageDate = v5->_usageDate;
      v5->_usageDate = v16;
    }

    else
    {
      v18 = [MEMORY[0x277CBEAA8] date];
      v19 = v5->_usageDate;
      v5->_usageDate = v18;

      [(NSDate *)v5->_usageDate timeIntervalSinceReferenceDate];
      [v6 setTimestamp:?];
    }

    objc_storeStrong(&v5->_storage, v6);
  }

  else
  {
    v6 = v4;
  }

  return v5;
}

- (void)setUsageDate:(id)a3
{
  v4 = a3;
  [v4 timeIntervalSinceReferenceDate];
  [(MSPHistoryEntryStorage *)self->_storage setTimestamp:?];
  v5 = [v4 copy];

  usageDate = self->_usageDate;
  self->_usageDate = v5;
}

- (void)ifSearch:(id)a3 ifRoute:(id)a4 ifPlaceDisplay:(id)a5 ifTransitLineItem:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v11)
  {
    v15 = v26;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __76__MSPMutableHistoryEntry_ifSearch_ifRoute_ifPlaceDisplay_ifTransitLineItem___block_invoke;
    v26[3] = &unk_279867558;
    v19 = &v27;
    v27 = v11;
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = 0;
    if (v12)
    {
LABEL_3:
      v16 = v24;
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __76__MSPMutableHistoryEntry_ifSearch_ifRoute_ifPlaceDisplay_ifTransitLineItem___block_invoke_2;
      v24[3] = &unk_279867580;
      v18 = &v25;
      v25 = v12;
      if (v13)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  v16 = 0;
  if (v13)
  {
LABEL_4:
    v17 = v22;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __76__MSPMutableHistoryEntry_ifSearch_ifRoute_ifPlaceDisplay_ifTransitLineItem___block_invoke_3;
    v22[3] = &unk_2798675A8;
    v6 = &v23;
    v23 = v13;
    if (v14)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v17 = 0;
  if (v14)
  {
LABEL_5:
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __76__MSPMutableHistoryEntry_ifSearch_ifRoute_ifPlaceDisplay_ifTransitLineItem___block_invoke_4;
    v20[3] = &unk_2798675D0;
    v21 = v14;
    [(MSPMutableHistoryEntry *)self ifMutableSearch:v15 ifMutableRoute:v16 ifMutablePlaceDisplay:v17 ifMutableTransitLineItem:v20];

    if (!v13)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_15:
  [(MSPMutableHistoryEntry *)self ifMutableSearch:v15 ifMutableRoute:v16 ifMutablePlaceDisplay:v17 ifMutableTransitLineItem:0];
  if (v13)
  {
LABEL_6:
  }

LABEL_7:
  if (v12)
  {
  }

  if (v11)
  {
  }
}

- (void)ifMutableSearch:(id)a3 ifMutableRoute:(id)a4 ifMutablePlaceDisplay:(id)a5 ifMutableTransitLineItem:(id)a6
{
  v18 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v18)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v14 = v18;
    if (isKindOfClass)
    {
      goto LABEL_9;
    }
  }

  if (v10)
  {
    objc_opt_class();
    v15 = objc_opt_isKindOfClass();
    v14 = v10;
    if (v15)
    {
      goto LABEL_9;
    }
  }

  if (v11 && (objc_opt_class(), v16 = objc_opt_isKindOfClass(), v14 = v11, (v16 & 1) != 0) || v12 && (objc_opt_class(), v17 = objc_opt_isKindOfClass(), v14 = v12, (v17 & 1) != 0))
  {
LABEL_9:
    v14[2](v14, self);
  }
}

+ (id)mutableHistoryEntryForStorage:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 hasSearchType] && (v5 = objc_msgSend(v4, "searchType") - 1, v5 <= 4))
  {
    v6 = [objc_alloc(*off_2798675F0[v5]) initWithStorage:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();
  v5 = [(MSPMutableHistoryEntry *)self storage];
  v6 = [v4 mutableHistoryEntryForStorage:v5];

  return v6;
}

- (id)transferToImmutableIfValidWithError:(id *)a3
{
  if (a3)
  {
    *a3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3072 userInfo:0];
  }

  return 0;
}

- (id)copyIfValidWithError:(id *)a3
{
  v4 = [(MSPMutableHistoryEntry *)self mutableCopy];
  v5 = [v4 transferToImmutableIfValidWithError:a3];

  return v5;
}

- (BOOL)isUserVisibleDuplicateOfEntry:(id)a3
{
  v4 = a3;
  if (self != v4)
  {
    if (![(MSPMutableHistoryEntry *)self isMemberOfClass:objc_opt_class()])
    {
      v8 = 0;
      goto LABEL_7;
    }

    v5 = [(MSPMutableHistoryEntry *)self storageIdentifier];
    v6 = [(MSPMutableHistoryEntry *)v4 storageIdentifier];
    v7 = [v5 isEqual:v6];

    if ((v7 & 1) == 0)
    {
      v8 = [(MSPMutableHistoryEntry *)self _isUserVisibleDuplicateOfSameClassObject:v4];
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
    v3 = self;
    v4 = [(MSPMutableHistoryEntry *)v3 routeInformationSource];
    v5 = [v4 ifRidesharingInformationSource];

    v6 = [(MSPMutableHistoryEntry *)v3 routeInformationSource];

    v7 = [v6 ifGEOStorageRouteRequestStorage];

    if (v5)
    {
      v8 = MEMORY[0x277CCACA8];
      v9 = [v5 _startWaypoint];
      v10 = [v9 latLng];
      v11 = [v5 _endWaypoint];
      v12 = [(__CFString *)v11 latLng];
      v13 = [v8 stringWithFormat:@"Route (ride sharing) from %@ to %@", v10, v12];
LABEL_18:

      goto LABEL_19;
    }

    if (v7)
    {
      v14 = [v7 waypoints];
      v9 = [v14 firstObject];

      v15 = [v7 waypoints];
      v10 = [v15 lastObject];

      v16 = MEMORY[0x277CCACA8];
      v17 = [v7 transportType];
      if (v17 >= 7)
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v17];
      }

      else
      {
        v11 = off_279867618[v17];
      }

      v12 = [v9 latLng];
      v19 = [v10 latLng];
      v13 = [v16 stringWithFormat:@"Route (%@) with waypoints: [ %@ ... %@ ]", v11, v12, v19];

      goto LABEL_18;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [(MSPMutableHistoryEntry *)self query];
    goto LABEL_20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [(MSPMutableHistoryEntry *)self geoMapItem];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = 0;
      goto LABEL_20;
    }

    v18 = [(MSPMutableHistoryEntry *)self lineItem];
  }

  v5 = v18;
  v13 = [v18 name];
LABEL_19:

LABEL_20:

  return v13;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MSPMutableHistoryEntry;
  v4 = [(MSPMutableHistoryEntry *)&v8 description];
  v5 = [(MSPMutableHistoryEntry *)self debugTitle];
  v6 = [v3 stringWithFormat:@"%@ { %@ }", v4, v5];

  return v6;
}

@end