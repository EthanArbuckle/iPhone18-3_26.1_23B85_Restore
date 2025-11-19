@interface HDUserDomainConceptDiagnosticOperation
- (BOOL)_enumerateUDCTableInDatabase:(id)a3 appendToFormatter:(id)a4 error:(id *)a5;
- (void)_logAndAndAppendFormat:(id)a3;
- (void)_reportCountsForUDCTableRowsInDatabase:(id)a3;
- (void)_reportUDCTableInDatabase:(id)a3;
- (void)_reportUserDomainConcepts;
- (void)_reportUserDomainConceptsForDatabase:(id)a3;
@end

@implementation HDUserDomainConceptDiagnosticOperation

- (void)_reportUserDomainConcepts
{
  v6 = [(HDDiagnosticOperation *)self healthDirectoryURL];
  v3 = [v6 URLByAppendingPathComponent:@"healthdb_secure.sqlite" isDirectory:0];
  v4 = [(HDDiagnosticOperation *)self openReadOnlyDatabaseAtURL:v3];
  if (v4)
  {
    [(HDUserDomainConceptDiagnosticOperation *)self _reportUserDomainConceptsForDatabase:v4];
  }

  else
  {
    v5 = [v3 path];
    [(HDDiagnosticOperation *)self appendFormat:@"Unable to open %@ \n", v5];
  }

  [v4 close];
}

- (void)_reportUserDomainConceptsForDatabase:(id)a3
{
  v4 = a3;
  [(HDUserDomainConceptDiagnosticOperation *)self _reportCountsForUDCTableRowsInDatabase:v4];
  [(HDUserDomainConceptDiagnosticOperation *)self _reportUDCTableInDatabase:v4];
}

- (void)_reportCountsForUDCTableRowsInDatabase:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(HDDiagnosticOperation *)self appendString:@"User Domains Concept Table Counts"];
  [(HDDiagnosticOperation *)self appendNewline];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v7 count:13];
  [(HDDiagnosticOperation *)self reportCountsForDatabase:v4 entityClasses:v5, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18];

  [(HDDiagnosticOperation *)self appendNewline];
  [(HDDiagnosticOperation *)self appendStrongSeparator];
  [(HDDiagnosticOperation *)self appendNewline];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_reportUDCTableInDatabase:(id)a3
{
  v4 = a3;
  [(HDDiagnosticOperation *)self appendString:@"User Domains Concepts"];
  [(HDDiagnosticOperation *)self appendSeparator];
  v5 = objc_alloc(MEMORY[0x277CCDA90]);
  v6 = +[HDUserDomainConceptDiagnosticOperation _udcTableColumnTitles];
  v7 = [v5 initWithColumnTitles:v6];

  v11 = 0;
  LOBYTE(v6) = [(HDUserDomainConceptDiagnosticOperation *)self _enumerateUDCTableInDatabase:v4 appendToFormatter:v7 error:&v11];

  v8 = v11;
  v9 = v8;
  if (v6)
  {
    v10 = [v7 formattedTable];
    [(HDDiagnosticOperation *)self appendString:v10];

    [(HDDiagnosticOperation *)self appendNewline];
    [(HDDiagnosticOperation *)self appendStrongSeparator];
    [(HDDiagnosticOperation *)self appendNewline];
  }

  else
  {
    [(HDUserDomainConceptDiagnosticOperation *)self _logAndAndAppendFormat:@"Failed to enumerate UDC table rows: %@", v8];
  }
}

- (BOOL)_enumerateUDCTableInDatabase:(id)a3 appendToFormatter:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = MEMORY[0x277CCACA8];
  v9 = a3;
  v10 = [v8 stringWithFormat:@"SELECT * FROM user_domain_concepts ORDER BY udc_id LIMIT 500"];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __95__HDUserDomainConceptDiagnosticOperation__enumerateUDCTableInDatabase_appendToFormatter_error___block_invoke;
  v13[3] = &unk_2796C0D00;
  v14 = v7;
  v11 = v7;
  LOBYTE(a5) = [v9 executeSQL:v10 error:a5 bindingHandler:0 enumerationHandler:v13];

  return a5;
}

uint64_t __95__HDUserDomainConceptDiagnosticOperation__enumerateUDCTableInDatabase_appendToFormatter_error___block_invoke(uint64_t a1)
{
  v47[14] = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D10500];
  v2 = HDSQLiteColumnWithNameAsDate();
  v3 = *MEMORY[0x277D10528];
  v4 = HDSQLiteColumnWithNameAsDate();
  v5 = *MEMORY[0x277D10560];
  v45 = [MEMORY[0x277CCABB0] numberWithLongLong:HDSQLiteColumnWithNameAsInt64()];
  v44 = [v45 stringValue];
  v47[0] = v44;
  v6 = *MEMORY[0x277D10558];
  v43 = HDSQLiteColumnWithNameAsUUID();
  v42 = [v43 UUIDString];
  v47[1] = v42;
  v7 = *MEMORY[0x277D10550];
  v8 = HDSQLiteColumnWithNameAsString();
  v41 = v8;
  v9 = &stru_2863876A0;
  if (v8)
  {
    v9 = v8;
  }

  v47[2] = v9;
  v10 = *MEMORY[0x277D10548];
  v39 = [MEMORY[0x277CCABB0] numberWithLongLong:HDSQLiteColumnWithNameAsInt64()];
  v38 = [v39 stringValue];
  v47[3] = v38;
  v11 = *MEMORY[0x277D10508];
  HDSQLiteColumnWithNameAsBoolean();
  v36 = HKStringFromBool();
  v47[4] = v36;
  v40 = v2;
  v35 = HKDiagnosticStringFromDate();
  v47[5] = v35;
  v12 = MEMORY[0x277CCABB0];
  [v2 timeIntervalSinceReferenceDate];
  v34 = [v12 numberWithDouble:?];
  v33 = [v34 stringValue];
  v47[6] = v33;
  v37 = v4;
  v32 = HKDiagnosticStringFromDate();
  v47[7] = v32;
  v13 = MEMORY[0x277CCABB0];
  [v4 timeIntervalSinceReferenceDate];
  v31 = [v13 numberWithDouble:?];
  v14 = [v31 stringValue];
  v47[8] = v14;
  v15 = *MEMORY[0x277D10530];
  v16 = [MEMORY[0x277CCABB0] numberWithLongLong:HDSQLiteColumnWithNameAsInt64()];
  v17 = [v16 stringValue];
  v47[9] = v17;
  v18 = *MEMORY[0x277D10540];
  v19 = [MEMORY[0x277CCABB0] numberWithLongLong:HDSQLiteColumnWithNameAsInt64()];
  v20 = [v19 stringValue];
  v47[10] = v20;
  v21 = *MEMORY[0x277D10538];
  v22 = [MEMORY[0x277CCABB0] numberWithLongLong:HDSQLiteColumnWithNameAsInt64()];
  v23 = [v22 stringValue];
  v47[11] = v23;
  v24 = *MEMORY[0x277D104F0];
  v25 = HDSQLiteColumnWithNameAsString();
  v47[12] = v25;
  v26 = *MEMORY[0x277D10510];
  HDSQLiteColumnWithNameIsNull();
  v27 = HKStringFromBool();
  v47[13] = v27;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:14];

  [*(a1 + 32) appendRow:v28];
  v29 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)_logAndAndAppendFormat:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [[v4 alloc] initWithFormat:v5 arguments:&v7];

  [(HDDiagnosticOperation *)self log:@"%@", v6];
  [(HDDiagnosticOperation *)self appendFormat:@"%@", v6];
}

@end