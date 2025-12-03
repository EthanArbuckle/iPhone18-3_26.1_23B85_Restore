@interface HDSyncIdentityEntity
+ (BOOL)enumerateConcreteIdentitiesWithTransaction:(id)transaction error:(id *)error enumerationHandler:(id)handler;
+ (id)_concreteIdentityForIdentity:(void *)identity database:(uint64_t)database error:;
+ (id)childIdentitiesForCurrentSyncIdentityWithTransaction:(id)transaction error:(id *)error;
+ (id)concreteIdentityForIdentity:(id)identity transaction:(id)transaction error:(id *)error;
+ (id)concreteIdentityForPersistentID:(int64_t)d database:(id)database error:(id *)error;
+ (id)concreteIdentityForPersistentID:(int64_t)d transaction:(id)transaction error:(id *)error;
+ (id)insertOrLookupConcreteIdentityForIdentity:(id)identity database:(id)database error:(id *)error;
+ (id)insertOrLookupConcreteIdentityForIdentity:(id)identity transaction:(id)transaction error:(id *)error;
+ (id)uniquedColumns;
+ (id)updateIsChild:(BOOL)child concreteIdentity:(id)identity transaction:(id)transaction error:(id *)error;
- (id)concreteIdentityWithTransaction:(id)transaction error:(id *)error;
@end

@implementation HDSyncIdentityEntity

+ (id)concreteIdentityForIdentity:(id)identity transaction:(id)transaction error:(id *)error
{
  identityCopy = identity;
  v9 = [transaction databaseForEntityClass:self];
  v10 = [(HDSyncIdentityEntity *)self _concreteIdentityForIdentity:identityCopy database:v9 error:error];

  return v10;
}

