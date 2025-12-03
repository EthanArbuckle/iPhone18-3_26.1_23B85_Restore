@interface CPMLModelEvaluate
- (BOOL)updateModel:(id)model;
- (CPMLModelEvaluate)initWithModel:(id)model withPropertyList:(id)list;
- (id).cxx_construct;
- (id)doEvaluate:(void *)evaluate withBoundedList:(void *)list;
- (id)evalArray:(id)array;
- (id)evalNSObjectV:(id)v;
- (id)evalString:(id)string;
- (id)fileProtectionClassRequest:(id)request;
- (int)getAttributeType:(id)type;
- (void)boundResult:(id)result;
- (void)buildEvaluateMachineLearningAlgorithm;
- (void)constructVector:(void *)vector withColumnPosition:(unint64_t)position maxColNumber:(unint64_t)number withValue:(id)value;
- (void)dealloc;
- (void)doRemapToFeatureVector:(void *)vector withPositionID:(unint64_t)d withMaxCol:(unint64_t)col withValue:(id)value;
- (void)setCPMLAlgorithm:(id)algorithm;
- (void)setCPMLAlgorithmEngine:(id)engine;
@end

@implementation CPMLModelEvaluate

- (CPMLModelEvaluate)initWithModel:(id)model withPropertyList:(id)list
{
  v48 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  listCopy = list;
  v45.receiver = self;
  v45.super_class = CPMLModelEvaluate;
  v8 = [(CPMLModelEvaluate *)&v45 init];
  v9 = v8;
  if (v8)
  {
    v8->shouldFail = 0;
    storageManager = v8->_storageManager;
    v8->_storageManager = 0;

    v9->_delegateEngine = 0;
    v9->_cpmlDelegate = 0;
    delegateAlgorithm = v9->_delegateAlgorithm;
    v9->_delegateAlgorithm = 0;

    if (listCopy)
    {
      v12 = [listCopy objectForKey:@"loggingMode"];
      v13 = v12;
      if (v12 || (v14 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.cpml"], objc_msgSend(v14, "objectForKey:", @"loggingMode"), v13 = objc_claimAutoreleasedReturnValue(), v14, v13))
      {
        CPMLLog = CPMLLog::getCPMLLog(v12);
        CPMLLog[10] = [v13 longLongValue];
      }

      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v39 = [defaultManager fileExistsAtPath:modelCopy];

      v17 = [listCopy objectForKey:@"machineLearningAlgorithm"];
      machineLearningAlgo = v9->machineLearningAlgo;
      v9->machineLearningAlgo = v17;

      if ((v39 & 1) != 0 || [(NSString *)v9->machineLearningAlgo isEqualToString:@"NB"]|| [(NSString *)v9->machineLearningAlgo isEqualToString:@"NB_BASE"]|| [(NSString *)v9->machineLearningAlgo isEqualToString:@"KNN"])
      {
        v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
        modelSchema = v9->modelSchema;
        v9->modelSchema = v19;

        [listCopy objectForKey:@"schema"];
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v21 = v42 = 0u;
        v22 = [v21 countByEnumeratingWithState:&v41 objects:v47 count:16];
        if (v22)
        {
          v23 = *v42;
          do
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v42 != v23)
              {
                objc_enumerationMutation(v21);
              }

              v25 = [*(*(&v41 + 1) + 8 * i) objectForKey:@"HeaderDef"];
              [(NSMutableArray *)v9->modelSchema addObject:v25];
            }

            v22 = [v21 countByEnumeratingWithState:&v41 objects:v47 count:16];
          }

          while (v22);
        }

        [listCopy objectForKey:@"mapFunction"];
        v9->mapFunction = [objc_claimAutoreleasedReturnValue() isEqualToString:@"MAP_NORMALIZE"];
        v26 = [listCopy objectForKey:@"keepInMemory"];
        if (v26)
        {
          v9->keepInMemory = [v26 BOOLValue];
        }

        else
        {
          v9->keepInMemory = 1;
        }

        v27 = [listCopy objectForKey:@"cacheString"];
        if (v27)
        {
          bOOLValue = [v27 BOOLValue];
        }

        else
        {
          bOOLValue = 0;
        }

        v9->enableCacheString = bOOLValue;
        v29 = [[CPMLSchema alloc] initWithPlist:listCopy];
        cpmlSchema = v9->cpmlSchema;
        v9->cpmlSchema = v29;

        operator new();
      }

      NSLog(&cfstr_DoesNotSupport.isa, v9->machineLearningAlgo);
    }

    else
    {
      NSLog(&cfstr_NoDefaultPlist.isa);
      if (modelCopy)
      {
        v31 = modelCopy;
        if (!sqlite3_open([modelCopy UTF8String], &v9->db))
        {
          v9->countRows = CPMLsql_getRowCountForTable(v9->db, "sqlite_master WHERE type=table AND name=INDEX0;");
          v32 = [0 objectForKey:@"serializeFunction"];
          serializeFunction = v9->serializeFunction;
          v9->serializeFunction = v32;

          if ([(NSString *)v9->serializeFunction isEqualToString:@"PMML"])
          {
            NSLog(&cfstr_PmmlNotImpleme.isa);
          }

          else
          {
            if (![(NSString *)v9->serializeFunction isEqualToString:@"MMAP"])
            {
              operator new();
            }

            NSLog(&cfstr_MmapNotImpleme.isa);
          }

          v40 = 0;
          if (v9->countRows)
          {
            (*(v9->trainerCPDeSerializer->var0 + 8))(v9->trainerCPDeSerializer, &v40 + 4, "cptrainRows", 1, 0);
            (*(v9->trainerCPDeSerializer->var0 + 8))(v9->trainerCPDeSerializer, &v40, "cptrainColumns", 1, 0);
            operator new();
          }

          CPMLsql_createTable(v9->db, "cptrainRows", "cptrainRows INTEGER", 0);
          CPMLsql_createTable(v9->db, "cptrainColumns", "cptrainColumns INTEGER", 0);
          CPMLsql_createTable(v9->db, "cptrainyCol", "cptrainyCol INTEGER", 0);
          CPMLsql_createTable(v9->db, "cpContinousData", "cpContinousData INTEGER", 0);
          CPMLsql_createTable(v9->db, "cpValRemap", "cpValRemap INTEGER", 0);
          CPMLsql_createTable(v9->db, "cptrainCard", "cptrainCard REAL", 0);
          CPMLsql_createTable(v9->db, "cptrainMean", "cptrainMean REAL", 0);
          CPMLsql_createTable(v9->db, "cpSTDev", "cpSTDev REAL", 0);
          CPMLsql_createTable(v9->db, "cpMin", "cpMin REAL", 0);
          CPMLsql_createTable(v9->db, "cpMax", "cpMax REAL", 0);
          CPMLsql_createTable(v9->db, "cacheString", "keyValue TEXT, indexValue INTEGER", 0);
          LODWORD(v40) = [(CPMLSchema *)v9->cpmlSchema getTotalAttributes];
          sprintf(v46, "%d", v40);
          CPMLsql_insertIntoTable(v9->db, "cptrainColumns", "cptrainColumns", v46);
          if (v40 >= 1)
          {
            v34 = 0;
            v35 = -10;
            do
            {
              sprintf(v46, "EMPTY,%d", v35);
              CPMLsql_insertIntoTable(v9->db, "cacheString", "keyValue, indexValue", v46);
              ++v34;
              --v35;
            }

            while (v34 < v40);
          }

          operator new();
        }

        NSLog(&cfstr_CannotOpen.isa, modelCopy);
        sqlite3_close(v9->db);
      }

      else
      {
        NSLog(&cfstr_ErrorNoModelPa.isa);
      }
    }

    v36 = 0;
  }

  else
  {
    v36 = 0;
  }

  v37 = *MEMORY[0x277D85DE8];
  return v36;
}

