@interface UnitRank
- (BOOL)isEqual:(id)equal;
- (UnitRank)initWithUnitID:(int)d rank:(float)rank locale:(id)locale context:(id)context;
- (id)description;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
@end

@implementation UnitRank

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  unitID = [(UnitRank *)self unitID];
  [(UnitRank *)self rank];
  return [v3 stringWithFormat:@"%d (%f)", unitID, v5];
}

- (unint64_t)hash
{
  v3 = 31 * [(UnitRank *)self unitID];
  [(UnitRank *)self rank];
  return v3 + (v4 * 1000.0) + 961;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  [(UnitRank *)self rank];
  v6 = v5;
  [compareCopy rank];
  if (v6 <= v7)
  {
    [(UnitRank *)self rank];
    v10 = v9;
    [compareCopy rank];
    if (v10 >= v11)
    {
      v8 = 0;
    }

    else
    {
      v8 = -1;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (v5 = -[UnitRank unitID](self, "unitID"), v5 == [equalCopy unitID]))
  {
    [(UnitRank *)self rank];
    v7 = v6;
    [equalCopy rank];
    v9 = v7 == v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (UnitRank)initWithUnitID:(int)d rank:(float)rank locale:(id)locale context:(id)context
{
  localeCopy = locale;
  contextCopy = context;
  v16.receiver = self;
  v16.super_class = UnitRank;
  v13 = [(UnitRank *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_unitID = d;
    v13->_rank = rank;
    objc_storeStrong(&v13->_locale, locale);
    objc_storeStrong(&v14->_context, context);
    v14->_tokenType = 2;
  }

  return v14;
}

@end