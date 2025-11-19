@interface CalDAVCalendarServerResourceChangedItem
- (id)copyParseRules;
- (void)addCollectionChanges:(id)a3;
- (void)addCollectionUpdates:(id)a3;
- (void)addCreated:(id)a3;
- (void)addDeleted:(id)a3;
- (void)addUpdated:(id)a3;
- (void)setDtstampItem:(id)a3;
@end

@implementation CalDAVCalendarServerResourceChangedItem

- (void)addCreated:(id)a3
{
  v4 = a3;
  v5 = [(CalDAVCalendarServerResourceChangedItem *)self created];

  if (!v5)
  {
    v6 = [MEMORY[0x277CBEB58] setWithCapacity:1];
    [(CalDAVCalendarServerResourceChangedItem *)self setCreated:v6];
  }

  v7 = [(CalDAVCalendarServerResourceChangedItem *)self created];
  [v7 addObject:v4];
}

- (void)addUpdated:(id)a3
{
  v4 = a3;
  v5 = [(CalDAVCalendarServerResourceChangedItem *)self updated];

  if (!v5)
  {
    v6 = [MEMORY[0x277CBEB58] setWithCapacity:1];
    [(CalDAVCalendarServerResourceChangedItem *)self setUpdated:v6];
  }

  v7 = [(CalDAVCalendarServerResourceChangedItem *)self updated];
  [v7 addObject:v4];
}

- (void)addDeleted:(id)a3
{
  v4 = a3;
  v5 = [(CalDAVCalendarServerResourceChangedItem *)self deleted];

  if (!v5)
  {
    v6 = [MEMORY[0x277CBEB58] setWithCapacity:1];
    [(CalDAVCalendarServerResourceChangedItem *)self setDeleted:v6];
  }

  v7 = [(CalDAVCalendarServerResourceChangedItem *)self deleted];
  [v7 addObject:v4];
}

- (void)addCollectionChanges:(id)a3
{
  v4 = a3;
  v5 = [(CalDAVCalendarServerResourceChangedItem *)self collectionChanges];

  if (!v5)
  {
    v6 = [MEMORY[0x277CBEB58] setWithCapacity:1];
    [(CalDAVCalendarServerResourceChangedItem *)self setCollectionChanges:v6];
  }

  v7 = [(CalDAVCalendarServerResourceChangedItem *)self collectionChanges];
  [v7 addObject:v4];
}

- (void)addCollectionUpdates:(id)a3
{
  v4 = a3;
  v5 = [(CalDAVCalendarServerResourceChangedItem *)self collectionUpdates];

  if (!v5)
  {
    v6 = [MEMORY[0x277CBEB58] setWithCapacity:1];
    [(CalDAVCalendarServerResourceChangedItem *)self setCollectionUpdates:v6];
  }

  v7 = [(CalDAVCalendarServerResourceChangedItem *)self collectionUpdates];
  [v7 addObject:v4];
}

- (void)setDtstampItem:(id)a3
{
  v4 = MEMORY[0x277D7F100];
  v6 = [a3 payloadAsString];
  v5 = [v4 dateFromICSString:v6];
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