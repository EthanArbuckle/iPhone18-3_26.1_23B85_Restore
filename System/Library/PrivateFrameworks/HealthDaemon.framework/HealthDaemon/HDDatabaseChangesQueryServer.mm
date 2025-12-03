@interface HDDatabaseChangesQueryServer
- (BOOL)validateConfiguration:(id *)configuration;
- (HDDatabaseChangesQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (id)_authorizedObjectTypes;
- (id)objectTypes;
- (void)_queue_deliverQueryAnchor:(void *)anchor sampleTypeChanges:;
- (void)_queue_start;
- (void)didAddSamplesOfTypes:(id)types anchor:(id)anchor;
- (void)samplesAdded:(id)added anchor:(id)anchor;
- (void)samplesOfTypesWereRemoved:(id)removed anchor:(id)anchor;
@end

@implementation HDDatabaseChangesQueryServer

- (HDDatabaseChangesQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  configurationCopy = configuration;
  v16.receiver = self;
  v16.super_class = HDDatabaseChangesQueryServer;
  v11 = [(HDQueryServer *)&v16 initWithUUID:d configuration:configurationCopy client:client delegate:delegate];
  if (v11)
  {
    anchor = [configurationCopy anchor];
    v13 = [anchor copy];
    anchor = v11->_anchor;
    v11->_anchor = v13;
  }

  return v11;
}

- (BOOL)validateConfiguration:(id *)configuration
{
  objectTypes = [(HDDatabaseChangesQueryServer *)self objectTypes];
  v6 = [objectTypes count];

  if (v6)
  {
    v8.receiver = self;
    v8.super_class = HDDatabaseChangesQueryServer;
    return [(HDQueryServer *)&v8 validateConfiguration:configuration];
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:configuration code:3 format:@"Must provide at least one object type"];
    return 0;
  }
}

- (id)objectTypes
{
  if (self)
  {
    configuration = [(HDQueryServer *)self configuration];
  }

  else
  {
    configuration = 0;
  }

  sampleTypes = [configuration sampleTypes];

  return sampleTypes;
}

- (void)_queue_start
{
  v32.receiver = self;
  v32.super_class = HDDatabaseChangesQueryServer;
  [(HDQueryServer *)&v32 _queue_start];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__100;
  v30 = __Block_byref_object_dispose__100;
  v31 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = self->_anchor;
  _rowid = [(HKQueryAnchor *)v3 _rowid];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__100;
  v24 = __Block_byref_object_dispose__100;
  v25 = 0;
  profile = [(HDQueryServer *)self profile];
  database = [profile database];
  v18[7] = _rowid;
  v19 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __44__HDDatabaseChangesQueryServer__queue_start__block_invoke;
  v18[3] = &unk_278621CB0;
  v18[5] = &v20;
  v18[6] = &v26;
  v18[4] = self;
  v7 = [(HDHealthEntity *)HDSampleEntity performReadTransactionWithHealthDatabase:database error:&v19 block:v18];
  v8 = v19;

  detailsQueryDateIndexSQL = self->_detailsQueryDateIndexSQL;
  self->_detailsQueryDateIndexSQL = 0;

  detailsQueryAnchorIndexSQL = self->_detailsQueryAnchorIndexSQL;
  self->_detailsQueryAnchorIndexSQL = 0;

  if (v7)
  {
    v11 = v21;
    v12 = v21[5];
    if (v12)
    {
      _rowid2 = [v12 _rowid];
      v11 = v21;
      if (_rowid2 > _rowid)
      {
        -[HDQueryServer setDataCount:](self, "setDataCount:", [v21[5] _rowid] - _rowid);
        v11 = v21;
      }
    }

    if ([v11[5] _rowid] > _rowid || !self->_hasDeliveredInitialResults)
    {
      [(HDDatabaseChangesQueryServer *)&self->super.super.isa _queue_deliverQueryAnchor:v27[5] sampleTypeChanges:?];
      self->_hasDeliveredInitialResults = 1;
    }
  }

  else
  {
    v14 = v8;
    queryQueue = [(HDQueryServer *)self queryQueue];
    dispatch_assert_queue_V2(queryQueue);

    clientProxy = [(HDQueryServer *)self clientProxy];
    queryUUID = [(HDQueryServer *)self queryUUID];
    [clientProxy client_deliverError:v14 forQuery:queryUUID];
  }

  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
}

