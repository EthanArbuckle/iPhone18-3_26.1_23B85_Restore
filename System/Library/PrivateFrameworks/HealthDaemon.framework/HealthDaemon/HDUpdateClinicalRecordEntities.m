@interface HDUpdateClinicalRecordEntities
@end

@implementation HDUpdateClinicalRecordEntities

uint64_t ___HDUpdateClinicalRecordEntities_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x22AAC6C80](a2, 0);
  v7 = 1;
  v8 = MEMORY[0x22AAC6C90](a2, 1);
  if (v8)
  {
    v9 = [*(a1 + 32) unprotectedDatabase];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = ___HDUpdateClinicalRecordEntities_block_invoke_2;
    v14[3] = &unk_278614860;
    v14[4] = v8;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = ___HDUpdateClinicalRecordEntities_block_invoke_3;
    v11[3] = &unk_2786140C0;
    v12 = *(a1 + 32);
    v13 = v6;
    v7 = [v9 executeSQL:@"SELECT sources.ROWID FROM sources             JOIN logical_sources ON logical_sources.ROWID = sources.logical_source_id             WHERE REPLACE(REPLACE(logical_sources.bundle_id error:'com.apple.public.health.clinical.' bindingHandler:'') enumerationHandler:{'-', '') = HEX(hk_MD5(?))", a3, v14, v11}];
  }

  return v7;
}

uint64_t ___HDUpdateClinicalRecordEntities_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x22AAC6C80](a2, 0);
  if (v5)
  {
    v6 = [*(a1 + 32) protectedDatabase];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = ___HDUpdateClinicalRecordEntities_block_invoke_4;
    v14[3] = &unk_278614860;
    v14[4] = v5;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = ___HDUpdateClinicalRecordEntities_block_invoke_5;
    v11[3] = &unk_2786140C0;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v12 = v7;
    v13 = v8;
    v9 = [v6 executeSQL:@"SELECT clinical_record_samples.ROWID error:fhir_resource_resource_type bindingHandler:fhir_resource_identifier FROM clinical_record_samples                 JOIN objects ON clinical_record_samples.data_id = objects.data_id                 JOIN data_provenances ON data_provenances.ROWID = objects.provenance                 WHERE data_provenances.source_id = ? AND clinical_record_samples.original_signed_clinical_data_rowid IS NULL" enumerationHandler:{a3, v14, v11}];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

uint64_t ___HDUpdateClinicalRecordEntities_block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x22AAC6C80](a2, 0);
  v7 = MEMORY[0x22AAC6C90](a2, 1);
  v8 = MEMORY[0x22AAC6C90](a2, 2);
  if (![v8 containsString:@"#"])
  {
    goto LABEL_4;
  }

  v9 = [v8 componentsSeparatedByString:@"#"];
  v10 = [v9 firstObject];
  v11 = [v10 componentsSeparatedByString:@"/"];

  if ([v11 count] == 2)
  {
    v12 = [v11 firstObject];

    v13 = [v11 lastObject];

    v8 = v13;
    v7 = v12;
LABEL_4:
    v14 = [*(a1 + 32) protectedDatabase];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = ___HDUpdateClinicalRecordEntities_block_invoke_892;
    v22[3] = &unk_278613528;
    v22[4] = *(a1 + 40);
    v7 = v7;
    v23 = v7;
    v8 = v8;
    v24 = v8;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = ___HDUpdateClinicalRecordEntities_block_invoke_2_893;
    v19[3] = &unk_2786140C0;
    v20 = *(a1 + 32);
    v21 = v6;
    v15 = [v14 executeSQL:@"SELECT ROWID FROM original_fhir_resources WHERE                          account_id = ? AND type = ? AND id = ?" error:a3 bindingHandler:v22 enumerationHandler:v19];

    goto LABEL_8;
  }

  _HKInitializeLogging();
  v16 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
  {
    *buf = 138543362;
    v26 = v8;
    _os_log_fault_impl(&dword_228986000, v16, OS_LOG_TYPE_FAULT, "UpdateClinicalRecordEntities: HKFHIRIdentifer malformed in migration attempt: %{public}@", buf, 0xCu);
  }

  v15 = 0;
LABEL_8:

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t ___HDUpdateClinicalRecordEntities_block_invoke_892(void *a1)
{
  v2 = a1[4];
  HDSQLiteBindFoundationValueToStatement();
  v3 = a1[5];
  HDSQLiteBindFoundationValueToStatement();
  v4 = a1[6];

  return HDSQLiteBindFoundationValueToStatement();
}

uint64_t ___HDUpdateClinicalRecordEntities_block_invoke_2_893(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x22AAC6C80](a2, 0);
  v6 = [*(a1 + 32) protectedDatabase];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___HDUpdateClinicalRecordEntities_block_invoke_3_897;
  v10[3] = &unk_278613038;
  v7 = *(a1 + 40);
  v10[4] = v5;
  v10[5] = v7;
  v8 = [v6 executeSQL:@"UPDATE clinical_record_samples SET original_fhir_resource_ROWID = ?                              WHERE ROWID = ?" error:a3 bindingHandler:v10 enumerationHandler:0];

  return v8;
}

uint64_t ___HDUpdateClinicalRecordEntities_block_invoke_3_897(uint64_t a1)
{
  v2 = *(a1 + 32);
  HDSQLiteBindFoundationValueToStatement();
  v3 = *(a1 + 40);

  return HDSQLiteBindFoundationValueToStatement();
}

@end