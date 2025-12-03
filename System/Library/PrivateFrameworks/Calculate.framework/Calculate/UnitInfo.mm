@interface UnitInfo
- ($71D83D51AB0F57F7CF166351F850C832)baseDenominator;
- ($71D83D51AB0F57F7CF166351F850C832)baseNumerator;
- (BOOL)isEqual:(id)equal;
- (UnitInfo)bestEquivalent;
- (UnitInfo)init;
- (UnitInfo)nextSmallest;
- (UnitTypeInfo)typeInfo;
- (int64_t)compare:(id)compare;
@end

@implementation UnitInfo

- (UnitInfo)init
{
  v6.receiver = self;
  v6.super_class = UnitInfo;
  v2 = [(UnitInfo *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(UnitInfo *)v2 setUnitID:0];
    [(UnitInfo *)v3 setBaseNumerator:1, 0x3040000000000000];
    [(UnitInfo *)v3 setBaseDenominator:1, 0x3040000000000000];
    v4 = objc_opt_new();
    [(UnitInfo *)v3 setAllSubunitIDs:v4];
  }

  return v3;
}

- ($71D83D51AB0F57F7CF166351F850C832)baseNumerator
{
  v2 = self->_baseNumerator.w[1];
  v3 = self->_baseNumerator.w[0];
  result.var0[1] = v2;
  result.var0[0] = v3;
  return result;
}

- ($71D83D51AB0F57F7CF166351F850C832)baseDenominator
{
  v2 = self->_baseDenominator.w[1];
  v3 = self->_baseDenominator.w[0];
  result.var0[1] = v2;
  result.var0[0] = v3;
  return result;
}

- (UnitInfo)nextSmallest
{
  WeakRetained = objc_loadWeakRetained(&self->_nextSmallest);

  return WeakRetained;
}

- (UnitInfo)bestEquivalent
{
  WeakRetained = objc_loadWeakRetained(&self->_bestEquivalent);

  return WeakRetained;
}

- (UnitTypeInfo)typeInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_typeInfo);

  return WeakRetained;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  unitID = [(UnitInfo *)self unitID];
  if (unitID <= [compareCopy unitID])
  {
    unitID2 = [(UnitInfo *)self unitID];
    if (unitID2 >= [compareCopy unitID])
    {
      v6 = 0;
    }

    else
    {
      v6 = -1;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  unitID = [(UnitInfo *)self unitID];
  if (unitID == [equalCopy unitID])
  {
    unitType = [(UnitInfo *)self unitType];
    v7 = unitType == [equalCopy unitType];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end