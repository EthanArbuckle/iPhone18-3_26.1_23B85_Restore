@interface MSPMutableHistoryEntryPlaceDisplay
- (BOOL)_isUserVisibleDuplicateOfSameClassObject:(id)a3;
- (GEOMapItem)geoMapItem;
- (MSPMutableHistoryEntryPlaceDisplay)initWithStorage:(id)a3;
- (NSUUID)supersededSearchStorageIdentifier;
- (id)transferToImmutableIfValidWithError:(id *)a3;
- (void)setGeoMapItem:(id)a3;
- (void)setSupersededSearchStorageIdentifier:(id)a3;
@end

@implementation MSPMutableHistoryEntryPlaceDisplay

- (MSPMutableHistoryEntryPlaceDisplay)initWithStorage:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = objc_alloc_init(MSPHistoryEntryStorage);
    [(MSPHistoryEntryStorage *)v4 setSearchType:3];
    v5 = objc_alloc_init(MSPPlaceDisplay);
    [(MSPHistoryEntryStorage *)v4 setPlaceDisplay:v5];
  }

  v14.receiver = self;
  v14.super_class = MSPMutableHistoryEntryPlaceDisplay;
  v6 = [(MSPMutableHistoryEntry *)&v14 initWithStorage:v4];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_6;
  }

  v8 = [(MSPMutableHistoryEntry *)v6 storage];
  v9 = [v8 searchType];

  if (v9 != 3)
  {
    goto LABEL_7;
  }

  v10 = [(MSPMutableHistoryEntry *)v7 storage];
  v11 = [v10 placeDisplay];

  if (v11)
  {
LABEL_6:
    v12 = v7;
  }

  else
  {
LABEL_7:
    v12 = 0;
  }

  return v12;
}

- (id)transferToImmutableIfValidWithError:(id *)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [(MSPMutableHistoryEntryPlaceDisplay *)self geoMapItem];

  if (!v6)
  {
    [v5 addObject:@"geoMapItem"];
  }

  v7 = [(MSPMutableHistoryEntryPlaceDisplay *)self geoMapItem];
  v8 = [v7 isValid];

  if ((v8 & 1) == 0)
  {
    [v5 addObject:@"geoMapItem"];
  }

  if ([v5 count])
  {
    if (a3)
    {
      v9 = MEMORY[0x277CCA9B8];
      v13[0] = @"MSPContainerUntransferableObject";
      v13[1] = @"MSPContainerUnavailableKeys";
      v14[0] = self;
      v14[1] = v5;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
      *a3 = [v9 errorWithDomain:@"com.apple.MapsSupport.MSPContainer" code:1 userInfo:v10];

      a3 = 0;
    }
  }

  else
  {
    [(MSPMutableHistoryEntry *)self _markImmutable];
    a3 = self;
  }

  v11 = *MEMORY[0x277D85DE8];

  return a3;
}

- (GEOMapItem)geoMapItem
{
  v2 = [(MSPMutableHistoryEntry *)self storage];
  v3 = [v2 placeDisplay];
  v4 = [v3 placeMapItemStorage];

  return v4;
}

- (void)setGeoMapItem:(id)a3
{
  v4 = a3;
  [(MSPMutableHistoryEntry *)self _noteWillMutate];
  v7 = [MEMORY[0x277D0EBC0] mapItemStorageForGEOMapItem:v4];

  v5 = [(MSPMutableHistoryEntry *)self storage];
  v6 = [v5 placeDisplay];
  [v6 setPlaceMapItemStorage:v7];
}

- (BOOL)_isUserVisibleDuplicateOfSameClassObject:(id)a3
{
  v4 = a3;
  v5 = [(MSPMutableHistoryEntryPlaceDisplay *)self geoMapItem];
  v6 = [v4 geoMapItem];

  LOBYTE(v4) = GEOMapItemIsEqualToMapItemForPurpose();
  return v4;
}

- (NSUUID)supersededSearchStorageIdentifier
{
  v2 = [(MSPMutableHistoryEntry *)self storage];
  v3 = [v2 placeDisplay];
  v4 = [v3 supersededSearchIdentifier];

  if (v4)
  {
    v5 = [MEMORY[0x277CCAD78] _maps_UUIDWithUUIDString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setSupersededSearchStorageIdentifier:(id)a3
{
  v4 = a3;
  [(MSPMutableHistoryEntry *)self _noteWillMutate];
  v8 = [v4 UUIDString];

  v5 = [v8 copy];
  v6 = [(MSPMutableHistoryEntry *)self storage];
  v7 = [v6 placeDisplay];
  [v7 setSupersededSearchIdentifier:v5];
}

@end