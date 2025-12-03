@interface HDCodableMedicalUserDomainConcept
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int64_t)categoryTypesAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HDCodableMedicalUserDomainConcept

- (void)dealloc
{
  PBRepeatedInt64Clear();
  v3.receiver = self;
  v3.super_class = HDCodableMedicalUserDomainConcept;
  [(HDCodableMedicalUserDomainConcept *)&v3 dealloc];
}

- (int64_t)categoryTypesAtIndex:(unint64_t)index
{
  p_categoryTypes = &self->_categoryTypes;
  count = self->_categoryTypes.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_categoryTypes->list[index];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableMedicalUserDomainConcept;
  v4 = [(HDCodableMedicalUserDomainConcept *)&v8 description];
  dictionaryRepresentation = [(HDCodableMedicalUserDomainConcept *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  countryCode = self->_countryCode;
  if (countryCode)
  {
    [dictionary setObject:countryCode forKey:@"countryCode"];
  }

  v6 = PBRepeatedInt64NSArray();
  [v4 setObject:v6 forKey:@"categoryTypes"];

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_countryCode)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  p_categoryTypes = &self->_categoryTypes;
  if (p_categoryTypes->count)
  {
    v6 = 0;
    do
    {
      v7 = p_categoryTypes->list[v6];
      PBDataWriterWriteInt64Field();
      toCopy = v8;
      ++v6;
    }

    while (v6 < p_categoryTypes->count);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_countryCode)
  {
    [toCopy setCountryCode:?];
  }

  if ([(HDCodableMedicalUserDomainConcept *)self categoryTypesCount])
  {
    [toCopy clearCategoryTypes];
    categoryTypesCount = [(HDCodableMedicalUserDomainConcept *)self categoryTypesCount];
    if (categoryTypesCount)
    {
      v5 = categoryTypesCount;
      for (i = 0; i != v5; ++i)
      {
        [toCopy addCategoryTypes:{-[HDCodableMedicalUserDomainConcept categoryTypesAtIndex:](self, "categoryTypesAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_countryCode copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  PBRepeatedInt64Copy();
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((countryCode = self->_countryCode, !(countryCode | equalCopy[4])) || -[NSString isEqual:](countryCode, "isEqual:")))
  {
    IsEqual = PBRepeatedInt64IsEqual();
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
  v8 = fromCopy;
  if (fromCopy[4])
  {
    [(HDCodableMedicalUserDomainConcept *)self setCountryCode:?];
    fromCopy = v8;
  }

  categoryTypesCount = [fromCopy categoryTypesCount];
  if (categoryTypesCount)
  {
    v6 = categoryTypesCount;
    for (i = 0; i != v6; ++i)
    {
      -[HDCodableMedicalUserDomainConcept addCategoryTypes:](self, "addCategoryTypes:", [v8 categoryTypesAtIndex:i]);
    }
  }
}

@end