BOOL __44__HDDatabaseChangesQueryServer__queue_start__block_invoke(void *a1, void *a2, void *a3)
{
  v138 = *MEMORY[0x277D85DE8];
  v79 = a2;
  v3 = [v79 protectedDatabase];
  v83 = [HDSQLiteEntity maxValueForProperty:"maxValueForProperty:predicate:database:error:" predicate:? database:? error:?];
  v80 = 0;

  if (!v83)
  {
    v9 = v80;
    v10 = v9;
    v8 = v9 == 0;
    if (v9)
    {
      if (a3)
      {
        v11 = v9;
        *a3 = v10;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    goto LABEL_78;
  }

  v4 = [MEMORY[0x277CCD840] _anchorWithRowid:{objc_msgSend(v83, "longLongValue")}];
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = a1[7];
  if (v7 > [*(*(a1[5] + 8) + 40) _rowid])
  {
    v8 = 1;
    goto LABEL_78;
  }

  v12 = a1[4];
  v13 = [v79 protectedDatabase];
  v86 = a1[7];
  v77 = v13;
  if (!v12)
  {
    v67 = 0;
    goto LABEL_77;
  }

  v14 = [v12 queryQueue];
  dispatch_assert_queue_V2(v14);

  v81 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v75 = +[(HDSQLiteSchemaEntity *)HDSampleEntity];
  v84 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT MAX(%@) FROM %@ WHERE %@ = ?", @"data_id", v75, @"data_type"];
  v15 = [(HDDatabaseChangesQueryServer *)v12 _authorizedObjectTypes];
  v16 = [v12 configuration];
  v78 = [v16 includeChangeDetails];

  v76 = v15;
  v88 = v77;
  v17 = MEMORY[0x277CCACA8];
  v18 = +[(HDSQLiteSchemaEntity *)HDQuantitySampleSeriesEntity];
  v19 = +[(HDSQLiteSchemaEntity *)HDSampleEntity];
  v20 = [v17 stringWithFormat:@"SELECT %@, COUNT(*) FROM %@ CROSS JOIN %@ USING (%@) WHERE %@ IS NOT NULL GROUP BY %@", @"data_type", v18, v19, @"data_id", @"insertion_era", @"data_type"];

  v132 = 0;
  v133 = &v132;
  v134 = 0x3032000000;
  v135 = __Block_byref_object_copy__100;
  v136 = __Block_byref_object_dispose__100;
  v137 = 0;
  v101 = MEMORY[0x277D85DD0];
  v102 = 3221225472;
  v103 = __107__HDDatabaseChangesQueryServer__queue_sampleTypeCodesWithUnfrozenSeriesWithAuthorizedTypes_database_error___block_invoke;
  v104 = &unk_278614620;
  v105 = &v132;
  if ([v88 executeUncachedSQL:v20 error:a3 bindingHandler:0 enumerationHandler:&v101])
  {
    if ([v133[5] count])
    {
      *&v97 = MEMORY[0x277D85DD0];
      *(&v97 + 1) = 3221225472;
      *&v98 = __107__HDDatabaseChangesQueryServer__queue_sampleTypeCodesWithUnfrozenSeriesWithAuthorizedTypes_database_error___block_invoke_2;
      *(&v98 + 1) = &unk_278621CD8;
      *&v99 = &v132;
      [v76 hk_filter:&v97];
    }

    else
    {
      [MEMORY[0x277CBEB98] set];
    }
    v85 = ;
  }

  else
  {
    v85 = 0;
  }

  _Block_object_dispose(&v132, 8);

  if (!v85)
  {
LABEL_73:
    v67 = 0;
    goto LABEL_76;
  }

  v99 = 0u;
  v100 = 0u;
  v98 = 0u;
  v97 = 0u;
  obj = v76;
  v21 = [obj countByEnumeratingWithState:&v97 objects:&v132 count:16];
  if (!v21)
  {
    goto LABEL_75;
  }

  v22 = *v98;
  v23 = *MEMORY[0x277CCBCB0];
  v72 = v12;
  v73 = *v98;
  while (2)
  {
    for (i = 0; i != v21; ++i)
    {
      if (*v98 != v22)
      {
        objc_enumerationMutation(obj);
      }

      v25 = *(*(&v97 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = v25;
        v93 = 0;
        v94 = &v93;
        v95 = 0x2020000000;
        v96 = -1;
        v91[0] = MEMORY[0x277D85DD0];
        v91[1] = 3221225472;
        v91[2] = __83__HDDatabaseChangesQueryServer__queue_changesByTypeWithDatabase_sinceAnchor_error___block_invoke;
        v91[3] = &unk_278614860;
        v27 = v26;
        v92 = v27;
        v90[0] = MEMORY[0x277D85DD0];
        v90[1] = 3221225472;
        v90[2] = __83__HDDatabaseChangesQueryServer__queue_changesByTypeWithDatabase_sinceAnchor_error___block_invoke_2;
        v90[3] = &unk_278614620;
        v90[4] = &v93;
        if (([v88 executeSQL:v84 error:a3 bindingHandler:v91 enumerationHandler:v90] & 1) == 0)
        {

          _Block_object_dispose(&v93, 8);
          goto LABEL_73;
        }

        if (v94[3] <= v86)
        {
          if ([v85 containsObject:v27])
          {
            v33 = [objc_alloc(MEMORY[0x277CCD8E0]) _initWithSampleType:v27 startTime:1 endTime:0 hasUnfrozenSeries:v23 queryStrategy:v23];
            [v81 setObject:v33 forKeyedSubscript:v27];
          }

LABEL_68:
          _Block_object_dispose(&v93, 8);

          continue;
        }

        if (!v78)
        {
          v34 = [objc_alloc(MEMORY[0x277CCD8E0]) _initWithSampleType:v27 startTime:objc_msgSend(v85 endTime:"containsObject:" hasUnfrozenSeries:v27) queryStrategy:{0, v23, v23}];
LABEL_66:
          if (!v34)
          {
LABEL_74:

            _Block_object_dispose(&v93, 8);
            goto LABEL_75;
          }

          [v81 setObject:v34 forKeyedSubscript:v27];

          goto LABEL_68;
        }

        v74 = [v85 containsObject:v27];
        v28 = v94[3];
        v29 = v27;
        v30 = [v12 queryQueue];
        dispatch_assert_queue_V2(v30);

        v31 = [v12 configuration];
        v32 = [v31 changeDetailsQueryStrategy];

        if (v32)
        {

          if (v32 != 1)
          {
            if (v32 != 2)
            {
              goto LABEL_74;
            }

            goto LABEL_55;
          }
        }

        else
        {
          if (v86)
          {
            v35 = [v12 configuration];
            v36 = v28 - v86 > [v35 anchorStrategyChangeCountLimit];

            if (!v36)
            {

LABEL_55:
              v53 = v29;
              v54 = v88;
              v55 = [v12 queryQueue];
              dispatch_assert_queue_V2(v55);

              v56 = v12[30];
              if (!v56)
              {
                v57 = MEMORY[0x277CCACA8];
                v58 = +[(HDSQLiteSchemaEntity *)HDSampleEntity];
                v59 = [v57 stringWithFormat:@"SELECT %@, %@ FROM %@ WHERE %@ > ? AND %@ = ?", @"start_date", @"end_date", v58, @"data_id", @"data_type", 0];
                v60 = v12[30];
                v12[30] = v59;

                v56 = v12[30];
              }

              v128 = 0;
              v129 = &v128;
              v130 = 0x2020000000;
              v131 = v23;
              v124 = 0;
              v125 = &v124;
              v126 = 0x2020000000;
              v127 = v23;
              v120 = 0;
              v121 = &v120;
              v122 = 0x2020000000;
              LOBYTE(v123) = 0;
              v110 = MEMORY[0x277D85DD0];
              v111 = 3221225472;
              v112 = __130__HDDatabaseChangesQueryServer__queue_detailedChangeUsingAnchorIndexStrategyForType_sinceAnchor_hasUnfrozenSeries_database_error___block_invoke;
              v113 = &unk_278613B58;
              v115 = v86;
              v61 = v53;
              v114 = v61;
              v101 = MEMORY[0x277D85DD0];
              v102 = 3221225472;
              v103 = __130__HDDatabaseChangesQueryServer__queue_detailedChangeUsingAnchorIndexStrategyForType_sinceAnchor_hasUnfrozenSeries_database_error___block_invoke_2;
              v104 = &unk_278621D00;
              v105 = &v120;
              v106 = &v128;
              v108 = v86;
              v107 = &v124;
              v62 = v54;
              if ([v54 executeSQL:v56 error:a3 bindingHandler:&v110 enumerationHandler:&v101])
              {
                v63 = objc_alloc(MEMORY[0x277CCD8E0]);
                if (*(v121 + 24))
                {
                  v64 = MEMORY[0x277CCBCB0];
                }

                else
                {
                  v64 = v129 + 3;
                }

                v65 = *v64;
                v66 = v125 + 3;
                if (*(v121 + 24))
                {
                  v66 = MEMORY[0x277CCBCB0];
                }

                v34 = [v63 _initWithSampleType:v61 startTime:v74 endTime:2 hasUnfrozenSeries:v65 queryStrategy:*v66];
              }

              else
              {
                v34 = 0;
              }

              _Block_object_dispose(&v120, 8);
              _Block_object_dispose(&v124, 8);
              _Block_object_dispose(&v128, 8);

              goto LABEL_66;
            }
          }
        }

        v37 = v29;
        v38 = v88;
        v39 = [v12 queryQueue];
        dispatch_assert_queue_V2(v39);

        v40 = v12[29];
        if (!v40)
        {
          v41 = +[(HDSQLiteSchemaEntity *)HDSampleEntity];
          v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT (SELECT MIN(%@) FROM %@ WHERE %@ > ? AND %@ = ?) AS min_start_date, (SELECT MAX(%@) FROM %@ WHERE %@ > ? AND %@ = ?) AS max_start_date, (SELECT MAX(%@) FROM %@ WHERE %@ = ?) as max_end_date, (SELECT %@ FROM %@ WHERE %@ > ? AND %@ = ? AND %@ IS NULL AND %@ IS NULL LIMIT 1) as deletions", @"start_date", v41, @"data_id", @"data_type", @"start_date", v41, @"data_id", @"data_type", @"end_date", v41, @"data_type", @"data_id", v41, @"data_id", @"data_type", @"start_date", @"end_date", 0];
          v43 = v12[29];
          v12[29] = v42;

          v40 = v12[29];
        }

        v128 = 0;
        v129 = &v128;
        v130 = 0x2020000000;
        v131 = v23;
        v124 = 0;
        v125 = &v124;
        v126 = 0x2020000000;
        v127 = v23;
        v120 = 0;
        v121 = &v120;
        v122 = 0x2020000000;
        v123 = v23;
        v116 = 0;
        v117 = &v116;
        v118 = 0x2020000000;
        v119 = 0;
        v110 = MEMORY[0x277D85DD0];
        v111 = 3221225472;
        v112 = __128__HDDatabaseChangesQueryServer__queue_detailedChangeUsingDateIndexStrategyForType_sinceAnchor_hasUnfrozenSeries_database_error___block_invoke;
        v113 = &unk_278613B58;
        v44 = v37;
        v114 = v44;
        v115 = v86;
        v101 = MEMORY[0x277D85DD0];
        v102 = 3221225472;
        v103 = __128__HDDatabaseChangesQueryServer__queue_detailedChangeUsingDateIndexStrategyForType_sinceAnchor_hasUnfrozenSeries_database_error___block_invoke_2;
        v104 = &unk_278621D28;
        v105 = &v128;
        v106 = &v124;
        v109 = v86;
        v107 = &v120;
        v108 = &v116;
        if ([v38 executeSQL:v40 error:a3 bindingHandler:&v110 enumerationHandler:&v101])
        {
          if (v129[3] != v23 && *(v121 + 3) != v23 && [v44 isMaximumDurationRestricted])
          {
            v45 = *(v121 + 3);
            v46 = v125[3];
            [v44 maximumAllowedDuration];
            v48 = v46 + v47;
            if (v45 < v48)
            {
              v48 = v45;
            }

            *(v121 + 3) = v48;
          }

          v49 = objc_alloc(MEMORY[0x277CCD8E0]);
          if (*(v117 + 24))
          {
            v50 = MEMORY[0x277CCBCB0];
          }

          else
          {
            v50 = v129 + 3;
          }

          v51 = *v50;
          v52 = (v121 + 3);
          if (*(v117 + 24))
          {
            v52 = MEMORY[0x277CCBCB0];
          }

          v34 = [v49 _initWithSampleType:v44 startTime:v74 endTime:1 hasUnfrozenSeries:v51 queryStrategy:*v52];
        }

        else
        {
          v34 = 0;
        }

        v12 = v72;
        v22 = v73;
        _Block_object_dispose(&v116, 8);
        _Block_object_dispose(&v120, 8);
        _Block_object_dispose(&v124, 8);
        _Block_object_dispose(&v128, 8);

        goto LABEL_66;
      }
    }

    v21 = [obj countByEnumeratingWithState:&v97 objects:&v132 count:16];
    if (v21)
    {
      continue;
    }

    break;
  }

LABEL_75:

  v67 = v81;
LABEL_76:

LABEL_77:
  v68 = *(a1[6] + 8);
  v69 = *(v68 + 40);
  *(v68 + 40) = v67;

  v8 = *(*(a1[6] + 8) + 40) != 0;
LABEL_78:

  v70 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)_queue_deliverQueryAnchor:(void *)anchor sampleTypeChanges:
{
  v10 = a2;
  if (self)
  {
    anchorCopy = anchor;
    queryQueue = [self queryQueue];
    dispatch_assert_queue_V2(queryQueue);

    clientProxy = [self clientProxy];
    queryUUID = [self queryUUID];
    [clientProxy client_deliverQueryAnchor:v10 sampleTypeChanges:anchorCopy queryUUID:queryUUID];

    objc_storeStrong(self + 27, a2);
  }
}

- (id)_authorizedObjectTypes
{
  selfCopy = self;
  v16 = *MEMORY[0x277D85DE8];
  if (self)
  {
    objectTypes = [self objectTypes];
    if ([objectTypes count])
    {
      client = [selfCopy client];
      authorizationOracle = [client authorizationOracle];
      v11 = 0;
      v5 = [authorizationOracle authorizationStatusRecordsForTypes:objectTypes error:&v11];
      v6 = v11;

      if (v5)
      {
        v7 = [v5 hk_filterKeysWithBlock:&__block_literal_global_110];
      }

      else
      {
        _HKInitializeLogging();
        v8 = *MEMORY[0x277CCC308];
        if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v13 = selfCopy;
          v14 = 2114;
          v15 = v6;
          _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Error reading authorization statuses: %{public}@", buf, 0x16u);
        }

        v7 = [MEMORY[0x277CBEB98] set];
      }

      selfCopy = v7;
    }

    else
    {
      selfCopy = [MEMORY[0x277CBEB98] set];
    }
  }

  v9 = *MEMORY[0x277D85DE8];

  return selfCopy;
}

uint64_t __83__HDDatabaseChangesQueryServer__queue_changesByTypeWithDatabase_sinceAnchor_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) code];

  return sqlite3_bind_int64(a2, 1, v3);
}

