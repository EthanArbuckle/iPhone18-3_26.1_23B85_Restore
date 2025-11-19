@interface HDSharingAuthorizationsEntity
+ (BOOL)addSharingAuthorizations:(id)a3 forRecipientIdentifier:(id)a4 databaseTransaction:(id)a5 error:(id *)a6;
+ (BOOL)deleteAllMarkedSharingAuthorizationsWithTransaction:(id)a3 error:(id *)a4;
+ (BOOL)insertOrReplaceWithRecipientIdentifier:(id)a3 sharingAuthorizations:(id)a4 databaseTransaction:(id)a5 error:(id *)a6;
+ (BOOL)markSharingAuthorizationsForDeletion:(id)a3 recipientIdentifier:(id)a4 databaseTransaction:(id)a5 error:(id *)a6;
+ (id)_predicateForSharingAuthorizations:(uint64_t)a1;
+ (id)recipientIdentifiersForSharingAuthorization:(id)a3 databaseTransaction:(id)a4 error:(id *)a5;
+ (id)sharingAuthorizationsForRecipientIdentifier:(id)a3 databaseTransaction:(id)a4 includeMarkedForDeletion:(BOOL)a5 error:(id *)a6;
+ (id)sharingAuthorizationsMarkedForDeletionForRecipientIdentifier:(id)a3 databaseTransaction:(id)a4 error:(id *)a5;
+ (id)uniquedColumns;
+ (uint64_t)_deleteSharingAuthorizations:(void *)a3 recipientIdentifier:(void *)a4 databaseTransaction:(uint64_t)a5 error:;
+ (void)_sharingAuthorizationsForRecipientIdentifier:(uint64_t)a1 databaseTransaction:(void *)a2 predicate:(void *)a3 error:(uint64_t)a4;
@end

@implementation HDSharingAuthorizationsEntity

+ (id)uniquedColumns
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"recipient";
  v5[1] = @"authorization_identifier";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (BOOL)insertOrReplaceWithRecipientIdentifier:(id)a3 sharingAuthorizations:(id)a4 databaseTransaction:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v26 = 0;
  v13 = [a1 sharingAuthorizationsForRecipientIdentifier:v10 databaseTransaction:v12 error:&v26];
  v14 = v26;
  v15 = v14;
  if (!v13)
  {
    v15 = v14;
    if (v15)
    {
      if (a6)
      {
        v20 = v15;
        *a6 = v15;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    goto LABEL_18;
  }

  if ([v13 count])
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __120__HDSharingAuthorizationsEntity_insertOrReplaceWithRecipientIdentifier_sharingAuthorizations_databaseTransaction_error___block_invoke;
    v24[3] = &unk_278613BA8;
    v25 = v11;
    v16 = [v13 hk_filter:v24];
    if (![v16 count])
    {
LABEL_6:

      goto LABEL_7;
    }

    v23 = v15;
    v17 = [a1 deleteSharingAuthorizations:v16 recipientIdentifier:v10 databaseTransaction:v12 error:&v23];
    v18 = v23;

    if (v17)
    {
      v15 = v18;
      goto LABEL_6;
    }

    v15 = v18;
    if (v15)
    {
      if (a6)
      {
        v21 = v15;
        *a6 = v15;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

LABEL_18:
    v19 = 0;
    goto LABEL_19;
  }

LABEL_7:
  v19 = [a1 addSharingAuthorizations:v11 forRecipientIdentifier:v10 databaseTransaction:v12 error:a6];
LABEL_19:

  return v19;
}

+ (BOOL)addSharingAuthorizations:(id)a3 forRecipientIdentifier:(id)a4 databaseTransaction:(id)a5 error:(id *)a6
{
  v36 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = [a5 databaseForEntityClass:a1];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v11;
  v14 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v32;
    while (2)
    {
      v6 = 0;
      v18 = v16;
      do
      {
        if (*v32 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v31 + 1) + 8 * v6);
        v30 = v18;
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __107__HDSharingAuthorizationsEntity_addSharingAuthorizations_forRecipientIdentifier_databaseTransaction_error___block_invoke;
        v27[3] = &unk_278613038;
        v28 = v12;
        v29 = v19;
        v20 = [v13 executeSQL:@"INSERT OR IGNORE INTO sharing_authorizations (recipient error:authorization_identifier bindingHandler:display_name enumerationHandler:{display_subtitle) VALUES (?, ?, ?, ?)", &v30, v27, 0}];
        v16 = v30;

        if ((v20 & 1) == 0)
        {
          v21 = v16;
          v22 = v21;
          LOBYTE(v6) = v21 == 0;
          if (v21)
          {
            if (a6)
            {
              v23 = v21;
              *a6 = v22;
            }

            else
            {
              _HKLogDroppedError();
            }
          }

          goto LABEL_16;
        }

        ++v6;
        v18 = v16;
      }

      while (v15 != v6);
      v15 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }

LABEL_16:
  }

  else
  {
    v20 = 1;
  }

  v24 = *MEMORY[0x277D85DE8];
  return (v6 | v20) & 1;
}

