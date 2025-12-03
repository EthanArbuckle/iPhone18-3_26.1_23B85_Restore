@interface HMBLocalSQLQueryTable
+ (id)logCategory;
- (BOOL)prepareWithError:(id *)error;
- (HMBLocalSQLContext)context;
- (HMBLocalSQLQueryTable)initWithContext:(id)context queryModel:(Class)model;
- (id)buildQueriableFieldsForModel:(id)model;
- (id)performQueryOn:(id)on properties:(id)properties filter:(id)filter;
- (unint64_t)_deleteAllQueriesForZoneRow:(unint64_t)row error:(id *)error;
- (unint64_t)_deleteQueryForRecordRow:(unint64_t)row error:(id *)error;
- (unint64_t)_updateQueryForZoneRow:(unint64_t)row recordRow:(unint64_t)recordRow encodedColumns:(id)columns error:(id *)error;
- (void)dealloc;
- (void)finalize;
@end

@implementation HMBLocalSQLQueryTable

- (HMBLocalSQLContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

- (void)finalize
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(HMBLocalSQLQueryTable *)self finalized])
  {
    _HMFPreconditionFailure();
  }

  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v15 = 138543362;
    v16 = v6;
    _os_log_impl(&dword_22AD27000, v5, OS_LOG_TYPE_INFO, "%{public}@Finalizing table", &v15, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  deleteAll = [(HMBLocalSQLQueryTable *)selfCopy deleteAll];
  [deleteAll finalize];

  deleteRecord = [(HMBLocalSQLQueryTable *)selfCopy deleteRecord];
  [deleteRecord finalize];

  updateRecord = [(HMBLocalSQLQueryTable *)selfCopy updateRecord];
  [updateRecord finalize];

  selectAll = [(HMBLocalSQLQueryTable *)selfCopy selectAll];
  [selectAll finalize];

  userQueries = [(HMBLocalSQLQueryTable *)selfCopy userQueries];
  allObjects = [userQueries allObjects];
  [allObjects hmf_enumerateWithAutoreleasePoolUsingBlock:&__block_literal_global_1277];

  userQueries2 = [(HMBLocalSQLQueryTable *)selfCopy userQueries];
  [userQueries2 removeAllObjects];

  [(HMBLocalSQLQueryTable *)selfCopy setFinalized:1];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  if ([(HMBLocalSQLQueryTable *)self finalized])
  {
    v9.receiver = self;
    v9.super_class = HMBLocalSQLQueryTable;
    [(HMBLocalSQLQueryTable *)&v9 dealloc];
  }

  else
  {
    v3 = _HMFPreconditionFailure();
    [(HMBLocalSQLQueryTable *)v3 _updateQueryForZoneRow:v4 recordRow:v5 encodedColumns:v6 error:v7, v8];
  }
}

- (unint64_t)_updateQueryForZoneRow:(unint64_t)row recordRow:(unint64_t)recordRow encodedColumns:(id)columns error:(id *)error
{
  columnsCopy = columns;
  updateRecord = [(HMBLocalSQLQueryTable *)self updateRecord];
  statement = [updateRecord statement];

  hmbBindIntSQLite3(statement, 1, row, error);
  hmbBindIntSQLite3(statement, 2, recordRow, error);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __79__HMBLocalSQLQueryTable__updateQueryForZoneRow_recordRow_encodedColumns_error___block_invoke;
  v16[3] = &__block_descriptor_40_e15_v32__0_8Q16_B24l;
  v16[4] = statement;
  [columnsCopy hmf_enumerateWithAutoreleasePoolUsingBlock:v16];

  context = [(HMBLocalSQLQueryTable *)self context];
  v14 = [context insertSQLite3:statement error:error];

  return v14;
}

