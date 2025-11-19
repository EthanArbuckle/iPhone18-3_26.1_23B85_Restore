@interface HDOntologyMercuryZipTSVPruner
- (BOOL)_markPrunedShardEntriesAsPrunedWithTransaction:(uint64_t)a3 error:;
- (HDOntologyMercuryZipTSVPruner)init;
- (HDOntologyMercuryZipTSVPruner)initWithOntologyUpdateCoordinator:(id)a3;
- (HDOntologyUpdateCoordinator)updateCoordinator;
- (id)_requiredSlotsWithTransaction:(uint64_t)a3 error:;
- (int64_t)pruneEntries:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (uint64_t)_deleteElementsFromEntity:(uint64_t)a1 requiredSlots:(void *)a2 database:(uint64_t)a3 error:(void *)a4;
- (uint64_t)_finalizeShardPruneWithTransaction:(uint64_t)a3 error:;
- (uint64_t)_hasImportedShardsWithTransaction:(uint64_t)a3 error:;
- (uint64_t)_pruneElementsFromEntity:(char)a3 isFinalEntity:(uint64_t)a4 error:;
- (uint64_t)_pruneElementsFromEntity:(uint64_t)a1 requiredSlots:(uint64_t)a2 transaction:(uint64_t)a3 error:(void *)a4;
- (uint64_t)_pruneElementsFromEntity:(void *)a3 transaction:(uint64_t)a4 error:;
- (uint64_t)_setPruneDateMetadataWithTransaction:(uint64_t)a3 error:;
- (uint64_t)_shouldPruneWithError:(void *)a1;
- (uint64_t)_shouldPruneWithTransaction:(uint64_t)a3 error:;
- (uint64_t)_updateElementsOfEntity:(uint64_t)a1 requiredSlots:(void *)a2 database:(uint64_t)a3 error:(void *)a4;
- (void)_clearLegacyOntologyVersionWithTransaction:(uint64_t)a1;
@end

@implementation HDOntologyMercuryZipTSVPruner

- (HDOntologyMercuryZipTSVPruner)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDOntologyMercuryZipTSVPruner)initWithOntologyUpdateCoordinator:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HDOntologyMercuryZipTSVPruner;
  v5 = [(HDOntologyMercuryZipTSVPruner *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_updateCoordinator, v4);
  }

  return v6;
}

- (int64_t)pruneEntries:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v6 = a4;
  v23[3] = *MEMORY[0x277D85DE8];
  v8 = a3;
  if ((v6 & 1) != 0 || (v9 = [(HDOntologyMercuryZipTSVPruner *)self _shouldPruneWithError:a5], v9 == 1))
  {
    v23[0] = objc_opt_class();
    v23[1] = objc_opt_class();
    v23[2] = objc_opt_class();
    [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:3];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v21 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v19;
      v9 = 1;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v10);
          }

          if (!-[HDOntologyMercuryZipTSVPruner _pruneElementsFromEntity:isFinalEntity:error:](self, *(*(&v18 + 1) + 8 * i), ++v13 == [v10 count], a5))
          {
            v9 = 0;
            goto LABEL_14;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v9 = 1;
    }

LABEL_14:
  }

  v16 = *MEMORY[0x277D85DE8];
  return v9;
}

