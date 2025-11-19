@interface HDSyncAnchorEntity
@end

@implementation HDSyncAnchorEntity

void __117__HDSyncAnchorEntity_HealthDiagnosticExtension__hde_reportSyncAnchorsForSyncProvenance_diagnosticOperation_database___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v33[7] = *MEMORY[0x277D85DE8];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  if (a6 | a5 | a7 | a8 | a10)
  {
    v32 = [MEMORY[0x277D108D8] identifierWithSchema:? entity:?];
    v27 = *(a1 + 32);
    v31 = [v32 description];
    v33[0] = v31;
    v30 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
    v29 = [v30 stringValue];
    v33[1] = v29;
    v28 = [MEMORY[0x277CCABB0] numberWithLongLong:a5];
    v16 = [v28 stringValue];
    v33[2] = v16;
    v17 = [MEMORY[0x277CCABB0] numberWithLongLong:a6];
    v18 = [v17 stringValue];
    v33[3] = v18;
    v19 = [MEMORY[0x277CCABB0] numberWithLongLong:a7];
    v20 = [v19 stringValue];
    v33[4] = v20;
    v21 = [MEMORY[0x277CCABB0] numberWithLongLong:a8];
    v22 = [v21 stringValue];
    v33[5] = v22;
    v23 = [MEMORY[0x277CCABB0] numberWithLongLong:a10];
    v24 = [v23 stringValue];
    v33[6] = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:7];
    [v27 appendRow:v25];
  }

  v26 = *MEMORY[0x277D85DE8];
}

@end