- (void)dealloc
{
  trainerCPDeSerializer = self->trainerCPDeSerializer;
  if (trainerCPDeSerializer)
  {
    (*(trainerCPDeSerializer->var0 + 1))(trainerCPDeSerializer, a2);
  }

  cpMLAlgo = self->cpMLAlgo;
  if (cpMLAlgo)
  {
    (*(cpMLAlgo->var0 + 1))(cpMLAlgo, a2);
  }

  trainerCPStatistics = self->trainerCPStatistics;
  if (trainerCPStatistics)
  {
    CPMLStatistics::~CPMLStatistics(trainerCPStatistics);
    MEMORY[0x24C19F910]();
  }

  cpRemapper = self->cpRemapper;
  if (cpRemapper)
  {
    CPMLRemapper::~CPMLRemapper(cpRemapper);
    MEMORY[0x24C19F910]();
  }

  cpTuneableData = self->cpTuneableData;
  if (cpTuneableData)
  {
    MEMORY[0x24C19F910](cpTuneableData, 0x1080C40C4643742);
  }

  v8.receiver = self;
  v8.super_class = CPMLModelEvaluate;
  [(CPMLModelEvaluate *)&v8 dealloc];
}

- (id)fileProtectionClassRequest:(id)request
{
  requestCopy = request;
  if ([requestCopy isEqualToString:@"NSFileProtectionCompleteUntilFirstUserAuthentication"])
  {
    v4 = MEMORY[0x277CCA1A0];
LABEL_9:
    v5 = *v4;
    goto LABEL_10;
  }

  if ([requestCopy isEqualToString:@"NSFileProtectionCompleteUnlessOpen"])
  {
    v4 = MEMORY[0x277CCA198];
    goto LABEL_9;
  }

  if ([requestCopy isEqualToString:@"NSFileProtectionComplete"])
  {
    v4 = MEMORY[0x277CCA190];
    goto LABEL_9;
  }

  if ([requestCopy isEqualToString:@"NSFileProtectionNone"])
  {
    v4 = MEMORY[0x277CCA1B8];
    goto LABEL_9;
  }

  v5 = 0;
LABEL_10:

  return v5;
}

