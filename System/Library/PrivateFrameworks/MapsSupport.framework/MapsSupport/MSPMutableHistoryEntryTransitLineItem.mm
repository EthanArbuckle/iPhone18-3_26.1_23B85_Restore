@interface MSPMutableHistoryEntryTransitLineItem
- (BOOL)_isUserVisibleDuplicateOfSameClassObject:(id)object;
- (GEOTransitLineItem)lineItem;
- (MSPMutableHistoryEntryTransitLineItem)initWithStorage:(id)storage;
- (id)transferToImmutableIfValidWithError:(id *)error;
- (void)setLineItem:(id)item;
@end

@implementation MSPMutableHistoryEntryTransitLineItem

- (MSPMutableHistoryEntryTransitLineItem)initWithStorage:(id)storage
{
  storageCopy = storage;
  if (!storageCopy)
  {
    storageCopy = objc_alloc_init(MSPHistoryEntryStorage);
    [(MSPHistoryEntryStorage *)storageCopy setSearchType:4];
    v5 = objc_alloc_init(MSPTransitStorageLineItem);
    [(MSPHistoryEntryStorage *)storageCopy setTransitLineItem:v5];
  }

  v14.receiver = self;
  v14.super_class = MSPMutableHistoryEntryTransitLineItem;
  v6 = [(MSPMutableHistoryEntry *)&v14 initWithStorage:storageCopy];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_6;
  }

  storage = [(MSPMutableHistoryEntry *)v6 storage];
  searchType = [storage searchType];

  if (searchType != 4)
  {
    goto LABEL_7;
  }

  storage2 = [(MSPMutableHistoryEntry *)v7 storage];
  transitLineItem = [storage2 transitLineItem];

  if (transitLineItem)
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

- (id)transferToImmutableIfValidWithError:(id *)error
{
  v17[2] = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  lineItem = [(MSPMutableHistoryEntryTransitLineItem *)self lineItem];
  if (lineItem)
  {
    v7 = lineItem;
    lineItem2 = [(MSPMutableHistoryEntryTransitLineItem *)self lineItem];
    name = [lineItem2 name];
    if ([name length])
    {
      lineItem3 = [(MSPMutableHistoryEntryTransitLineItem *)self lineItem];
      muid = [lineItem3 muid];

      if (muid)
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
    if (error)
    {
      v12 = MEMORY[0x277CCA9B8];
      v16[0] = @"MSPContainerUntransferableObject";
      v16[1] = @"MSPContainerUnavailableKeys";
      v17[0] = self;
      v17[1] = v5;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
      *error = [v12 errorWithDomain:@"com.apple.MapsSupport.MSPContainer" code:1 userInfo:v13];

      error = 0;
    }
  }

  else
  {
    [(MSPMutableHistoryEntry *)self _markImmutable];
    error = self;
  }

  v14 = *MEMORY[0x277D85DE8];

  return error;
}

- (GEOTransitLineItem)lineItem
{
  storage = [(MSPMutableHistoryEntry *)self storage];
  transitLineItem = [storage transitLineItem];

  return transitLineItem;
}

- (void)setLineItem:(id)item
{
  itemCopy = item;
  [(MSPMutableHistoryEntry *)self _noteWillMutate];
  v6 = [[MSPTransitStorageLineItem alloc] initWithLineItem:itemCopy];

  storage = [(MSPMutableHistoryEntry *)self storage];
  [storage setTransitLineItem:v6];
}

- (BOOL)_isUserVisibleDuplicateOfSameClassObject:(id)object
{
  objectCopy = object;
  if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    lineItem = [objectCopy lineItem];
    lineItem2 = [(MSPMutableHistoryEntryTransitLineItem *)self lineItem];
    muid = [lineItem2 muid];
    v8 = muid == [lineItem muid];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end