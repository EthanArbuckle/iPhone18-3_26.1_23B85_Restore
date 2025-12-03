@interface HDSyncAnchorEntity(HealthDiagnosticExtension)
+ (void)hde_reportSyncAnchorsForSyncProvenance:()HealthDiagnosticExtension diagnosticOperation:database:;
@end

@implementation HDSyncAnchorEntity(HealthDiagnosticExtension)

+ (void)hde_reportSyncAnchorsForSyncProvenance:()HealthDiagnosticExtension diagnosticOperation:database:
{
  v8 = a4;
  v9 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v10 = [objc_alloc(MEMORY[0x277CCDA90]) initWithColumnTitles:&unk_286389068];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __117__HDSyncAnchorEntity_HealthDiagnosticExtension__hde_reportSyncAnchorsForSyncProvenance_diagnosticOperation_database___block_invoke;
  v17 = &unk_2796C0ED8;
  v19 = &v21;
  v20 = 0;
  v11 = v10;
  v18 = v11;
  LOBYTE(self) = [self enumerateSyncAnchorsForStoreID:a3 database:v9 error:&v20 handler:&v14];
  v12 = v20;
  formattedTable = [v11 formattedTable];
  [v8 appendString:formattedTable];

  [v8 appendNewline];
  if (self)
  {
    if ((v22[3] & 1) == 0)
    {
      [v8 appendFormat:@"\tNo sync anchors found for this store."];
    }
  }

  else
  {
    [v8 log:{@"ERROR: Failed to retrieve sync anchor information: %@", v12, v14, v15, v16, v17}];
  }

  _Block_object_dispose(&v21, 8);
}

@end