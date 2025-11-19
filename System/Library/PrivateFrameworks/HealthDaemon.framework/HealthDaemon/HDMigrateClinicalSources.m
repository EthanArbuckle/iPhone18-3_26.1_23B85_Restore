@interface HDMigrateClinicalSources
@end

@implementation HDMigrateClinicalSources

uint64_t ___HDMigrateClinicalSources_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x22AAC6C90](a2, 0);
  v6 = [*(a1 + 32) protectedDatabase];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = ___HDMigrateClinicalSources_block_invoke_2;
  v12[3] = &unk_278614860;
  v12[4] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___HDMigrateClinicalSources_block_invoke_3;
  v9[3] = &unk_2786140C0;
  v10 = *(a1 + 32);
  v11 = v5;
  v7 = [v6 executeSQL:@"SELECT external_id FROM clinical_accounts             LEFT JOIN clinical_gateways ON clinical_accounts.gateway_id = clinical_gateways.ROWID             WHERE HEX(clinical_accounts.identifier) = ?" error:a3 bindingHandler:v12 enumerationHandler:v9];

  return v7;
}

uint64_t ___HDMigrateClinicalSources_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x22AAC6C90](a2, 0);
  v6 = [*(a1 + 32) unprotectedDatabase];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___HDMigrateClinicalSources_block_invoke_4;
  v10[3] = &unk_278613038;
  v7 = *(a1 + 40);
  v10[4] = v5;
  v10[5] = v7;
  v8 = [v6 executeSQL:@"UPDATE public_clinical_sources SET gateway_id = ? WHERE account_id = ?" error:a3 bindingHandler:v10 enumerationHandler:0];

  return v8;
}

uint64_t ___HDMigrateClinicalSources_block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  HDSQLiteBindFoundationValueToStatement();
  v3 = *(a1 + 40);

  return HDSQLiteBindFoundationValueToStatement();
}

@end