void __79__HMBLocalSQLQueryTable__updateQueryForZoneRow_recordRow_encodedColumns_error___block_invoke(uint64_t a1, void *a2, int a3)
{
  v11 = a2;
  v5 = [MEMORY[0x277CBEB68] null];

  v6 = v11;
  v7 = *(a1 + 32);
  if (v5 == v11)
  {
    v13 = 0;
    v8 = &v13;
    v9 = a3 + 3;
    v10 = &v13;
    v6 = 0;
  }

  else
  {
    v12 = 0;
    v8 = &v12;
    v9 = a3 + 3;
    v10 = &v12;
  }

  hmbBindDataSQLite3(v7, v9, v6, v10);
}

- (id)buildQueriableFieldsForModel:(id)model
{
  modelCopy = model;
  v5 = MEMORY[0x277CBEB18];
  columnNames = [(HMBLocalSQLQueryTable *)self columnNames];
  v7 = [v5 arrayWithCapacity:{objc_msgSend(columnNames, "count")}];

  columnNames2 = [(HMBLocalSQLQueryTable *)self columnNames];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__HMBLocalSQLQueryTable_buildQueriableFieldsForModel___block_invoke;
  v13[3] = &unk_2786E0670;
  v13[4] = self;
  v14 = modelCopy;
  v15 = v7;
  v9 = v7;
  v10 = modelCopy;
  [columnNames2 hmf_enumerateWithAutoreleasePoolUsingBlock:v13];

  v11 = [v9 copy];

  return v11;
}

void __54__HMBLocalSQLQueryTable_buildQueriableFieldsForModel___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 columnFields];
  v12 = [v7 objectAtIndex:a3];

  v8 = [*(a1 + 40) hmbPropertyNamed:v6];

  v9 = *(a1 + 48);
  if (v8)
  {
    v10 = [v12 encodeBlock];
    v11 = (v10)[2](v10, v8);
    [v9 addObject:v11];
  }

  else
  {
    v10 = [MEMORY[0x277CBEB68] null];
    [v9 addObject:v10];
  }
}

- (unint64_t)_deleteAllQueriesForZoneRow:(unint64_t)row error:(id *)error
{
  deleteAll = [(HMBLocalSQLQueryTable *)self deleteAll];
  statement = [deleteAll statement];

  hmbBindIntSQLite3(statement, 1, row, error);
  context = [(HMBLocalSQLQueryTable *)self context];
  v10 = [context execSQLite3:statement error:error];

  return v10;
}

- (unint64_t)_deleteQueryForRecordRow:(unint64_t)row error:(id *)error
{
  deleteRecord = [(HMBLocalSQLQueryTable *)self deleteRecord];
  statement = [deleteRecord statement];

  hmbBindIntSQLite3(statement, 1, row, error);
  context = [(HMBLocalSQLQueryTable *)self context];
  deleteRecord2 = [(HMBLocalSQLQueryTable *)self deleteRecord];
  v11 = [context execSQLite3:objc_msgSend(deleteRecord2 error:{"statement"), error}];

  return v11;
}

- (id)performQueryOn:(id)on properties:(id)properties filter:(id)filter
{
  propertiesCopy = properties;
  v9 = MEMORY[0x277CBEB18];
  filterCopy = filter;
  onCopy = on;
  array = [v9 array];
  columnNames = [(HMBLocalSQLQueryTable *)self columnNames];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __58__HMBLocalSQLQueryTable_performQueryOn_properties_filter___block_invoke;
  v20[3] = &unk_2786E0670;
  v21 = propertiesCopy;
  v22 = array;
  selfCopy = self;
  v14 = array;
  v15 = propertiesCopy;
  [columnNames hmf_enumerateWithAutoreleasePoolUsingBlock:v20];

  v16 = [HMBLocalZoneQueryResultFilter alloc];
  selectAll = [(HMBLocalSQLQueryTable *)self selectAll];
  v18 = [(HMBLocalZoneQueryResultFilter *)v16 initWithLocalZone:onCopy statement:selectAll columns:v14 filter:filterCopy];

  return v18;
}