+ (id)_concreteIdentityForIdentity:(void *)identity database:(uint64_t)database error:
{
  v6 = a2;
  identityCopy = identity;
  v8 = objc_opt_self();
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__19;
  v25 = __Block_byref_object_dispose__19;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __68__HDSyncIdentityEntity__concreteIdentityForIdentity_database_error___block_invoke;
  v16[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v16[4] = v8;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__HDSyncIdentityEntity__concreteIdentityForIdentity_database_error___block_invoke_2;
  v14[3] = &unk_278614860;
  v9 = v6;
  v15 = v9;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__HDSyncIdentityEntity__concreteIdentityForIdentity_database_error___block_invoke_3;
  v13[3] = &unk_278615C30;
  v13[4] = &v21;
  v13[5] = &v17;
  if ([identityCopy executeCachedStatementForKey:&_concreteIdentityForIdentity_database_error__lookupKey error:database SQLGenerator:v16 bindingHandler:v14 enumerationHandler:v13] && v22[5])
  {
    v10 = [HDConcreteSyncIdentity alloc];
    v11 = [(HDConcreteSyncIdentity *)v10 initWithIdentity:v9 entity:v22[5] isChild:*(v18 + 24)];
  }

  else
  {
    v11 = 0;
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  return v11;
}

+ (id)concreteIdentityForPersistentID:(int64_t)d transaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  v9 = [transactionCopy databaseForEntityClass:objc_opt_class()];

  v10 = [self concreteIdentityForPersistentID:d database:v9 error:error];

  return v10;
}

+ (id)concreteIdentityForPersistentID:(int64_t)d database:(id)database error:(id *)error
{
  databaseCopy = database;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__19;
  v24 = __Block_byref_object_dispose__19;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v9 = [(HDSQLiteEntity *)[HDSyncIdentityEntity alloc] initWithPersistentID:d];
  v14[4] = d;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__HDSyncIdentityEntity_concreteIdentityForPersistentID_database_error___block_invoke;
  v15[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v15[4] = self;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__HDSyncIdentityEntity_concreteIdentityForPersistentID_database_error___block_invoke_2;
  v14[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __71__HDSyncIdentityEntity_concreteIdentityForPersistentID_database_error___block_invoke_3;
  v13[3] = &unk_278615C30;
  v13[4] = &v20;
  v13[5] = &v16;
  if ([databaseCopy executeCachedStatementForKey:&concreteIdentityForPersistentID_database_error__lookupKey error:error SQLGenerator:v15 bindingHandler:v14 enumerationHandler:v13])
  {
    v10 = [HDConcreteSyncIdentity alloc];
    v11 = [(HDConcreteSyncIdentity *)v10 initWithIdentity:v9 entity:*(v17 + 24) isChild:?];
  }

  else
  {
    v11 = 0;
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);

  return v11;
}

id __71__HDSyncIdentityEntity_concreteIdentityForPersistentID_database_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() disambiguatedDatabaseTable];
  v4 = [v1 stringWithFormat:@"SELECT %@, %@, %@, %@ FROM %@ WHERE %@=?", @"hardware_identifier", @"database_identifier", @"instance_discriminator", @"is_child", v3, *MEMORY[0x277D10A40]];

  return v4;
}

uint64_t __71__HDSyncIdentityEntity_concreteIdentityForPersistentID_database_error___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = [HDSyncIdentity alloc];
  v5 = MEMORY[0x22AAC6CA0](a2, 0);
  v6 = MEMORY[0x22AAC6CA0](a2, 1);
  v7 = MEMORY[0x22AAC6C90](a2, 2);
  v8 = [(HDSyncIdentity *)v4 initWithHardwareIdentifier:v5 databaseIdentifier:v6 instanceDiscriminator:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  *(*(*(a1 + 40) + 8) + 24) = MEMORY[0x22AAC6C10](a2, 3);
  return 0;
}

+ (id)insertOrLookupConcreteIdentityForIdentity:(id)identity transaction:(id)transaction error:(id *)error
{
  identityCopy = identity;
  v9 = [transaction databaseForEntityClass:self];
  v10 = [self insertOrLookupConcreteIdentityForIdentity:identityCopy database:v9 error:error];

  return v10;
}

+ (id)insertOrLookupConcreteIdentityForIdentity:(id)identity database:(id)database error:(id *)error
{
  v25[4] = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  databaseCopy = database;
  if (!identityCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDSyncIdentityEntity.m" lineNumber:198 description:@"Attempt to insert a nil sync identity into the db."];
  }

  v24 = 0;
  v11 = [(HDSyncIdentityEntity *)self _concreteIdentityForIdentity:identityCopy database:databaseCopy error:&v24];
  v12 = v24;
  v13 = v12;
  if (v11)
  {
    v14 = v11;
  }

  else if (v12)
  {
    if (error)
    {
      v17 = v12;
      v14 = 0;
      *error = v13;
    }

    else
    {
      _HKLogDroppedError();
      v14 = 0;
    }
  }

  else
  {
    v25[0] = @"hardware_identifier";
    v25[1] = @"database_identifier";
    v25[2] = @"instance_discriminator";
    v25[3] = @"is_child";
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:4];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __81__HDSyncIdentityEntity_insertOrLookupConcreteIdentityForIdentity_database_error___block_invoke;
    v22[3] = &unk_278614508;
    v19 = identityCopy;
    v23 = v19;
    v20 = [self insertOrReplaceEntity:0 database:databaseCopy properties:v18 error:error bindingHandler:v22];

    if (v20)
    {
      v14 = [[HDConcreteSyncIdentity alloc] initWithIdentity:v19 entity:v20 isChild:0];
    }

    else
    {
      v14 = 0;
    }
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

void __81__HDSyncIdentityEntity_insertOrLookupConcreteIdentityForIdentity_database_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) hardwareIdentifier];
  MEMORY[0x22AAC6C00](a2, @"hardware_identifier", v4);

  v5 = [*(a1 + 32) databaseIdentifier];
  MEMORY[0x22AAC6C00](a2, @"database_identifier", v5);

  v6 = [*(a1 + 32) instanceDiscriminator];
  MEMORY[0x22AAC6BD0](a2, @"instance_discriminator", v6);

  [MEMORY[0x277CBEC28] intValue];

  JUMPOUT(0x22AAC6B90);
}

+ (id)updateIsChild:(BOOL)child concreteIdentity:(id)identity transaction:(id)transaction error:(id *)error
{
  identityCopy = identity;
  transactionCopy = transaction;
  v12 = [transactionCopy databaseForEntityClass:objc_opt_class()];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __73__HDSyncIdentityEntity_updateIsChild_concreteIdentity_transaction_error___block_invoke;
  v23[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v23[4] = self;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __73__HDSyncIdentityEntity_updateIsChild_concreteIdentity_transaction_error___block_invoke_2;
  v20[3] = &unk_278615C58;
  childCopy = child;
  v13 = identityCopy;
  v21 = v13;
  v14 = [v12 executeCachedStatementForKey:&updateIsChild_concreteIdentity_transaction_error__updateKey error:error SQLGenerator:v23 bindingHandler:v20 enumerationHandler:0];
  v15 = 0;
  if (v14)
  {
    v16 = [HDConcreteSyncIdentity alloc];
    identity = [v13 identity];
    entity = [v13 entity];
    v15 = [(HDConcreteSyncIdentity *)v16 initWithIdentity:identity entity:entity isChild:child];
  }

  return v15;
}

id __73__HDSyncIdentityEntity_updateIsChild_concreteIdentity_transaction_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"UPDATE %@ SET %@ = ? WHERE %@ = ? AND %@ = ? AND %@ = ?", v2, @"is_child", @"hardware_identifier", @"database_identifier", @"instance_discriminator"];

  return v3;
}

