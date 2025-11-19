@interface HDEntityEncoder
- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6;
- (BOOL)generateCodableRepresentationsForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 maxBytesPerRepresentation:(int64_t)a5 error:(id *)a6 handler:(id)a7;
- (HDEntityEncoder)initWithHealthEntityClass:(Class)a3 profile:(id)a4 transaction:(id)a5 purpose:(int64_t)a6 encodingOptions:(id)a7 authorizationFilter:(id)a8;
- (HDProfile)profile;
- (id)codableRepresentationForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5;
- (id)createBareObjectWithRow:(HDSQLiteRow *)a3;
- (id)objectForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5;
- (id)orderedProperties;
- (void)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5;
@end

@implementation HDEntityEncoder

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

- (HDEntityEncoder)initWithHealthEntityClass:(Class)a3 profile:(id)a4 transaction:(id)a5 purpose:(int64_t)a6 encodingOptions:(id)a7 authorizationFilter:(id)a8
{
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  if (a3)
  {
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_15:
    [MEMORY[0x277CCA890] currentHandler];
    v39 = v38 = a6;
    [v39 handleFailureInMethod:a2 object:self file:@"HDEntityEncoder.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"profile != nil"}];

    a6 = v38;
    if (v16)
    {
      goto LABEL_4;
    }

    goto LABEL_16;
  }

  [MEMORY[0x277CCA890] currentHandler];
  v37 = v36 = a6;
  [v37 handleFailureInMethod:a2 object:self file:@"HDEntityEncoder.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"entityClass != nil"}];

  a6 = v36;
  if (!v15)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (v16)
  {
    goto LABEL_4;
  }

LABEL_16:
  [MEMORY[0x277CCA890] currentHandler];
  v41 = v40 = a6;
  [v41 handleFailureInMethod:a2 object:self file:@"HDEntityEncoder.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"transaction != nil"}];

  a6 = v40;
LABEL_4:
  v44 = a2;
  v19 = [v16 protectedDatabase];
  if (objc_opt_class() != a3)
  {
    [v16 databaseForEntityClass:a3];
    v20 = v18;
    v21 = v17;
    v22 = a5;
    v23 = self;
    v25 = v24 = a6;

    v19 = v25;
    a6 = v24;
    self = v23;
    a5 = v22;
    v17 = v21;
    v18 = v20;
  }

  if (!v19)
  {
    [MEMORY[0x277CCA890] currentHandler];
    v42 = v43 = a6;
    [v42 handleFailureInMethod:v44 object:self file:@"HDEntityEncoder.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"entityClassDatabase != nil"}];

    a6 = v43;
  }

  v45.receiver = self;
  v45.super_class = HDEntityEncoder;
  v26 = [(HDEntityEncoder *)&v45 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_entityClass, a3);
    objc_storeWeak(&v27->_profile, v15);
    objc_storeStrong(&v27->_transaction, a5);
    objc_storeStrong(&v27->_database, v19);
    v27->_purpose = a6;
    v28 = [v17 copy];
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

    v31 = _Block_copy(v18);
    authorizationFilter = v27->_authorizationFilter;
    v27->_authorizationFilter = v31;

    v33 = [(objc_class *)class_getSuperclass(a3) entityEncoderForProfile:v15 transaction:v16 purpose:a6 encodingOptions:v17 authorizationFilter:v18];
    superclassEncoder = v27->_superclassEncoder;
    v27->_superclassEncoder = v33;
  }

  return v27;
}

- (id)orderedProperties
{
  v2 = [(HDEntityEncoder *)self->_superclassEncoder orderedProperties];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = v4;

  return v4;
}

- (id)codableRepresentationForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (BOOL)generateCodableRepresentationsForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 maxBytesPerRepresentation:(int64_t)a5 error:(id *)a6 handler:(id)a7
{
  v11 = a7;
  v12 = [(HDEntityEncoder *)self codableRepresentationForPersistentID:a3 row:a4 error:a6];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 encodedByteCount];
    v15 = [objc_opt_class() estimatedEncodedSize];
    if (v14 <= v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = v14;
    }

    v17 = v11[2](v11, v13, v16, 1, a6) != 2;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)a3
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  v3 = objc_alloc_init(MEMORY[0x277D82BB8]);

  return v3;
}

- (id)objectForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5
{
  v9 = [(HDEntityEncoder *)self createBareObjectWithRow:a4];
  if ([(HDEntityEncoder *)self applyPropertiesToObject:v9 persistentID:a3 row:a4 error:a5])
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end