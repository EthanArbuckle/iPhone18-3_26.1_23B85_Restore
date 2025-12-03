@interface _ICInputContextManager
+ (id)sharedManager;
- (_ICInputContextManager)initWithPredictionSource:(id)source;
- (id)addContactObserver:(id)observer;
- (id)addNamedEntitiesUpdateObserver:(id)observer;
- (id)getLexiconManager;
- (id)getPredictionManager;
- (id)initForIntegrationTesting;
- (id)lastCachedResultWithInitialCharacters:(id)characters;
- (id)loadLexicons;
- (id)loadLexicons:(id)lexicons;
- (id)loadLexiconsUsingFilter:(id)filter;
- (id)searchForMeCardEmailAddresses;
- (id)searchForMeCardRegions;
- (void)doInitLexiconManager;
- (void)doInitPredictionManager;
- (void)hibernate;
- (void)initLexiconManager;
- (void)initPredictionManager;
- (void)predictedItemSelected:(id)selected;
- (void)removeContactObserver:(id)observer;
- (void)removeNamedEntitiesUpdateObserver:(id)observer;
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

- (id)lastCachedResultWithInitialCharacters:(id)characters
{
  charactersCopy = characters;
  getPredictionManager = [(_ICInputContextManager *)self getPredictionManager];
  v6 = [getPredictionManager lastCachedResultWithInitialCharacters:charactersCopy];

  return v6;
}

- (void)predictedItemSelected:(id)selected
{
  selectedCopy = selected;
  getPredictionManager = [(_ICInputContextManager *)self getPredictionManager];
  [getPredictionManager predictedItemSelected:selectedCopy];
}

- (void)reset
{
  getPredictionManager = [(_ICInputContextManager *)self getPredictionManager];
  [getPredictionManager reset];
}

- (id)searchForMeCardRegions
{
  getPredictionManager = [(_ICInputContextManager *)self getPredictionManager];
  searchForMeCardRegions = [getPredictionManager searchForMeCardRegions];

  return searchForMeCardRegions;
}

- (id)searchForMeCardEmailAddresses
{
  getPredictionManager = [(_ICInputContextManager *)self getPredictionManager];
  searchForMeCardEmailAddresses = [getPredictionManager searchForMeCardEmailAddresses];

  return searchForMeCardEmailAddresses;
}

- (id)addContactObserver:(id)observer
{
  observerCopy = observer;
  getLexiconManager = [(_ICInputContextManager *)self getLexiconManager];
  v6 = [getLexiconManager addContactObserver:observerCopy];

  return v6;
}

- (void)removeContactObserver:(id)observer
{
  observerCopy = observer;
  getLexiconManager = [(_ICInputContextManager *)self getLexiconManager];
  [getLexiconManager removeContactObserver:observerCopy];
}

- (id)addNamedEntitiesUpdateObserver:(id)observer
{
  observerCopy = observer;
  getLexiconManager = [(_ICInputContextManager *)self getLexiconManager];
  v6 = [getLexiconManager addNamedEntitiesUpdateObserver:observerCopy];

  return v6;
}

- (void)removeNamedEntitiesUpdateObserver:(id)observer
{
  observerCopy = observer;
  getLexiconManager = [(_ICInputContextManager *)self getLexiconManager];
  [getLexiconManager removeNamedEntitiesUpdateObserver:observerCopy];
}

- (id)loadLexicons:(id)lexicons
{
  lexiconsCopy = lexicons;
  getLexiconManager = [(_ICInputContextManager *)self getLexiconManager];
  v6 = [getLexiconManager loadLexicons:lexiconsCopy];

  return v6;
}

- (id)loadLexiconsUsingFilter:(id)filter
{
  filterCopy = filter;
  getLexiconManager = [(_ICInputContextManager *)self getLexiconManager];
  v6 = [getLexiconManager loadLexiconsUsingFilter:filterCopy];

  return v6;
}

- (id)loadLexicons
{
  getLexiconManager = [(_ICInputContextManager *)self getLexiconManager];
  loadLexicons = [getLexiconManager loadLexicons];

  return loadLexicons;
}

- (void)unloadLexicons
{
  getLexiconManager = [(_ICInputContextManager *)self getLexiconManager];
  [getLexiconManager unloadLexicons];
}

- (void)warmUp
{
  getPredictionManager = [(_ICInputContextManager *)self getPredictionManager];
  [getPredictionManager warmUp];

  getLexiconManager = [(_ICInputContextManager *)self getLexiconManager];
  [getLexiconManager warmUp];
}

- (void)hibernate
{
  getPredictionManager = [(_ICInputContextManager *)self getPredictionManager];
  [getPredictionManager hibernate];

  getLexiconManager = [(_ICInputContextManager *)self getLexiconManager];
  [getLexiconManager hibernate];
}

- (_ICInputContextManager)initWithPredictionSource:(id)source
{
  v12[1] = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  v5 = [(_ICInputContextManager *)self init];
  if (v5)
  {
    v6 = [_ICPredictionManager alloc];
    v12[0] = sourceCopy;
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