- (int)getAttributeType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"BOOLEAN"] & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"INTEGER") & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"REAL"))
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"BLOB"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)constructVector:(void *)vector withColumnPosition:(unint64_t)position maxColNumber:(unint64_t)number withValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = valueCopy;
  }

  else
  {
    [valueCopy componentsSeparatedByString:{@", ", vector}];
    objc_claimAutoreleasedReturnValue();
  }

  operator new();
}

- (id)evalString:(id)string
{
  v4 = [string componentsSeparatedByString:@" "];
  v5 = [(CPMLModelEvaluate *)self evalArray:v4];

  return v5;
}

- (id)evalNSObjectV:(id)v
{
  vCopy = v;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = &v15;
  v6 = vCopy;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    do
    {
      [v5 addObject:v8];
      v9 = v13++;
      v10 = *v9;

      v8 = v10;
    }

    while (v10);
  }

  v11 = [(CPMLModelEvaluate *)self evalArray:v5];

  return v11;
}

- (id)evalArray:(id)array
{
  arrayCopy = array;
  v5 = [arrayCopy count];
  if (v5 <= [(NSMutableArray *)self->modelSchema count])
  {
    operator new();
  }

  NSLog(&cfstr_SInputCountGre.isa, "[CPMLModelEvaluate evalArray:]");

  return 0;
}

void __30__CPMLModelEvaluate_evalDict___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  [*(a1 + 32) doRemapToFeatureVector:*(a1 + 48) withPositionID:objc_msgSend(*(*(a1 + 32) + 96) withMaxCol:"getColumnPosition:" withValue:{v6), objc_msgSend(*(a1 + 40), "count"), v5}];
}

