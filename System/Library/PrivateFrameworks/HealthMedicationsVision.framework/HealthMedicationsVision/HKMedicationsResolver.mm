@interface HKMedicationsResolver
- (BOOL)hkt_prepareNgramAssetWithError:(id *)error;
- (BOOL)hkt_setUpDatabase;
- (BOOL)lineHasUsefulInfo;
- (BOOL)resetInMemoryDBWithError:(id *)error;
- (BOOL)resetResolverWithError:(id *)error;
- (HKMedicationsMapResult)createNgramMapsWithError:(uint64_t)error;
- (HKMedicationsMercuryIdGroup)updateIdGroup:(unsigned int)group ingredientMatched:(int)matched tradeNameMatched:(void *)nameMatched matchingTradeNames:;
- (HKMedicationsResolver)initWithAssetUrl:(id)url;
- (id)abbreviate:(id *)abbreviate;
- (id)abbreviationsWithError:(uint64_t)error;
- (id)createNgramCountsWithError:(uint64_t)error;
- (id)filterAndAddGenerics:(id)generics transcripts:(id)transcripts criterion:(float)criterion limit:(int64_t)limit error:(id *)error;
- (id)hkt_ngramsWithError:(id *)error;
- (id)ingredientsWithError:(uint64_t)error;
- (id)ngramsFrom:(uint64_t)from minLength:(uint64_t)length maxLength:;
- (id)resolveText:(id)text error:(id *)error;
- (id)tradenamesWithError:(uint64_t)error;
- (int64_t)consecutiveLCSUsingTranscript:(id)transcript prediction:(id)prediction;
- (int64_t)countOfContinousDigitsInLine:(id)line;
- (int64_t)hkt_ngramIdCountWithError:(id *)error;
- (uint64_t)checkLCSCriterion:(void *)criterion transcripts:(void *)transcripts strings:(void *)strings normalizationType:(uint64_t)type tolerance:(float)tolerance;
- (uint64_t)createNgramAssetsWithError:(uint64_t)error;
- (uint64_t)dropNgramAssetsWithError:(uint64_t)error;
- (uint64_t)getGenericSpecificIdForClinicalId:(uint64_t)id genericId:;
- (uint64_t)looksLikeGenericInText:(uint64_t)text;
- (uint64_t)setupDatabaseWithError:(uint64_t)error;
- (uint64_t)setupNgramTables:(uint64_t)tables;
- (void)checkNgramFrame;
- (void)dealloc;
- (void)fillNgramsForText:(uint64_t)text n:;
- (void)processNgramLine:(id)line n:(int64_t)n;
@end

@implementation HKMedicationsResolver

- (HKMedicationsResolver)initWithAssetUrl:(id)url
{
  urlCopy = url;
  v12.receiver = self;
  v12.super_class = HKMedicationsResolver;
  v6 = [(HKMedicationsResolver *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assetUrl, url);
    initMemoryDatabase = [objc_alloc(MEMORY[0x277D10B30]) initMemoryDatabase];
    db = v7->_db;
    v7->_db = initMemoryDatabase;

    if ([(HDSQLiteDatabase *)v7->_db openWithError:0])
    {
      _HKInitializeLogging();
      v10 = *MEMORY[0x277CCC2B0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
      {
        [HKMedicationsResolver initWithAssetUrl:v10];
      }
    }
  }

  return v7;
}

- (void)dealloc
{
  [(HDSQLiteDatabase *)self->_db close];
  v3.receiver = self;
  v3.super_class = HKMedicationsResolver;
  [(HKMedicationsResolver *)&v3 dealloc];
}

void __48__HKMedicationsResolver_setupDatabaseWithError___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(*(a1 + 32) + 16) path];
  v3 = v4;
  sqlite3_bind_text(a2, 1, [v4 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
}

- (BOOL)resetResolverWithError:(id *)error
{
  self->_numberOfNewNgrams = 0;
  self->_numberOfUsedNgrams = 0;
  return [(HKMedicationsResolver *)self resetInMemoryDBWithError:error];
}

- (BOOL)resetInMemoryDBWithError:(id *)error
{
  v3 = [(HDSQLiteDatabase *)self->_db executeSQLStatements:&unk_2863C5880 error:error];
  if ((v3 & 1) == 0)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
    {
      [HKMedicationsResolver resetInMemoryDBWithError:];
    }
  }

  return v3;
}

uint64_t __50__HKMedicationsResolver_createNgramMapsWithError___block_invoke_2(uint64_t a1)
{
  v2 = HDSQLiteColumnAsInt64();
  [*(a1 + 32) setInteger:HDSQLiteColumnAsInt64() forKey:v2];
  return 1;
}

uint64_t __50__HKMedicationsResolver_createNgramMapsWithError___block_invoke_3(uint64_t a1)
{
  v2 = HDSQLiteColumnAsInt64();
  v3 = HDSQLiteColumnAsInt64();
  [*(a1 + 32) addInteger:HDSQLiteColumnAsInt64() andInteger:v3 forKey:v2];
  return 1;
}

uint64_t __50__HKMedicationsResolver_createNgramMapsWithError___block_invoke_4(uint64_t a1)
{
  v2 = HDSQLiteColumnAsInt64();
  [*(a1 + 32) setInteger:HDSQLiteColumnAsInt64() forKey:v2];
  return 1;
}

uint64_t __50__HKMedicationsResolver_createNgramMapsWithError___block_invoke_5(uint64_t a1)
{
  v2 = HDSQLiteColumnAsInt64();
  [*(a1 + 32) setInteger:HDSQLiteColumnAsInt64() forKey:v2];
  return 1;
}

uint64_t __50__HKMedicationsResolver_createNgramMapsWithError___block_invoke_6(uint64_t a1)
{
  v2 = HDSQLiteColumnAsInt64();
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:v2];
  [v3 addObject:v4];

  return 1;
}

