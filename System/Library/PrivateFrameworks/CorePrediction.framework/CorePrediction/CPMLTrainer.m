@interface CPMLTrainer
- (id)fileProtectionClassRequest:(id)a3;
- (id)getSolution;
- (id)init:(id)a3 withModelDBPath:(id)a4 withPropertyList:(id)a5;
- (void)buildTrainingMachineLearningAlgorithm:(id)a3;
- (void)dealloc;
- (void)train:(BOOL)a3;
@end

@implementation CPMLTrainer

- (id)getSolution
{
  (*(self->cpMLAlgo->var0 + 4))(self->cpMLAlgo, a2);
  NSLog(&cfstr_GettingSolutio.isa);
  __p = 0;
  v9 = 0;
  (*(self->cpMLAlgo->var0 + 12))(self->cpMLAlgo, &__p);
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = __p;
  if (v9 != __p)
  {
    v5 = 0;
    do
    {
      v6 = [MEMORY[0x277CCABB0] numberWithDouble:v4[v5]];
      [v3 addObject:v6];

      ++v5;
      v4 = __p;
    }

    while (v5 < (v9 - __p) >> 3);
  }

  if (__p)
  {
    if (v9 != __p)
    {
      v9 += (__p - v9 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    operator delete(__p);
  }

  return v3;
}

- (id)init:(id)a3 withModelDBPath:(id)a4 withPropertyList:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v25 = a3;
  v9 = a4;
  v10 = a5;
  v26.receiver = self;
  v26.super_class = CPMLTrainer;
  v11 = [(CPMLTrainer *)&v26 init];
  if (v11)
  {
    v12 = [v10 objectForKey:@"loggingMode"];
    v13 = v12;
    if (v12 || (v14 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.cpml"], objc_msgSend(v14, "objectForKey:", @"loggingMode"), v13 = objc_claimAutoreleasedReturnValue(), v14, v13))
    {
      CPMLLog = CPMLLog::getCPMLLog(v12);
      CPMLLog[10] = [v13 longLongValue];
    }

    v11->shouldFail = 0;
    objc_storeStrong(&v11->cpmlDB, a3);
    v16 = [(CPMLDB *)v11->cpmlDB getDelegate];
    theDelegate = v11->_theDelegate;
    v11->_theDelegate = v16;

    [(CPMLDB *)v11->cpmlDB flushDB];
    if (v9)
    {
      v18 = v9;
      if (!sqlite3_open([v9 UTF8String], &v11->modelDB))
      {
        if (v10)
        {
          objc_storeStrong(&v11->modelPlist, a5);
          v20 = [[CPMLSchema alloc] initWithPlist:v10];
          cpmlSchema = v11->cpmlSchema;
          v11->cpmlSchema = v20;

          operator new();
        }

        [0 objectForKey:@"mapFunction"];
        v11->mapFunction = [objc_claimAutoreleasedReturnValue() isEqualToString:@"MAP_NORMALIZE"];
        v24 = [0 objectForKey:@"serializeFunction"];
        if ([v24 isEqualToString:@"PMML"])
        {
          NSLog(&cfstr_PmmlNotImpleme.isa);
        }

        else
        {
          if (![v24 isEqualToString:@"MMAP"])
          {
            operator new();
          }

          NSLog(&cfstr_MmapNotImpleme.isa);
        }

        operator new();
      }

      NSLog(&cfstr_CannotOpen.isa, v9);
      sqlite3_close(v11->modelDB);
    }

    else
    {
      NSLog(&cfstr_ModelNameAndPa.isa);
    }

    v19 = 0;
  }

  else
  {
    v19 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)dealloc
{
  cpRemapper = self->cpRemapper;
  if (cpRemapper)
  {
    CPMLRemapper::~CPMLRemapper(cpRemapper);
    MEMORY[0x24C19F910]();
  }

  cpCDB = self->cpCDB;
  if (cpCDB)
  {
    CPMLCDB::~CPMLCDB(cpCDB);
    MEMORY[0x24C19F910]();
  }

  trainerCPSerializer = self->trainerCPSerializer;
  if (trainerCPSerializer)
  {
    (*(trainerCPSerializer->var0 + 1))(trainerCPSerializer, a2);
  }

  cpMLAlgo = self->cpMLAlgo;
  if (cpMLAlgo)
  {
    (*(cpMLAlgo->var0 + 1))(cpMLAlgo, a2);
  }

  cpTuneableData = self->cpTuneableData;
  if (cpTuneableData)
  {
    MEMORY[0x24C19F910](cpTuneableData, 0x1080C40C4643742);
  }

  trainerCPStatistics = self->trainerCPStatistics;
  if (trainerCPStatistics)
  {
    CPMLStatistics::~CPMLStatistics(trainerCPStatistics);
    MEMORY[0x24C19F910]();
  }

  v9.receiver = self;
  v9.super_class = CPMLTrainer;
  [(CPMLTrainer *)&v9 dealloc];
}

- (id)fileProtectionClassRequest:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NSFileProtectionCompleteUntilFirstUserAuthentication"])
  {
    v4 = MEMORY[0x277CCA1A0];
LABEL_9:
    v5 = *v4;
    goto LABEL_10;
  }

  if ([v3 isEqualToString:@"NSFileProtectionCompleteUnlessOpen"])
  {
    v4 = MEMORY[0x277CCA198];
    goto LABEL_9;
  }

  if ([v3 isEqualToString:@"NSFileProtectionComplete"])
  {
    v4 = MEMORY[0x277CCA190];
    goto LABEL_9;
  }

  if ([v3 isEqualToString:@"NSFileProtectionNone"])
  {
    v4 = MEMORY[0x277CCA1B8];
    goto LABEL_9;
  }

  v5 = 0;
LABEL_10:

  return v5;
}

- (void)train:(BOOL)a3
{
  v5 = [(CPMLDB *)self->cpmlDB getDispatchQueue];
  v6 = v5;
  if (*(self->trainerCPStatistics + 31) <= 0)
  {
    NSLog(&cfstr_TrainColumnSta.isa);
  }

  else
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __21__CPMLTrainer_train___block_invoke;
    v9[3] = &unk_278E9ECC8;
    v9[4] = self;
    v10 = a3;
    dispatch_sync(v5, v9);
    cpmlDB = self->cpmlDB;
    v8 = [(NSDictionary *)self->modelPlist objectForKey:@"clearTrainingValueTrainingPhase"];
    [v8 doubleValue];
    [(CPMLDB *)cpmlDB removeTrainingRowData:?];
  }
}

uint64_t __21__CPMLTrainer_train___block_invoke(uint64_t a1)
{
  (*(**(*(a1 + 32) + 80) + 232))(*(*(a1 + 32) + 80));
  (*(**(*(a1 + 32) + 48) + 40))(*(*(a1 + 32) + 48));
  if (*(a1 + 40) == 1)
  {
    CPModelClose(*(*(a1 + 32) + 40));
    (*(**(*(a1 + 32) + 80) + 16))(*(*(a1 + 32) + 80), *(*(a1 + 32) + 72) + 120, "cptrainRows", 1, 0);
    (*(**(*(a1 + 32) + 80) + 16))(*(*(a1 + 32) + 80), *(*(a1 + 32) + 72) + 124, "cptrainColumns", 1, 0);
    (*(**(*(a1 + 32) + 80) + 16))(*(*(a1 + 32) + 80), *(*(a1 + 32) + 72) + 128, "cptrainyCol", 1, 0);
    (*(**(*(a1 + 32) + 80) + 16))(*(*(a1 + 32) + 80), *(*(*(a1 + 32) + 72) + 72), "cpContinousData", *(*(*(a1 + 32) + 72) + 124), 0);
    (*(**(*(a1 + 32) + 80) + 16))(*(*(a1 + 32) + 80), *(*(*(a1 + 32) + 72) + 96), "cpValRemap", *(*(*(a1 + 32) + 72) + 124), 0);
    (*(**(*(a1 + 32) + 80) + 48))(*(*(a1 + 32) + 80), *(*(*(a1 + 32) + 72) + 144), "cptrainCard", *(*(*(a1 + 32) + 72) + 124), 0);
    (*(**(*(a1 + 32) + 80) + 48))(*(*(a1 + 32) + 80), *(*(*(a1 + 32) + 72) + 168), "cptrainMean", *(*(*(a1 + 32) + 72) + 124), 0);
    (*(**(*(a1 + 32) + 80) + 48))(*(*(a1 + 32) + 80), *(*(*(a1 + 32) + 72) + 192), "cpSTDev", *(*(*(a1 + 32) + 72) + 124), 0);
    (*(**(*(a1 + 32) + 80) + 48))(*(*(a1 + 32) + 80), *(*(*(a1 + 32) + 72) + 216), "cpMin", *(*(*(a1 + 32) + 72) + 124), 0);
    (*(**(*(a1 + 32) + 80) + 48))(*(*(a1 + 32) + 80), *(*(*(a1 + 32) + 72) + 240), "cpMax", *(*(*(a1 + 32) + 72) + 124), 0);
    (*(**(*(a1 + 32) + 48) + 32))(*(*(a1 + 32) + 48));
  }

  v2 = *(**(*(a1 + 32) + 80) + 240);

  return v2();
}

- (void)buildTrainingMachineLearningAlgorithm:(id)a3
{
  v8 = a3;
  if ([v8 isEqualToString:@"SVM"])
  {
    operator new();
  }

  if ([v8 isEqualToString:@"LIBSVM"])
  {
    operator new();
  }

  if ([v8 isEqualToString:@"LINEARSVM"])
  {
    operator new();
  }

  if ([v8 isEqualToString:@"NB"])
  {
    operator new();
  }

  if ([v8 isEqualToString:@"NB_BASE"])
  {
    operator new();
  }

  if ([v8 isEqualToString:@"NAIVE_BAYES"])
  {
    operator new();
  }

  if ([v8 isEqualToString:@"NAIVE_BAYESV2"])
  {
    operator new();
  }

  if ([v8 isEqualToString:@"NAIVEBAYES"])
  {
    operator new();
  }

  if ([v8 isEqualToString:@"KMEANS"])
  {
    operator new();
  }

  if ([v8 isEqualToString:@"KNN"])
  {
    operator new();
  }

  if ([v8 isEqualToString:@"LOGISTIC_REGRESSION"])
  {
    operator new();
  }

  if ([v8 isEqualToString:@"REGRESSION_FOREST"])
  {
    operator new();
  }

  if ([v8 isEqualToString:@"GAUSSIAN_MIXTURE_MODEL"])
  {
    operator new();
  }

  if ([v8 isEqualToString:@"LINEAR_REGRESSION"])
  {
    operator new();
  }

  NSLog(&cfstr_SNoMlAlgoSelec.isa, "[CPMLTrainer buildTrainingMachineLearningAlgorithm:]");
  self->shouldFail = 1;
  self->cpMLAlgo = 0;
  if (self->_theDelegate)
  {
    cpMLAlgo = self->cpMLAlgo;
    if (cpMLAlgo)
    {
      (*(cpMLAlgo->var0 + 1))(cpMLAlgo);
    }

    storageManager = self->_storageManager;
    if (!storageManager)
    {
      v6 = objc_alloc_init(CPMLStorageManager);
      v7 = self->_storageManager;
      self->_storageManager = v6;

      storageManager = self->_storageManager;
    }

    [(CPMLAlgorithmProtocol *)self->_theDelegate initCPMLAlgorithm:storageManager];
    operator new();
  }
}

@end