uint64_t __107__HDDatabaseChangesQueryServer__queue_sampleTypeCodesWithUnfrozenSeriesWithAuthorizedTypes_database_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  if (!v3)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v3 = *(*(*(a1 + 32) + 8) + 40);
  }

  v8 = MEMORY[0x22AAC6C80](a2, 0);
  [v3 addObject:v8];

  return 1;
}

uint64_t __107__HDDatabaseChangesQueryServer__queue_sampleTypeCodesWithUnfrozenSeriesWithAuthorizedTypes_database_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(*(*(a1 + 32) + 8) + 40);
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "code")}];
    v6 = [v4 containsObject:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __130__HDDatabaseChangesQueryServer__queue_detailedChangeUsingAnchorIndexStrategyForType_sinceAnchor_hasUnfrozenSeries_database_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 40));
  v4 = [*(a1 + 32) code];

  return sqlite3_bind_int64(a2, 2, v4);
}

uint64_t __130__HDDatabaseChangesQueryServer__queue_detailedChangeUsingAnchorIndexStrategyForType_sinceAnchor_hasUnfrozenSeries_database_error___block_invoke_2(void *a1, uint64_t a2)
{
  if (MEMORY[0x22AAC6CD0](a2, 0) && MEMORY[0x22AAC6CD0](a2, 1) && a1[7] >= 1)
  {
    v4 = 0;
    *(*(a1[4] + 8) + 24) = 1;
  }

  else
  {
    v5 = MEMORY[0x22AAC6C50](a2, 0);
    v6 = *(a1[5] + 8);
    v7 = *(v6 + 24);
    if (v7 < v5 && v7 != *MEMORY[0x277CCBCB0])
    {
      v5 = *(v6 + 24);
    }

    *(v6 + 24) = v5;
    v9 = *(*(a1[6] + 8) + 24);
    v4 = 1;
    v10 = MEMORY[0x22AAC6C50](a2, 1);
    if (v9 >= v10)
    {
      v10 = v9;
    }

    *(*(a1[6] + 8) + 24) = v10;
  }

  return v4;
}