void __58__HMBLocalSQLQueryTable_performQueryOn_properties_filter___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  v5 = *(a1 + 32);
  if (!v5 || [v5 containsObject:v11])
  {
    v6 = *(a1 + 40);
    v7 = [HMBLocalZoneQueryResultColumnTuple alloc];
    v8 = [*(a1 + 48) columnFields];
    v9 = [v8 objectAtIndex:a3];
    v10 = [(HMBLocalZoneQueryResultColumnTuple *)v7 initWithName:v11 offset:(a3 + 1) modelField:v9];
    [v6 addObject:v10];
  }
}

- (BOOL)prepareWithError:(id *)error
{
  v202 = *MEMORY[0x277D85DE8];
  context = [(HMBLocalSQLQueryTable *)self context];
  queryTables = [context queryTables];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"queryable_%@", self->_modelType];
  v177 = [queryTables objectForKeyedSubscript:v5];

  if (v177)
  {
    v6 = MEMORY[0x277CBEB58];
    columnNames = [(HMBLocalSQLQueryTable *)self columnNames];
    v8 = [v6 setWithArray:columnNames];

    v9 = [v8 count];
    columnNames2 = [v177 columnNames];
    v11 = [columnNames2 count];

    if (v9 == v11)
    {
      columnNames3 = [v177 columnNames];
      [v8 minusSet:columnNames3];

      v13 = [v8 count] != 0;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 1;
  }

  hmbQueries = [(objc_class *)[(HMBLocalSQLQueryTable *)self modelClass] hmbQueries];
  v178[0] = MEMORY[0x277D85DD0];
  v178[1] = 3221225472;
  v178[2] = __42__HMBLocalSQLQueryTable_prepareWithError___block_invoke;
  v178[3] = &unk_2786E0698;
  v178[4] = self;
  [hmbQueries hmf_enumerateWithAutoreleasePoolUsingBlock:v178];
  if (!v13)
  {
    goto LABEL_31;
  }

  selfCopy = self;
  context2 = [(HMBLocalSQLQueryTable *)selfCopy context];
  v15 = [MEMORY[0x277CBEB18] arrayWithArray:&unk_283EB9F00];
  columnNames4 = [(HMBLocalSQLQueryTable *)selfCopy columnNames];
  v185 = MEMORY[0x277D85DD0];
  v186 = 3221225472;
  v187 = ____buildTableForClass_block_invoke;
  v188 = &unk_2786E0700;
  v167 = v15;
  v189 = v167;
  [columnNames4 hmf_enumerateWithAutoreleasePoolUsingBlock:&v185];

  v17 = objc_autoreleasePoolPush();
  v18 = selfCopy;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = HMFGetLogIdentifier();
    modelType = [(HMBLocalSQLQueryTable *)v18 modelType];
    v22 = [v167 componentsJoinedByString:{@", "}];
    *buf = 138543874;
    *&buf[4] = v20;
    *&buf[12] = 2112;
    *&buf[14] = modelType;
    *&buf[22] = 2112;
    v197 = v22;
    _os_log_impl(&dword_22AD27000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Creating index table for %@ model (fields: %@)", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v17);
  v23 = MEMORY[0x277CCACA8];
  modelType2 = [(HMBLocalSQLQueryTable *)v18 modelType];
  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"queryable_%@", modelType2];
  v168 = [v23 stringWithFormat:@"DROP TABLE IF EXISTS %@", v25];;

  v26 = MEMORY[0x277CCACA8];
  modelType3 = [(HMBLocalSQLQueryTable *)v18 modelType];
  v170 = [v26 stringWithFormat:@"DELETE FROM index_sentinel WHERE type = '%@'", modelType3];;

  v28 = v170;
  uTF8String = [v170 UTF8String];
  v181 = 0;
  LOBYTE(v26) = [context2 runSQLite3:uTF8String error:&v181];
  v30 = v181;
  if ((v26 & 1) == 0)
  {
    v31 = objc_autoreleasePoolPush();
    v32 = v18;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v34;
      *&buf[12] = 2112;
      *&buf[14] = v30;
      _os_log_impl(&dword_22AD27000, v33, OS_LOG_TYPE_INFO, "%{public}@Failed to clean up sentinel table (not fatal): %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v31);
  }

  v35 = v168;
  uTF8String2 = [v168 UTF8String];
  *v193 = v30;
  v37 = [context2 runSQLite3:uTF8String2 error:v193];
  v38 = *v193;

  if ((v37 & 1) == 0)
  {
    v39 = objc_autoreleasePoolPush();
    v40 = v18;
    v41 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      v42 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v42;
      *&buf[12] = 2112;
      *&buf[14] = v38;
      _os_log_impl(&dword_22AD27000, v41, OS_LOG_TYPE_INFO, "%{public}@Failed to clean up sentinel index table (not fatal): %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v39);
  }

  v43 = MEMORY[0x277CCACA8];
  modelType4 = [(HMBLocalSQLQueryTable *)v18 modelType];
  v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"queryable_%@", modelType4];
  v46 = [v167 componentsJoinedByString:{@", "}];
  modelType5 = [(HMBLocalSQLQueryTable *)v18 modelType];
  v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"queryable_%@", modelType5];
  v49 = [v43 stringWithFormat:@"CREATE TABLE %@ (%@, CONSTRAINT fk_%@ FOREIGN KEY (_record_id) REFERENCES record_v2 (id) ON DELETE CASCADE)", v45, v46, v48];;

  v50 = v49;
  uTF8String3 = [v49 UTF8String];
  v180 = v38;
  LOBYTE(modelType4) = [context2 runSQLite3:uTF8String3 error:&v180];
  v52 = v180;

  if (modelType4)
  {
    v53 = MEMORY[0x277CCACA8];
    modelType6 = [(HMBLocalSQLQueryTable *)v18 modelType];
    v55 = [MEMORY[0x277CCACA8] stringWithFormat:@"qu_%@", modelType6];
    modelType7 = [(HMBLocalSQLQueryTable *)v18 modelType];
    v57 = [MEMORY[0x277CCACA8] stringWithFormat:@"queryable_%@", modelType7];
    v58 = [v53 stringWithFormat:@"CREATE UNIQUE INDEX IF NOT EXISTS %@ ON %@ (_store_id, _record_id)", v55, v57];;

    v59 = v58;
    uTF8String4 = [v58 UTF8String];
    v179 = v52;
    v61 = [context2 runSQLite3:uTF8String4 error:&v179];
    v62 = v179;

    if ((v61 & 1) == 0)
    {
      context = objc_autoreleasePoolPush();
      v63 = v18;
      v64 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        v65 = HMFGetLogIdentifier();
        modelType8 = [(HMBLocalSQLQueryTable *)v63 modelType];
        *buf = 138543874;
        *&buf[4] = v65;
        *&buf[12] = 2112;
        *&buf[14] = modelType8;
        *&buf[22] = 2112;
        v197 = v62;
        _os_log_impl(&dword_22AD27000, v64, OS_LOG_TYPE_ERROR, "%{public}@Failed to create index for query table for %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(context);
      if (error)
      {
        v67 = v62;
        *error = v62;
      }
    }

    v52 = v62;
  }

  else
  {
    v68 = objc_autoreleasePoolPush();
    v69 = v18;
    v70 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      v71 = HMFGetLogIdentifier();
      modelType9 = [(HMBLocalSQLQueryTable *)v69 modelType];
      *buf = 138543874;
      *&buf[4] = v71;
      *&buf[12] = 2112;
      *&buf[14] = modelType9;
      *&buf[22] = 2112;
      v197 = v52;
      _os_log_impl(&dword_22AD27000, v70, OS_LOG_TYPE_ERROR, "%{public}@Failed to create query table for %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v68);
    if (error)
    {
      v73 = v52;
      v61 = 0;
      *error = v52;
    }

    else
    {
      v61 = 0;
    }
  }

  if (!v61)
  {
    v162 = 0;
  }

  else
  {
LABEL_31:
    selfCopy2 = self;
    v174 = hmbQueries;
    context3 = [(HMBLocalSQLQueryTable *)selfCopy2 context];
    queryTables2 = [context3 queryTables];
    modelType10 = [(HMBLocalSQLQueryTable *)selfCopy2 modelType];
    v78 = [MEMORY[0x277CCACA8] stringWithFormat:@"queryable_%@", modelType10];
    v79 = [queryTables2 objectForKey:v78];
    indexes = [v79 indexes];
    dictionary = [indexes mutableCopy];

    if (!dictionary)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
    }

    v82 = MEMORY[0x277CBEB98];
    v83 = [v174 na_map:&__block_literal_global_181];
    v171 = [v82 setWithArray:v83];

    v84 = MEMORY[0x277CCACA8];
    modelType11 = [(HMBLocalSQLQueryTable *)selfCopy2 modelType];
    v86 = [v84 stringWithFormat:@"qu_%@", modelType11];

    v87 = MEMORY[0x277CBEB98];
    allKeys = [dictionary allKeys];
    v89 = [v87 setWithArray:allKeys];
    v169 = [v89 na_setByRemovingObjectsFromSet:v171];

    v185 = MEMORY[0x277D85DD0];
    v186 = 3221225472;
    v187 = ____updateIndexesForClass_block_invoke_2;
    v188 = &unk_2786E0748;
    v90 = v86;
    v189 = v90;
    v91 = context3;
    v190 = v91;
    v92 = selfCopy2;
    v191 = v92;
    v93 = dictionary;
    v192 = v93;
    [v169 hmf_enumerateWithAutoreleasePoolUsingBlock:&v185];
    v181 = 0;
    v182 = &v181;
    v183 = 0x2020000000;
    v184 = 0;
    v94 = [v93 objectForKey:v90];
    v95 = v94 == 0;

    if (v95)
    {
      *(v182 + 24) = 1;
      v96 = MEMORY[0x277CCACA8];
      modelType12 = [(HMBLocalSQLQueryTable *)v92 modelType];
      v98 = [MEMORY[0x277CCACA8] stringWithFormat:@"queryable_%@", modelType12];
      v99 = [v96 stringWithFormat:@"CREATE INDEX IF NOT EXISTS %@ ON %@ (_store_id, _record_id)", v90, v98];

      v100 = v99;
      v101 = [v91 runSQLite3:{objc_msgSend(v99, "UTF8String")}];
      v102 = objc_autoreleasePoolPush();
      v103 = v92;
      v104 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v104, OS_LOG_TYPE_INFO))
      {
        v105 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v105;
        *&buf[12] = 2112;
        *&buf[14] = v99;
        _os_log_impl(&dword_22AD27000, v104, OS_LOG_TYPE_INFO, "%{public}@Creating generic index: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v102);
      if (v101)
      {
        v106 = objc_autoreleasePoolPush();
        v107 = v103;
        v108 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
        {
          v109 = HMFGetLogIdentifier();
          *buf = 138543874;
          *&buf[4] = v109;
          *&buf[12] = 2112;
          *&buf[14] = v99;
          *&buf[22] = 2112;
          v197 = v101;
          _os_log_impl(&dword_22AD27000, v108, OS_LOG_TYPE_ERROR, "%{public}@Unable to create generic index %@: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v106);
      }
    }

    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = ____updateIndexesForClass_block_invoke_193;
    v197 = &unk_2786E0770;
    v110 = v93;
    v198 = v110;
    v111 = v92;
    v199 = v111;
    v112 = v91;
    v200 = v112;
    v201 = &v181;
    [v174 hmf_enumerateWithAutoreleasePoolUsingBlock:buf];
    if (*(v182 + 24) == 1)
    {
      v113 = MEMORY[0x277CCACA8];
      modelType13 = [(HMBLocalSQLQueryTable *)v111 modelType];
      v114 = [v113 stringWithFormat:@"DELETE FROM index_sentinel WHERE type = '%@'", modelType13];;

      v116 = v114;
      v117 = [v112 runSQLite3:{objc_msgSend(v114, "UTF8String")}];
      if (v117)
      {
        v118 = objc_autoreleasePoolPush();
        v119 = v111;
        v120 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v120, OS_LOG_TYPE_INFO))
        {
          v121 = HMFGetLogIdentifier();
          *v193 = 138543618;
          *&v193[4] = v121;
          v194 = 2112;
          v195 = v117;
          _os_log_impl(&dword_22AD27000, v120, OS_LOG_TYPE_INFO, "%{public}@Failed to remove sentinel table (not fatal): %@", v193, 0x16u);
        }

        objc_autoreleasePoolPop(v118);
      }
    }

    _Block_object_dispose(&v181, 8);
    v122 = v111;
    v123 = MEMORY[0x277CBEB18];
    v124 = v174;
    columnNames5 = [(HMBLocalSQLQueryTable *)v122 columnNames];
    v126 = [v123 arrayWithCapacity:{objc_msgSend(columnNames5, "count")}];

    columnNames6 = [(HMBLocalSQLQueryTable *)v122 columnNames];
    v185 = MEMORY[0x277D85DD0];
    v186 = 3221225472;
    v187 = ____prepareStatementsForClass_block_invoke;
    v188 = &unk_2786E0700;
    v189 = v126;
    v175 = v126;
    [columnNames6 hmf_enumerateWithAutoreleasePoolUsingBlock:&v185];

    columnNames7 = [(HMBLocalSQLQueryTable *)v122 columnNames];
    v129 = [columnNames7 componentsJoinedByString:{@", "}];

    v130 = [v175 componentsJoinedByString:{@", "}];
    v131 = MEMORY[0x277CCACA8];
    modelType14 = [(HMBLocalSQLQueryTable *)v122 modelType];
    v132 = [MEMORY[0x277CCACA8] stringWithFormat:@"queryable_%@", modelType14];
    v133 = [v131 stringWithFormat:@"DELETE FROM %@ WHERE _store_id=?1", v132];

    v135 = MEMORY[0x277CCACA8];
    modelType15 = [(HMBLocalSQLQueryTable *)v122 modelType];
    v136 = [MEMORY[0x277CCACA8] stringWithFormat:@"queryable_%@", modelType15];
    v137 = [v135 stringWithFormat:@"DELETE FROM %@ where _record_id=?1", v136];

    v139 = MEMORY[0x277CCACA8];
    modelType16 = [(HMBLocalSQLQueryTable *)v122 modelType];
    v140 = [MEMORY[0x277CCACA8] stringWithFormat:@"queryable_%@", modelType16];
    v141 = [v139 stringWithFormat:@"DROP TABLE IF EXISTS %@", v140];;
    dropTableSQL = v122->_dropTableSQL;
    v122->_dropTableSQL = v141;

    v144 = MEMORY[0x277CCACA8];
    modelType17 = [(HMBLocalSQLQueryTable *)v122 modelType];
    v145 = [MEMORY[0x277CCACA8] stringWithFormat:@"queryable_%@", modelType17];
    v130 = [v144 stringWithFormat:@"INSERT OR REPLACE INTO %@ (_store_id, _record_id, %@) values(?1, ?2, %@)", v145, v129, v130];

    v148 = MEMORY[0x277CCACA8];
    modelType18 = [(HMBLocalSQLQueryTable *)v122 modelType];
    v149 = [MEMORY[0x277CCACA8] stringWithFormat:@"queryable_%@", modelType18];
    v151 = [v148 stringWithFormat:@"SELECT _record_id, %@ FROM %@ WHERE _store_id = :_store_id AND _record_id > :_sequence_offset ORDER BY _record_id LIMIT (%lu)", v129, v149, +[HMBSQLQueryIterator maximumRowsPerSelect](HMBSQLQueryIterator, "maximumRowsPerSelect")];

    context4 = [(HMBLocalSQLQueryTable *)v122 context];
    v122->_finalized = 0;
    v153 = [[HMBSQLStatement alloc] initWithContext:context4 statement:v133];
    deleteAll = v122->_deleteAll;
    v122->_deleteAll = v153;

    v155 = [[HMBSQLStatement alloc] initWithContext:context4 statement:v137];
    deleteRecord = v122->_deleteRecord;
    v122->_deleteRecord = v155;

    v157 = [[HMBSQLStatement alloc] initWithContext:context4 statement:v130];
    updateRecord = v122->_updateRecord;
    v122->_updateRecord = v157;

    v159 = [[HMBSQLQueryStatement alloc] initWithContext:context4 statement:v151];
    selectAll = v122->_selectAll;
    v122->_selectAll = v159;

    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = ____prepareStatementsForClass_block_invoke_2;
    v197 = &unk_2786E0698;
    v198 = v122;
    v161 = v122;
    [v124 hmf_enumerateWithAutoreleasePoolUsingBlock:buf];

    v162 = 1;
  }

  v163 = *MEMORY[0x277D85DE8];
  return v162;
}

void __42__HMBLocalSQLQueryTable_prepareWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setModelClass:{objc_msgSend(v2, "modelClass")}];
}