- (void)doRemapToFeatureVector:(void *)vector withPositionID:(unint64_t)d withMaxCol:(unint64_t)col withValue:(id)value
{
  valueCopy = value;
  v11 = *(*(self->trainerCPStatistics + 9) + 4 * d);
  v12 = [(NSMutableArray *)self->modelSchema objectAtIndex:d];
  if ([(CPMLModelEvaluate *)self getAttributeType:v12])
  {
    if ([(CPMLModelEvaluate *)self getAttributeType:v12]== 1)
    {
      v13 = ![(CPMLSchema *)self->cpmlSchema matchSubstituteValue:d theValue:valueCopy];
      if (!valueCopy)
      {
        LOBYTE(v13) = 0;
      }

      v29 = valueCopy;
      if ((v13 & 1) == 0)
      {
        v14 = [(CPMLSchema *)self->cpmlSchema getSubstituteValue:d];
        v15 = objc_alloc(MEMORY[0x277CCABB0]);
        if (v14)
        {
          [v14 doubleValue];
        }

        else
        {
          v16 = *(*(self->trainerCPStatistics + 21) + 8 * d);
        }

        v29 = [v15 initWithDouble:v16];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = v29;
        v19 = valueCopy;
        v29 = v20;
        if (v11)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v23 = objc_alloc_init(MEMORY[0x277CCABB8]);
        [v23 setNumberStyle:1];
        v20 = [v23 numberFromString:valueCopy];

        v19 = valueCopy;
        if (v11)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      if ([(CPMLModelEvaluate *)self getAttributeType:v12]== 2)
      {
        vectorPositions = self->vectorPositions;
        v22 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:d];
        [(NSMutableArray *)vectorPositions addObject:v22];

        v20 = 0;
        v29 = valueCopy;
        [(CPMLModelEvaluate *)self constructVector:vector withColumnPosition:d maxColNumber:col withValue:valueCopy];
        goto LABEL_31;
      }

      v20 = 0;
      v29 = valueCopy;
      NSLog(&cfstr_ErrorEvalarray.isa);
      v19 = valueCopy;
      if (v11)
      {
        goto LABEL_27;
      }
    }
  }

  else
  {
    v17 = [(CPMLSchema *)self->cpmlSchema matchSubstituteValue:d theValue:valueCopy];
    if (valueCopy)
    {
      v18 = v17;
    }

    else
    {
      v18 = 1;
    }

    if ((v18 & 1) != 0 || (v19 = valueCopy, [valueCopy isEqualToString:&stru_2859288F8]))
    {
      v19 = [(CPMLSchema *)self->cpmlSchema getSubstituteValue:d];
    }

    v20 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:{CPMLRemapper::remap(self->cpRemapper, objc_msgSend(v19, "UTF8String"), d)}];
    v29 = valueCopy;
    if (v11)
    {
      goto LABEL_27;
    }
  }

  if (!(*(self->cpMLAlgo->var0 + 7))(self->cpMLAlgo))
  {
    valueCopy = v19;
    CPMLFeatureVector::insertIntVClass(vector, [v20 intValue]);
    goto LABEL_31;
  }

LABEL_27:
  v24 = 1.0;
  v25 = 0.0;
  if (self->mapFunction == 1)
  {
    trainerCPStatistics = self->trainerCPStatistics;
    v25 = *(trainerCPStatistics[21] + 8 * d);
    v27 = trainerCPStatistics[24];
    if (*(v27 + 8 * d) > 0.0)
    {
      v24 = *(v27 + 8 * d);
    }
  }

  [v20 doubleValue];
  CPMLFeatureVector::insertRealVClass(vector, (v28 - v25) / v24);
  valueCopy = v19;
LABEL_31:
}

