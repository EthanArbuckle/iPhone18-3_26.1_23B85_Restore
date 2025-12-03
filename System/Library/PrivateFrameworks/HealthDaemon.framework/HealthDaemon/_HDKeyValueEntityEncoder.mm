@interface _HDKeyValueEntityEncoder
- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (_HDKeyValueEntityEncoder)initWithHealthEntityClass:(Class)class profile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter;
- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)objectForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)orderedProperties;
@end

@implementation _HDKeyValueEntityEncoder

- (id)orderedProperties
{
  v5[3] = *MEMORY[0x277D85DE8];
  v5[0] = @"key";
  v5[1] = @"value";
  v5[2] = @"mod_date";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:3];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (_HDKeyValueEntityEncoder)initWithHealthEntityClass:(Class)class profile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter
{
  profileCopy = profile;
  transactionCopy = transaction;
  optionsCopy = options;
  filterCopy = filter;
  if (purpose == 1)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDKeyValueEntity.m" lineNumber:1292 description:{@"Invalid parameter not satisfying: %@", @"purpose != HDEntityEncodingPurposeObjectInstantiation"}];
  }

  v22.receiver = self;
  v22.super_class = _HDKeyValueEntityEncoder;
  v19 = [(HDEntityEncoder *)&v22 initWithHealthEntityClass:class profile:profileCopy transaction:transactionCopy purpose:purpose encodingOptions:optionsCopy authorizationFilter:filterCopy];

  return v19;
}

- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  v5 = objc_alloc_init(HDCodableTimestampedKeyValuePair);
  v6 = HDSQLiteColumnWithNameAsNaturalType();
  v7 = HDSQLiteColumnWithNameAsNaturalType();
  [(HDCodableTimestampedKeyValuePair *)v5 setKey:v6];
  [(HDCodableTimestampedKeyValuePair *)v5 setValue:v7];
  v8 = HDSQLiteColumnWithNameAsDate();
  [(HDCodableTimestampedKeyValuePair *)v5 setTimestampWithDate:v8];

  return v5;
}

- (id)objectForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HDKeyValueEntity.m" lineNumber:1328 description:{@"Invalid parameter not satisfying: %@", @"NO"}];

  return 0;
}

- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HDKeyValueEntity.m" lineNumber:1337 description:{@"Invalid parameter not satisfying: %@", @"NO"}];

  return 0;
}

@end