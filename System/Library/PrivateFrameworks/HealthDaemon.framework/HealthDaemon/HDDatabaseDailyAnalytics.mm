@interface HDDatabaseDailyAnalytics
- (HDDatabaseDailyAnalytics)initWithProfile:(id)a3;
- (id)_binnedAnalyticsValue:(int64_t)a3 error:(id)a4;
- (id)_predicateForDeletedObjectsBetweenDate:(id)a3 andOlderDate:(id)a4;
- (void)daemonReady:(id)a3;
- (void)dealloc;
- (void)reportDailyAnalyticsWithCoordinator:(id)a3 completion:(id)a4;
@end

@implementation HDDatabaseDailyAnalytics

- (HDDatabaseDailyAnalytics)initWithProfile:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HDDatabaseDailyAnalytics;
  v5 = [(HDDatabaseDailyAnalytics *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
    v7 = HKCreateSerialDispatchQueue();
    serialAsynchronousQueue = v6->_serialAsynchronousQueue;
    v6->_serialAsynchronousQueue = v7;

    v9 = [v4 daemon];
    [v9 registerDaemonReadyObserver:v6 queue:v6->_serialAsynchronousQueue];
  }

  return v6;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v4 = [WeakRetained daemon];
  v5 = [v4 analyticsSubmissionCoordinator];
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = HDDatabaseDailyAnalytics;
  [(HDDatabaseDailyAnalytics *)&v6 dealloc];
}

- (void)daemonReady:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v4 = [WeakRetained daemon];
  v5 = [v4 analyticsSubmissionCoordinator];
  [v5 addObserver:self queue:self->_serialAsynchronousQueue];
}

