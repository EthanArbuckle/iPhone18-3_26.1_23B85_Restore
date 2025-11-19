@interface HDUpdateMedicalRecordEntitiesTableWithOrigin
@end

@implementation HDUpdateMedicalRecordEntitiesTableWithOrigin

uint64_t ___HDUpdateMedicalRecordEntitiesTableWithOrigin_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x22AAC6C80](a2, 0);
  v7 = MEMORY[0x22AAC6C90](a2, 1);
  v8 = [*(a1 + 32) unprotectedDatabase];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = ___HDUpdateMedicalRecordEntitiesTableWithOrigin_block_invoke_2;
  v14[3] = &unk_278614860;
  v14[4] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = ___HDUpdateMedicalRecordEntitiesTableWithOrigin_block_invoke_3;
  v11[3] = &unk_27861A5B8;
  v11[4] = v7;
  v12 = *(a1 + 40);
  v13 = v6;
  v9 = [v8 executeSQL:@"SELECT sources.ROWID FROM sources             JOIN logical_sources ON logical_sources.ROWID = sources.logical_source_id             WHERE (REPLACE(REPLACE(logical_sources.bundle_id error:'com.apple.private.health.clinical.' bindingHandler:'') enumerationHandler:{'-', '') = ?)", a3, v14, v11}];

  return v9;
}

uint64_t ___HDUpdateMedicalRecordEntitiesTableWithOrigin_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x22AAC6C80](a2, 0);
  if (v3)
  {
    [*(a1 + 40) setObject:*(a1 + 48) forKeyedSubscript:v3];
  }

  else
  {
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
    {
      v7 = *(a1 + 32);
      v8 = 138543362;
      v9 = v7;
      _os_log_fault_impl(&dword_228986000, v4, OS_LOG_TYPE_FAULT, "UpdateMedicalRecordEntities: private source ROWID is nil for account %{public}@", &v8, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t ___HDUpdateMedicalRecordEntitiesTableWithOrigin_block_invoke_978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x22AAC6C80](a2, 0);
  v7 = MEMORY[0x22AAC6C90](a2, 1);
  v8 = MEMORY[0x22AAC6C80](a2, 2);
  v9 = [v7 componentsSeparatedByString:@"/"];
  if ([v9 count] != 2)
  {
    if ([v9 count] == 3)
    {
      v10 = [v9 objectAtIndexedSubscript:1];
      v12 = [v9 lastObject];
      if (![v12 containsString:@"#"])
      {
        v11 = 0;
        goto LABEL_10;
      }

      v13 = [v12 componentsSeparatedByString:@"#"];
      if ([v13 count] == 2)
      {
        v11 = [v13 firstObject];

LABEL_10:
        goto LABEL_11;
      }

      _HKInitializeLogging();
      v19 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v30 = v7;
        _os_log_fault_impl(&dword_228986000, v19, OS_LOG_TYPE_FAULT, "UpdateMedicalRecordEntities: HKFHIRIdentifer malformed in migration attempt: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      _HKInitializeLogging();
      v14 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v30 = v7;
        _os_log_fault_impl(&dword_228986000, v14, OS_LOG_TYPE_FAULT, "UpdateMedicalRecordEntities: HKFHIRIdentifer malformed in migration attempt: %{public}@", buf, 0xCu);
      }
    }

    v17 = 1;
    goto LABEL_21;
  }

  v10 = [v9 firstObject];
  v11 = [v9 lastObject];
LABEL_11:
  v15 = [*(a1 + 32) objectForKeyedSubscript:v8];
  if (v15)
  {
    v16 = [*(a1 + 40) protectedDatabase];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = ___HDUpdateMedicalRecordEntitiesTableWithOrigin_block_invoke_982;
    v25[3] = &unk_278613528;
    v26 = v15;
    v27 = v10;
    v28 = v11;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = ___HDUpdateMedicalRecordEntitiesTableWithOrigin_block_invoke_2_983;
    v22[3] = &unk_2786140C0;
    v23 = *(a1 + 40);
    v24 = v6;
    v17 = [v16 executeSQL:@"SELECT ROWID FROM original_fhir_resources WHERE                   account_id = ? AND type = ? AND id = ?" error:a3 bindingHandler:v25 enumerationHandler:v22];
  }

  else
  {
    _HKInitializeLogging();
    v18 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v30 = v8;
      _os_log_fault_impl(&dword_228986000, v18, OS_LOG_TYPE_FAULT, "UpdateMedicalRecordEntities: nil account ROWID associated with private source ROWID %{public}@", buf, 0xCu);
    }

    v17 = 1;
  }

LABEL_21:
  v20 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t ___HDUpdateMedicalRecordEntitiesTableWithOrigin_block_invoke_982(void *a1)
{
  v2 = a1[4];
  HDSQLiteBindFoundationValueToStatement();
  v3 = a1[5];
  HDSQLiteBindFoundationValueToStatement();
  v4 = a1[6];

  return HDSQLiteBindFoundationValueToStatement();
}

uint64_t ___HDUpdateMedicalRecordEntitiesTableWithOrigin_block_invoke_2_983(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x22AAC6C80](a2, 0);
  v6 = [*(a1 + 32) protectedDatabase];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___HDUpdateMedicalRecordEntitiesTableWithOrigin_block_invoke_3_987;
  v10[3] = &unk_278613038;
  v7 = *(a1 + 40);
  v10[4] = v5;
  v10[5] = v7;
  v8 = [v6 executeSQL:@"INSERT INTO medical_records_new (data_id error:note bindingHandler:entered_in_error enumerationHandler:{modified_date, fhir_identifier, original_fhir_resource_rowid, locale, extraction_version, sort_date, sort_date_key_path, country, state) SELECT data_id, note, entered_in_error, modified_date, fhir_identifier, ?, locale, extraction_version, sort_date, sort_date_key_path, country, state from medical_records where ROWID = ?", a3, v10, 0}];

  return v8;
}

uint64_t ___HDUpdateMedicalRecordEntitiesTableWithOrigin_block_invoke_3_987(uint64_t a1)
{
  v2 = *(a1 + 32);
  HDSQLiteBindFoundationValueToStatement();
  v3 = *(a1 + 40);

  return HDSQLiteBindFoundationValueToStatement();
}

@end