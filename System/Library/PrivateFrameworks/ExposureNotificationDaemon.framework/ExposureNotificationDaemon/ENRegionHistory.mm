@interface ENRegionHistory
- (ENRegionHistory)initWithCoder:(id)coder;
- (ENRegionHistory)initWithRegionVisits:(id)visits;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)getRegionVisits;
- (id)getRegions;
- (void)addRegionVisit:(id)visit;
- (void)removeRegionVisit:(id)visit;
@end

@implementation ENRegionHistory

- (ENRegionHistory)initWithRegionVisits:(id)visits
{
  visitsCopy = visits;
  v9.receiver = self;
  v9.super_class = ENRegionHistory;
  v5 = [(ENRegionHistory *)&v9 init];
  if (v5)
  {
    if (visitsCopy)
    {
      v6 = [MEMORY[0x277CBEB10] arrayWithArray:visitsCopy];
    }

    else
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB10]);
    }

    regionHistory = v5->_regionHistory;
    v5->_regionHistory = v6;
  }

  return v5;
}

- (void)addRegionVisit:(id)visit
{
  visitCopy = visit;
  if (!visitCopy)
  {
    return;
  }

  v28 = visitCopy;
  lastObject = [(NSMutableArray *)self->_regionHistory lastObject];
  region = [lastObject region];
  region2 = [v28 region];
  v8 = [region isCountryCodeEqualToRegion:region2];

  if (!v8)
  {
    goto LABEL_16;
  }

  region3 = [v28 region];
  subdivisionCode = [region3 subdivisionCode];
  if (subdivisionCode)
  {

LABEL_5:
    region4 = [lastObject region];
    region5 = [v28 region];
    if ([region4 isSubdivisionCodeEqualToRegion:region5])
    {

LABEL_7:
      [(NSMutableArray *)self->_regionHistory removeLastObject];
      v13 = objc_alloc(MEMORY[0x277CC5D08]);
      region6 = [v28 region];
      date = [v28 date];
      date2 = [lastObject date];
      v17 = [date laterDate:date2];
      v18 = [v13 initWithRegion:region6 date:v17];

      v19 = v18;
      goto LABEL_17;
    }

    region7 = [lastObject region];
    subdivisionCode2 = [region7 subdivisionCode];
    if (subdivisionCode2)
    {
    }

    else
    {
      region8 = [v28 region];
      subdivisionCode3 = [region8 subdivisionCode];

      if (!subdivisionCode3)
      {
        goto LABEL_7;
      }
    }

    region9 = [lastObject region];
    subdivisionCode4 = [region9 subdivisionCode];

    if (!subdivisionCode4)
    {
      [(NSMutableArray *)self->_regionHistory removeLastObject];
    }

LABEL_16:
    v19 = v28;
LABEL_17:
    v28 = v19;
    [(NSMutableArray *)self->_regionHistory addObject:?];
    if ([(NSMutableArray *)self->_regionHistory count]>= 0x3E9)
    {
      [(NSMutableArray *)self->_regionHistory removeObjectAtIndex:0];
    }

    goto LABEL_19;
  }

  region10 = [lastObject region];
  subdivisionCode5 = [region10 subdivisionCode];

  if (!subdivisionCode5)
  {
    goto LABEL_5;
  }

LABEL_19:
}

- (void)removeRegionVisit:(id)visit
{
  if (visit)
  {
    [(NSMutableArray *)self->_regionHistory removeObject:?];
  }
}

- (id)getRegions
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB10]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  getRegionVisits = [(ENRegionHistory *)self getRegionVisits];
  v5 = [getRegionVisits countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(getRegionVisits);
        }

        region = [*(*(&v13 + 1) + 8 * i) region];
        [v3 addObject:region];
      }

      v6 = [getRegionVisits countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [MEMORY[0x277CBEB90] setWithArray:v3];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)getRegionVisits
{
  v2 = [(NSMutableArray *)self->_regionHistory copy];

  return v2;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA0];
  getRegionVisits = [(ENRegionHistory *)self getRegionVisits];
  v4 = [getRegionVisits componentsJoinedByString:@" | "];
  v5 = [v2 stringWithFormat:@"%@", v4];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ENRegionHistory alloc];
  getRegionVisits = [(ENRegionHistory *)self getRegionVisits];
  v6 = [(ENRegionHistory *)v4 initWithRegionVisits:getRegionVisits];

  return v6;
}

- (ENRegionHistory)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277CBEB90];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"visits"];

  v9 = [(ENRegionHistory *)self initWithRegionVisits:v8];
  return v9;
}

@end