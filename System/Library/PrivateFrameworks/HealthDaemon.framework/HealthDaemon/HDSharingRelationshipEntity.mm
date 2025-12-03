@interface HDSharingRelationshipEntity
+ (BOOL)deleteEntityWithRecipientIdentifier:(id)identifier databaseTransaction:(id)transaction error:(id *)error;
+ (id)entityWithRecipientIdentifier:(id)identifier databaseTransaction:(id)transaction error:(id *)error;
+ (id)insertOrReplaceWithRecipientIdentifier:(id)identifier dateModified:(id)modified syncProvenance:(int64_t)provenance syncIdentity:(int64_t)identity databaseTransaction:(id)transaction error:(id *)error;
- (BOOL)setDateModified:(id)modified databaseTransaction:(id)transaction error:(id *)error;
- (id)recipientIdentifierInDatabaseTransaction:(id)transaction error:(id *)error;
@end

@implementation HDSharingRelationshipEntity

+ (id)insertOrReplaceWithRecipientIdentifier:(id)identifier dateModified:(id)modified syncProvenance:(int64_t)provenance syncIdentity:(int64_t)identity databaseTransaction:(id)transaction error:(id *)error
{
  v28[4] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  modifiedCopy = modified;
  protectedDatabase = [transaction protectedDatabase];
  v28[0] = @"recipient";
  v28[1] = @"date_modified";
  v28[2] = @"sync_provenance";
  v28[3] = @"sync_identity";
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __137__HDSharingRelationshipEntity_insertOrReplaceWithRecipientIdentifier_dateModified_syncProvenance_syncIdentity_databaseTransaction_error___block_invoke;
  v23[3] = &unk_27861BAE8;
  v24 = identifierCopy;
  v25 = modifiedCopy;
  provenanceCopy = provenance;
  identityCopy = identity;
  v18 = modifiedCopy;
  v19 = identifierCopy;
  v20 = [self insertOrReplaceEntity:1 database:protectedDatabase properties:v17 error:error bindingHandler:v23];

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

+ (BOOL)deleteEntityWithRecipientIdentifier:(id)identifier databaseTransaction:(id)transaction error:(id *)error
{
  v6 = MEMORY[0x277D10B18];
  transactionCopy = transaction;
  v8 = HDStringRepresentationForRecipientIdentifier();
  v9 = [v6 predicateWithProperty:@"recipient" equalToValue:v8];

  v10 = [transactionCopy databaseForEntityClass:objc_opt_class()];

  LOBYTE(error) = [objc_opt_class() deleteEntitiesInDatabase:v10 predicate:v9 error:error];
  return error;
}

+ (id)entityWithRecipientIdentifier:(id)identifier databaseTransaction:(id)transaction error:(id *)error
{
  v7 = MEMORY[0x277D10B18];
  transactionCopy = transaction;
  v9 = HDStringRepresentationForRecipientIdentifier();
  v10 = [v7 predicateWithProperty:@"recipient" equalToValue:v9];

  v11 = [transactionCopy databaseForEntityClass:objc_opt_class()];

  v12 = [self anyInDatabase:v11 predicate:v10 error:error];

  return v12;
}

- (id)recipientIdentifierInDatabaseTransaction:(id)transaction error:(id *)error
{
  v12 = 0;
  v5 = [(HDHealthEntity *)self stringForProperty:@"recipient" transaction:transaction error:&v12];
  v6 = v12;
  v7 = v6;
  if (v5)
  {
    v8 = [MEMORY[0x277CCD988] sharingRecipientIdentifierFromStringRepresentation:v5];
    if (!v8)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:error code:100 format:{@"Cannot create recipient identifier from string representation %@", v5}];
    }
  }

  else
  {
    v9 = v6;
    if (v9)
    {
      if (error)
      {
        v10 = v9;
        *error = v9;
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

- (BOOL)setDateModified:(id)modified databaseTransaction:(id)transaction error:(id *)error
{
  v17[1] = *MEMORY[0x277D85DE8];
  modifiedCopy = modified;
  transactionCopy = transaction;
  v10 = [transactionCopy databaseForEntityClass:objc_opt_class()];

  v17[0] = @"date_modified";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __73__HDSharingRelationshipEntity_setDateModified_databaseTransaction_error___block_invoke;
  v15[3] = &unk_278614508;
  v16 = modifiedCopy;
  v12 = modifiedCopy;
  LOBYTE(error) = [(HDSQLiteEntity *)self updateProperties:v11 database:v10 error:error bindingHandler:v15];

  v13 = *MEMORY[0x277D85DE8];
  return error;
}

@end