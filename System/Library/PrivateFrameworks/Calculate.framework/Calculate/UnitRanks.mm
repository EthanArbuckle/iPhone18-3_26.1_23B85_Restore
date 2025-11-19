@interface UnitRanks
+ (id)unitRanksWithUnitsInfo:(id)a3;
- (UnitRanks)init;
- (UnitRanks)initWithUnitsInfo:(id)a3;
- (UnitsInfo)unitsInfo;
- (void)addUnitRank:(id)a3;
@end

@implementation UnitRanks

- (UnitsInfo)unitsInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_unitsInfo);

  return WeakRetained;
}

- (void)addUnitRank:(id)a3
{
  v13 = a3;
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v13, "unitID")}];
  if (([(NSMutableSet *)self->_units containsObject:v4]& 1) == 0)
  {
    if ([v13 unitID] == -1)
    {
      self->_containsFrom = 1;
    }

    else if ([v13 unitID] == -2)
    {
      self->_containsTo = 1;
    }

    else if ([v13 unitID])
    {
      self->_containsUnit = 1;
    }

    else
    {
      self->_tokenType = [v13 tokenType];
      v5 = [v13 normalized];
      normalized = self->_normalized;
      self->_normalized = v5;
    }

    if (!self->_isLaTeX && [v13 isLaTeX])
    {
      self->_isLaTeX = 1;
    }

    WeakRetained = objc_loadWeakRetained(&self->_unitsInfo);
    if (WeakRetained)
    {
      v8 = WeakRetained;
      v9 = objc_loadWeakRetained(&self->_unitsInfo);
      v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v13, "unitID")}];
      v11 = [v10 typeInfo];
      v12 = [v11 isCurrency];

      if (v12)
      {
        self->_containsCurrency = 1;
      }
    }

    [(NSMutableSet *)self->_units addObject:v4];
    [(NSMutableArray *)self->_ranks addObject:v13];
  }
}

- (UnitRanks)init
{
  v8.receiver = self;
  v8.super_class = UnitRanks;
  v2 = [(UnitRanks *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    units = v2->_units;
    v2->_units = v3;

    v5 = objc_opt_new();
    ranks = v2->_ranks;
    v2->_ranks = v5;

    objc_storeWeak(&v2->_unitsInfo, 0);
    v2->_tokenType = 2;
  }

  return v2;
}

- (UnitRanks)initWithUnitsInfo:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = UnitRanks;
  v5 = [(UnitRanks *)&v11 init];
  if (v5)
  {
    v6 = objc_opt_new();
    units = v5->_units;
    v5->_units = v6;

    v8 = objc_opt_new();
    ranks = v5->_ranks;
    v5->_ranks = v8;

    objc_storeWeak(&v5->_unitsInfo, v4);
    v5->_tokenType = 2;
  }

  return v5;
}

+ (id)unitRanksWithUnitsInfo:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithUnitsInfo:v3];

  return v4;
}

@end