- (uint64_t)_shouldPruneWithError:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = [a1 updateCoordinator];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__HDOntologyMercuryZipTSVPruner__shouldPruneWithError___block_invoke;
  v7[3] = &unk_2796B9C98;
  v7[4] = a1;
  v7[5] = &v8;
  LODWORD(a2) = [v4 performOntologyTransactionForWrite:0 databaseTransaction:0 error:a2 transactionHandler:v7];

  if (a2)
  {
    v5 = v9[3];
  }

  else
  {
    v5 = 0;
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __78__HDOntologyMercuryZipTSVPruner__pruneElementsFromEntity_isFinalEntity_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([(HDOntologyMercuryZipTSVPruner *)*(a1 + 32) _pruneElementsFromEntity:v5 transaction:a3 error:?])
  {
    if (*(a1 + 48) == 1)
    {
      v6 = [(HDOntologyMercuryZipTSVPruner *)*(a1 + 32) _finalizeShardPruneWithTransaction:v5 error:a3];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_requiredSlotsWithTransaction:(uint64_t)a3 error:
{
  v22[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a1)
  {
    v6 = MEMORY[0x277D10B20];
    v7 = [MEMORY[0x277D10B18] predicateWithProperty:@"desired_state" equalToValue:&unk_2863747C0];
    v22[0] = v7;
    v8 = [MEMORY[0x277D10B18] predicateWithProperty:@"schema_type" equalToValue:*MEMORY[0x277CCC630]];
    v22[1] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
    v10 = [v6 predicateMatchingAllPredicates:v9];

    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v11 = [v5 graphDatabase];
    v12 = [v11 underlyingDatabase];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __69__HDOntologyMercuryZipTSVPruner__requiredSlotsWithTransaction_error___block_invoke;
    v17[3] = &unk_2796B99F0;
    v17[4] = &v18;
    v13 = [HDOntologyShardRegistryEntity enumerateEntriesWithPredicate:v10 orderingTerms:0 database:v12 error:a3 enumerationHandler:v17];

    if (v13)
    {
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v19[3]];
    }

    else
    {
      v14 = 0;
    }

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

void __90__HDOntologyMercuryZipTSVPruner__pruneElementsFromEntity_requiredSlots_transaction_error___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = HKLogHealthOntology();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = NSStringFromClass(*(a1 + 56));
    CFAbsoluteTimeGetCurrent();
    v7 = *(a1 + 64);
    v8 = HKDiagnosticStringFromDuration();
    v10 = 138544386;
    v11 = v3;
    v12 = 2048;
    v13 = v4;
    v14 = 2048;
    v15 = v5;
    v16 = 2114;
    v17 = v6;
    v18 = 2114;
    v19 = v8;
    _os_log_impl(&dword_2514A1000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Directly deleted %ld and updated %ld from %{public}@ in %{public}@", &v10, 0x34u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __86__HDOntologyMercuryZipTSVPruner__updateElementsOfEntity_requiredSlots_database_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 32));
  v4 = *(a1 + 32);

  return sqlite3_bind_int64(a2, 2, v4);
}

BOOL __86__HDOntologyMercuryZipTSVPruner__markPrunedShardEntriesAsPrunedWithTransaction_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 copyWithAvailableStateNotImportedForDate:*(a1 + 32)];
  v6 = [HDOntologyShardRegistry insertEntry:v5 transaction:*(a1 + 40) error:a3];

  return v6;
}

- (HDOntologyUpdateCoordinator)updateCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_updateCoordinator);

  return WeakRetained;
}

- (uint64_t)_pruneElementsFromEntity:(char)a3 isFinalEntity:(uint64_t)a4 error:
{
  if (!a1)
  {
    return 0;
  }

  v8 = [a1 updateCoordinator];
  OUTLINED_FUNCTION_1();
  v13 = 3221225472;
  v14 = __78__HDOntologyMercuryZipTSVPruner__pruneElementsFromEntity_isFinalEntity_error___block_invoke;
  v15 = &unk_2796B9CC0;
  v16 = a1;
  v17 = a2;
  v18 = a3;
  v10 = [v9 performOntologyTransactionForWrite:1 databaseTransaction:0 error:a4 transactionHandler:v12];

  return v10;
}

