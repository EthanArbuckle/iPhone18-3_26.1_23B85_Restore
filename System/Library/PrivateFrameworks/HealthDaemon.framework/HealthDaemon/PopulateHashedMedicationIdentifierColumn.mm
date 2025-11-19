@interface PopulateHashedMedicationIdentifierColumn
@end

@implementation PopulateHashedMedicationIdentifierColumn

void ___PopulateHashedMedicationIdentifierColumn_block_invoke_2(uint64_t a1)
{
  v4 = [objc_alloc(MEMORY[0x277CCD660]) initWithSemanticIdentifierString:*(a1 + 32)];
  v2 = [v4 underlyingIdentifier];
  HDSQLiteBindFoundationValueToStatement();

  v3 = *(a1 + 32);
  HDSQLiteBindFoundationValueToStatement();
}

@end