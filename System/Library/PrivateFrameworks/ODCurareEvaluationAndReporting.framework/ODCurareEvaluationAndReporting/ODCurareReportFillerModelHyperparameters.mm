@interface ODCurareReportFillerModelHyperparameters
- (BOOL)isEqual:(id)a3;
- (float)hyperparameterValuesAtIndex:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)hyperparameterIndicesAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ODCurareReportFillerModelHyperparameters

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  PBRepeatedFloatClear();
  v3.receiver = self;
  v3.super_class = ODCurareReportFillerModelHyperparameters;
  [(ODCurareReportFillerModelHyperparameters *)&v3 dealloc];
}

- (unsigned)hyperparameterIndicesAtIndex:(unint64_t)a3
{
  p_hyperparameterIndices = &self->_hyperparameterIndices;
  count = self->_hyperparameterIndices.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_hyperparameterIndices->list[a3];
}

- (float)hyperparameterValuesAtIndex:(unint64_t)a3
{
  p_hyperparameterValues = &self->_hyperparameterValues;
  count = self->_hyperparameterValues.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_hyperparameterValues->list[a3];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ODCurareReportFillerModelHyperparameters;
  v4 = [(ODCurareReportFillerModelHyperparameters *)&v8 description];
  v5 = [(ODCurareReportFillerModelHyperparameters *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_versionNumber];
  [v3 setObject:v4 forKey:@"versionNumber"];

  v5 = PBRepeatedUInt32NSArray();
  [v3 setObject:v5 forKey:@"hyperparameterIndices"];

  v6 = PBRepeatedFloatNSArray();
  [v3 setObject:v6 forKey:@"hyperparameterValues"];

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  versionNumber = self->_versionNumber;
  v11 = v4;
  PBDataWriterWriteUint32Field();
  if (self->_hyperparameterIndices.count)
  {
    v6 = 0;
    do
    {
      v7 = self->_hyperparameterIndices.list[v6];
      PBDataWriterWriteUint32Field();
      ++v6;
    }

    while (v6 < self->_hyperparameterIndices.count);
  }

  p_hyperparameterValues = &self->_hyperparameterValues;
  if (p_hyperparameterValues->count)
  {
    v9 = 0;
    do
    {
      v10 = p_hyperparameterValues->list[v9];
      PBDataWriterWriteFloatField();
      ++v9;
    }

    while (v9 < p_hyperparameterValues->count);
  }
}

- (void)copyTo:(id)a3
{
  v10 = a3;
  v10[14] = self->_versionNumber;
  if ([(ODCurareReportFillerModelHyperparameters *)self hyperparameterIndicesCount])
  {
    [v10 clearHyperparameterIndices];
    v4 = [(ODCurareReportFillerModelHyperparameters *)self hyperparameterIndicesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        [v10 addHyperparameterIndices:{-[ODCurareReportFillerModelHyperparameters hyperparameterIndicesAtIndex:](self, "hyperparameterIndicesAtIndex:", i)}];
      }
    }
  }

  if ([(ODCurareReportFillerModelHyperparameters *)self hyperparameterValuesCount])
  {
    [v10 clearHyperparameterValues];
    v7 = [(ODCurareReportFillerModelHyperparameters *)self hyperparameterValuesCount];
    if (v7)
    {
      v8 = v7;
      for (j = 0; j != v8; ++j)
      {
        [(ODCurareReportFillerModelHyperparameters *)self hyperparameterValuesAtIndex:j];
        [v10 addHyperparameterValues:?];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v4[14] = self->_versionNumber;
  PBRepeatedUInt32Copy();
  PBRepeatedFloatCopy();
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && self->_versionNumber == v4[14] && PBRepeatedUInt32IsEqual())
  {
    IsEqual = PBRepeatedFloatIsEqual();
  }

  else
  {
    IsEqual = 0;
  }

  return IsEqual;
}

- (unint64_t)hash
{
  v2 = 2654435761 * self->_versionNumber;
  v3 = PBRepeatedUInt32Hash();
  return v2 ^ v3 ^ PBRepeatedFloatHash();
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_versionNumber = v4[14];
  v11 = v4;
  v5 = [v4 hyperparameterIndicesCount];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      -[ODCurareReportFillerModelHyperparameters addHyperparameterIndices:](self, "addHyperparameterIndices:", [v11 hyperparameterIndicesAtIndex:i]);
    }
  }

  v8 = [v11 hyperparameterValuesCount];
  if (v8)
  {
    v9 = v8;
    for (j = 0; j != v9; ++j)
    {
      [v11 hyperparameterValuesAtIndex:j];
      [(ODCurareReportFillerModelHyperparameters *)self addHyperparameterValues:?];
    }
  }
}

@end