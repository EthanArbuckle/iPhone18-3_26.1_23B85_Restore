@interface UnitRank
- (BOOL)isEqual:(id)a3;
- (UnitRank)initWithUnitID:(int)a3 rank:(float)a4 locale:(id)a5 context:(id)a6;
- (id)description;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
@end

@implementation UnitRank

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(UnitRank *)self unitID];
  [(UnitRank *)self rank];
  return [v3 stringWithFormat:@"%d (%f)", v4, v5];
}

- (unint64_t)hash
{
  v3 = 31 * [(UnitRank *)self unitID];
  [(UnitRank *)self rank];
  return v3 + (v4 * 1000.0) + 961;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  [(UnitRank *)self rank];
  v6 = v5;
  [v4 rank];
  if (v6 <= v7)
  {
    [(UnitRank *)self rank];
    v10 = v9;
    [v4 rank];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (v5 = -[UnitRank unitID](self, "unitID"), v5 == [v4 unitID]))
  {
    [(UnitRank *)self rank];
    v7 = v6;
    [v4 rank];
    v9 = v7 == v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (UnitRank)initWithUnitID:(int)a3 rank:(float)a4 locale:(id)a5 context:(id)a6
{
  v11 = a5;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = UnitRank;
  v13 = [(UnitRank *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_unitID = a3;
    v13->_rank = a4;
    objc_storeStrong(&v13->_locale, a5);
    objc_storeStrong(&v14->_context, a6);
    v14->_tokenType = 2;
  }

  return v14;
}

@end