- (id)doEvaluate:(void *)evaluate withBoundedList:(void *)list
{
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  if (((*(self->cpMLAlgo->var0 + 3))(self->cpMLAlgo, evaluate, list) & 0x80000000) != 0)
  {
    v20 = 0;
    goto LABEL_31;
  }

  v9 = [(NSMutableArray *)self->modelSchema objectAtIndex:*(self->trainerCPStatistics + 32)];
  if ([(CPMLModelEvaluate *)self getAttributeType:v9]!= 2)
  {
    if ([(CPMLModelEvaluate *)self getAttributeType:v9])
    {
      v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%f", CPMLFeatureVector::getYHat(evaluate)];
      v22 = [MEMORY[0x277CCABB0] numberWithDouble:CPMLFeatureVector::getYHat(evaluate)];
      [v8 setObject:v22 forKey:v21];
      [v7 addObject:v8];
    }

    else
    {
      YHat = CPMLFeatureVector::getYHat(evaluate);
      v25 = CPMLRemapper::unmap(self->cpRemapper, llround(YHat), *(self->trainerCPStatistics + 32));
      v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:v25 encoding:4];
      if (v25)
      {
        free(v25);
      }

      v27 = objc_opt_new();
      v28 = *(evaluate + 10);
      if (*(evaluate + 11) == v28)
      {
        if (([v26 isEqual:@"error"] & 1) == 0)
        {
          [v8 setObject:&unk_28592A510 forKey:v26];
          [v7 addObject:v8];
        }

        v7 = v7;

        goto LABEL_30;
      }

      v47 = v26;
      v49 = v9;
      v51 = v7;
      v29 = 0;
      v30 = 0;
      do
      {
        v31 = v28 + v29;
        v32 = *(v31 + 8);
        v33 = [MEMORY[0x277CCABB0] numberWithDouble:*v31];
        v34 = objc_opt_new();

        v35 = CPMLRemapper::unmap(self->cpRemapper, v32, *(self->trainerCPStatistics + 32));
        v36 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:v35 encoding:4];
        [v34 setObject:v33 forKey:v36];

        [v27 addObject:v34];
        if (v35)
        {
          free(v35);
        }

        ++v30;
        v28 = *(evaluate + 10);
        v29 += 16;
        v8 = v34;
      }

      while (v30 < (*(evaluate + 11) - v28) >> 4);
      v9 = v49;
      v22 = v51;
      v8 = v34;
      v7 = v27;
      v21 = v47;
    }

    v10 = v7;

    v7 = v21;
    goto LABEL_28;
  }

  if (*(evaluate + 11) != *(evaluate + 10))
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v11 = [(CPMLSchema *)self->cpmlSchema getVectorContent:[(CPMLSchema *)self->cpmlSchema getYColumnPosition]];
    v12 = *(evaluate + 10);
    v13 = *(evaluate + 11);
    if (v11 == 4)
    {
      if (v13 != v12)
      {
        v48 = v9;
        v50 = v7;
        v14 = 0;
        v15 = 0;
        v16 = v8;
        do
        {
          v17 = *(v12 + v14);
          v8 = objc_opt_new();

          v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%lf", *&v17];
          v19 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
          [v8 setObject:v19 forKey:v18];

          [v10 addObject:v8];
          ++v15;
          v12 = *(evaluate + 10);
          v14 += 16;
          v16 = v8;
        }

        while (v15 < (*(evaluate + 11) - v12) >> 4);
LABEL_27:
        v9 = v48;
        v7 = v50;
      }
    }

    else if (v13 != v12)
    {
      v48 = v9;
      v50 = v7;
      v37 = 0;
      v38 = 0;
      v39 = v8;
      do
      {
        v40 = v12 + v37;
        v41 = *v40;
        v42 = *(v40 + 8);
        v8 = objc_opt_new();

        v43 = CPMLRemapper::unmap(self->cpRemapper, v42, [(CPMLSchema *)self->cpmlSchema getYColumnPosition]);
        v44 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:v43 encoding:4];
        v45 = [MEMORY[0x277CCABB0] numberWithDouble:v41];
        [v8 setObject:v45 forKey:v44];

        [v10 addObject:v8];
        if (v43)
        {
          free(v43);
        }

        ++v38;
        v12 = *(evaluate + 10);
        v37 += 16;
        v39 = v8;
      }

      while (v38 < (*(evaluate + 11) - v12) >> 4);
      goto LABEL_27;
    }

LABEL_28:

    v23 = v10;
    goto LABEL_29;
  }

  v23 = v7;
LABEL_29:
  v7 = v23;
LABEL_30:

  v20 = v7;
LABEL_31:

  return v20;
}

