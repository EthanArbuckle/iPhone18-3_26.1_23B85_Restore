@interface ENRegionHistory
- (ENRegionHistory)initWithCoder:(id)a3;
- (ENRegionHistory)initWithRegionVisits:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)getRegionVisits;
- (id)getRegions;
- (void)addRegionVisit:(id)a3;
- (void)removeRegionVisit:(id)a3;
@end

@implementation ENRegionHistory

- (ENRegionHistory)initWithRegionVisits:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ENRegionHistory;
  v5 = [(ENRegionHistory *)&v9 init];
  if (v5)
  {
    if (v4)
    {
      v6 = [MEMORY[0x277CBEB10] arrayWithArray:v4];
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

- (void)addRegionVisit:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    return;
  }

  v28 = v4;
  v5 = [(NSMutableArray *)self->_regionHistory lastObject];
  v6 = [v5 region];
  v7 = [v28 region];
  v8 = [v6 isCountryCodeEqualToRegion:v7];

  if (!v8)
  {
    goto LABEL_16;
  }

  v9 = [v28 region];
  v10 = [v9 subdivisionCode];
  if (v10)
  {

LABEL_5:
    v11 = [v5 region];
    v12 = [v28 region];
    if ([v11 isSubdivisionCodeEqualToRegion:v12])
    {

LABEL_7:
      [(NSMutableArray *)self->_regionHistory removeLastObject];
      v13 = objc_alloc(MEMORY[0x277CC5D08]);
      v14 = [v28 region];
      v15 = [v28 date];
      v16 = [v5 date];
      v17 = [v15 laterDate:v16];
      v18 = [v13 initWithRegion:v14 date:v17];

      v19 = v18;
      goto LABEL_17;
    }

    v20 = [v5 region];
    v21 = [v20 subdivisionCode];
    if (v21)
    {
    }

    else
    {
      v24 = [v28 region];
      v25 = [v24 subdivisionCode];

      if (!v25)
      {
        goto LABEL_7;
      }
    }

    v26 = [v5 region];
    v27 = [v26 subdivisionCode];

    if (!v27)
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

  v22 = [v5 region];
  v23 = [v22 subdivisionCode];

  if (!v23)
  {
    goto LABEL_5;
  }

LABEL_19:
}

- (void)removeRegionVisit:(id)a3
{
  if (a3)
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
  v4 = [(ENRegionHistory *)self getRegionVisits];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) region];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  v3 = [(ENRegionHistory *)self getRegionVisits];
  v4 = [v3 componentsJoinedByString:@" | "];
  v5 = [v2 stringWithFormat:@"%@", v4];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ENRegionHistory alloc];
  v5 = [(ENRegionHistory *)self getRegionVisits];
  v6 = [(ENRegionHistory *)v4 initWithRegionVisits:v5];

  return v6;
}

- (ENRegionHistory)initWithCoder:(id)a3
{
  v4 = MEMORY[0x277CBEB90];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"visits"];

  v9 = [(ENRegionHistory *)self initWithRegionVisits:v8];
  return v9;
}

@end