void __73__HDSyncIdentityEntity_updateIsChild_concreteIdentity_transaction_error___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  HDSQLiteBindFoundationValueToStatement();

  v3 = [*(a1 + 32) identity];
  v4 = [v3 hardwareIdentifier];
  HDSQLiteBindFoundationValueToStatement();

  v5 = [*(a1 + 32) identity];
  v6 = [v5 databaseIdentifier];
  HDSQLiteBindFoundationValueToStatement();

  v8 = [*(a1 + 32) identity];
  v7 = [v8 instanceDiscriminator];
  HDSQLiteBindFoundationValueToStatement();
}

id __68__HDSyncIdentityEntity__concreteIdentityForIdentity_database_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = *MEMORY[0x277D10A40];
  v3 = [*(a1 + 32) disambiguatedDatabaseTable];
  v4 = [v1 stringWithFormat:@"SELECT %@, %@ FROM %@ WHERE %@=? AND %@=? AND %@=?", v2, @"is_child", v3, @"hardware_identifier", @"database_identifier", @"instance_discriminator"];

  return v4;
}

void __68__HDSyncIdentityEntity__concreteIdentityForIdentity_database_error___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) hardwareIdentifier];
  HDSQLiteBindFoundationValueToStatement();

  v3 = [*(a1 + 32) databaseIdentifier];
  HDSQLiteBindFoundationValueToStatement();

  v4 = [*(a1 + 32) instanceDiscriminator];
  HDSQLiteBindFoundationValueToStatement();
}

uint64_t __68__HDSyncIdentityEntity__concreteIdentityForIdentity_database_error___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = [(HDSQLiteEntity *)[HDSyncIdentityEntity alloc] initWithPersistentID:HDSQLiteColumnAsInt64()];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  *(*(*(a1 + 40) + 8) + 24) = MEMORY[0x22AAC6C10](a2, 1);
  return 0;
}

- (id)concreteIdentityWithTransaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  v7 = [transactionCopy databaseForEntity:self];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__19;
  v22 = __Block_byref_object_dispose__19;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v12[4] = self;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__HDSyncIdentityEntity_concreteIdentityWithTransaction_error___block_invoke;
  v13[3] = &unk_278615C80;
  v13[4] = self;
  v11[5] = &v14;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__HDSyncIdentityEntity_concreteIdentityWithTransaction_error___block_invoke_2;
  v12[3] = &unk_278614860;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__HDSyncIdentityEntity_concreteIdentityWithTransaction_error___block_invoke_3;
  v11[3] = &unk_278615C30;
  v11[4] = &v18;
  if ([v7 executeCachedStatementForKey:&concreteIdentityWithTransaction_error__lookupKey error:error SQLGenerator:v13 bindingHandler:v12 enumerationHandler:v11])
  {
    v8 = [HDConcreteSyncIdentity alloc];
    v9 = [(HDConcreteSyncIdentity *)v8 initWithIdentity:self entity:*(v15 + 24) isChild:?];
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  return v9;
}

id __62__HDSyncIdentityEntity_concreteIdentityWithTransaction_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() disambiguatedDatabaseTable];
  v4 = [v1 stringWithFormat:@"SELECT %@, %@, %@, %@ FROM %@ WHERE %@=?", @"hardware_identifier", @"database_identifier", @"instance_discriminator", @"is_child", v3, *MEMORY[0x277D10A40]];

  return v4;
}

uint64_t __62__HDSyncIdentityEntity_concreteIdentityWithTransaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) persistentID];

  return sqlite3_bind_int64(a2, 1, v3);
}

uint64_t __62__HDSyncIdentityEntity_concreteIdentityWithTransaction_error___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = [HDSyncIdentity alloc];
  v5 = MEMORY[0x22AAC6CA0](a2, 0);
  v6 = MEMORY[0x22AAC6CA0](a2, 1);
  v7 = MEMORY[0x22AAC6C90](a2, 2);
  v8 = [(HDSyncIdentity *)v4 initWithHardwareIdentifier:v5 databaseIdentifier:v6 instanceDiscriminator:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  *(*(*(a1 + 40) + 8) + 24) = MEMORY[0x22AAC6C10](a2, 3);
  return 0;
}