- (void)reportDailyAnalyticsWithCoordinator:(id)a3 completion:(id)a4
{
  v138 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v6 = [WeakRetained database];
  v7 = [v6 _newCorruptionEventStore];

  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v8 setObject:&unk_283CB0990 forKeyedSubscript:@"hfdSchema"];
  v9 = objc_loadWeakRetained(&self->_profile);
  v10 = [v9 profileIdentifier];
  v11 = [v7 mostRecentCorruptionEventForProfileIdentifier:v10 component:2];
  v12 = [v11 date];

  v13 = objc_loadWeakRetained(&self->_profile);
  v14 = [v13 profileIdentifier];
  v15 = [v7 mostRecentCorruptionEventForProfileIdentifier:v14 component:1];
  v16 = [v15 date];

  v17 = objc_loadWeakRetained(&self->_profile);
  v18 = [v17 profileIdentifier];
  v19 = [v7 mostRecentCorruptionEventForProfileIdentifier:v18 component:0];
  v20 = [v19 date];

  v139 = v7;
  v21 = [v7 dateOfMostRecentDeviceOutOfSpaceEvent];
  v22 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-86400.0];
  if (v12)
  {
    v23 = [v12 compare:v22] == 1;
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_6:
    v24 = 0;
    if (v20)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v23 = 0;
  if (!v16)
  {
    goto LABEL_6;
  }

LABEL_3:
  v24 = [v16 compare:v22] == 1;
  if (v20)
  {
LABEL_4:
    v25 = v22;
    v26 = [v20 compare:v22] == 1;
    goto LABEL_8;
  }

LABEL_7:
  v25 = v22;
  v26 = 0;
LABEL_8:
  v136 = v16;
  v137 = v12;
  v135 = v21;
  v134 = v25;
  if (v21)
  {
    v21 = [v21 compare:v25] == 1;
  }

  v27 = [MEMORY[0x277CCABB0] numberWithBool:v23];
  [v8 setObject:v27 forKeyedSubscript:@"corruptionSeen.hfd"];

  v28 = [MEMORY[0x277CCABB0] numberWithBool:v24];
  [v8 setObject:v28 forKeyedSubscript:@"corruptionSeen.protected"];

  v29 = [MEMORY[0x277CCABB0] numberWithBool:v26];
  [v8 setObject:v29 forKeyedSubscript:@"corruptionSeen.unprotected"];

  v30 = [MEMORY[0x277CCABB0] numberWithBool:v21];
  [v8 setObject:v30 forKeyedSubscript:@"outOfSpaceSeen"];

  if (v21)
  {
    v31 = &unk_283CB09A8;
  }

  else
  {
    v31 = &unk_283CB09C0;
  }

  [v8 setObject:v31 forKeyedSubscript:@"deviceOutOfSpaceCount"];
  if (v23)
  {
    v32 = &unk_283CB09A8;
  }

  else
  {
    v32 = &unk_283CB09C0;
  }

  [v8 setObject:v32 forKeyedSubscript:@"hfdCorruptionDailyCount"];
  if (v24 || v26)
  {
    v33 = &unk_283CB09A8;
  }

  else
  {
    v33 = &unk_283CB09C0;
  }

  [v8 setObject:v33 forKeyedSubscript:@"sqliteCorruptionDailyCount"];
  v34 = objc_loadWeakRetained(&self->_profile);
  v35 = [v34 database];
  v158[0] = 0;
  v36 = [(HDHealthEntity *)HDSourceEntity countOfObjectsWithPredicate:0 healthDatabase:v35 error:v158];
  v37 = v158[0];

  v38 = [(HDDatabaseDailyAnalytics *)self _binnedAnalyticsValue:v36 error:v37];

  [v8 setObject:v38 forKeyedSubscript:@"numberOfSourceRows"];
  v39 = objc_loadWeakRetained(&self->_profile);
  v40 = [v39 database];
  v157 = 0;
  v41 = [(HDHealthEntity *)HDLogicalSourceEntity countOfObjectsWithPredicate:0 healthDatabase:v40 error:&v157];
  v42 = v157;

  v43 = [(HDDatabaseDailyAnalytics *)self _binnedAnalyticsValue:v41 error:v42];

  [v8 setObject:v43 forKeyedSubscript:@"numberOfLogicalSourceRows"];
  v44 = objc_loadWeakRetained(&self->_profile);
  v45 = [v44 database];
  v156 = 0;
  v46 = [(HDHealthEntity *)HDLogicalSourceOrderEntity countOfObjectsWithPredicate:0 healthDatabase:v45 error:&v156];
  v47 = v156;

  v48 = [(HDDatabaseDailyAnalytics *)self _binnedAnalyticsValue:v46 error:v47];

  [v8 setObject:v48 forKeyedSubscript:@"numberOfSourceOrderRows"];
  v49 = objc_loadWeakRetained(&self->_profile);
  v50 = [v49 database];
  v155 = 0;
  v51 = [(HDHealthEntity *)HDSourceEntity countDistinctForProperty:@"logical_source_id" healthDatabase:v50 error:&v155];
  v52 = v155;
  v53 = [v51 integerValue];

  v54 = [(HDDatabaseDailyAnalytics *)self _binnedAnalyticsValue:v53 error:v52];

  [v8 setObject:v54 forKeyedSubscript:@"numberOfUniqueSources"];
  v55 = objc_loadWeakRetained(&self->_profile);
  v56 = [v55 database];
  v154 = 0;
  v57 = [(HDHealthEntity *)HDCachedQueryMetadataEntity countOfObjectsWithPredicate:0 healthDatabase:v56 error:&v154];
  v58 = v154;

  v59 = [(HDDatabaseDailyAnalytics *)self _binnedAnalyticsValue:v57 error:v58];

  [v8 setObject:v59 forKeyedSubscript:@"numberOfQueriesUsingCachedData"];
  v60 = objc_loadWeakRetained(&self->_profile);
  v61 = [v60 database];
  v153 = 0;
  v62 = [(HDHealthEntity *)HDSampleAggregateCacheEntity countOfObjectsWithPredicate:0 healthDatabase:v61 error:&v153];
  v63 = v153;

  v64 = [(HDDatabaseDailyAnalytics *)self _binnedAnalyticsValue:v62 error:v63];

  v144 = v8;
  [v8 setObject:v64 forKeyedSubscript:@"cacheRowCount"];

  v65 = objc_loadWeakRetained(&self->_profile);
  v66 = [v65 database];
  v152 = 0;
  v67 = [(HDHealthEntity *)HDSampleAggregateCacheEntity sizeOfDatabaseTableInHealthDatabase:v66 error:&v152];
  v68 = v152;

  v69 = [(HDDatabaseDailyAnalytics *)self _binnedAnalyticsValue:v67 error:v68];

  [v8 setObject:v69 forKeyedSubscript:@"cacheSizeInKB"];
  v70 = [MEMORY[0x277D10B18] predicateWithProperty:@"type" equalToValue:&unk_283CB09D8];
  v133 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-2592000.0];
  v71 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-7776000.0];
  v143 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-15552000.0];
  v142 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-31104000.0];
  v140 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-93312000.0];
  v141 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-155520000.0];
  v72 = MEMORY[0x277D10B20];
  v132 = v71;
  v73 = [(HDDatabaseDailyAnalytics *)self _predicateForDeletedObjectsBetweenDate:v133 andOlderDate:v71];
  v74 = [v72 compoundPredicateWithPredicate:v73 otherPredicate:v70];

  v75 = MEMORY[0x277CCABB0];
  v76 = objc_loadWeakRetained(&self->_profile);
  v77 = [v76 database];
  v151 = 0;
  v78 = [HDDataEntity countOfObjectsWithPredicate:v74 healthDatabase:v77 error:&v151];
  v79 = v151;
  v80 = [v75 numberWithInteger:v78];
  [v144 setObject:v80 forKeyedSubscript:@"countDeletedSamplesOneToThreeMonthsOld"];

  v81 = MEMORY[0x277D10B20];
  v82 = [(HDDatabaseDailyAnalytics *)self _predicateForDeletedObjectsBetweenDate:v71 andOlderDate:v143];
  v83 = [v81 compoundPredicateWithPredicate:v82 otherPredicate:v70];

  v84 = MEMORY[0x277CCABB0];
  v85 = objc_loadWeakRetained(&self->_profile);
  v86 = [v85 database];
  v150 = v79;
  v87 = [HDDataEntity countOfObjectsWithPredicate:v83 healthDatabase:v86 error:&v150];
  v131 = v150;

  v88 = [v84 numberWithInteger:v87];
  [v144 setObject:v88 forKeyedSubscript:@"countDeletedSamplesThreeToSixMonthsOld"];

  v89 = MEMORY[0x277D10B20];
  v90 = [(HDDatabaseDailyAnalytics *)self _predicateForDeletedObjectsBetweenDate:v143 andOlderDate:v142];
  v130 = [v89 compoundPredicateWithPredicate:v90 otherPredicate:v70];

  v91 = MEMORY[0x277CCABB0];
  v92 = objc_loadWeakRetained(&self->_profile);
  v93 = [v92 database];
  v149 = v131;
  v94 = [HDDataEntity countOfObjectsWithPredicate:v130 healthDatabase:v93 error:&v149];
  v95 = v149;

  v96 = [v91 numberWithInteger:v94];
  [v144 setObject:v96 forKeyedSubscript:@"countDeletedSamplesSixToTwelveMonthsOld"];

  v97 = MEMORY[0x277D10B20];
  v98 = [(HDDatabaseDailyAnalytics *)self _predicateForDeletedObjectsBetweenDate:v142 andOlderDate:v140];
  v99 = [v97 compoundPredicateWithPredicate:v98 otherPredicate:v70];

  v100 = MEMORY[0x277CCABB0];
  v101 = objc_loadWeakRetained(&self->_profile);
  v102 = [v101 database];
  v148 = v95;
  v103 = [HDDataEntity countOfObjectsWithPredicate:v99 healthDatabase:v102 error:&v148];
  v104 = v148;

  v105 = [v100 numberWithInteger:v103];
  [v144 setObject:v105 forKeyedSubscript:@"countDeletedSamplesTwelveToThirtySixMonthsOld"];

  v106 = MEMORY[0x277D10B20];
  v107 = [(HDDatabaseDailyAnalytics *)self _predicateForDeletedObjectsBetweenDate:v140 andOlderDate:v141];
  v108 = [v106 compoundPredicateWithPredicate:v107 otherPredicate:v70];

  v109 = MEMORY[0x277CCABB0];
  v110 = objc_loadWeakRetained(&self->_profile);
  v111 = [v110 database];
  v147 = v104;
  v112 = [HDDataEntity countOfObjectsWithPredicate:v108 healthDatabase:v111 error:&v147];
  v113 = v147;

  v114 = [v109 numberWithInteger:v112];
  [v144 setObject:v114 forKeyedSubscript:@"countDeletedSamplesThirtySixToSixtyMonthsOld"];

  v115 = MEMORY[0x277D10B20];
  v116 = HDDataEntityPredicateForCreationDate(3);
  v117 = [v115 compoundPredicateWithPredicate:v116 otherPredicate:v70];

  v118 = MEMORY[0x277CCABB0];
  v119 = objc_loadWeakRetained(&self->_profile);
  v120 = [v119 database];
  v146 = v113;
  v121 = [HDDataEntity countOfObjectsWithPredicate:v117 healthDatabase:v120 error:&v146];
  v122 = v146;

  v123 = [v118 numberWithInteger:v121];
  [v144 setObject:v123 forKeyedSubscript:@"countDeletedSamplesGreaterThanSixtyMonthsOld"];

  v124 = MEMORY[0x277CCABB0];
  v125 = objc_loadWeakRetained(&self->_profile);
  v126 = [v125 database];
  v145 = v122;
  v127 = [HDDataEntity countOfObjectsWithPredicate:v70 healthDatabase:v126 error:&v145];
  v128 = v145;

  v129 = [v124 numberWithInteger:v127];
  [v144 setObject:v129 forKeyedSubscript:@"totalCountDeletedSamples"];

  (*(v138 + 2))(v138, v144, 0, 0);
}

- (id)_predicateForDeletedObjectsBetweenDate:(id)a3 andOlderDate:(id)a4
{
  v4 = a4;
  v5 = HDDataEntityPredicateForCreationDate(3);
  v6 = HDDataEntityPredicateForCreationDate(5);

  v7 = [MEMORY[0x277D10B20] compoundPredicateWithPredicate:v5 otherPredicate:v6];

  return v7;
}

- (id)_binnedAnalyticsValue:(int64_t)a3 error:(id)a4
{
  v5 = a4;
  if (v5)
  {
    v6 = &unk_283CB09F0;
    goto LABEL_17;
  }

  if (a3 <= 99)
  {
    v7 = 10;
    if (a3 >= 11)
    {
      v7 = 10 * (a3 / 0xAu);
    }

    if (a3)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_16;
  }

  if (a3 != 100)
  {
    if (a3 < 0x3E9)
    {
      v9 = 100;
    }

    else
    {
      v8 = 1000000;
      if (a3 >= 0xF4240)
      {
        goto LABEL_16;
      }

      v9 = 1000;
    }

    v8 = (v9 * (a3 / v9));
    goto LABEL_16;
  }

  v8 = 100;
LABEL_16:
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
LABEL_17:

  return v6;
}

@end