- (id)createNgramCountsWithError:(uint64_t)error
{
  if (error)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__1;
    v14 = __Block_byref_object_dispose__1;
    v15 = objc_alloc_init(HKMedicationsNgramCounts);
    v4 = *(error + 8);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __52__HKMedicationsResolver_createNgramCountsWithError___block_invoke;
    v9[3] = &unk_2796D28E0;
    v9[4] = &v10;
    if (([v4 executeSQL:@"SELECT COUNT(*) FROM ngram_list;" error:a2 bindingHandler:0 enumerationHandler:v9] & 1) != 0 && (v5 = *(error + 8), v8[0] = MEMORY[0x277D85DD0], v8[1] = 3221225472, v8[2] = __52__HKMedicationsResolver_createNgramCountsWithError___block_invoke_2, v8[3] = &unk_2796D28E0, v8[4] = &v10, objc_msgSend(v5, "executeSQL:error:bindingHandler:enumerationHandler:", @"SELECT COUNT(*) FROM ngram_id_list;", a2, 0, v8)))
    {
      v6 = v11[5];
    }

    else
    {
      v6 = 0;
    }

    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)lineHasUsefulInfo
{
  if (!self)
  {
    return 0;
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v1 = *(self + 8);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__HKMedicationsResolver_lineHasUsefulInfo__block_invoke;
  v5[3] = &unk_2796D2908;
  v5[4] = &v19;
  v5[5] = &v15;
  v5[6] = &v11;
  v5[7] = v10;
  v5[8] = &v6;
  [v1 executeSQL:@"SELECT COUNT(*) error:COUNT(ngram_id) bindingHandler:SUM(ngram_weight) enumerationHandler:{SUM(is_unit), SUM(is_number), MAX(ngram_prob) FROM ngram_list_line LEFT JOIN pbs_assets.ngram_map ON ngram_list_line.ngram = pbs_assets.ngram_map.ngram;", 0, 0, v5}];
  v2 = v7[3] >= 0.6;
  if (!v12[3])
  {
    v3 = v20[3];
    if (!v3 || (v16[3] / v3) < 0.05)
    {
      v2 = 0;
    }
  }

  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(v10, 8);
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
  return v2;
}

uint64_t __42__HKMedicationsResolver_lineHasUsefulInfo__block_invoke(void *a1, uint64_t a2)
{
  *(*(a1[4] + 8) + 24) = HDSQLiteColumnAsInt64();
  *(*(a1[5] + 8) + 24) = HDSQLiteColumnAsInt64();
  *(*(a1[6] + 8) + 24) = HDSQLiteColumnAsInt64();
  *(*(a1[7] + 8) + 24) = HDSQLiteColumnAsInt64();
  *(*(a1[8] + 8) + 24) = MEMORY[0x253084DC0](a2, 5);
  return 1;
}

- (void)processNgramLine:(id)line n:(int64_t)n
{
  v40 = *MEMORY[0x277D85DE8];
  lineCopy = line;
  v7 = [MEMORY[0x277CBEB98] setWithObject:@"compare to"];
  v8 = MEMORY[0x277CBEB98];
  lowercaseString = [lineCopy lowercaseString];
  v10 = [v8 setWithObject:lowercaseString];
  v11 = [HKMedicationsResolver checkLCSCriterion:v10 transcripts:v7 strings:2 normalizationType:0.95 tolerance:?];

  if ((v11 & 1) == 0 && [(HKMedicationsResolver *)self countOfContinousDigitsInLine:lineCopy]<= 5)
  {
    v13 = [lineCopy normalizeForType:2];
    v14 = [(HKMedicationsResolver *)self ngramsFrom:v13 minLength:3 maxLength:n + 1];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v15 = v14;
    v16 = [v15 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v36;
      while (2)
      {
        v19 = v15;
        v20 = 0;
        do
        {
          if (*v36 != v18)
          {
            objc_enumerationMutation(v19);
          }

          db = self->_db;
          v33[4] = *(*(&v35 + 1) + 8 * v20);
          v34 = 0;
          v33[0] = MEMORY[0x277D85DD0];
          v33[1] = 3221225472;
          v33[2] = __44__HKMedicationsResolver_processNgramLine_n___block_invoke;
          v33[3] = &unk_2796D2890;
          v22 = [(HDSQLiteDatabase *)db executeSQL:@"INSERT INTO ngram_list_line (ngram) VALUES (?);" error:&v34 bindingHandler:v33 enumerationHandler:0];
          v23 = v34;
          v24 = v23;
          if ((v22 & 1) == 0)
          {
            _HKInitializeLogging();
            if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
            {
              [HKMedicationsResolver processNgramLine:n:];
            }

            v15 = v19;
            v28 = v19;
            goto LABEL_21;
          }

          ++v20;
        }

        while (v17 != v20);
        v15 = v19;
        v17 = [v19 countByEnumeratingWithState:&v35 objects:v39 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    if ([(HKMedicationsResolver *)self lineHasUsefulInfo])
    {
      v25 = self->_db;
      v32 = 0;
      v26 = [(HDSQLiteDatabase *)v25 executeSQLStatements:&unk_2863C58F8 error:&v32];
      v27 = v32;
      v28 = v27;
      if ((v26 & 1) == 0)
      {
        _HKInitializeLogging();
        if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
        {
          [HKMedicationsResolver processNgramLine:n:];
        }

        goto LABEL_21;
      }
    }

    v29 = self->_db;
    v31 = 0;
    v30 = [(HDSQLiteDatabase *)v29 executeSQLStatements:&unk_2863C5910 error:&v31];
    v28 = v31;
    if ((v30 & 1) == 0)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
      {
        [HKMedicationsResolver processNgramLine:n:];
      }
    }

LABEL_21:
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __44__HKMedicationsResolver_processNgramLine_n___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) UTF8String];

  return sqlite3_bind_text(a2, 1, v3, -1, 0xFFFFFFFFFFFFFFFFLL);
}

- (uint64_t)getGenericSpecificIdForClinicalId:(uint64_t)id genericId:
{
  v3 = 0;
  v25 = *MEMORY[0x277D85DE8];
  if (self && id)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v5 = *(self + 8);
    v13[4] = a2;
    v14 = 0;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __69__HKMedicationsResolver_getGenericSpecificIdForClinicalId_genericId___block_invoke;
    v13[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __69__HKMedicationsResolver_getGenericSpecificIdForClinicalId_genericId___block_invoke_2;
    v12[3] = &unk_2796D2950;
    v12[4] = &v15;
    v12[5] = id;
    v6 = [v5 executeSQL:@"SELECT specific_id FROM generic_map where clinical_id = ? LIMIT 1;" error:&v14 bindingHandler:v13 enumerationHandler:v12];
    v7 = v14;
    if (v6)
    {
      v3 = *(v16 + 24);
    }

    else
    {
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC2B0];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v11 = objc_opt_class();
        *buf = 138412802;
        v20 = v11;
        v21 = 2048;
        v22 = a2;
        v23 = 2112;
        v24 = v7;
        _os_log_error_impl(&dword_2518A4000, v8, OS_LOG_TYPE_ERROR, "[%@] failed to find specific id for clinical id (%ld): %@", buf, 0x20u);
      }

      v3 = 0;
    }

    _Block_object_dispose(&v15, 8);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v3 & 1;
}

uint64_t __69__HKMedicationsResolver_getGenericSpecificIdForClinicalId_genericId___block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = 1;
  **(a1 + 40) = HDSQLiteColumnAsInt64();
  return 0;
}

