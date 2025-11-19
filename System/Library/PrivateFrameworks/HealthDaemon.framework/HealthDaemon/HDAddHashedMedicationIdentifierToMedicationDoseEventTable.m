@interface HDAddHashedMedicationIdentifierToMedicationDoseEventTable
@end

@implementation HDAddHashedMedicationIdentifierToMedicationDoseEventTable

uint64_t ___HDAddHashedMedicationIdentifierToMedicationDoseEventTable_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x22AAC6C90](a2, 0);
  v6 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___PopulateHashedMedicationIdentifierColumn_block_invoke_2;
  v10[3] = &unk_278614860;
  v11 = v5;
  v7 = v5;
  v8 = [v6 executeCachedStatementForKey:&_PopulateHashedMedicationIdentifierColumn_insertionKey error:a3 SQLGenerator:&__block_literal_global_496_0 bindingHandler:v10 enumerationHandler:0];

  return v8;
}

@end