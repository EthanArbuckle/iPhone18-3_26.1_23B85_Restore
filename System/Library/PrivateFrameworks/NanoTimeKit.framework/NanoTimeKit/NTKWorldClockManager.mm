@interface NTKWorldClockManager
+ (id)sharedManager;
- (BOOL)canAddCity;
- (BOOL)checkIfCitiesModified;
- (NSArray)cities;
- (NTKWorldClockManager)init;
- (unint64_t)addCity:(id)a3;
- (unint64_t)addCityByIdentifier:(int64_t)a3;
- (void)loadCities;
- (void)saveCities;
@end

@implementation NTKWorldClockManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[NTKWorldClockManager sharedManager];
  }

  v3 = sharedManager___sharedInstance;

  return v3;
}

void __37__NTKWorldClockManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(NTKWorldClockManager);
  v1 = sharedManager___sharedInstance;
  sharedManager___sharedInstance = v0;
}

- (NTKWorldClockManager)init
{
  v6.receiver = self;
  v6.super_class = NTKWorldClockManager;
  v2 = [(NTKWorldClockManager *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D29758] sharedManager];
    frameworkManager = v2->_frameworkManager;
    v2->_frameworkManager = v3;

    v2->_frameworkLock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (NSArray)cities
{
  os_unfair_lock_lock(&self->_frameworkLock);
  v3 = [(WorldClockManager *)self->_frameworkManager cities];
  v4 = [v3 copy];

  os_unfair_lock_unlock(&self->_frameworkLock);

  return v4;
}

- (void)loadCities
{
  os_unfair_lock_lock(&self->_frameworkLock);
  [(WorldClockManager *)self->_frameworkManager loadCities];

  os_unfair_lock_unlock(&self->_frameworkLock);
}

- (BOOL)checkIfCitiesModified
{
  os_unfair_lock_lock(&self->_frameworkLock);
  v3 = [(WorldClockManager *)self->_frameworkManager checkIfCitiesModified];
  os_unfair_lock_unlock(&self->_frameworkLock);
  return v3;
}

- (void)saveCities
{
  os_unfair_lock_lock(&self->_frameworkLock);
  [(WorldClockManager *)self->_frameworkManager saveCities];

  os_unfair_lock_unlock(&self->_frameworkLock);
}

- (BOOL)canAddCity
{
  os_unfair_lock_lock(&self->_frameworkLock);
  v3 = [(WorldClockManager *)self->_frameworkManager canAddCity];
  os_unfair_lock_unlock(&self->_frameworkLock);
  return v3;
}

- (unint64_t)addCity:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_frameworkLock);
  v5 = [(WorldClockManager *)self->_frameworkManager addCity:v4];

  os_unfair_lock_unlock(&self->_frameworkLock);
  return v5;
}

- (unint64_t)addCityByIdentifier:(int64_t)a3
{
  os_unfair_lock_lock(&self->_frameworkLock);
  v5 = [objc_alloc(MEMORY[0x277D29750]) initWithALCityIdentifier:a3];
  v6 = [(WorldClockManager *)self->_frameworkManager addCity:v5];
  os_unfair_lock_unlock(&self->_frameworkLock);

  return v6;
}

@end