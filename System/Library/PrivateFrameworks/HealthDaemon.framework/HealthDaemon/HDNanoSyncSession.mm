@interface HDNanoSyncSession
- (BOOL)shouldOverrideCycleTrackingSymptomsForBackwardsCompatibilty;
- (HDNanoSyncSession)initWithSyncStore:(id)store options:(unint64_t)options reason:(id)reason delegate:(id)delegate completion:(id)completion;
- (id)_intervalForSecondsSinceDaysAgo:(void *)ago;
- (int64_t)maxEncodedBytesPerCodableChangeForSyncEntityClass:(Class)class;
@end

@implementation HDNanoSyncSession

- (HDNanoSyncSession)initWithSyncStore:(id)store options:(unint64_t)options reason:(id)reason delegate:(id)delegate completion:(id)completion
{
  v129[53] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v125.receiver = self;
  v125.super_class = HDNanoSyncSession;
  v13 = [(HDSyncSession *)&v125 initWithSyncStore:store reason:reason delegate:delegate];
  v14 = v13;
  if (v13)
  {
    v13->_options = options;
    v15 = [completionCopy copy];
    completion = v14->_completion;
    v14->_completion = v15;

    nanoSyncStore = [(HDNanoSyncSession *)v14 nanoSyncStore];
    isMaster = [nanoSyncStore isMaster];

    v19 = [HDSyncPredicate alloc];
    v20 = MEMORY[0x277CBEB98];
    v21 = MEMORY[0x277CCABB0];
    syncStore = [(HDSyncSession *)v14 syncStore];
    v23 = [v21 numberWithLongLong:{objc_msgSend(syncStore, "syncProvenance")}];
    v24 = [v20 setWithObject:v23];
    if (isMaster)
    {
      v124 = [(HDNanoSyncSession *)v14 _intervalForSecondsSinceDaysAgo:?];
      v123 = [(HDNanoSyncSession *)v14 _intervalForSecondsSinceDaysAgo:?];
    }

    else
    {
      v123 = 0;
      v124 = 0;
    }

    nanoSyncStore2 = [(HDNanoSyncSession *)v14 nanoSyncStore];
    isMaster2 = [nanoSyncStore2 isMaster];

    if (isMaster2)
    {
      v112 = v19;
      v113 = v24;
      v114 = v23;
      v115 = isMaster;
      v116 = syncStore;
      v117 = completionCopy;
      v27 = [(HDNanoSyncSession *)v14 _intervalForSecondsSinceDaysAgo:?];
      v28 = [(HDNanoSyncSession *)v14 _intervalForSecondsSinceDaysAgo:?];
      v29 = [(HDNanoSyncSession *)v14 _intervalForSecondsSinceDaysAgo:?];
      v30 = [(HDNanoSyncSession *)v14 _intervalForSecondsSinceDaysAgo:?];
      v122 = [(HDNanoSyncSession *)v14 _intervalForSecondsSinceDaysAgo:?];
      v121 = [(HDNanoSyncSession *)v14 _intervalForSecondsSinceDaysAgo:?];
      v120 = [(HDNanoSyncSession *)v14 _intervalForSecondsSinceDaysAgo:?];
      v119 = [(HDNanoSyncSession *)v14 _intervalForSecondsSinceDaysAgo:?];
      v118 = [(HDNanoSyncSession *)v14 _intervalForSecondsSinceDaysAgo:?];
      v31 = MEMORY[0x277CCABB0];
      distantPast = [MEMORY[0x277CBEAA8] distantPast];
      [distantPast timeIntervalSinceReferenceDate];
      v34 = [v31 numberWithDouble:-v33];

      v107 = [MEMORY[0x277CCD8D8] dataTypeWithCode:76];
      v128[0] = v107;
      v111 = v27;
      v129[0] = v27;
      v106 = [MEMORY[0x277CCD8D8] dataTypeWithCode:67];
      v128[1] = v106;
      v129[1] = v34;
      v105 = [MEMORY[0x277CCD720] dataTypeWithCode:180];
      v128[2] = v105;
      v129[2] = v34;
      v104 = [MEMORY[0x277CCD720] dataTypeWithCode:190];
      v128[3] = v104;
      v129[3] = v34;
      v103 = [MEMORY[0x277CCD720] dataTypeWithCode:299];
      v128[4] = v103;
      v129[4] = v34;
      v102 = [MEMORY[0x277CCD720] dataTypeWithCode:300];
      v128[5] = v102;
      v129[5] = v34;
      v101 = [MEMORY[0x277CCD720] dataTypeWithCode:105];
      v128[6] = v101;
      v129[6] = v34;
      v100 = [MEMORY[0x277CCD720] dataTypeWithCode:104];
      v128[7] = v100;
      v129[7] = v34;
      v99 = [MEMORY[0x277CCD8D8] dataTypeWithCode:249];
      v128[8] = v99;
      v110 = v28;
      v129[8] = v28;
      v98 = [MEMORY[0x277CCD8D8] dataTypeWithCode:118];
      v128[9] = v98;
      v109 = v29;
      v129[9] = v29;
      v97 = [MEMORY[0x277CCD8D8] dataTypeWithCode:95];
      v128[10] = v97;
      v129[10] = v30;
      v96 = [MEMORY[0x277CCD8D8] dataTypeWithCode:96];
      v128[11] = v96;
      v129[11] = v30;
      v95 = [MEMORY[0x277CCD8D8] dataTypeWithCode:91];
      v128[12] = v95;
      v129[12] = v30;
      v94 = [MEMORY[0x277CCD8D8] dataTypeWithCode:97];
      v128[13] = v94;
      v129[13] = v30;
      v93 = [MEMORY[0x277CCD8D8] dataTypeWithCode:90];
      v128[14] = v93;
      v129[14] = v30;
      v92 = [MEMORY[0x277CCD8D8] dataTypeWithCode:92];
      v128[15] = v92;
      v129[15] = v30;
      v91 = [MEMORY[0x277CCD8D8] dataTypeWithCode:243];
      v128[16] = v91;
      v129[16] = v30;
      v90 = [MEMORY[0x277CCD8D8] dataTypeWithCode:244];
      v128[17] = v90;
      v129[17] = v30;
      v89 = [MEMORY[0x277CCD8D8] dataTypeWithCode:157];
      v128[18] = v89;
      v129[18] = v30;
      v88 = [MEMORY[0x277CCD8D8] dataTypeWithCode:158];
      v128[19] = v88;
      v129[19] = v30;
      v87 = [MEMORY[0x277CCD8D8] dataTypeWithCode:159];
      v128[20] = v87;
      v129[20] = v30;
      v86 = [MEMORY[0x277CCD8D8] dataTypeWithCode:160];
      v128[21] = v86;
      v129[21] = v30;
      v85 = [MEMORY[0x277CCD8D8] dataTypeWithCode:161];
      v128[22] = v85;
      v129[22] = v30;
      v84 = [MEMORY[0x277CCD8D8] dataTypeWithCode:162];
      v128[23] = v84;
      v129[23] = v30;
      v83 = [MEMORY[0x277CCD8D8] dataTypeWithCode:163];
      v128[24] = v83;
      v129[24] = v30;
      v82 = [MEMORY[0x277CCD8D8] dataTypeWithCode:164];
      v128[25] = v82;
      v129[25] = v30;
      v81 = [MEMORY[0x277CCD8D8] dataTypeWithCode:165];
      v128[26] = v81;
      v129[26] = v30;
      v80 = [MEMORY[0x277CCD8D8] dataTypeWithCode:166];
      v128[27] = v80;
      v129[27] = v30;
      v79 = [MEMORY[0x277CCD8D8] dataTypeWithCode:167];
      v128[28] = v79;
      v129[28] = v30;
      v78 = [MEMORY[0x277CCD8D8] dataTypeWithCode:168];
      v128[29] = v78;
      v129[29] = v30;
      v77 = [MEMORY[0x277CCD8D8] dataTypeWithCode:169];
      v128[30] = v77;
      v129[30] = v30;
      v76 = [MEMORY[0x277CCD8D8] dataTypeWithCode:170];
      v128[31] = v76;
      v129[31] = v30;
      v74 = [MEMORY[0x277CCD8D8] dataTypeWithCode:171];
      v128[32] = v74;
      v129[32] = v30;
      v73 = [MEMORY[0x277CCD8D8] dataTypeWithCode:229];
      v128[33] = v73;
      v129[33] = v30;
      v72 = [MEMORY[0x277CCD8D8] dataTypeWithCode:230];
      v128[34] = v72;
      v129[34] = v30;
      v71 = [MEMORY[0x277CCD8D8] dataTypeWithCode:231];
      v128[35] = v71;
      v129[35] = v30;
      v70 = [MEMORY[0x277CCD8D8] dataTypeWithCode:232];
      v128[36] = v70;
      v129[36] = v30;
      v69 = [MEMORY[0x277CCD8D8] dataTypeWithCode:233];
      v128[37] = v69;
      v129[37] = v30;
      v68 = [MEMORY[0x277CCD8D8] dataTypeWithCode:234];
      v128[38] = v68;
      v129[38] = v30;
      v67 = [MEMORY[0x277CCD8D8] dataTypeWithCode:235];
      v128[39] = v67;
      v129[39] = v30;
      v66 = [MEMORY[0x277CCD8D8] dataTypeWithCode:192];
      v128[40] = v66;
      v129[40] = v34;
      v65 = [MEMORY[0x277CCD8D8] dataTypeWithCode:191];
      v128[41] = v65;
      v129[41] = v34;
      v64 = [MEMORY[0x277CCD8D8] dataTypeWithCode:193];
      v128[42] = v64;
      v129[42] = v34;
      v63 = [MEMORY[0x277CCD720] dataTypeWithCode:63];
      v128[43] = v63;
      v129[43] = v122;
      v62 = [MEMORY[0x277CCD720] dataTypeWithCode:197];
      v128[44] = v62;
      v129[44] = v34;
      v35 = [MEMORY[0x277CCD720] dataTypeWithCode:198];
      v128[45] = v35;
      v129[45] = v34;
      v36 = [MEMORY[0x277CCD720] dataTypeWithCode:256];
      v128[46] = v36;
      v129[46] = v30;
      v37 = [MEMORY[0x277CCD8D8] dataTypeWithCode:284];
      v128[47] = v37;
      v129[47] = v121;
      v38 = [MEMORY[0x277CCD8D8] dataTypeWithCode:283];
      v128[48] = v38;
      v108 = v34;
      v129[48] = v34;
      v39 = [MEMORY[0x277CCD8D8] dataTypeWithCode:298];
      v128[49] = v39;
      v129[49] = v120;
      v40 = [MEMORY[0x277CCD8D8] dataTypeWithCode:304];
      v128[50] = v40;
      v129[50] = v120;
      v41 = [MEMORY[0x277CCD8D8] dataTypeWithCode:79];
      v128[51] = v41;
      v129[51] = v119;
      v42 = [MEMORY[0x277CCD8D8] dataTypeWithCode:144];
      v128[52] = v42;
      v129[52] = v118;
      v75 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v129 forKeys:v128 count:53];

      syncStore2 = [(HDSyncSession *)v14 syncStore];
      profile = [syncStore2 profile];
      daemon = [profile daemon];
      behavior = [daemon behavior];
      features = [behavior features];
      LODWORD(v39) = [features extendedLocalWatchData];

      if (v39)
      {
        v48 = [MEMORY[0x277CCD830] _quantityTypeWithCode:139];
        v126[0] = v48;
        v127[0] = v30;
        v49 = [MEMORY[0x277CCD830] _quantityTypeWithCode:14];
        v126[1] = v49;
        v127[1] = v30;
        v50 = [MEMORY[0x277CCD830] _quantityTypeWithCode:61];
        v126[2] = v50;
        v127[2] = v30;
        v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v127 forKeys:v126 count:3];
        v52 = [v75 hk_dictionaryByAddingEntriesFromDictionary:v51];

        v53 = v52;
        syncStore = v116;
        isMaster = v115;
        v24 = v113;
        v23 = v114;
        v55 = v123;
        v54 = v124;
      }

      else
      {
        syncStore = v116;
        isMaster = v115;
        v24 = v113;
        v23 = v114;
        v55 = v123;
        v54 = v124;
        v53 = v75;
      }

      completionCopy = v117;
      v19 = v112;
    }

    else
    {
      v53 = 0;
      v55 = v123;
      v54 = v124;
    }

    v56 = [(HDSyncPredicate *)v19 initWithExcludedSyncProvenances:v24 dateInterval:0 shouldIncludeDatelessObjects:0 includedObjectTypes:0 defaultMaximumObjectAge:v54 defaultMaximumTombstoneAge:v55 maximumObjectAgeByType:v53];
    v57 = v53;
    v58 = v56;

    if (isMaster)
    {
    }

    syncPredicate = v14->_syncPredicate;
    v14->_syncPredicate = v58;
  }

  v60 = *MEMORY[0x277D85DE8];
  return v14;
}

- (int64_t)maxEncodedBytesPerCodableChangeForSyncEntityClass:(Class)class
{
  if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    return 0x20000;
  }

  return [(HDNanoSyncSession *)self maxEncodedBytesPerChangeSetForSyncEntityClass:class];
}

- (id)_intervalForSecondsSinceDaysAgo:(void *)ago
{
  v4 = MEMORY[0x277CCABB0];
  calendar = [ago calendar];
  startDate = [ago startDate];
  v7 = [calendar hk_dateBySubtractingDays:a2 fromDate:startDate];
  startDate2 = [ago startDate];
  [v7 timeIntervalSinceDate:startDate2];
  v10 = [v4 numberWithDouble:-v9];

  return v10;
}

- (BOOL)shouldOverrideCycleTrackingSymptomsForBackwardsCompatibilty
{
  syncStore = [(HDSyncSession *)self syncStore];
  v3 = [syncStore protocolVersion] < 12;

  return v3;
}

@end