void __107__HDSharingAuthorizationsEntity_addSharingAuthorizations_forRecipientIdentifier_databaseTransaction_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  v5 = HDStringRepresentationForRecipientIdentifier();
  HDSQLiteBindStringToStatement();

  v6 = [*(a1 + 40) authorizationIdentifier];
  HDSQLiteBindStringToStatement();

  v7 = [*(a1 + 40) displayName];

  if (v7)
  {
    v8 = [*(a1 + 40) displayName];
    HDSQLiteBindStringToStatement();
  }

  else
  {
    sqlite3_bind_null(a2, 3);
  }

  v9 = [*(a1 + 40) displaySubtitle];

  if (v9)
  {
    v10 = [*(a1 + 40) displaySubtitle];
    HDSQLiteBindStringToStatement();
  }

  else
  {

    sqlite3_bind_null(a2, 4);
  }
}

+ (id)sharingAuthorizationsForRecipientIdentifier:(id)a3 databaseTransaction:(id)a4 includeMarkedForDeletion:(BOOL)a5 error:(id *)a6
{
  v22[2] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = MEMORY[0x277D10B18];
  v13 = HDStringRepresentationForRecipientIdentifier();
  v14 = [v12 predicateWithProperty:@"recipient" equalToValue:v13];

  if (!a5)
  {
    v15 = [MEMORY[0x277D10B18] predicateWithProperty:@"delete_on_commit" equalToValue:MEMORY[0x277CBEC28]];
    v16 = MEMORY[0x277D10B20];
    v22[0] = v14;
    v22[1] = v15;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
    v18 = [v16 predicateMatchingAllPredicates:v17];

    v14 = v18;
  }

  v19 = [HDSharingAuthorizationsEntity _sharingAuthorizationsForRecipientIdentifier:a1 databaseTransaction:v11 predicate:v14 error:a6];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (void)_sharingAuthorizationsForRecipientIdentifier:(uint64_t)a1 databaseTransaction:(void *)a2 predicate:(void *)a3 error:(uint64_t)a4
{
  v20[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a2;
  v8 = objc_opt_self();
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = [v7 databaseForEntityClass:v8];

  v11 = [v8 queryWithDatabase:v10 predicate:v6];

  v20[0] = @"authorization_identifier";
  v20[1] = @"display_name";
  v20[2] = @"display_subtitle";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:3];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __114__HDSharingAuthorizationsEntity__sharingAuthorizationsForRecipientIdentifier_databaseTransaction_predicate_error___block_invoke;
  v18[3] = &unk_27861E4C0;
  v19 = v9;
  v13 = v9;
  if ([v11 enumerateProperties:v12 error:a4 enumerationHandler:v18])
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (id)sharingAuthorizationsMarkedForDeletionForRecipientIdentifier:(id)a3 databaseTransaction:(id)a4 error:(id *)a5
{
  v20[2] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277D10B18];
  v9 = a4;
  v10 = a3;
  v11 = HDStringRepresentationForRecipientIdentifier();
  v12 = [v8 predicateWithProperty:@"recipient" equalToValue:v11];

  v13 = [MEMORY[0x277D10B18] predicateWithProperty:@"delete_on_commit" equalToValue:MEMORY[0x277CBEC38]];
  v14 = MEMORY[0x277D10B20];
  v20[0] = v12;
  v20[1] = v13;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v16 = [v14 predicateMatchingAllPredicates:v15];

  v17 = [HDSharingAuthorizationsEntity _sharingAuthorizationsForRecipientIdentifier:a1 databaseTransaction:v9 predicate:v16 error:a5];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)recipientIdentifiersForSharingAuthorization:(id)a3 databaseTransaction:(id)a4 error:(id *)a5
{
  v33[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = MEMORY[0x277CBEB18];
  v10 = a4;
  v11 = objc_alloc_init(v9);
  v12 = MEMORY[0x277D10B18];
  v13 = [v8 authorizationIdentifier];
  v14 = [v12 predicateWithProperty:@"authorization_identifier" equalToValue:v13];

  v15 = [v8 displayName];

  if (v15)
  {
    v16 = MEMORY[0x277D10B18];
    v17 = [v8 displayName];
    v18 = [v16 predicateWithProperty:@"display_name" equalToValue:v17];
  }

  else
  {
    v18 = [MEMORY[0x277D10B60] isNullPredicateWithProperty:@"display_name"];
  }

  v19 = MEMORY[0x277D10B20];
  v33[0] = v14;
  v33[1] = v18;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
  v21 = [v19 predicateMatchingAllPredicates:v20];

  v22 = [v10 databaseForEntityClass:a1];

  v23 = [a1 queryWithDatabase:v22 predicate:v21];

  v32 = @"recipient";
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __103__HDSharingAuthorizationsEntity_recipientIdentifiersForSharingAuthorization_databaseTransaction_error___block_invoke;
  v30[3] = &unk_27861E4C0;
  v31 = v11;
  v25 = v11;
  if ([v23 enumerateProperties:v24 error:a5 enumerationHandler:v30])
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v27 = v26;

  v28 = *MEMORY[0x277D85DE8];
  return v26;
}

uint64_t __103__HDSharingAuthorizationsEntity_recipientIdentifiersForSharingAuthorization_databaseTransaction_error___block_invoke(uint64_t a1)
{
  v2 = HDSQLiteColumnWithNameAsString();
  if (v2)
  {
    v3 = [MEMORY[0x277CCD988] sharingRecipientIdentifierFromStringRepresentation:v2];
    if (v3)
    {
      [*(a1 + 32) addObject:v3];
    }
  }

  return 1;
}

+ (uint64_t)_deleteSharingAuthorizations:(void *)a3 recipientIdentifier:(void *)a4 databaseTransaction:(uint64_t)a5 error:
{
  v8 = a2;
  v9 = a4;
  v10 = a3;
  v11 = objc_opt_self();
  v12 = [v9 databaseForEntityClass:v11];

  v13 = MEMORY[0x277D10B18];
  v14 = HDStringRepresentationForRecipientIdentifier();

  v15 = [v13 predicateWithProperty:@"recipient" equalToValue:v14];

  if (v8)
  {
    v16 = [(HDSharingAuthorizationsEntity *)v11 _predicateForSharingAuthorizations:v8];
    if (!v16)
    {
      v19 = 1;
      goto LABEL_6;
    }

    v17 = v16;
    v18 = [MEMORY[0x277D10B20] compoundPredicateWithPredicate:v15 otherPredicate:v16];

    v15 = v18;
  }

  v19 = [v11 deleteEntitiesInDatabase:v12 predicate:v15 error:a5];
LABEL_6:

  return v19;
}

+ (BOOL)markSharingAuthorizationsForDeletion:(id)a3 recipientIdentifier:(id)a4 databaseTransaction:(id)a5 error:(id *)a6
{
  v22[1] = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a3;
  v12 = [a5 databaseForEntityClass:a1];
  v13 = MEMORY[0x277D10B18];
  v14 = HDStringRepresentationForRecipientIdentifier();

  v15 = [v13 predicateWithProperty:@"recipient" equalToValue:v14];

  v16 = [(HDSharingAuthorizationsEntity *)a1 _predicateForSharingAuthorizations:v11];

  if (v16)
  {
    v17 = [MEMORY[0x277D10B20] compoundPredicateWithPredicate:v15 otherPredicate:v16];
    v22[0] = @"delete_on_commit";
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    v19 = [a1 updateProperties:v18 predicate:v17 database:v12 error:a6 bindingHandler:&__block_literal_global_193];
  }

  else
  {
    v19 = 1;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

+ (id)_predicateForSharingAuthorizations:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  if ([v2 count])
  {
    v3 = [v2 hk_map:&__block_literal_global_339];
    v4 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)deleteAllMarkedSharingAuthorizationsWithTransaction:(id)a3 error:(id *)a4
{
  v6 = [a3 databaseForEntityClass:a1];
  v7 = [MEMORY[0x277D10B18] predicateWithProperty:@"delete_on_commit" equalToValue:MEMORY[0x277CBEC38]];
  LOBYTE(a4) = [a1 deleteEntitiesInDatabase:v6 predicate:v7 error:a4];

  return a4;
}

id __68__HDSharingAuthorizationsEntity__predicateForSharingAuthorizations___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D10B18];
  v3 = [a2 authorizationIdentifier];
  v4 = [v2 predicateWithProperty:@"authorization_identifier" equalToValue:v3];

  return v4;
}

uint64_t __114__HDSharingAuthorizationsEntity__sharingAuthorizationsForRecipientIdentifier_databaseTransaction_predicate_error___block_invoke(uint64_t a1)
{
  v2 = HDSQLiteColumnWithNameAsString();
  v3 = HDSQLiteColumnWithNameAsNonEmptyString();
  v4 = HDSQLiteColumnWithNameAsNonEmptyString();
  if (v2)
  {
    v5 = [objc_alloc(MEMORY[0x277CCD960]) initWithAuthorizationIdentifier:v2 displayName:v3 displaySubtitle:v4];
    [*(a1 + 32) addObject:v5];
  }

  return 1;
}

@end