- (id)resolveText:(id)text error:(id *)error
{
  v52 = *MEMORY[0x277D85DE8];
  textCopy = text;
  if (!self->_dbReady)
  {
    if (([(HKMedicationsResolver *)self setupDatabaseWithError:error]& 1) == 0)
    {
      v9 = 0;
      self->_dbReady = 0;
      goto LABEL_10;
    }

    v10 = [(HKMedicationsResolver *)self setupNgramTables:error];
    self->_dbReady = v10;
    if (!v10)
    {
      goto LABEL_9;
    }
  }

  if ([(HKMedicationsResolver *)self dropNgramAssetsWithError:error])
  {
    v7 = [(HKMedicationsResolver *)self createNgramCountsWithError:error];
    v8 = v7;
    if (v7 && (v13 = [v7 seen], v14 = objc_msgSend(v8, "used"), -[HKMedicationsResolver fillNgramsForText:n:](self, textCopy, 5), -[HKMedicationsResolver createNgramAssetsWithError:](self)) && (-[HKMedicationsResolver createNgramCountsWithError:](self, error), v32 = objc_claimAutoreleasedReturnValue(), v8, (v8 = v32) != 0))
    {
      seen = [v32 seen];
      used = [v32 used];
      if (used == v14)
      {
        v9 = objc_alloc_init(HKMedicationsResolverResult);
      }

      else
      {
        self->_numberOfNewNgrams = seen - v13;
        self->_numberOfUsedNgrams = used - v14;
        v17 = [(HKMedicationsResolver *)self createNgramMapsWithError:error];
        if (v17)
        {
          v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          obj = [v17 distinctHgIds];
          v36 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
          if (v36)
          {
            v35 = *v48;
            do
            {
              for (i = 0; i != v36; ++i)
              {
                if (*v48 != v35)
                {
                  objc_enumerationMutation(obj);
                }

                v19 = *(*(&v47 + 1) + 8 * i);
                commonDict = [v17 commonDict];
                v21 = [commonDict integerForKey:{objc_msgSend(v19, "integerValue")}];

                ngramCount = [v17 ngramCount];
                commonSetSizeDict = [v17 commonSetSizeDict];
                v24 = [commonSetSizeDict integerForKey:{objc_msgSend(v19, "integerValue")}];

                v25 = v24 + ngramCount;
                v43 = 0;
                v44 = &v43;
                v45 = 0x2020000000;
                v46 = v21 / (v24 + ngramCount - v21);
                v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
                uniqueDict = [v17 uniqueDict];
                integerValue = [v19 integerValue];
                v37[0] = MEMORY[0x277D85DD0];
                v37[1] = 3221225472;
                v37[2] = __43__HKMedicationsResolver_resolveText_error___block_invoke;
                v37[3] = &unk_2796D2978;
                v41 = v21;
                v42 = v25;
                v38 = v17;
                v29 = v26;
                v39 = v29;
                v40 = &v43;
                [uniqueDict enumerateIntegersForKey:integerValue block:v37];

                [v29 sortUsingComparator:&__block_literal_global];
                if (*(v44 + 6) > 0.03)
                {
                  v30 = objc_alloc_init(HKMedicationsMercuryIdGroup);
                  -[HKMedicationsMercuryIdGroup setPrimaryHgId:](v30, "setPrimaryHgId:", [v19 integerValue]);
                  LODWORD(v31) = *(v44 + 6);
                  [(HKMedicationsMercuryIdGroup *)v30 setMaxJaccardSimilarity:v31];
                  [(HKMedicationsMercuryIdGroup *)v30 setSubHgIds:v29];
                  [(HKMedicationsMercuryIdGroup *)v30 setIngredientMatched:0];
                  [v33 addObject:v30];
                }

                _Block_object_dispose(&v43, 8);
              }

              v36 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
            }

            while (v36);
          }

          [v33 sortUsingComparator:&__block_literal_global_452];
          v9 = objc_alloc_init(HKMedicationsResolverResult);
          [(HKMedicationsResolverResult *)v9 setLooksGeneric:[(HKMedicationsResolver *)self looksLikeGenericInText:textCopy]];
          [(HKMedicationsResolverResult *)v9 setResolvedIds:v33];
          [(HKMedicationsResolverResult *)v9 setNumberOfNewNgrams:self->_numberOfNewNgrams];
          [(HKMedicationsResolverResult *)v9 setNumberOfUsedNgrams:self->_numberOfUsedNgrams];
        }

        else
        {
          v9 = 0;
        }

        v8 = v32;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

LABEL_10:

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

void __43__HKMedicationsResolver_resolveText_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 64);
  v6 = *(a1 + 56) + a2;
  v7 = [*(a1 + 32) uniqueSetSizeDict];
  v8 = [v7 integerForKey:a3];

  v12 = objc_alloc_init(HKMedicationsMercuryId);
  [(HKMedicationsMercuryId *)v12 setHgId:a3];
  *&v9 = v6 / (v5 - v6 + v8);
  [(HKMedicationsMercuryId *)v12 setJaccardSimilarity:v9];
  [(HKMedicationsMercuryId *)v12 setTradeNameMatched:0];
  [*(a1 + 40) addObject:v12];
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 24);
  if (v11 < (v6 / (v5 - v6 + v8)))
  {
    v11 = v6 / (v5 - v6 + v8);
  }

  *(v10 + 24) = v11;
}

uint64_t __43__HKMedicationsResolver_resolveText_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 jaccardSimilarity];
  v7 = v6;
  [v5 jaccardSimilarity];
  if (v7 >= v8)
  {
    [v4 jaccardSimilarity];
    v11 = v10;
    [v5 jaccardSimilarity];
    if (v11 <= v12)
    {
      v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "hgId")}];
      v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "hgId")}];
      v9 = [v13 compare:v14];
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

