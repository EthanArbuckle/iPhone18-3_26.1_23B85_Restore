@interface DESBinary32Transport
- (BOOL)isEqual:(id)equal;
- (float)dataAtIndex:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation DESBinary32Transport

- (void)dealloc
{
  PBRepeatedFloatClear();
  v3.receiver = self;
  v3.super_class = DESBinary32Transport;
  [(DESBinary32Transport *)&v3 dealloc];
}

- (float)dataAtIndex:(unint64_t)index
{
  p_datas = &self->_datas;
  count = self->_datas.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_datas->list[index];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = DESBinary32Transport;
  v4 = [(DESBinary32Transport *)&v8 description];
  dictionaryRepresentation = [(DESBinary32Transport *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v3 = PBRepeatedFloatNSArray();
  [dictionary setObject:v3 forKey:@"data"];

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  p_datas = &self->_datas;
  if (p_datas->count)
  {
    PBDataWriterPlaceMark();
    if (p_datas->count)
    {
      v6 = 0;
      do
      {
        v7 = p_datas->list[v6];
        PBDataWriterWriteFloatField();
        ++v6;
      }

      while (v6 < p_datas->count);
    }

    PBDataWriterRecallMark();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(DESBinary32Transport *)self datasCount])
  {
    [toCopy clearDatas];
    datasCount = [(DESBinary32Transport *)self datasCount];
    if (datasCount)
    {
      v5 = datasCount;
      for (i = 0; i != v5; ++i)
      {
        [(DESBinary32Transport *)self dataAtIndex:i];
        [toCopy addData:?];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  PBRepeatedFloatCopy();
  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    IsEqual = PBRepeatedFloatIsEqual();
  }

  else
  {
    IsEqual = 0;
  }

  return IsEqual;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  datasCount = [fromCopy datasCount];
  if (datasCount)
  {
    v5 = datasCount;
    for (i = 0; i != v5; ++i)
    {
      [fromCopy dataAtIndex:i];
      [(DESBinary32Transport *)self addData:?];
    }
  }
}

@end