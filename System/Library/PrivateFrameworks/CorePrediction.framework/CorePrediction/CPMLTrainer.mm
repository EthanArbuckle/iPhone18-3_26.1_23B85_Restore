@interface CPMLTrainer
- (id)fileProtectionClassRequest:(id)request;
- (id)getSolution;
- (id)init:(id)init withModelDBPath:(id)path withPropertyList:(id)list;
- (void)buildTrainingMachineLearningAlgorithm:(id)algorithm;
- (void)dealloc;
- (void)train:(BOOL)train;
@end

@implementation CPMLTrainer

- (id)getSolution
{
  (*(self->cpMLAlgo->var0 + 4))(self->cpMLAlgo, a2);
  NSLog(&cfstr_GettingSolutio.isa);
  __p = 0;
  v9 = 0;
  (*(self->cpMLAlgo->var0 + 12))(self->cpMLAlgo, &__p);
  array = [MEMORY[0x277CBEB18] array];
  v4 = __p;
  if (v9 != __p)
  {
    v5 = 0;
    do
    {
      v6 = [MEMORY[0x277CCABB0] numberWithDouble:v4[v5]];
      [array addObject:v6];

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

  return array;
}

- (id)init:(id)init withModelDBPath:(id)path withPropertyList:(id)list
{
  v27 = *MEMORY[0x277D85DE8];
  initCopy = init;
  pathCopy = path;
  listCopy = list;
  v26.receiver = self;
  v26.super_class = CPMLTrainer;
  v11 = [(CPMLTrainer *)&v26 init];
  if (v11)
  {
    v12 = [listCopy objectForKey:@"loggingMode"];
    v13 = v12;
    if (v12 || (v14 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.cpml"], objc_msgSend(v14, "objectForKey:", @"loggingMode"), v13 = objc_claimAutoreleasedReturnValue(), v14, v13))
    {
      CPMLLog = CPMLLog::getCPMLLog(v12);
      CPMLLog[10] = [v13 longLongValue];
    }

    v11->shouldFail = 0;
    objc_storeStrong(&v11->cpmlDB, init);
    getDelegate = [(CPMLDB *)v11->cpmlDB getDelegate];
    theDelegate = v11->_theDelegate;
    v11->_theDelegate = getDelegate;

    [(CPMLDB *)v11->cpmlDB flushDB];
    if (pathCopy)
    {
      v18 = pathCopy;
      if (!sqlite3_open([pathCopy UTF8String], &v11->modelDB))
      {
        if (listCopy)
        {
          objc_storeStrong(&v11->modelPlist, list);
          v20 = [[CPMLSchema alloc] initWithPlist:listCopy];
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

      NSLog(&cfstr_CannotOpen.isa, pathCopy);
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

- (void)train:(BOOL)train
{
  getDispatchQueue = [(CPMLDB *)self->cpmlDB getDispatchQueue];
  v6 = getDispatchQueue;
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
    trainCopy = train;
    dispatch_sync(getDispatchQueue, v9);
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

- (void)buildTrainingMachineLearningAlgorithm:(id)algorithm
{
  algorithmCopy = algorithm;
  if ([algorithmCopy isEqualToString:@"SVM"])
  {
    operator new();
  }

  if ([algorithmCopy isEqualToString:@"LIBSVM"])
  {
    operator new();
  }

  if ([algorithmCopy isEqualToString:@"LINEARSVM"])
  {
    operator new();
  }

  if ([algorithmCopy isEqualToString:@"NB"])
  {
    operator new();
  }

  if ([algorithmCopy isEqualToString:@"NB_BASE"])
  {
    operator new();
  }

  if ([algorithmCopy isEqualToString:@"NAIVE_BAYES"])
  {
    operator new();
  }

  if ([algorithmCopy isEqualToString:@"NAIVE_BAYESV2"])
  {
    operator new();
  }

  if ([algorithmCopy isEqualToString:@"NAIVEBAYES"])
  {
    operator new();
  }

  if ([algorithmCopy isEqualToString:@"KMEANS"])
  {
    operator new();
  }

  if ([algorithmCopy isEqualToString:@"KNN"])
  {
    operator new();
  }

  if ([algorithmCopy isEqualToString:@"LOGISTIC_REGRESSION"])
  {
    operator new();
  }

  if ([algorithmCopy isEqualToString:@"REGRESSION_FOREST"])
  {
    operator new();
  }

  if ([algorithmCopy isEqualToString:@"GAUSSIAN_MIXTURE_MODEL"])
  {
    operator new();
  }

  if ([algorithmCopy isEqualToString:@"LINEAR_REGRESSION"])
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