uint64_t __43__HKMedicationsResolver_resolveText_error___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 maxJaccardSimilarity];
  v7 = v6;
  [v5 maxJaccardSimilarity];
  if (v7 >= v8)
  {
    [v4 maxJaccardSimilarity];
    v11 = v10;
    [v5 maxJaccardSimilarity];
    if (v11 <= v12)
    {
      v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "primaryHgId")}];
      v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "primaryHgId")}];
      v9 = [v13 compare:v14];
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)filterAndAddGenerics:(id)generics transcripts:(id)transcripts criterion:(float)criterion limit:(int64_t)limit error:(id *)error
{
  v104 = *MEMORY[0x277D85DE8];
  genericsCopy = generics;
  transcriptsCopy = transcripts;
  v13 = objc_alloc_init(HKMedicationsResolverResult);
  resolvedIds = [genericsCopy resolvedIds];
  v15 = [resolvedIds count];

  if (v15 < limit)
  {
    limit = v15;
  }

  if (criterion == 0.0)
  {
    resolvedIds2 = [genericsCopy resolvedIds];
    v17 = [resolvedIds2 subarrayWithRange:{0, limit}];
    [(HKMedicationsResolverResult *)v13 setResolvedIds:v17];

    ngramList = [genericsCopy ngramList];
    [(HKMedicationsResolverResult *)v13 setNgramList:ngramList];

    usedNgrams = [genericsCopy usedNgrams];
    [(HKMedicationsResolverResult *)v13 setUsedNgrams:usedNgrams];

    v20 = v13;
    goto LABEL_52;
  }

  v75 = genericsCopy;
  if (!self->_dbReady)
  {
    if (([(HKMedicationsResolver *)self setupDatabaseWithError:error]& 1) == 0)
    {
      v20 = 0;
      self->_dbReady = 0;
      goto LABEL_52;
    }

    v71 = [(HKMedicationsResolver *)self setupNgramTables:error];
    self->_dbReady = v71;
    if (!v71)
    {
      goto LABEL_62;
    }
  }

  if (!self->_ingredients)
  {
    v65 = [HKMedicationsResolver ingredientsWithError:?];
    ingredients = self->_ingredients;
    self->_ingredients = v65;

    if (*error)
    {
      goto LABEL_62;
    }
  }

  if (!self->_tradenames)
  {
    v67 = [HKMedicationsResolver tradenamesWithError:?];
    tradenames = self->_tradenames;
    self->_tradenames = v67;

    if (*error)
    {
      goto LABEL_62;
    }
  }

  if (self->_abbreviations || ([HKMedicationsResolver abbreviationsWithError:?], v69 = objc_claimAutoreleasedReturnValue(), abbreviations = self->_abbreviations, self->_abbreviations = v69, abbreviations, !*error))
  {
    limitCopy = limit;
    v74 = v13;
    v76 = objc_alloc_init(MEMORY[0x277CBEB18]);
    resolvedIds3 = [genericsCopy resolvedIds];
    resolvedIds4 = [genericsCopy resolvedIds];
    v23 = [resolvedIds4 count];

    if (v23 >= 0x32)
    {
      v24 = 50;
    }

    else
    {
      v24 = v23;
    }

    v25 = [resolvedIds3 subarrayWithRange:{0, v24, limitCopy}];

    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    obj = v25;
    v26 = [obj countByEnumeratingWithState:&v97 objects:v103 count:16];
    if (v26)
    {
      v27 = v26;
      v82 = *v98;
      v28 = 0x277CBE000uLL;
      do
      {
        v29 = 0;
        v77 = v27;
        do
        {
          if (*v98 != v82)
          {
            objc_enumerationMutation(obj);
          }

          v84 = v29;
          v30 = *(*(&v97 + 1) + 8 * v29);
          v31 = objc_alloc_init(*(v28 + 2904));
          v83 = v30;
          v32 = -[HKMedicationsNumberToStringMap stringForKey:](self->_ingredients, "stringForKey:", [v30 primaryHgId]);
          if (!v32)
          {
            goto LABEL_30;
          }

          v33 = v32;
          v34 = [v32 componentsSeparatedByString:{@", "}];
          v35 = v31;
          [v31 addObjectsFromArray:v34];
          v95 = 0u;
          v96 = 0u;
          v93 = 0u;
          v94 = 0u;
          v36 = v34;
          v37 = [v36 countByEnumeratingWithState:&v93 objects:v102 count:16];
          if (v37)
          {
            v38 = v37;
            v39 = *v94;
            do
            {
              for (i = 0; i != v38; ++i)
              {
                if (*v94 != v39)
                {
                  objc_enumerationMutation(v36);
                }

                v41 = [(HKMedicationsResolver *)&self->super.isa abbreviate:?];
                if (v41)
                {
                  [v35 addObject:v41];
                }
              }

              v38 = [v36 countByEnumeratingWithState:&v93 objects:v102 count:16];
            }

            while (v38);
          }

          v31 = v35;
          v42 = [v35 count];

          v32 = v33;
          if (v42)
          {
LABEL_30:
            v79 = v32;
            v80 = v31;
            v78 = [HKMedicationsResolver checkLCSCriterion:transcriptsCopy transcripts:v31 strings:2 normalizationType:criterion tolerance:?];
            v85 = objc_alloc_init(*(v28 + 2904));
            v89 = 0u;
            v90 = 0u;
            v91 = 0u;
            v92 = 0u;
            subHgIds = [v83 subHgIds];
            v44 = [subHgIds countByEnumeratingWithState:&v89 objects:v101 count:16];
            if (v44)
            {
              v45 = v44;
              v46 = 0;
              v47 = *v90;
              do
              {
                v48 = 0;
                do
                {
                  if (*v90 != v47)
                  {
                    objc_enumerationMutation(subHgIds);
                  }

                  hgId = [*(*(&v89 + 1) + 8 * v48) hgId];
                  v50 = [(HKMedicationsNumberToStringMap *)self->_tradenames stringForKey:hgId];
                  if (v50 && ([MEMORY[0x277CBEB98] setWithObject:v50], v52 = objc_claimAutoreleasedReturnValue(), v53 = -[HKMedicationsResolver checkLCSCriterion:transcripts:strings:normalizationType:tolerance:](self, transcriptsCopy, v52, 2, criterion), v52, v53))
                  {
                    v54 = [MEMORY[0x277CCABB0] numberWithInteger:hgId];
                    [v85 addObject:v54];

                    v51 = 1;
                  }

                  else
                  {
                    v51 = 0;
                  }

                  v46 |= v51;

                  ++v48;
                }

                while (v45 != v48);
                v55 = [subHgIds countByEnumeratingWithState:&v89 objects:v101 count:16];
                v45 = v55;
              }

              while (v55);
            }

            else
            {
              v46 = 0;
            }

            if ((v78 | v46))
            {
              v56 = [(HKMedicationsResolver *)self updateIdGroup:v83 ingredientMatched:v78 tradeNameMatched:v46 & 1 matchingTradeNames:v85];
              [v76 addObject:v56];
            }

            v28 = 0x277CBE000;
            v27 = v77;
            v32 = v79;
            v31 = v80;
          }

          v29 = v84 + 1;
        }

        while (v84 + 1 != v27);
        v57 = [obj countByEnumeratingWithState:&v97 objects:v103 count:16];
        v27 = v57;
      }

      while (v57);
    }

    [v76 sortUsingComparator:&__block_literal_global_457];
    v87[0] = MEMORY[0x277D85DD0];
    v87[1] = 3221225472;
    v87[2] = __80__HKMedicationsResolver_filterAndAddGenerics_transcripts_criterion_limit_error___block_invoke_2;
    v87[3] = &unk_2796D29E0;
    v87[4] = self;
    genericsCopy = v75;
    v58 = v75;
    v88 = v58;
    [v76 enumerateObjectsUsingBlock:v87];
    if ([v76 count] <= v73)
    {
      v60 = v74;
      [(HKMedicationsResolverResult *)v74 setResolvedIds:v76];
    }

    else
    {
      v59 = [v76 subarrayWithRange:{0, v73 - 1}];
      v60 = v74;
      [(HKMedicationsResolverResult *)v74 setResolvedIds:v59];
    }

    ngramList2 = [v58 ngramList];
    [(HKMedicationsResolverResult *)v60 setNgramList:ngramList2];

    usedNgrams2 = [v58 usedNgrams];
    [(HKMedicationsResolverResult *)v60 setUsedNgrams:usedNgrams2];

    v20 = v60;
    v13 = v60;
  }

  else
  {
LABEL_62:
    v20 = 0;
  }

LABEL_52:

  v63 = *MEMORY[0x277D85DE8];

  return v20;
}