- (void)buildEvaluateMachineLearningAlgorithm
{
  if ([(NSString *)self->machineLearningAlgo isEqualToString:@"SVM"])
  {
    operator new();
  }

  if ([(NSString *)self->machineLearningAlgo isEqualToString:@"LIBSVM"])
  {
    operator new();
  }

  if ([(NSString *)self->machineLearningAlgo isEqualToString:@"LINEARSVM"])
  {
    operator new();
  }

  if ([(NSString *)self->machineLearningAlgo isEqualToString:@"NB"])
  {
    operator new();
  }

  if ([(NSString *)self->machineLearningAlgo isEqualToString:@"NB_BASE"])
  {
    operator new();
  }

  if ([(NSString *)self->machineLearningAlgo isEqualToString:@"NAIVE_BAYES"])
  {
    operator new();
  }

  if ([(NSString *)self->machineLearningAlgo isEqualToString:@"NAIVE_BAYESV2"])
  {
    operator new();
  }

  if ([(NSString *)self->machineLearningAlgo isEqualToString:@"NAIVEBAYES"])
  {
    v3 = objc_alloc_init(CPMLNaiveBayesStorageManager);
    storageManager = self->_storageManager;
    self->_storageManager = &v3->super;

    operator new();
  }

  if ([(NSString *)self->machineLearningAlgo isEqualToString:@"KMEANS"])
  {
    operator new();
  }

  if ([(NSString *)self->machineLearningAlgo isEqualToString:@"KNN"])
  {
    operator new();
  }

  if ([(NSString *)self->machineLearningAlgo isEqualToString:@"LOGISTIC_REGRESSION"])
  {
    operator new();
  }

  if ([(NSString *)self->machineLearningAlgo isEqualToString:@"REGRESSION_FOREST"])
  {
    operator new();
  }

  if ([(NSString *)self->machineLearningAlgo isEqualToString:@"GAUSSIAN_MIXTURE_MODEL"])
  {
    operator new();
  }

  if ([(NSString *)self->machineLearningAlgo isEqualToString:@"LINEAR_REGRESSION"])
  {
    operator new();
  }

  NSLog(&cfstr_SNoMlAlgoSelec.isa, "[CPMLModelEvaluate buildEvaluateMachineLearningAlgorithm]");
  self->shouldFail = 1;
}

- (void)boundResult:(id)result
{
  resultCopy = result;
  v4 = 0;
  p_boundedRemappedValues = &self->boundedRemappedValues;
  self->boundedRemappedValues.__end_ = self->boundedRemappedValues.__begin_;
  while (v4 < [resultCopy count])
  {
    v6 = [resultCopy objectAtIndexedSubscript:v4];
    v7 = CPMLRemapper::remap(self->cpRemapper, [v6 UTF8String], *(self->trainerCPStatistics + 32));
    end = self->boundedRemappedValues.__end_;
    cap = self->boundedRemappedValues.__cap_;
    if (end >= cap)
    {
      begin = p_boundedRemappedValues->__begin_;
      v12 = end - p_boundedRemappedValues->__begin_;
      v13 = v12 >> 2;
      v14 = (v12 >> 2) + 1;
      if (v14 >> 62)
      {
        std::vector<double>::__throw_length_error[abi:ne200100]();
      }

      v15 = cap - begin;
      if (v15 >> 1 > v14)
      {
        v14 = v15 >> 1;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v16 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&self->boundedRemappedValues, v16);
      }

      *(4 * v13) = v7;
      v10 = (4 * v13 + 4);
      memcpy(0, begin, v12);
      v17 = self->boundedRemappedValues.__begin_;
      self->boundedRemappedValues.__begin_ = 0;
      self->boundedRemappedValues.__end_ = v10;
      self->boundedRemappedValues.__cap_ = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *end = v7;
      v10 = end + 1;
    }

    self->boundedRemappedValues.__end_ = v10;

    ++v4;
  }
}

