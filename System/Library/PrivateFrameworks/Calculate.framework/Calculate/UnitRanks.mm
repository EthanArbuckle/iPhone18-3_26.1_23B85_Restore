@interface UnitRanks
+ (id)unitRanksWithUnitsInfo:(id)info;
- (UnitRanks)init;
- (UnitRanks)initWithUnitsInfo:(id)info;
- (UnitsInfo)unitsInfo;
- (void)addUnitRank:(id)rank;
@end

@implementation UnitRanks

- (UnitsInfo)unitsInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_unitsInfo);

  return WeakRetained;
}

- (void)addUnitRank:(id)rank
{
  rankCopy = rank;
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(rankCopy, "unitID")}];
  if (([(NSMutableSet *)self->_units containsObject:v4]& 1) == 0)
  {
    if ([rankCopy unitID] == -1)
    {
      self->_containsFrom = 1;
    }

    else if ([rankCopy unitID] == -2)
    {
      self->_containsTo = 1;
    }

    else if ([rankCopy unitID])
    {
      self->_containsUnit = 1;
    }

    else
    {
      self->_tokenType = [rankCopy tokenType];
      normalized = [rankCopy normalized];
      normalized = self->_normalized;
      self->_normalized = normalized;
    }

    if (!self->_isLaTeX && [rankCopy isLaTeX])
    {
      self->_isLaTeX = 1;
    }

    WeakRetained = objc_loadWeakRetained(&self->_unitsInfo);
    if (WeakRetained)
    {
      v8 = WeakRetained;
      v9 = objc_loadWeakRetained(&self->_unitsInfo);
      v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(rankCopy, "unitID")}];
      typeInfo = [v10 typeInfo];
      isCurrency = [typeInfo isCurrency];

      if (isCurrency)
      {
        self->_containsCurrency = 1;
      }
    }

    [(NSMutableSet *)self->_units addObject:v4];
    [(NSMutableArray *)self->_ranks addObject:rankCopy];
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

- (UnitRanks)initWithUnitsInfo:(id)info
{
  infoCopy = info;
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

    objc_storeWeak(&v5->_unitsInfo, infoCopy);
    v5->_tokenType = 2;
  }

  return v5;
}

+ (id)unitRanksWithUnitsInfo:(id)info
{
  infoCopy = info;
  v4 = [objc_alloc(objc_opt_class()) initWithUnitsInfo:infoCopy];

  return v4;
}

@end