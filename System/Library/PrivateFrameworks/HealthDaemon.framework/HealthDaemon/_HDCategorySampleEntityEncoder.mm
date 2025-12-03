@interface _HDCategorySampleEntityEncoder
- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (_HDCategorySampleEntityEncoder)initWithHealthEntityClass:(Class)class profile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter;
- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)createBareObjectWithRow:(HDSQLiteRow *)row;
- (id)orderedProperties;
@end

@implementation _HDCategorySampleEntityEncoder

- (id)orderedProperties
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = @"value";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  orderedProperties = [superclassEncoder orderedProperties];
  v6 = [v3 arrayByAddingObjectsFromArray:orderedProperties];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (_HDCategorySampleEntityEncoder)initWithHealthEntityClass:(Class)class profile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter
{
  optionsCopy = options;
  v18.receiver = self;
  v18.super_class = _HDCategorySampleEntityEncoder;
  v15 = [(HDEntityEncoder *)&v18 initWithHealthEntityClass:class profile:profile transaction:transaction purpose:purpose encodingOptions:optionsCopy authorizationFilter:filter];
  if (v15)
  {
    v16 = [optionsCopy objectForKeyedSubscript:@"OverrideMCCategorySampleValue"];
    v15->_overrideMCCategorySampleValue = [v16 BOOLValue];
  }

  return v15;
}

- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  v10 = [superclassEncoder codableRepresentationForPersistentID:d row:row error:error];

  if (v10)
  {
    v11 = objc_alloc_init(HDCodableCategorySample);
    [(HDCodableCategorySample *)v11 setSample:v10];
    if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
    {
      v12 = HDSQLiteColumnWithNameAsInt64();
      v13 = v12;
      if (self->_overrideMCCategorySampleValue && (v10[1] - 157) < 0xF && v12 != 1)
      {
        v13 = 0;
      }

      [(HDCodableCategorySample *)v11 setValue:v13];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)row
{
  _init = [objc_alloc(MEMORY[0x277CCD0B0]) _init];

  return _init;
}

- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  objectCopy = object;
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  v12 = [superclassEncoder applyPropertiesToObject:objectCopy persistentID:d row:row error:error];

  if (v12)
  {
    [objectCopy _setValue:HDSQLiteColumnWithNameAsInt64()];
  }

  return v12;
}

@end