@interface UnitTypeInfo
- ($71D83D51AB0F57F7CF166351F850C832)decompositionCoefficient;
- (UnitCounts)decomposition;
- (UnitInfo)baseUnit;
- (void)setDecomposition:(UnitCounts *)a3;
@end

@implementation UnitTypeInfo

- (UnitInfo)baseUnit
{
  WeakRetained = objc_loadWeakRetained(&self->_baseUnit);

  return WeakRetained;
}

- (void)setDecomposition:(UnitCounts *)a3
{
  v3 = *&a3->types[0].unitID;
  v4 = *&a3->types[2].unitID;
  v5 = *&a3->types[6].unitID;
  *&self->_decomposition.types[4].unitID = *&a3->types[4].unitID;
  *&self->_decomposition.types[6].unitID = v5;
  *&self->_decomposition.types[0].unitID = v3;
  *&self->_decomposition.types[2].unitID = v4;
  v6 = *&a3->types[8].unitID;
  v7 = *&a3->types[10].unitID;
  v8 = *&a3->types[14].unitID;
  *&self->_decomposition.types[12].unitID = *&a3->types[12].unitID;
  *&self->_decomposition.types[14].unitID = v8;
  *&self->_decomposition.types[8].unitID = v6;
  *&self->_decomposition.types[10].unitID = v7;
}

- (UnitCounts)decomposition
{
  v3 = *&self[1].types[2].unitID;
  *&retstr->types[8].unitID = *&self[1].types[0].unitID;
  *&retstr->types[10].unitID = v3;
  v4 = *&self[1].types[6].unitID;
  *&retstr->types[12].unitID = *&self[1].types[4].unitID;
  *&retstr->types[14].unitID = v4;
  v5 = *&self->types[10].unitID;
  *&retstr->types[0].unitID = *&self->types[8].unitID;
  *&retstr->types[2].unitID = v5;
  v6 = *&self->types[14].unitID;
  *&retstr->types[4].unitID = *&self->types[12].unitID;
  *&retstr->types[6].unitID = v6;
  return self;
}

- ($71D83D51AB0F57F7CF166351F850C832)decompositionCoefficient
{
  v2 = self->_decompositionCoefficient.w[1];
  v3 = self->_decompositionCoefficient.w[0];
  result.var0[1] = v2;
  result.var0[0] = v3;
  return result;
}

@end