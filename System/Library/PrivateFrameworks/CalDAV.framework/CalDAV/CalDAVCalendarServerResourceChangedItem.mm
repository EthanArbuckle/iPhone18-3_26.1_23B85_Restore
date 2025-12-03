@interface CalDAVCalendarServerResourceChangedItem
- (id)copyParseRules;
- (void)addCollectionChanges:(id)changes;
- (void)addCollectionUpdates:(id)updates;
- (void)addCreated:(id)created;
- (void)addDeleted:(id)deleted;
- (void)addUpdated:(id)updated;
- (void)setDtstampItem:(id)item;
@end

@implementation CalDAVCalendarServerResourceChangedItem

- (void)addCreated:(id)created
{
  createdCopy = created;
  created = [(CalDAVCalendarServerResourceChangedItem *)self created];

  if (!created)
  {
    v6 = [MEMORY[0x277CBEB58] setWithCapacity:1];
    [(CalDAVCalendarServerResourceChangedItem *)self setCreated:v6];
  }

  created2 = [(CalDAVCalendarServerResourceChangedItem *)self created];
  [created2 addObject:createdCopy];
}

- (void)addUpdated:(id)updated
{
  updatedCopy = updated;
  updated = [(CalDAVCalendarServerResourceChangedItem *)self updated];

  if (!updated)
  {
    v6 = [MEMORY[0x277CBEB58] setWithCapacity:1];
    [(CalDAVCalendarServerResourceChangedItem *)self setUpdated:v6];
  }

  updated2 = [(CalDAVCalendarServerResourceChangedItem *)self updated];
  [updated2 addObject:updatedCopy];
}

- (void)addDeleted:(id)deleted
{
  deletedCopy = deleted;
  deleted = [(CalDAVCalendarServerResourceChangedItem *)self deleted];

  if (!deleted)
  {
    v6 = [MEMORY[0x277CBEB58] setWithCapacity:1];
    [(CalDAVCalendarServerResourceChangedItem *)self setDeleted:v6];
  }

  deleted2 = [(CalDAVCalendarServerResourceChangedItem *)self deleted];
  [deleted2 addObject:deletedCopy];
}

- (void)addCollectionChanges:(id)changes
{
  changesCopy = changes;
  collectionChanges = [(CalDAVCalendarServerResourceChangedItem *)self collectionChanges];

  if (!collectionChanges)
  {
    v6 = [MEMORY[0x277CBEB58] setWithCapacity:1];
    [(CalDAVCalendarServerResourceChangedItem *)self setCollectionChanges:v6];
  }

  collectionChanges2 = [(CalDAVCalendarServerResourceChangedItem *)self collectionChanges];
  [collectionChanges2 addObject:changesCopy];
}

- (void)addCollectionUpdates:(id)updates
{
  updatesCopy = updates;
  collectionUpdates = [(CalDAVCalendarServerResourceChangedItem *)self collectionUpdates];

  if (!collectionUpdates)
  {
    v6 = [MEMORY[0x277CBEB58] setWithCapacity:1];
    [(CalDAVCalendarServerResourceChangedItem *)self setCollectionUpdates:v6];
  }

  collectionUpdates2 = [(CalDAVCalendarServerResourceChangedItem *)self collectionUpdates];
  [collectionUpdates2 addObject:updatesCopy];
}

- (void)setDtstampItem:(id)item
{
  v4 = MEMORY[0x277D7F100];
  payloadAsString = [item payloadAsString];
  v5 = [v4 dateFromICSString:payloadAsString];
  [(CalDAVCalendarServerResourceChangedItem *)self setDtstamp:v5];
}

- (id)copyParseRules
{
  v15 = objc_alloc(MEMORY[0x277CBEAC0]);
  v2 = *MEMORY[0x277CFDE90];
  v17 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:0x7FFFFFFFLL nameSpace:*MEMORY[0x277CFDE90] elementName:@"created" objectClass:objc_opt_class() setterMethod:sel_addCreated_];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, @"created"];
  v13 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:0x7FFFFFFFLL nameSpace:v2 elementName:@"updated" objectClass:objc_opt_class() setterMethod:sel_addUpdated_];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, @"updated"];
  v11 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:0x7FFFFFFFLL nameSpace:v2 elementName:@"deleted" objectClass:objc_opt_class() setterMethod:sel_addDeleted_];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, @"deleted"];
  v4 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:0x7FFFFFFFLL nameSpace:v2 elementName:@"collection-changes" objectClass:objc_opt_class() setterMethod:sel_addCollectionChanges_];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, @"collection-changes"];
  v10 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:0x7FFFFFFFLL nameSpace:v2 elementName:@"collection-update" objectClass:objc_opt_class() setterMethod:sel_addCollectionUpdates_];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, @"collection-update"];
  v7 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v2 elementName:@"dtstamp" objectClass:objc_opt_class() setterMethod:sel_setDtstampItem_];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, @"dtstamp"];
  v16 = [v15 initWithObjectsAndKeys:{v17, v14, v13, v12, v11, v3, v4, v5, v10, v6, v7, v8, 0}];

  return v16;
}

@end