uint64_t __80__HKMedicationsResolver_filterAndAddGenerics_transcripts_criterion_limit_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 maxJaccardSimilarity];
  v7 = v6;
  [v5 maxJaccardSimilarity];
  if (v7 >= v8)
  {
    [v4 maxJaccardSimilarity];
    v11 = v10;
    [v5 maxJaccardSimilarity];
    if (v11 <= v12)
    {
      v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "primaryHgId")}];
      v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "primaryHgId")}];
      v9 = [v13 compare:v14];
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

void __80__HKMedicationsResolver_filterAndAddGenerics_transcripts_criterion_limit_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0;
  if (-[HKMedicationsResolver getGenericSpecificIdForClinicalId:genericId:](*(a1 + 32), [v3 primaryHgId], &v9))
  {
    v4 = objc_alloc_init(HKMedicationsMercuryId);
    [(HKMedicationsMercuryId *)v4 setHgId:v9];
    [v3 maxJaccardSimilarity];
    *&v6 = v5 + 1.0;
    [(HKMedicationsMercuryId *)v4 setJaccardSimilarity:v6];
    [(HKMedicationsMercuryId *)v4 setTradeNameMatched:1];
    v7 = [v3 subHgIds];
    v8 = [v7 mutableCopy];

    if (!v8)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    if ([*(a1 + 40) looksGeneric])
    {
      [v8 insertObject:v4 atIndex:0];
    }

    else
    {
      [v8 addObject:v4];
    }

    [v3 setSubHgIds:v8];
    [(HKMedicationsMercuryId *)v4 jaccardSimilarity];
    [v3 setMaxJaccardSimilarity:?];
  }
}

uint64_t __93__HKMedicationsResolver_updateIdGroup_ingredientMatched_tradeNameMatched_matchingTradeNames___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 jaccardSimilarity];
  v7 = v6;
  [v5 jaccardSimilarity];
  if (v7 >= v8)
  {
    [v4 jaccardSimilarity];
    v11 = v10;
    [v5 jaccardSimilarity];
    if (v11 <= v12)
    {
      v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "hgId")}];
      v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "hgId")}];
      v9 = [v13 compare:v14];
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

uint64_t __48__HKMedicationsResolver_abbreviationsWithError___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x253084DE0](a2, 0);
  v5 = MEMORY[0x253084DE0](a2, 1);
  [*(a1 + 32) setObject:v5 forKeyedSubscript:v4];

  return 1;
}

uint64_t __46__HKMedicationsResolver_ingredientsWithError___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = HDSQLiteColumnAsInt64();
  v5 = MEMORY[0x253084DE0](a2, 1);
  [*(a1 + 32) setString:v5 forKey:v4];

  return 1;
}

uint64_t __45__HKMedicationsResolver_tradenamesWithError___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = HDSQLiteColumnAsInt64();
  v5 = MEMORY[0x253084DE0](a2, 1);
  [*(a1 + 32) setString:v5 forKey:v4];

  return 1;
}

- (int64_t)consecutiveLCSUsingTranscript:(id)transcript prediction:(id)prediction
{
  v23 = *MEMORY[0x277D85DE8];
  transcriptCopy = transcript;
  predictionCopy = prediction;
  v7 = [transcriptCopy length];
  v8 = [predictionCopy length];
  v20 = &v20;
  v9 = 8 * (v7 + 1 + (v7 + 1) * v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v10, v9);
  v22 = v7;
  if (v7 < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0;
    v12 = &v10[8 * v8 + 16];
    v21 = 8 * v8 + 8;
    v13 = 1;
    do
    {
      if (v8 >= 1)
      {
        for (i = 0; i != v8; ++i)
        {
          v15 = [transcriptCopy characterAtIndex:v13 - 1];
          if (v15 == [predictionCopy characterAtIndex:i])
          {
            v16 = *&v10[8 * i];
            *(v12 + 8 * i) = v16 + 1;
            if (v16 >= v11)
            {
              v11 = v16 + 1;
            }
          }

          else
          {
            *(v12 + 8 * i) = 0;
          }
        }
      }

      v12 += v21;
      v10 += v21;
    }

    while (v13++ != v22);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v11;
}

- (int64_t)countOfContinousDigitsInLine:(id)line
{
  lineCopy = line;
  if ([lineCopy length])
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = [lineCopy characterAtIndex:v6] - 48;
      if (v4 <= v5)
      {
        v8 = v5;
      }

      else
      {
        v8 = v4;
      }

      if (v7 < 0xA)
      {
        ++v5;
      }

      else
      {
        v5 = 0;
      }

      if (v7 >= 0xA)
      {
        v4 = v8;
      }

      ++v6;
    }

    while (v6 < [lineCopy length]);
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 <= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v4;
  }

  return v9;
}

- (int64_t)hkt_ngramIdCountWithError:(id *)error
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  db = self->_db;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__HKMedicationsResolver_hkt_ngramIdCountWithError___block_invoke;
  v6[3] = &unk_2796D28E0;
  v6[4] = &v7;
  if (([(HDSQLiteDatabase *)db executeSQL:@"SELECT COUNT(*) FROM ngram_id_list" error:error bindingHandler:0 enumerationHandler:v6]& 1) != 0)
  {
    v4 = v8[3];
  }

  else
  {
    v4 = -1;
  }

  _Block_object_dispose(&v7, 8);
  return v4;
}

- (id)hkt_ngramsWithError:(id *)error
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__1;
  v13 = __Block_byref_object_dispose__1;
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  db = self->_db;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__HKMedicationsResolver_hkt_ngramsWithError___block_invoke;
  v8[3] = &unk_2796D28E0;
  v8[4] = &v9;
  if (([(HDSQLiteDatabase *)db executeSQL:@"SELECT * from ngram_list" error:error bindingHandler:0 enumerationHandler:v8]& 1) != 0)
  {
    v6 = v10[5];
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v9, 8);

  return v6;
}

uint64_t __45__HKMedicationsResolver_hkt_ngramsWithError___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x253084DE0](a2, 0);
  if (v3)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  }

  return 1;
}