- (BOOL)updateModel:(id)model
{
  modelCopy = model;
  getDispatchQueue = [modelCopy getDispatchQueue];
  [modelCopy flushDB];
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v10 = 1;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__CPMLModelEvaluate_updateModel___block_invoke;
  block[3] = &unk_278E9EE38;
  block[6] = v8;
  block[4] = modelCopy;
  block[5] = self;
  dispatch_sync(getDispatchQueue, block);
  operator new();
}

void __33__CPMLModelEvaluate_updateModel___block_invoke_2(void *a1)
{
  **(*(a1[5] + 8) + 24) = a1[7];
  v2 = a1[4];
  if (*(v2 + 72))
  {
    **(v2 + 88) = 1;
    (*(**(a1[4] + 72) + 16))(*(a1[4] + 72), *(*(a1[5] + 8) + 24), *(a1[4] + 80), *(a1[4] + 120));
    v3 = a1[4];
    v4 = *(v3 + 104);
    if (v4)
    {
      CPMLStatistics::~CPMLStatistics(v4);
      MEMORY[0x24C19F910]();
      v3 = a1[4];
    }

    v5 = a1[7];
    *(v3 + 104) = v5;
    *(*(a1[4] + 88) + 16) = v5;
    (*(**(a1[4] + 80) + 160))(*(a1[4] + 80), *(*(a1[4] + 104) + 120), "cptrainRows", "cptrainRows", 0);
    v6 = a1[4];
    v7 = *(v6 + 104);
    if (*(v7 + 124) >= 1)
    {
      v8 = 0;
      do
      {
        (*(**(v6 + 80) + 176))(*(v6 + 80), "cptrainCard", "cptrainCard", v8, *(*(v7 + 144) + 8 * v8));
        (*(**(a1[4] + 80) + 176))(*(a1[4] + 80), "cptrainMean", "cptrainMean", v8, *(*(*(a1[4] + 104) + 144) + 8 * v8));
        (*(**(a1[4] + 80) + 176))(*(a1[4] + 80), "cpSTDev", "cpSTDev", v8, *(*(*(a1[4] + 104) + 144) + 8 * v8));
        (*(**(a1[4] + 80) + 176))(*(a1[4] + 80), "cpMin", "cpMin", v8, *(*(*(a1[4] + 104) + 144) + 8 * v8));
        (*(**(a1[4] + 80) + 176))(*(a1[4] + 80), "cpMax", "cpMax", v8, *(*(*(a1[4] + 104) + 144) + 8 * v8));
        ++v8;
        v6 = a1[4];
        v7 = *(v6 + 104);
      }

      while (v8 < *(v7 + 124));
    }

    **(v6 + 88) = 0;
  }

  else
  {
    *(*(a1[6] + 8) + 24) = 0;
    NSLog(&cfstr_SCanTUpdateEmp.isa, "[CPMLModelEvaluate updateModel:]_block_invoke_2");
  }
}

- (void)setCPMLAlgorithm:(id)algorithm
{
  algorithmCopy = algorithm;
  if (algorithmCopy)
  {
    objc_storeStrong(&self->_delegateAlgorithm, algorithm);
    delegateAlgorithm = self->_delegateAlgorithm;
    if (objc_opt_respondsToSelector())
    {
      storageManager = self->_storageManager;
      if (!storageManager)
      {
        v7 = objc_alloc_init(CPMLStorageManager);
        v8 = self->_storageManager;
        self->_storageManager = v7;

        storageManager = self->_storageManager;
      }

      [(CPMLAlgorithmProtocol *)self->_delegateAlgorithm initCPMLAlgorithm:storageManager];
      operator new();
    }
  }
}

- (void)setCPMLAlgorithmEngine:(id)engine
{
  engineCopy = engine;
  if ([(NSString *)self->machineLearningAlgo isEqualToString:@"NAIVEBAYES"])
  {
    if (!self->_storageManager)
    {
      v4 = objc_alloc_init(CPMLStorageManager);
      storageManager = self->_storageManager;
      self->_storageManager = v4;
    }

    operator new();
  }
}

- (id).cxx_construct
{
  *(self + 17) = 0;
  *(self + 18) = 0;
  *(self + 19) = 0;
  return self;
}

@end