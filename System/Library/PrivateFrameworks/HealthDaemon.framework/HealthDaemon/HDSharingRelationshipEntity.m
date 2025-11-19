@interface HDSharingRelationshipEntity
+ (BOOL)deleteEntityWithRecipientIdentifier:(id)a3 databaseTransaction:(id)a4 error:(id *)a5;
+ (id)entityWithRecipientIdentifier:(id)a3 databaseTransaction:(id)a4 error:(id *)a5;
+ (id)insertOrReplaceWithRecipientIdentifier:(id)a3 dateModified:(id)a4 syncProvenance:(int64_t)a5 syncIdentity:(int64_t)a6 databaseTransaction:(id)a7 error:(id *)a8;
- (BOOL)setDateModified:(id)a3 databaseTransaction:(id)a4 error:(id *)a5;
- (id)recipientIdentifierInDatabaseTransaction:(id)a3 error:(id *)a4;
@end

@implementation HDSharingRelationshipEntity

+ (id)insertOrReplaceWithRecipientIdentifier:(id)a3 dateModified:(id)a4 syncProvenance:(int64_t)a5 syncIdentity:(int64_t)a6 databaseTransaction:(id)a7 error:(id *)a8
{
  v28[4] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = [a7 protectedDatabase];
  v28[0] = @"recipient";
  v28[1] = @"date_modified";
  v28[2] = @"sync_provenance";
  v28[3] = @"sync_identity";
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __137__HDSharingRelationshipEntity_insertOrReplaceWithRecipientIdentifier_dateModified_syncProvenance_syncIdentity_databaseTransaction_error___block_invoke;
  v23[3] = &unk_27861BAE8;
  v24 = v14;
  v25 = v15;
  v26 = a5;
  v27 = a6;
  v18 = v15;
  v19 = v14;
  v20 = [a1 insertOrReplaceEntity:1 database:v16 properties:v17 error:a8 bindingHandler:v23];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

void __137__HDSharingRelationshipEntity_insertOrReplaceWithRecipientIdentifier_dateModified_syncProvenance_syncIdentity_databaseTransaction_error___block_invoke(void *a1, uint64_t a2)
{
  v4 = a1[4];
  v5 = HDStringRepresentationForRecipientIdentifier();
  MEMORY[0x22AAC6BD0](a2, @"recipient", v5);

  MEMORY[0x22AAC6B50](a2, @"date_modified", a1[5]);
  MEMORY[0x22AAC6B90](a2, @"sync_provenance", a1[6]);
  v6 = a1[7];

  JUMPOUT(0x22AAC6B90);
}

+ (BOOL)deleteEntityWithRecipientIdentifier:(id)a3 databaseTransaction:(id)a4 error:(id *)a5
{
  v6 = MEMORY[0x277D10B18];
  v7 = a4;
  v8 = HDStringRepresentationForRecipientIdentifier();
  v9 = [v6 predicateWithProperty:@"recipient" equalToValue:v8];

  v10 = [v7 databaseForEntityClass:objc_opt_class()];

  LOBYTE(a5) = [objc_opt_class() deleteEntitiesInDatabase:v10 predicate:v9 error:a5];
  return a5;
}

+ (id)entityWithRecipientIdentifier:(id)a3 databaseTransaction:(id)a4 error:(id *)a5
{
  v7 = MEMORY[0x277D10B18];
  v8 = a4;
  v9 = HDStringRepresentationForRecipientIdentifier();
  v10 = [v7 predicateWithProperty:@"recipient" equalToValue:v9];

  v11 = [v8 databaseForEntityClass:objc_opt_class()];

  v12 = [a1 anyInDatabase:v11 predicate:v10 error:a5];

  return v12;
}

- (id)recipientIdentifierInDatabaseTransaction:(id)a3 error:(id *)a4
{
  v12 = 0;
  v5 = [(HDHealthEntity *)self stringForProperty:@"recipient" transaction:a3 error:&v12];
  v6 = v12;
  v7 = v6;
  if (v5)
  {
    v8 = [MEMORY[0x277CCD988] sharingRecipientIdentifierFromStringRepresentation:v5];
    if (!v8)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:100 format:{@"Cannot create recipient identifier from string representation %@", v5}];
    }
  }

  else
  {
    v9 = v6;
    if (v9)
    {
      if (a4)
      {
        v10 = v9;
        *a4 = v9;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)setDateModified:(id)a3 databaseTransaction:(id)a4 error:(id *)a5
{
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [v9 databaseForEntityClass:objc_opt_class()];

  v17[0] = @"date_modified";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __73__HDSharingRelationshipEntity_setDateModified_databaseTransaction_error___block_invoke;
  v15[3] = &unk_278614508;
  v16 = v8;
  v12 = v8;
  LOBYTE(a5) = [(HDSQLiteEntity *)self updateProperties:v11 database:v10 error:a5 bindingHandler:v15];

  v13 = *MEMORY[0x277D85DE8];
  return a5;
}

@end