- (uint64_t)setupDatabaseWithError:(uint64_t)error
{
  v28 = *MEMORY[0x277D85DE8];
  if (error)
  {
    v4 = *(error + 8);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_13();
    v21 = __48__HKMedicationsResolver_setupDatabaseWithError___block_invoke;
    v22 = &unk_2796D2890;
    errorCopy = error;
    v7 = [v5 executeSQL:@"ATTACH DATABASE ? AS pbs_assets;" error:v6 bindingHandler:v20 enumerationHandler:0];
    v8 = MEMORY[0x277CCC2B0];
    if ((v7 & 1) == 0)
    {
      _HKInitializeLogging();
      v9 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        v14 = v9;
        v15 = objc_opt_class();
        v16 = *a2;
        *buf = 138412546;
        v25 = v15;
        v26 = 2112;
        v27 = v16;
        OUTLINED_FUNCTION_6(&dword_2518A4000, v14, v17, "[%@] failed to attach asset db: %@", buf);
      }
    }

    v10 = [*(error + 8) executeSQLStatements:&unk_2863C5850 error:0];
    if ((v10 & 1) == 0)
    {
      _HKInitializeLogging();
      v11 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        v18 = v11;
        v19 = objc_opt_class();
        *buf = 138412290;
        v25 = v19;
        _os_log_error_impl(&dword_2518A4000, v18, OS_LOG_TYPE_ERROR, "[%@] failed to create ngram_list", buf, 0xCu);
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (uint64_t)setupNgramTables:(uint64_t)tables
{
  v11 = *MEMORY[0x277D85DE8];
  if (tables)
  {
    v3 = [*(tables + 8) executeSQLStatements:&unk_2863C5868 error:a2];
    if ((v3 & 1) == 0)
    {
      _HKInitializeLogging();
      v4 = *MEMORY[0x277CCC2B0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
      {
        v7 = v4;
        objc_opt_class();
        v8 = *a2;
        OUTLINED_FUNCTION_1();
        OUTLINED_FUNCTION_6(&dword_2518A4000, v7, v9, "[%@] failed to create ngram tables: %@", v10);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

- (uint64_t)createNgramAssetsWithError:(uint64_t)error
{
  if (!error)
  {
    return 0;
  }

  OUTLINED_FUNCTION_12();
  if (![*(v3 + 8) executeSQLStatements:&unk_2863C5898 error:v4] || !objc_msgSend(*(v2 + 8), "executeSQLStatements:error:", &unk_2863C58B0, v1))
  {
    return 0;
  }

  v5 = *(v2 + 8);

  return [v5 executeSQLStatements:&unk_2863C58C8 error:v1];
}

- (uint64_t)dropNgramAssetsWithError:(uint64_t)error
{
  v11 = *MEMORY[0x277D85DE8];
  if (error)
  {
    v3 = [*(error + 8) executeSQLStatements:&unk_2863C58E0 error:a2];
    if ((v3 & 1) == 0)
    {
      _HKInitializeLogging();
      v4 = *MEMORY[0x277CCC2B0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
      {
        v7 = v4;
        objc_opt_class();
        v8 = *a2;
        OUTLINED_FUNCTION_1();
        OUTLINED_FUNCTION_6(&dword_2518A4000, v7, v9, "[%@] failed to drop assets: %@", v10);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

- (HKMedicationsMapResult)createNgramMapsWithError:(uint64_t)error
{
  if (error)
  {
    v4 = objc_alloc_init(HKMedicationsMapResult);
    v5 = *(error + 8);
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __50__HKMedicationsResolver_createNgramMapsWithError___block_invoke;
    v52[3] = &unk_2796D28B8;
    v6 = v4;
    v53 = v6;
    v7 = [v5 executeSQL:@"SELECT SUM(ngram_weight) FROM ngram_id_list" error:a2 bindingHandler:0 enumerationHandler:v52];
    v8 = 0;
    if (!v7)
    {
LABEL_15:

      goto LABEL_16;
    }

    v9 = objc_alloc_init(HKMedicationsNumberToNumberMap);
    v10 = *(error + 8);
    v47 = MEMORY[0x277D85DD0];
    v48 = 3221225472;
    v49 = __50__HKMedicationsResolver_createNgramMapsWithError___block_invoke_2;
    v50 = &unk_2796D28B8;
    v11 = v9;
    v51 = v11;
    if (OUTLINED_FUNCTION_5(v11, v12, @"SELECT hg_id, ngram_count FROM common_map"))
    {
      [OUTLINED_FUNCTION_9() setCommonDict:?];

      v13 = objc_alloc_init(HKMedicationsNumberToNumberPairListMap);
      v14 = *(error + 8);
      v42 = MEMORY[0x277D85DD0];
      v43 = 3221225472;
      v44 = __50__HKMedicationsResolver_createNgramMapsWithError___block_invoke_3;
      v45 = &unk_2796D28B8;
      v11 = v13;
      v46 = v11;
      if (OUTLINED_FUNCTION_5(v11, v15, @"SELECT hg_id, specific_id, ngram_count FROM unique_map"))
      {
        [OUTLINED_FUNCTION_9() setUniqueDict:?];

        v16 = objc_alloc_init(HKMedicationsNumberToNumberMap);
        v17 = *(error + 8);
        v37 = MEMORY[0x277D85DD0];
        v38 = 3221225472;
        v39 = __50__HKMedicationsResolver_createNgramMapsWithError___block_invoke_4;
        v40 = &unk_2796D28B8;
        v11 = v16;
        v41 = v11;
        if (OUTLINED_FUNCTION_5(v11, v18, @"SELECT hg_id, ngram_count FROM pbs_assets.common_ngram_count WHERE hg_id IN (SELECT hg_id FROM common_map)"))
        {
          [OUTLINED_FUNCTION_9() setCommonSetSizeDict:?];

          v19 = objc_alloc_init(HKMedicationsNumberToNumberMap);
          v20 = *(error + 8);
          v32 = MEMORY[0x277D85DD0];
          v33 = 3221225472;
          v34 = __50__HKMedicationsResolver_createNgramMapsWithError___block_invoke_5;
          v35 = &unk_2796D28B8;
          v11 = v19;
          v36 = v11;
          if (OUTLINED_FUNCTION_5(v11, v21, @"SELECT specific_id, ngram_count FROM pbs_assets.unique_ngram_count WHERE specific_id IN (SELECT specific_id FROM unique_map)"))
          {
            [OUTLINED_FUNCTION_9() setUniqueSetSizeDict:?];

            v22 = objc_alloc_init(MEMORY[0x277CBEB58]);
            v23 = *(error + 8);
            v27 = MEMORY[0x277D85DD0];
            v28 = 3221225472;
            v29 = __50__HKMedicationsResolver_createNgramMapsWithError___block_invoke_6;
            v30 = &unk_2796D28B8;
            v24 = v22;
            v31 = v24;
            if ([v23 executeSQL:@"SELECT hg_id FROM (SELECT hg_id FROM common_map UNION SELECT hg_id FROM unique_map)" error:a2 bindingHandler:0 enumerationHandler:&v27])
            {
              [(HKMedicationsMapResult *)v6 setDistinctHgIds:v24, v27, v28, v29, v30];

              v8 = v6;
              goto LABEL_15;
            }

LABEL_14:
            v8 = 0;
            goto LABEL_15;
          }

          v25 = v36;
        }

        else
        {
          v25 = v41;
        }
      }

      else
      {
        v25 = v46;
      }
    }

    else
    {
      v25 = v51;
    }

    goto LABEL_14;
  }

  v8 = 0;
LABEL_16:

  return v8;
}

- (uint64_t)checkLCSCriterion:(void *)criterion transcripts:(void *)transcripts strings:(void *)strings normalizationType:(uint64_t)type tolerance:(float)tolerance
{
  v40 = *MEMORY[0x277D85DE8];
  transcriptsCopy = transcripts;
  stringsCopy = strings;
  if (criterion)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v11 = transcriptsCopy;
    v28 = [v11 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v28)
    {
      v12 = *v35;
      v26 = *v35;
      v27 = transcriptsCopy;
      v29 = stringsCopy;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v35 != v12)
          {
            objc_enumerationMutation(v11);
          }

          v14 = [*(*(&v34 + 1) + 8 * i) normalizeForType:{type, v26}];
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v15 = stringsCopy;
          v16 = [v15 countByEnumeratingWithState:&v30 objects:v38 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v31;
            while (2)
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v31 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = [*(*(&v30 + 1) + 8 * j) normalizeForType:type];
                v21 = [criterion consecutiveLCSUsingTranscript:v14 prediction:v20];
                v22 = v21 / [v20 length];

                if (v22 >= tolerance)
                {

                  v23 = 1;
                  transcriptsCopy = v27;
                  stringsCopy = v29;
                  goto LABEL_20;
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v30 objects:v38 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

          stringsCopy = v29;
          v12 = v26;
        }

        v23 = 0;
        transcriptsCopy = v27;
        v28 = [v11 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v28);
    }

    else
    {
      v23 = 0;
    }

LABEL_20:
  }

  else
  {
    v23 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

- (id)ngramsFrom:(uint64_t)from minLength:(uint64_t)length maxLength:
{
  v4 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v7 = [a2 componentsSeparatedByString:@"\n"];
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    OUTLINED_FUNCTION_7();
    v9 = v7;
    OUTLINED_FUNCTION_8();
    v11 = [v10 countByEnumeratingWithState:? objects:? count:?];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = [HKMedicationsNgramGenerator tokensFrom:*(v18 + 8 * i) minimumLength:from maximumLength:length];
          [v8 addObjectsFromArray:v15];
        }

        OUTLINED_FUNCTION_8();
        v12 = [v9 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v12);
    }
  }

  else
  {
    v8 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)checkNgramFrame
{
  v19 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v2 = *(self + 8);
    v16 = 0;
    v3 = [v2 executeSQLStatements:&unk_2863C5928 error:&v16];
    v4 = v16;
    if (v3)
    {
      v5 = *(self + 8);
      v15 = v4;
      v6 = [v5 executeSQLStatements:&unk_2863C5940 error:&v15];
      v7 = v15;

      if ((v6 & 1) == 0)
      {
        _HKInitializeLogging();
        v8 = *MEMORY[0x277CCC2B0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
        {
          v13 = v8;
          objc_opt_class();
          OUTLINED_FUNCTION_10();
          v18 = v7;
          OUTLINED_FUNCTION_6(&dword_2518A4000, v13, v14, "[%@] failed to delete from ngram_list_frame: %@", v17);
        }
      }

      v4 = v7;
    }

    else
    {
      _HKInitializeLogging();
      v9 = *MEMORY[0x277CCC2B0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
      {
        v11 = v9;
        objc_opt_class();
        OUTLINED_FUNCTION_10();
        v18 = v4;
        OUTLINED_FUNCTION_6(&dword_2518A4000, v11, v12, "[%@] failed to insert or replace into ngram_list: %@", v17);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)fillNgramsForText:(uint64_t)text n:
{
  v3 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v6 = [a2 componentsSeparatedByString:@"\n"];
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_8();
    v8 = [v7 countByEnumeratingWithState:? objects:? count:?];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v6);
          }

          lowercaseString = [*(v14 + 8 * v11) lowercaseString];
          [self processNgramLine:lowercaseString n:text];

          ++v11;
        }

        while (v9 != v11);
        OUTLINED_FUNCTION_8();
        v9 = [v6 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v9);
    }

    [(HKMedicationsResolver *)self checkNgramFrame];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (uint64_t)looksLikeGenericInText:(uint64_t)text
{
  textCopy = text;
  v20 = *MEMORY[0x277D85DE8];
  if (text)
  {
    [a2 componentsSeparatedByString:@"\n"];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_7();
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:v17 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      while (2)
      {
        v8 = 0;
        do
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(v17[1] + 8 * v8);
          v10 = [MEMORY[0x277CBEB98] setWithArray:&unk_2863C5958];
          v11 = MEMORY[0x277CBEB98];
          lowercaseString = [v9 lowercaseString];
          v13 = [v11 setWithObject:lowercaseString];
          v14 = [HKMedicationsResolver checkLCSCriterion:textCopy transcripts:v13 strings:v10 normalizationType:2 tolerance:0.9];

          if (v14)
          {
            textCopy = 1;
            goto LABEL_12;
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:v17 objects:v19 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    textCopy = 0;
LABEL_12:
  }

  v15 = *MEMORY[0x277D85DE8];
  return textCopy;
}

- (id)ingredientsWithError:(uint64_t)error
{
  if (error)
  {
    OUTLINED_FUNCTION_12();
    v2 = objc_alloc_init(HKMedicationsNumberToStringMap);
    v3 = *(v1 + 8);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_13();
    v5 = v4;
    v8 = 0;
    if (OUTLINED_FUNCTION_4(v5, v6, @"SELECT hg_id, ingredient FROM ingredients", v7))
    {
      v8 = v5;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)tradenamesWithError:(uint64_t)error
{
  if (error)
  {
    OUTLINED_FUNCTION_12();
    v2 = objc_alloc_init(HKMedicationsNumberToStringMap);
    v3 = *(v1 + 8);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_13();
    v5 = v4;
    v8 = 0;
    if (OUTLINED_FUNCTION_4(v5, v6, @"SELECT specific_id, trade_name FROM trade_names", v7))
    {
      v8 = v5;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)abbreviationsWithError:(uint64_t)error
{
  if (error)
  {
    OUTLINED_FUNCTION_12();
    v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v3 = *(v1 + 8);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_13();
    v5 = v4;
    v8 = 0;
    if (OUTLINED_FUNCTION_4(v5, v6, @"SELECT word, abbreviation FROM abbreviations", v7))
    {
      v8 = v5;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)abbreviate:(id *)abbreviate
{
  abbreviateCopy = abbreviate;
  v44 = *MEMORY[0x277D85DE8];
  if (abbreviate)
  {
    lowercaseString = [a2 lowercaseString];
    whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v5 = [lowercaseString stringByTrimmingCharactersInSet:whitespaceCharacterSet];

    v6 = [v5 stringByReplacingOccurrencesOfString:@" withString:{", @" "}];

    whitespaceCharacterSet2 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v31 = v6;
    v8 = [v6 componentsSeparatedByCharactersInSet:whitespaceCharacterSet2];

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v36 objects:v43 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v37;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v37 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v36 + 1) + 8 * i);
          v16 = [abbreviateCopy[8] objectForKeyedSubscript:v15];
          v17 = v16;
          if (v16)
          {
            v41 = v15;
            v42 = v16;
            v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
            [v9 addObject:v18];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v36 objects:v43 count:16];
      }

      while (v12);
    }

    if ([v9 count])
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v19 = v9;
      v20 = [v19 countByEnumeratingWithState:&v32 objects:v40 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v33;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v33 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v32 + 1) + 8 * j);
            allKeys = [v24 allKeys];
            firstObject = [allKeys firstObject];

            v27 = [v24 objectForKeyedSubscript:firstObject];
            v28 = [lowercaseString stringByReplacingOccurrencesOfString:firstObject withString:v27];
          }

          v21 = [v19 countByEnumeratingWithState:&v32 objects:v40 count:16];
        }

        while (v21);
      }

      abbreviateCopy = lowercaseString;
    }

    else
    {
      abbreviateCopy = 0;
    }
  }

  v29 = *MEMORY[0x277D85DE8];

  return abbreviateCopy;
}

- (HKMedicationsMercuryIdGroup)updateIdGroup:(unsigned int)group ingredientMatched:(int)matched tradeNameMatched:(void *)nameMatched matchingTradeNames:
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = a2;
  nameMatchedCopy = nameMatched;
  if (self)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    subHgIds = [v7 subHgIds];
    v11 = [subHgIds countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v34;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v34 != v13)
          {
            objc_enumerationMutation(subHgIds);
          }

          v15 = *(*(&v33 + 1) + 8 * i);
          hgId = [v15 hgId];
          [v15 jaccardSimilarity];
          v18 = v17;
          v19 = [MEMORY[0x277CCABB0] numberWithInteger:hgId];
          v20 = [nameMatchedCopy containsObject:v19];

          if (v20)
          {
            v21 = v18 + 1.0;
            if (!group)
            {
              v21 = v18;
            }

            v22 = v21 + 1.0;
            v23 = objc_alloc_init(HKMedicationsMercuryId);
            [(HKMedicationsMercuryId *)v23 setHgId:hgId];
            *&v24 = v22;
            [(HKMedicationsMercuryId *)v23 setJaccardSimilarity:v24];
            [(HKMedicationsMercuryId *)v23 setTradeNameMatched:1];
            [v9 addObject:v23];
          }
        }

        v12 = [subHgIds countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v12);
    }

    [v9 sortUsingComparator:&__block_literal_global_460];
    [v7 maxJaccardSimilarity];
    if (group)
    {
      v25 = v25 + 1.0;
    }

    if (matched)
    {
      v26 = v25 + 1.0;
    }

    else
    {
      v26 = v25;
    }

    v27 = objc_alloc_init(HKMedicationsMercuryIdGroup);
    -[HKMedicationsMercuryIdGroup setPrimaryHgId:](v27, "setPrimaryHgId:", [v7 primaryHgId]);
    *&v28 = v26;
    [(HKMedicationsMercuryIdGroup *)v27 setMaxJaccardSimilarity:v28];
    [(HKMedicationsMercuryIdGroup *)v27 setIngredientMatched:group];
    [(HKMedicationsMercuryIdGroup *)v27 setSubHgIds:v9];
  }

  else
  {
    v27 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];

  return v27;
}

- (BOOL)hkt_prepareNgramAssetWithError:(id *)error
{
  if (![(HKMedicationsResolver *)self setupDatabaseWithError:error]|| ![(HKMedicationsResolver *)self setupNgramTables:error])
  {
    return 0;
  }

  return [HKMedicationsResolver createNgramAssetsWithError:?];
}

- (BOOL)hkt_setUpDatabase
{
  v15 = 0;
  v3 = [(HKMedicationsResolver *)self setupDatabaseWithError:?];
  v4 = v15;
  v5 = v4;
  if (!v3)
  {
    goto LABEL_2;
  }

  v14 = v4;
  v8 = [(HKMedicationsResolver *)self setupNgramTables:?];
  v9 = v14;

  if (!v8)
  {
    v6 = 0;
LABEL_6:
    v5 = v9;
    goto LABEL_3;
  }

  v13 = v9;
  v10 = [(HKMedicationsResolver *)self dropNgramAssetsWithError:?];
  v5 = v13;

  if (v10)
  {
    v12 = v5;
    v11 = [(HKMedicationsResolver *)self createNgramCountsWithError:?];
    v9 = v12;

    v6 = 1;
    goto LABEL_6;
  }

LABEL_2:
  v6 = 0;
LABEL_3:

  return v6;
}

- (void)initWithAssetUrl:(void *)a1 .cold.1(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v3 = 138412290;
  v4 = objc_opt_class();
  _os_log_error_impl(&dword_2518A4000, v1, OS_LOG_TYPE_ERROR, "[%@] failed to open in-memory db", &v3, 0xCu);

  v2 = *MEMORY[0x277D85DE8];
}

- (void)resetInMemoryDBWithError:.cold.1()
{
  OUTLINED_FUNCTION_11();
  v13 = *MEMORY[0x277D85DE8];
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v4 = *v0;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_2518A4000, v5, v6, "[%@] failed to reset assets: %@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)processNgramLine:n:.cold.1()
{
  OUTLINED_FUNCTION_11();
  v11 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_2518A4000, v3, v4, "[%@] failed to insert into ngram_list_line: %@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)processNgramLine:n:.cold.2()
{
  OUTLINED_FUNCTION_11();
  v11 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_2518A4000, v3, v4, "[%@] failed to insert into ngram_list_frame: %@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)processNgramLine:n:.cold.3()
{
  OUTLINED_FUNCTION_11();
  v11 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_2518A4000, v3, v4, "[%@] failed to delete from ngram_list_line: %@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

@end