+ (BOOL)enumerateConcreteIdentitiesWithTransaction:(id)transaction error:(id *)error enumerationHandler:(id)handler
{
  handlerCopy = handler;
  v9 = [transaction databaseForEntityClass:self];
  v13 = handlerCopy;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __92__HDSyncIdentityEntity_enumerateConcreteIdentitiesWithTransaction_error_enumerationHandler___block_invoke;
  v14[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v14[4] = self;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __92__HDSyncIdentityEntity_enumerateConcreteIdentitiesWithTransaction_error_enumerationHandler___block_invoke_2;
  v12[3] = &unk_278613B30;
  v10 = handlerCopy;
  LOBYTE(error) = [v9 executeCachedStatementForKey:&enumerateConcreteIdentitiesWithTransaction_error_enumerationHandler__lookupKey error:error SQLGenerator:v14 bindingHandler:0 enumerationHandler:v12];

  return error;
}

id __92__HDSyncIdentityEntity_enumerateConcreteIdentitiesWithTransaction_error_enumerationHandler___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = *MEMORY[0x277D10A40];
  v3 = *(a1 + 32);
  v4 = [objc_opt_class() disambiguatedDatabaseTable];
  v5 = [v1 stringWithFormat:@"SELECT %@, %@, %@, %@, %@ FROM %@", v2, @"hardware_identifier", @"database_identifier", @"instance_discriminator", @"is_child", v4];

  return v5;
}

uint64_t __92__HDSyncIdentityEntity_enumerateConcreteIdentitiesWithTransaction_error_enumerationHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [(HDSQLiteEntity *)[HDSyncIdentityEntity alloc] initWithPersistentID:HDSQLiteColumnAsInt64()];
  v5 = [HDSyncIdentity alloc];
  v6 = 1;
  v7 = MEMORY[0x22AAC6CA0](a2, 1);
  v8 = MEMORY[0x22AAC6CA0](a2, 2);
  v9 = MEMORY[0x22AAC6C90](a2, 3);
  v10 = [(HDSyncIdentity *)v5 initWithHardwareIdentifier:v7 databaseIdentifier:v8 instanceDiscriminator:v9];

  LOBYTE(a2) = MEMORY[0x22AAC6C10](a2, 4);
  v11 = [[HDConcreteSyncIdentity alloc] initWithIdentity:v10 entity:v4 isChild:a2];
  if (v11)
  {
    v6 = (*(*(a1 + 32) + 16))();
  }

  return v6;
}

+ (id)childIdentitiesForCurrentSyncIdentityWithTransaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__19;
  v19 = __Block_byref_object_dispose__19;
  v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
  unprotectedDatabase = [transactionCopy unprotectedDatabase];
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy__19;
  v13[4] = __Block_byref_object_dispose__19;
  v14 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __83__HDSyncIdentityEntity_childIdentitiesForCurrentSyncIdentityWithTransaction_error___block_invoke;
  v12[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v12[4] = self;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __83__HDSyncIdentityEntity_childIdentitiesForCurrentSyncIdentityWithTransaction_error___block_invoke_3;
  v11[3] = &unk_278615C30;
  v11[4] = v13;
  v11[5] = &v15;
  if ([unprotectedDatabase executeCachedStatementForKey:&childIdentitiesForCurrentSyncIdentityWithTransaction_error__lookupKey error:error SQLGenerator:v12 bindingHandler:&__block_literal_global_20 enumerationHandler:v11])
  {
    v8 = v16[5];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  _Block_object_dispose(v13, 8);

  _Block_object_dispose(&v15, 8);

  return v9;
}

id __83__HDSyncIdentityEntity_childIdentitiesForCurrentSyncIdentityWithTransaction_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() disambiguatedDatabaseTable];
  v4 = [v1 stringWithFormat:@"SELECT %@, %@, %@ FROM %@ WHERE %@=?", @"hardware_identifier", @"database_identifier", @"instance_discriminator", v3, @"is_child"];

  return v4;
}

uint64_t __83__HDSyncIdentityEntity_childIdentitiesForCurrentSyncIdentityWithTransaction_error___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = [HDSyncIdentity alloc];
  v5 = MEMORY[0x22AAC6CA0](a2, 0);
  v6 = MEMORY[0x22AAC6CA0](a2, 1);
  v7 = MEMORY[0x22AAC6C90](a2, 2);
  v8 = [(HDSyncIdentity *)v4 initWithHardwareIdentifier:v5 databaseIdentifier:v6 instanceDiscriminator:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  [*(*(*(a1 + 40) + 8) + 40) addObject:*(*(*(a1 + 32) + 8) + 40)];
  return 1;
}

+ (id)uniquedColumns
{
  v5[3] = *MEMORY[0x277D85DE8];
  v5[0] = @"hardware_identifier";
  v5[1] = @"database_identifier";
  v5[2] = @"instance_discriminator";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:3];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end