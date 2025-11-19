@interface HMBModelCountMatchesQuery
+ (id)queryWithSQLPredicate:(id)a3 indexedProperties:(id)a4 arguments:(id)a5;
- (id)countMatchesOn:(id)a3 arguments:(id)a4 error:(id *)a5;
- (id)sqlSelectStatementForModelType:(id)a3;
@end

@implementation HMBModelCountMatchesQuery

- (id)sqlSelectStatementForModelType:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [(HMBModelQuery *)self sqlPredicate];
  v7 = [v4 stringWithFormat:@"SELECT count('X') FROM queryable_%@, record_v2 WHERE _store_id = :_store_id AND _record_id == id AND model_data IS NOT NULL AND %@ LIMIT 1", v5, v6];

  return v7;
}

- (id)countMatchesOn:(id)a3 arguments:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(HMBModelQuery *)self preparedQueries];
  v11 = [v8 sql];
  v12 = [v10 objectForKey:v11];

  if (!v12)
  {
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  v13 = __encodeArguments(self, v12, v9);
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v14 = [v12 arguments];
  v15 = [v14 hmf_numberForKey:@"_store_id"];

  if (!v15)
  {
LABEL_10:
    result = _HMFPreconditionFailure();
    __break(1u);
    return result;
  }

  v16 = [v8 sql];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __60__HMBModelCountMatchesQuery_countMatchesOn_arguments_error___block_invoke;
  v24[3] = &unk_2786E1A60;
  v17 = v12;
  v25 = v17;
  v18 = v13;
  v26 = v18;
  v19 = v15;
  v27 = v19;
  v20 = v8;
  v28 = v20;
  v29 = &v30;
  v21 = [v16 sqlBlockWithActivity:0 error:a5 block:v24];

  if (v21)
  {
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v31[3]];
  }

  else
  {
    v22 = 0;
  }

  _Block_object_dispose(&v30, 8);

  return v22;
}

id __60__HMBModelCountMatchesQuery_countMatchesOn_arguments_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 statement];
  v6 = *(a1 + 40);
  v7 = [*(a1 + 48) intValue];
  v8 = [*(a1 + 56) zoneRow];
  v16 = 0;
  [HMBLocalZoneQueryResult bindPropertiesToStatement:v5 arguments:v6 zoneBindRowOffset:v7 zoneRow:v8 error:&v16];
  v9 = v16;
  v10 = [*(a1 + 32) statement];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__HMBModelCountMatchesQuery_countMatchesOn_arguments_error___block_invoke_2;
  v14[3] = &unk_2786E28F8;
  v14[4] = *(a1 + 64);
  v15 = v9;
  [v4 fetchSQLite3One:v10 error:&v15 block:v14];

  v11 = v15;
  v12 = v15;

  return v11;
}

+ (id)queryWithSQLPredicate:(id)a3 indexedProperties:(id)a4 arguments:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v7)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!v8)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v10 = v9;
  if (!v9)
  {
LABEL_9:
    v15 = _HMFPreconditionFailure();
    [(HMBMirrorOutputTuple *)v15 .cxx_destruct];
    return result;
  }

  v11 = [v8 componentsJoinedByString:@"_"];
  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count") + 1}];
  [v12 addObject:@"_store_id"];
  [v12 addObjectsFromArray:v8];
  v13 = [(HMBModelIndexedQuery *)[HMBModelCountMatchesQuery alloc] initWithSQLPredicate:v7 initialSequence:0 maximumRowsPerSelect:1 indexNameSuffix:v11 indexedColumns:v12 arguments:v10];

  return v13;
}

@end