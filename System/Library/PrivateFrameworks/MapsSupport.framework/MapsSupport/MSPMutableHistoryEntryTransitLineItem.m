@interface MSPMutableHistoryEntryTransitLineItem
- (BOOL)_isUserVisibleDuplicateOfSameClassObject:(id)a3;
- (GEOTransitLineItem)lineItem;
- (MSPMutableHistoryEntryTransitLineItem)initWithStorage:(id)a3;
- (id)transferToImmutableIfValidWithError:(id *)a3;
- (void)setLineItem:(id)a3;
@end

@implementation MSPMutableHistoryEntryTransitLineItem

- (MSPMutableHistoryEntryTransitLineItem)initWithStorage:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = objc_alloc_init(MSPHistoryEntryStorage);
    [(MSPHistoryEntryStorage *)v4 setSearchType:4];
    v5 = objc_alloc_init(MSPTransitStorageLineItem);
    [(MSPHistoryEntryStorage *)v4 setTransitLineItem:v5];
  }

  v14.receiver = self;
  v14.super_class = MSPMutableHistoryEntryTransitLineItem;
  v6 = [(MSPMutableHistoryEntry *)&v14 initWithStorage:v4];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_6;
  }

  v8 = [(MSPMutableHistoryEntry *)v6 storage];
  v9 = [v8 searchType];

  if (v9 != 4)
  {
    goto LABEL_7;
  }

  v10 = [(MSPMutableHistoryEntry *)v7 storage];
  v11 = [v10 transitLineItem];

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
  v17[2] = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [(MSPMutableHistoryEntryTransitLineItem *)self lineItem];
  if (v6)
  {
    v7 = v6;
    v8 = [(MSPMutableHistoryEntryTransitLineItem *)self lineItem];
    v9 = [v8 name];
    if ([v9 length])
    {
      v10 = [(MSPMutableHistoryEntryTransitLineItem *)self lineItem];
      v11 = [v10 muid];

      if (v11)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  [v5 addObject:@"lineItem"];
LABEL_7:
  if ([v5 count])
  {
    if (a3)
    {
      v12 = MEMORY[0x277CCA9B8];
      v16[0] = @"MSPContainerUntransferableObject";
      v16[1] = @"MSPContainerUnavailableKeys";
      v17[0] = self;
      v17[1] = v5;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
      *a3 = [v12 errorWithDomain:@"com.apple.MapsSupport.MSPContainer" code:1 userInfo:v13];

      a3 = 0;
    }
  }

  else
  {
    [(MSPMutableHistoryEntry *)self _markImmutable];
    a3 = self;
  }

  v14 = *MEMORY[0x277D85DE8];

  return a3;
}

- (GEOTransitLineItem)lineItem
{
  v2 = [(MSPMutableHistoryEntry *)self storage];
  v3 = [v2 transitLineItem];

  return v3;
}

- (void)setLineItem:(id)a3
{
  v4 = a3;
  [(MSPMutableHistoryEntry *)self _noteWillMutate];
  v6 = [[MSPTransitStorageLineItem alloc] initWithLineItem:v4];

  v5 = [(MSPMutableHistoryEntry *)self storage];
  [v5 setTransitLineItem:v6];
}

- (BOOL)_isUserVisibleDuplicateOfSameClassObject:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [v4 lineItem];
    v6 = [(MSPMutableHistoryEntryTransitLineItem *)self lineItem];
    v7 = [v6 muid];
    v8 = v7 == [v5 muid];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end