uint64_t __128__HDDatabaseChangesQueryServer__queue_detailedChangeUsingDateIndexStrategyForType_sinceAnchor_hasUnfrozenSeries_database_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) code];
  sqlite3_bind_int64(a2, 1, *(a1 + 40));
  sqlite3_bind_int64(a2, 2, v4);
  sqlite3_bind_int64(a2, 3, *(a1 + 40));
  sqlite3_bind_int64(a2, 4, v4);
  sqlite3_bind_int64(a2, 5, v4);
  sqlite3_bind_int64(a2, 6, *(a1 + 40));

  return sqlite3_bind_int64(a2, 7, v4);
}

uint64_t __128__HDDatabaseChangesQueryServer__queue_detailedChangeUsingDateIndexStrategyForType_sinceAnchor_hasUnfrozenSeries_database_error___block_invoke_2(void *a1, uint64_t a2)
{
  if (HDSQLiteColumnIsNonNull())
  {
    *(*(a1[4] + 8) + 24) = MEMORY[0x22AAC6C50](a2, 0);
  }

  if (HDSQLiteColumnIsNonNull())
  {
    *(*(a1[5] + 8) + 24) = MEMORY[0x22AAC6C50](a2, 1);
  }

  if (HDSQLiteColumnIsNonNull())
  {
    *(*(a1[6] + 8) + 24) = MEMORY[0x22AAC6C50](a2, 2);
  }

  if (a1[8] >= 1 && HDSQLiteColumnIsNonNull())
  {
    *(*(a1[7] + 8) + 24) = HDSQLiteColumnAsInt64() > 0;
  }

  return 1;
}

