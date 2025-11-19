@interface DESBinary32Transport
- (BOOL)isEqual:(id)a3;
- (float)dataAtIndex:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation DESBinary32Transport

- (void)dealloc
{
  PBRepeatedFloatClear();
  v3.receiver = self;
  v3.super_class = DESBinary32Transport;
  [(DESBinary32Transport *)&v3 dealloc];
}

- (float)dataAtIndex:(unint64_t)a3
{
  p_datas = &self->_datas;
  count = self->_datas.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_datas->list[a3];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = DESBinary32Transport;
  v4 = [(DESBinary32Transport *)&v8 description];
  v5 = [(DESBinary32Transport *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = PBRepeatedFloatNSArray();
  [v2 setObject:v3 forKey:@"data"];

  return v2;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
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

- (void)copyTo:(id)a3
{
  v7 = a3;
  if ([(DESBinary32Transport *)self datasCount])
  {
    [v7 clearDatas];
    v4 = [(DESBinary32Transport *)self datasCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        [(DESBinary32Transport *)self dataAtIndex:i];
        [v7 addData:?];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  PBRepeatedFloatCopy();
  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  if ([v3 isMemberOfClass:objc_opt_class()])
  {
    IsEqual = PBRepeatedFloatIsEqual();
  }

  else
  {
    IsEqual = 0;
  }

  return IsEqual;
}

- (void)mergeFrom:(id)a3
{
  v7 = a3;
  v4 = [v7 datasCount];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      [v7 dataAtIndex:i];
      [(DESBinary32Transport *)self addData:?];
    }
  }
}

@end