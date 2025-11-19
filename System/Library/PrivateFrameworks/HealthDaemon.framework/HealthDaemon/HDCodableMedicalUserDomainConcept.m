@interface HDCodableMedicalUserDomainConcept
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int64_t)categoryTypesAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableMedicalUserDomainConcept

- (void)dealloc
{
  PBRepeatedInt64Clear();
  v3.receiver = self;
  v3.super_class = HDCodableMedicalUserDomainConcept;
  [(HDCodableMedicalUserDomainConcept *)&v3 dealloc];
}

- (int64_t)categoryTypesAtIndex:(unint64_t)a3
{
  p_categoryTypes = &self->_categoryTypes;
  count = self->_categoryTypes.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_categoryTypes->list[a3];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableMedicalUserDomainConcept;
  v4 = [(HDCodableMedicalUserDomainConcept *)&v8 description];
  v5 = [(HDCodableMedicalUserDomainConcept *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  countryCode = self->_countryCode;
  if (countryCode)
  {
    [v3 setObject:countryCode forKey:@"countryCode"];
  }

  v6 = PBRepeatedInt64NSArray();
  [v4 setObject:v6 forKey:@"categoryTypes"];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_countryCode)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  p_categoryTypes = &self->_categoryTypes;
  if (p_categoryTypes->count)
  {
    v6 = 0;
    do
    {
      v7 = p_categoryTypes->list[v6];
      PBDataWriterWriteInt64Field();
      v4 = v8;
      ++v6;
    }

    while (v6 < p_categoryTypes->count);
  }
}

- (void)copyTo:(id)a3
{
  v7 = a3;
  if (self->_countryCode)
  {
    [v7 setCountryCode:?];
  }

  if ([(HDCodableMedicalUserDomainConcept *)self categoryTypesCount])
  {
    [v7 clearCategoryTypes];
    v4 = [(HDCodableMedicalUserDomainConcept *)self categoryTypesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        [v7 addCategoryTypes:{-[HDCodableMedicalUserDomainConcept categoryTypesAtIndex:](self, "categoryTypesAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_countryCode copyWithZone:a3];
  v7 = v5[4];
  v5[4] = v6;

  PBRepeatedInt64Copy();
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((countryCode = self->_countryCode, !(countryCode | v4[4])) || -[NSString isEqual:](countryCode, "isEqual:")))
  {
    IsEqual = PBRepeatedInt64IsEqual();
  }

  else
  {
    IsEqual = 0;
  }

  return IsEqual;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (v4[4])
  {
    [(HDCodableMedicalUserDomainConcept *)self setCountryCode:?];
    v4 = v8;
  }

  v5 = [v4 categoryTypesCount];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      -[HDCodableMedicalUserDomainConcept addCategoryTypes:](self, "addCategoryTypes:", [v8 categoryTypesAtIndex:i]);
    }
  }
}

@end