- (HMBLocalSQLQueryTable)initWithContext:(id)context queryModel:(Class)model
{
  contextCopy = context;
  v36.receiver = self;
  v36.super_class = HMBLocalSQLQueryTable;
  v7 = [(HMBLocalSQLQueryTable *)&v36 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_context, contextCopy);
    objc_storeStrong(&v8->_modelClass, model);
    v9 = NSStringFromClass(model);
    modelType = v8->_modelType;
    v8->_modelType = v9;

    v11 = [MEMORY[0x277CBEB58] set];
    userQueries = v8->_userQueries;
    v8->_userQueries = v11;

    v8->_finalized = 1;
    hmbProperties = [(objc_class *)model hmbProperties];
    v14 = [MEMORY[0x277CBEB58] set];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __52__HMBLocalSQLQueryTable_initWithContext_queryModel___block_invoke;
    v34[3] = &unk_2786E0E00;
    v35 = v14;
    v15 = v14;
    [hmbProperties enumerateKeysAndObjectsUsingBlock:v34];
    v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v15, "count")}];
    v17 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v15, "count")}];
    allObjects = [v15 allObjects];
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __52__HMBLocalSQLQueryTable_initWithContext_queryModel___block_invoke_2;
    v30 = &unk_2786E0670;
    v31 = hmbProperties;
    v32 = v16;
    v33 = v17;
    v19 = v17;
    v20 = v16;
    v21 = hmbProperties;
    [allObjects hmf_enumerateWithAutoreleasePoolUsingBlock:&v27];

    v22 = [v19 copy];
    columnNames = v8->_columnNames;
    v8->_columnNames = v22;

    v24 = [v20 copy];
    columnFields = v8->_columnFields;
    v8->_columnFields = v24;
  }

  return v8;
}

void __52__HMBLocalSQLQueryTable_initWithContext_queryModel___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 encodeBlock];

  if (v5)
  {
    [*(a1 + 32) addObject:v6];
  }
}

void __52__HMBLocalSQLQueryTable_initWithContext_queryModel___block_invoke_2(id *a1, void *a2)
{
  v7 = a2;
  v3 = [a1[4] objectForKey:?];
  if (v3)
  {
    v4 = v3;
    [a1[5] addObject:v3];
    [a1[6] addObject:v7];
  }

  else
  {
    v5 = _HMFPreconditionFailure();
    +[(HMBLocalSQLQueryTable *)v5];
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t18 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t18, &__block_literal_global_20);
  }

  v3 = logCategory__hmf_once_v19;

  return v3;
}

uint64_t __36__HMBLocalSQLQueryTable_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v19;
  logCategory__hmf_once_v19 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end