@interface _ICInputContextManager
+ (id)sharedManager;
- (_ICInputContextManager)initWithPredictionSource:(id)a3;
- (id)addContactObserver:(id)a3;
- (id)addNamedEntitiesUpdateObserver:(id)a3;
- (id)getLexiconManager;
- (id)getPredictionManager;
- (id)initForIntegrationTesting;
- (id)lastCachedResultWithInitialCharacters:(id)a3;
- (id)loadLexicons;
- (id)loadLexicons:(id)a3;
- (id)loadLexiconsUsingFilter:(id)a3;
- (id)searchForMeCardEmailAddresses;
- (id)searchForMeCardRegions;
- (void)doInitLexiconManager;
- (void)doInitPredictionManager;
- (void)hibernate;
- (void)initLexiconManager;
- (void)initPredictionManager;
- (void)predictedItemSelected:(id)a3;
- (void)removeContactObserver:(id)a3;
- (void)removeNamedEntitiesUpdateObserver:(id)a3;
- (void)reset;
- (void)unloadLexicons;
- (void)warmUp;
@end

@implementation _ICInputContextManager

+ (id)sharedManager
{
  if (sharedManager_pred != -1)
  {
    +[_ICInputContextManager sharedManager];
  }

  v3 = sharedManager_sharedInstance;

  return v3;
}

- (void)doInitLexiconManager
{
  if (!self->_lexiconManager)
  {
    v7 = objc_opt_new();
    v4 = objc_opt_new();
    [v7 addObject:v4];

    v5 = [[_ICLexiconManager alloc] initWithLexiconSources:v7];
    lexiconManager = self->_lexiconManager;
    self->_lexiconManager = v5;
  }
}

- (void)initLexiconManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44___ICInputContextManager_initLexiconManager__block_invoke;
  block[3] = &unk_2797AD990;
  block[4] = self;
  if (initLexiconManager_pred != -1)
  {
    dispatch_once(&initLexiconManager_pred, block);
  }
}

- (void)doInitPredictionManager
{
  if (!self->_predictionManager)
  {
    v9 = objc_opt_new();
    v4 = objc_opt_new();
    [v9 addObject:v4];

    v5 = objc_opt_new();
    [v9 addObject:v5];

    v6 = objc_opt_new();
    [v9 addObject:v6];

    v7 = [[_ICPredictionManager alloc] initWithPredictionSources:v9];
    predictionManager = self->_predictionManager;
    self->_predictionManager = v7;
  }
}

- (void)initPredictionManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47___ICInputContextManager_initPredictionManager__block_invoke;
  block[3] = &unk_2797AD990;
  block[4] = self;
  if (initPredictionManager_pred != -1)
  {
    dispatch_once(&initPredictionManager_pred, block);
  }
}

- (id)getPredictionManager
{
  [(_ICInputContextManager *)self initPredictionManager];
  predictionManager = self->_predictionManager;

  return predictionManager;
}

- (id)getLexiconManager
{
  [(_ICInputContextManager *)self initLexiconManager];
  lexiconManager = self->_lexiconManager;

  return lexiconManager;
}

- (id)lastCachedResultWithInitialCharacters:(id)a3
{
  v4 = a3;
  v5 = [(_ICInputContextManager *)self getPredictionManager];
  v6 = [v5 lastCachedResultWithInitialCharacters:v4];

  return v6;
}

- (void)predictedItemSelected:(id)a3
{
  v4 = a3;
  v5 = [(_ICInputContextManager *)self getPredictionManager];
  [v5 predictedItemSelected:v4];
}

- (void)reset
{
  v2 = [(_ICInputContextManager *)self getPredictionManager];
  [v2 reset];
}

- (id)searchForMeCardRegions
{
  v2 = [(_ICInputContextManager *)self getPredictionManager];
  v3 = [v2 searchForMeCardRegions];

  return v3;
}

- (id)searchForMeCardEmailAddresses
{
  v2 = [(_ICInputContextManager *)self getPredictionManager];
  v3 = [v2 searchForMeCardEmailAddresses];

  return v3;
}

- (id)addContactObserver:(id)a3
{
  v4 = a3;
  v5 = [(_ICInputContextManager *)self getLexiconManager];
  v6 = [v5 addContactObserver:v4];

  return v6;
}

- (void)removeContactObserver:(id)a3
{
  v4 = a3;
  v5 = [(_ICInputContextManager *)self getLexiconManager];
  [v5 removeContactObserver:v4];
}

- (id)addNamedEntitiesUpdateObserver:(id)a3
{
  v4 = a3;
  v5 = [(_ICInputContextManager *)self getLexiconManager];
  v6 = [v5 addNamedEntitiesUpdateObserver:v4];

  return v6;
}

- (void)removeNamedEntitiesUpdateObserver:(id)a3
{
  v4 = a3;
  v5 = [(_ICInputContextManager *)self getLexiconManager];
  [v5 removeNamedEntitiesUpdateObserver:v4];
}

- (id)loadLexicons:(id)a3
{
  v4 = a3;
  v5 = [(_ICInputContextManager *)self getLexiconManager];
  v6 = [v5 loadLexicons:v4];

  return v6;
}

- (id)loadLexiconsUsingFilter:(id)a3
{
  v4 = a3;
  v5 = [(_ICInputContextManager *)self getLexiconManager];
  v6 = [v5 loadLexiconsUsingFilter:v4];

  return v6;
}

- (id)loadLexicons
{
  v2 = [(_ICInputContextManager *)self getLexiconManager];
  v3 = [v2 loadLexicons];

  return v3;
}

- (void)unloadLexicons
{
  v2 = [(_ICInputContextManager *)self getLexiconManager];
  [v2 unloadLexicons];
}

- (void)warmUp
{
  v3 = [(_ICInputContextManager *)self getPredictionManager];
  [v3 warmUp];

  v4 = [(_ICInputContextManager *)self getLexiconManager];
  [v4 warmUp];
}

- (void)hibernate
{
  v3 = [(_ICInputContextManager *)self getPredictionManager];
  [v3 hibernate];

  v4 = [(_ICInputContextManager *)self getLexiconManager];
  [v4 hibernate];
}

- (_ICInputContextManager)initWithPredictionSource:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_ICInputContextManager *)self init];
  if (v5)
  {
    v6 = [_ICPredictionManager alloc];
    v12[0] = v4;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v8 = [(_ICPredictionManager *)v6 initWithPredictionSources:v7];
    predictionManager = v5->_predictionManager;
    v5->_predictionManager = v8;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)initForIntegrationTesting
{
  v2 = [(_ICInputContextManager *)self init];
  v3 = v2;
  if (v2)
  {
    [(_ICInputContextManager *)v2 doInitLexiconManager];
    [(_ICInputContextManager *)v3 doInitPredictionManager];
  }

  return v3;
}

@end