- (void)samplesAdded:(id)added anchor:(id)anchor
{
  addedCopy = added;
  anchorCopy = anchor;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__HDDatabaseChangesQueryServer_samplesAdded_anchor___block_invoke;
  v10[3] = &unk_278613830;
  v11 = anchorCopy;
  selfCopy = self;
  v13 = addedCopy;
  v8 = addedCopy;
  v9 = anchorCopy;
  [(HDQueryServer *)self onQueue:v10];
}

void __52__HDDatabaseChangesQueryServer_samplesAdded_anchor___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) longLongValue];
  if (v2 > [*(*(a1 + 40) + 216) _rowid])
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = *(a1 + 48);
    v3 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v3)
    {
      v4 = v3;
      v23 = *v25;
      v5 = *MEMORY[0x277CCBCB0];
      do
      {
        v6 = 0;
        do
        {
          if (*v25 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(a1 + 40);
          v8 = *(*(&v24 + 1) + 8 * v6);
          if (v7)
          {
            v9 = [v7 queryQueue];
            dispatch_assert_queue_V2(v9);

            if (!v7[26])
            {
              v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
              v11 = v7[26];
              v7[26] = v10;
            }

            v12 = [v8 sampleType];
            v13 = [v7[26] objectForKeyedSubscript:v12];
            v14 = [v7 configuration];
            v15 = [v14 includeChangeDetails];

            if (v13)
            {
              if (v15)
              {
                [v13 _extendDateIntervalWithSample:v8];
              }
            }

            else
            {
              v16 = objc_alloc(MEMORY[0x277CCD8E0]);
              v17 = v5;
              v18 = v5;
              if (v15)
              {
                [v8 _startTimestamp];
                v17 = v19;
                [v8 _endTimestamp];
                v18 = v20;
              }

              v13 = [v16 _initWithSampleType:v12 startTime:0 endTime:0 hasUnfrozenSeries:v17 queryStrategy:v18];
              [v7[26] setObject:v13 forKeyedSubscript:v12];
            }
          }

          ++v6;
        }

        while (v4 != v6);
        v4 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v4);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)didAddSamplesOfTypes:(id)types anchor:(id)anchor
{
  anchorCopy = anchor;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__HDDatabaseChangesQueryServer_didAddSamplesOfTypes_anchor___block_invoke;
  v7[3] = &unk_278613920;
  v8 = anchorCopy;
  selfCopy = self;
  v6 = anchorCopy;
  [(HDQueryServer *)self onQueue:v7];
}

void __60__HDDatabaseChangesQueryServer_didAddSamplesOfTypes_anchor___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) longLongValue];
  if (v2 > [*(*(a1 + 40) + 216) _rowid])
  {
    v3 = [(HDDatabaseChangesQueryServer *)*(a1 + 40) _authorizedObjectTypes];
    v4 = [MEMORY[0x277CCD840] _anchorWithRowid:{objc_msgSend(*(a1 + 32), "longLongValue")}];
    v5 = *(*(a1 + 40) + 208);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __60__HDDatabaseChangesQueryServer_didAddSamplesOfTypes_anchor___block_invoke_2;
    v10[3] = &unk_278621D50;
    v6 = v3;
    v11 = v6;
    v7 = [v5 hk_filter:v10];
    if ([v7 count])
    {
      [(HDDatabaseChangesQueryServer *)*(a1 + 40) _queue_deliverQueryAnchor:v4 sampleTypeChanges:v7];
    }

    v8 = *(a1 + 40);
    v9 = *(v8 + 208);
    *(v8 + 208) = 0;
  }
}

