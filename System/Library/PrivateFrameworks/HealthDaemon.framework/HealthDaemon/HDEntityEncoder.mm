@interface HDEntityEncoder
- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (BOOL)generateCodableRepresentationsForPersistentID:(int64_t)d row:(HDSQLiteRow *)row maxBytesPerRepresentation:(int64_t)representation error:(id *)error handler:(id)handler;
- (HDEntityEncoder)initWithHealthEntityClass:(Class)class profile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter;
- (HDProfile)profile;
- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)createBareObjectWithRow:(HDSQLiteRow *)row;
- (id)objectForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)orderedProperties;
- (void)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row;
@end

@implementation HDEntityEncoder

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

- (HDEntityEncoder)initWithHealthEntityClass:(Class)class profile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter
{
  profileCopy = profile;
  transactionCopy = transaction;
  optionsCopy = options;
  filterCopy = filter;
  if (class)
  {
    if (profileCopy)
    {
      goto LABEL_3;
    }

LABEL_15:
    [MEMORY[0x277CCA890] currentHandler];
    v39 = v38 = purpose;
    [v39 handleFailureInMethod:a2 object:self file:@"HDEntityEncoder.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"profile != nil"}];

    purpose = v38;
    if (transactionCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_16;
  }

  [MEMORY[0x277CCA890] currentHandler];
  v37 = v36 = purpose;
  [v37 handleFailureInMethod:a2 object:self file:@"HDEntityEncoder.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"entityClass != nil"}];

  purpose = v36;
  if (!profileCopy)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (transactionCopy)
  {
    goto LABEL_4;
  }

LABEL_16:
  [MEMORY[0x277CCA890] currentHandler];
  v41 = v40 = purpose;
  [v41 handleFailureInMethod:a2 object:self file:@"HDEntityEncoder.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"transaction != nil"}];

  purpose = v40;
LABEL_4:
  v44 = a2;
  protectedDatabase = [transactionCopy protectedDatabase];
  if (objc_opt_class() != class)
  {
    [transactionCopy databaseForEntityClass:class];
    v20 = filterCopy;
    v21 = optionsCopy;
    transactionCopy2 = transaction;
    selfCopy = self;
    v25 = v24 = purpose;

    protectedDatabase = v25;
    purpose = v24;
    self = selfCopy;
    transaction = transactionCopy2;
    optionsCopy = v21;
    filterCopy = v20;
  }

  if (!protectedDatabase)
  {
    [MEMORY[0x277CCA890] currentHandler];
    v42 = v43 = purpose;
    [v42 handleFailureInMethod:v44 object:self file:@"HDEntityEncoder.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"entityClassDatabase != nil"}];

    purpose = v43;
  }

  v45.receiver = self;
  v45.super_class = HDEntityEncoder;
  v26 = [(HDEntityEncoder *)&v45 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_entityClass, class);
    objc_storeWeak(&v27->_profile, profileCopy);
    objc_storeStrong(&v27->_transaction, transaction);
    objc_storeStrong(&v27->_database, protectedDatabase);
    v27->_purpose = purpose;
    v28 = [optionsCopy copy];
    v29 = v28;
    if (v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = MEMORY[0x277CBEC10];
    }

    objc_storeStrong(&v27->_encodingOptions, v30);

    v31 = _Block_copy(filterCopy);
    authorizationFilter = v27->_authorizationFilter;
    v27->_authorizationFilter = v31;

    v33 = [(objc_class *)class_getSuperclass(class) entityEncoderForProfile:profileCopy transaction:transactionCopy purpose:purpose encodingOptions:optionsCopy authorizationFilter:filterCopy];
    superclassEncoder = v27->_superclassEncoder;
    v27->_superclassEncoder = v33;
  }

  return v27;
}

- (id)orderedProperties
{
  orderedProperties = [(HDEntityEncoder *)self->_superclassEncoder orderedProperties];
  v3 = orderedProperties;
  if (orderedProperties)
  {
    v4 = orderedProperties;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = v4;

  return v4;
}

- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (BOOL)generateCodableRepresentationsForPersistentID:(int64_t)d row:(HDSQLiteRow *)row maxBytesPerRepresentation:(int64_t)representation error:(id *)error handler:(id)handler
{
  handlerCopy = handler;
  v12 = [(HDEntityEncoder *)self codableRepresentationForPersistentID:d row:row error:error];
  v13 = v12;
  if (v12)
  {
    encodedByteCount = [v12 encodedByteCount];
    estimatedEncodedSize = [objc_opt_class() estimatedEncodedSize];
    if (encodedByteCount <= estimatedEncodedSize)
    {
      v16 = estimatedEncodedSize;
    }

    else
    {
      v16 = encodedByteCount;
    }

    v17 = handlerCopy[2](handlerCopy, v13, v16, 1, error) != 2;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)row
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  v3 = objc_alloc_init(MEMORY[0x277D82BB8]);

  return v3;
}

- (id)objectForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  v9 = [(HDEntityEncoder *)self createBareObjectWithRow:row];
  if ([(HDEntityEncoder *)self applyPropertiesToObject:v9 persistentID:d row:row error:error])
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end