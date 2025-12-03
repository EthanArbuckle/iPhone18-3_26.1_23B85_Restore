@interface ODCurareReportFillerModelHyperparameters
- (BOOL)isEqual:(id)equal;
- (float)hyperparameterValuesAtIndex:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)hyperparameterIndicesAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
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

- (unsigned)hyperparameterIndicesAtIndex:(unint64_t)index
{
  p_hyperparameterIndices = &self->_hyperparameterIndices;
  count = self->_hyperparameterIndices.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_hyperparameterIndices->list[index];
}

- (float)hyperparameterValuesAtIndex:(unint64_t)index
{
  p_hyperparameterValues = &self->_hyperparameterValues;
  count = self->_hyperparameterValues.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_hyperparameterValues->list[index];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ODCurareReportFillerModelHyperparameters;
  v4 = [(ODCurareReportFillerModelHyperparameters *)&v8 description];
  dictionaryRepresentation = [(ODCurareReportFillerModelHyperparameters *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_versionNumber];
  [dictionary setObject:v4 forKey:@"versionNumber"];

  v5 = PBRepeatedUInt32NSArray();
  [dictionary setObject:v5 forKey:@"hyperparameterIndices"];

  v6 = PBRepeatedFloatNSArray();
  [dictionary setObject:v6 forKey:@"hyperparameterValues"];

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  versionNumber = self->_versionNumber;
  v11 = toCopy;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[14] = self->_versionNumber;
  if ([(ODCurareReportFillerModelHyperparameters *)self hyperparameterIndicesCount])
  {
    [toCopy clearHyperparameterIndices];
    hyperparameterIndicesCount = [(ODCurareReportFillerModelHyperparameters *)self hyperparameterIndicesCount];
    if (hyperparameterIndicesCount)
    {
      v5 = hyperparameterIndicesCount;
      for (i = 0; i != v5; ++i)
      {
        [toCopy addHyperparameterIndices:{-[ODCurareReportFillerModelHyperparameters hyperparameterIndicesAtIndex:](self, "hyperparameterIndicesAtIndex:", i)}];
      }
    }
  }

  if ([(ODCurareReportFillerModelHyperparameters *)self hyperparameterValuesCount])
  {
    [toCopy clearHyperparameterValues];
    hyperparameterValuesCount = [(ODCurareReportFillerModelHyperparameters *)self hyperparameterValuesCount];
    if (hyperparameterValuesCount)
    {
      v8 = hyperparameterValuesCount;
      for (j = 0; j != v8; ++j)
      {
        [(ODCurareReportFillerModelHyperparameters *)self hyperparameterValuesAtIndex:j];
        [toCopy addHyperparameterValues:?];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v4[14] = self->_versionNumber;
  PBRepeatedUInt32Copy();
  PBRepeatedFloatCopy();
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && self->_versionNumber == equalCopy[14] && PBRepeatedUInt32IsEqual())
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_versionNumber = fromCopy[14];
  v11 = fromCopy;
  hyperparameterIndicesCount = [fromCopy hyperparameterIndicesCount];
  if (hyperparameterIndicesCount)
  {
    v6 = hyperparameterIndicesCount;
    for (i = 0; i != v6; ++i)
    {
      -[ODCurareReportFillerModelHyperparameters addHyperparameterIndices:](self, "addHyperparameterIndices:", [v11 hyperparameterIndicesAtIndex:i]);
    }
  }

  hyperparameterValuesCount = [v11 hyperparameterValuesCount];
  if (hyperparameterValuesCount)
  {
    v9 = hyperparameterValuesCount;
    for (j = 0; j != v9; ++j)
    {
      [v11 hyperparameterValuesAtIndex:j];
      [(ODCurareReportFillerModelHyperparameters *)self addHyperparameterValues:?];
    }
  }
}

@end