- (void)samplesOfTypesWereRemoved:(id)removed anchor:(id)anchor
{
  removedCopy = removed;
  anchorCopy = anchor;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__HDDatabaseChangesQueryServer_samplesOfTypesWereRemoved_anchor___block_invoke;
  v10[3] = &unk_278613830;
  v11 = anchorCopy;
  selfCopy = self;
  v13 = removedCopy;
  v8 = removedCopy;
  v9 = anchorCopy;
  [(HDQueryServer *)self onQueue:v10];
}

void __65__HDDatabaseChangesQueryServer_samplesOfTypesWereRemoved_anchor___block_invoke(id *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] longLongValue];
  if (v2 > [*(a1[5] + 27) _rowid])
  {
    v3 = [(HDDatabaseChangesQueryServer *)a1[5] _authorizedObjectTypes];
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = a1[6];
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      v9 = *MEMORY[0x277CCBCB0];
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          if ([v3 containsObject:{v11, v15}])
          {
            v12 = [objc_alloc(MEMORY[0x277CCD8E0]) _initWithSampleType:v11 startTime:0 endTime:0 hasUnfrozenSeries:v9 queryStrategy:v9];
            [v4 setObject:v12 forKeyedSubscript:v11];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    if ([v4 count])
    {
      v13 = [MEMORY[0x277CCD840] _anchorWithRowid:{objc_msgSend(a1[4], "longLongValue")}];
      [(HDDatabaseChangesQueryServer *)a1[5] _queue_deliverQueryAnchor:v13 sampleTypeChanges:v4];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

BOOL __54__HDDatabaseChangesQueryServer__authorizedObjectTypes__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 canRead])
  {
    v3 = [v2 restrictedBundleIdentifier];
    v4 = v3 == 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end