- (uint64_t)_shouldPruneWithTransaction:(uint64_t)a3 error:
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v19 = 0;
    v7 = [v5 graphDatabase];
    v8 = [v7 underlyingDatabase];
    v9 = [HDSimpleGraphDatabaseMetadataEntity metadataValueForKey:@"MercuryZipTSVLastPruneDate" valueOut:&v19 database:v8 error:a3];
    v10 = v19;

    v11 = 0;
    if (v9)
    {
      Current = CFAbsoluteTimeGetCurrent();
      [v10 doubleValue];
      if (Current - v13 >= 604800.0)
      {
        v11 = [(HDOntologyMercuryZipTSVPruner *)a1 _hasImportedShardsWithTransaction:v6 error:a3];
      }

      else
      {
        _HKInitializeLogging();
        v14 = HKLogHealthOntology();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = HKDiagnosticStringFromDuration();
          v16 = HKDiagnosticStringFromDuration();
          *buf = 138543874;
          v21 = a1;
          v22 = 2114;
          v23 = v15;
          v24 = 2114;
          v25 = v16;
          _os_log_impl(&dword_2514A1000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: skipping prunning because it has only been %{public}@ since the last prune (waiting for %{public}@)", buf, 0x20u);
        }

        v11 = 2;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v11;
}

- (uint64_t)_hasImportedShardsWithTransaction:(uint64_t)a3 error:
{
  v18[2] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = MEMORY[0x277D10B20];
    v5 = MEMORY[0x277D10B18];
    v6 = a2;
    v7 = [v5 predicateWithProperty:@"current_version" notEqualToValue:&unk_2863747A8];
    v18[0] = v7;
    v8 = [MEMORY[0x277D10B18] predicateWithProperty:@"schema_type" equalToValue:*MEMORY[0x277CCC630]];
    v18[1] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    v10 = [v4 predicateMatchingAllPredicates:v9];

    v11 = *MEMORY[0x277D10A48];
    v12 = [v6 graphDatabase];

    v13 = [v12 underlyingDatabase];
    v14 = [(HDSQLiteEntity *)HDOntologyShardRegistryEntity countValueForProperty:v11 predicate:v10 database:v13 error:a3];

    if (v14)
    {
      if ([v14 integerValue] >= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (uint64_t)_pruneElementsFromEntity:(void *)a3 transaction:(uint64_t)a4 error:
{
  v7 = a3;
  if (a1)
  {
    v8 = [(HDOntologyMercuryZipTSVPruner *)a1 _requiredSlotsWithTransaction:v7 error:a4];
    v9 = v8;
    if (v8)
    {
      v10 = -[HDOntologyMercuryZipTSVPruner _pruneElementsFromEntity:requiredSlots:transaction:error:](a1, a2, [v8 unsignedLongLongValue], v7);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (uint64_t)_finalizeShardPruneWithTransaction:(uint64_t)a3 error:
{
  v5 = a2;
  if (a1)
  {
    if ([(HDOntologyMercuryZipTSVPruner *)a1 _markPrunedShardEntriesAsPrunedWithTransaction:v5 error:a3]&& [(HDOntologyMercuryZipTSVPruner *)a1 _setPruneDateMetadataWithTransaction:v5 error:a3])
    {
      [(HDOntologyMercuryZipTSVPruner *)a1 _clearLegacyOntologyVersionWithTransaction:v5];
      a1 = 1;
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

- (uint64_t)_pruneElementsFromEntity:(uint64_t)a1 requiredSlots:(uint64_t)a2 transaction:(uint64_t)a3 error:(void *)a4
{
  if (!a1)
  {
    return 0;
  }

  v6 = a4;
  Current = CFAbsoluteTimeGetCurrent();
  v8 = [v6 graphDatabase];

  v9 = [v8 underlyingDatabase];

  v10 = OUTLINED_FUNCTION_1_4();
  if (-[HDOntologyMercuryZipTSVPruner _deleteElementsFromEntity:requiredSlots:database:error:](v10, v11, v12, v13) && (v16 = [v9 getChangesCount], v17 = OUTLINED_FUNCTION_1_4(), -[HDOntologyMercuryZipTSVPruner _updateElementsOfEntity:requiredSlots:database:error:](v17, v18, v19, v20)))
  {
    [v9 getChangesCount];
    OUTLINED_FUNCTION_1();
    v23 = 3221225472;
    v24 = __90__HDOntologyMercuryZipTSVPruner__pruneElementsFromEntity_requiredSlots_transaction_error___block_invoke;
    v25 = &unk_2796B9CE8;
    v26 = a1;
    v27 = v16;
    v28 = v21;
    v29 = a2;
    v30 = Current;
    [v9 onCommit:v22 orRollback:0];
    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (uint64_t)_deleteElementsFromEntity:(uint64_t)a1 requiredSlots:(void *)a2 database:(uint64_t)a3 error:(void *)a4
{
  if (!a1)
  {
    return 0;
  }

  v6 = MEMORY[0x277CCACA8];
  v7 = a4;
  v8 = [v6 alloc];
  v9 = [a2 disambiguatedDatabaseTable];
  v10 = [v8 initWithFormat:@"DELETE FROM %@ WHERE (%@ & ?) == 0", v9, @"slots"];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __88__HDOntologyMercuryZipTSVPruner__deleteElementsFromEntity_requiredSlots_database_error___block_invoke;
  v17[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v17[4] = a3;
  v15 = OUTLINED_FUNCTION_2_4(v11, v12, v13, v14, v17);

  return v15;
}

- (uint64_t)_updateElementsOfEntity:(uint64_t)a1 requiredSlots:(void *)a2 database:(uint64_t)a3 error:(void *)a4
{
  if (!a1)
  {
    return 0;
  }

  v6 = MEMORY[0x277CCACA8];
  v7 = a4;
  v8 = [v6 alloc];
  v9 = [a2 disambiguatedDatabaseTable];
  v10 = [v8 initWithFormat:@"UPDATE %@ SET %@ = (%@ & ?) WHERE %@ != (%@ & ?)", v9, @"slots", @"slots", @"slots", @"slots"];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __86__HDOntologyMercuryZipTSVPruner__updateElementsOfEntity_requiredSlots_database_error___block_invoke;
  v17[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v17[4] = a3;
  v15 = OUTLINED_FUNCTION_2_4(v11, v12, v13, v14, v17);

  return v15;
}

- (BOOL)_markPrunedShardEntriesAsPrunedWithTransaction:(uint64_t)a3 error:
{
  v22[3] = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a1)
  {
    v6 = MEMORY[0x277D10B20];
    v7 = [MEMORY[0x277D10B18] predicateWithProperty:@"desired_state" notEqualToValue:&unk_2863747C0];
    v22[0] = v7;
    v8 = [MEMORY[0x277D10B18] predicateWithProperty:@"current_version" notEqualToValue:&unk_2863747A8];
    v22[1] = v8;
    v9 = [MEMORY[0x277D10B18] predicateWithProperty:@"schema_type" equalToValue:*MEMORY[0x277CCC630]];
    v22[2] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
    v11 = [v6 predicateMatchingAllPredicates:v10];

    v12 = [MEMORY[0x277CBEAA8] date];
    v13 = [v5 graphDatabase];
    v14 = [v13 underlyingDatabase];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __86__HDOntologyMercuryZipTSVPruner__markPrunedShardEntriesAsPrunedWithTransaction_error___block_invoke;
    v19[3] = &unk_2796B9D10;
    v20 = v12;
    v21 = v5;
    v15 = v12;
    v16 = [HDOntologyShardRegistryEntity enumerateEntriesWithPredicate:v11 orderingTerms:0 database:v14 error:a3 enumerationHandler:v19];
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (uint64_t)_setPruneDateMetadataWithTransaction:(uint64_t)a3 error:
{
  if (result)
  {
    v4 = [a2 graphDatabase];
    v5 = MEMORY[0x277CCABB0];
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v6 = [v5 numberWithDouble:?];
    v7 = [v6 stringValue];
    v8 = [v4 setMetadataValue:v7 forKey:@"MercuryZipTSVLastPruneDate" error:a3];

    return v8;
  }

  return result;
}

- (void)_clearLegacyOntologyVersionWithTransaction:(uint64_t)a1
{
  v15 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = [a2 graphDatabase];
    v8 = 0;
    v4 = [v3 setMetadataValue:0 forKey:@"ontologyAssetVersion" error:&v8];
    v5 = v8;

    if ((v4 & 1) == 0)
    {
      _HKInitializeLogging();
      v6 = HKLogHealthOntology();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v10 = a1;
        v11 = 2114;
        v12 = @"ontologyAssetVersion";
        v13 = 2114;
        v14 = v5;
        _os_log_error_impl(&dword_2514A1000, v6, OS_LOG_TYPE_ERROR, "%{public}@: Unable to clear metadata for %{public}@: %{public}@", buf, 0x20u);
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end