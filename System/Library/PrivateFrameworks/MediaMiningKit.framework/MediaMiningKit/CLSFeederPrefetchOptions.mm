@interface CLSFeederPrefetchOptions
+ (id)feederPrefetchOptionsWithDefaultMode:(unint64_t)mode;
- (CLSFeederPrefetchOptions)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)mergeWithFeederPrefetchOptions:(id)options;
@end

@implementation CLSFeederPrefetchOptions

- (void)mergeWithFeederPrefetchOptions:(id)options
{
  personCountPrefetchMode = self->_personCountPrefetchMode;
  optionsCopy = options;
  personCountPrefetchMode = [optionsCopy personCountPrefetchMode];
  if (personCountPrefetchMode <= personCountPrefetchMode)
  {
    v7 = personCountPrefetchMode;
  }

  else
  {
    v7 = personCountPrefetchMode;
  }

  self->_personCountPrefetchMode = v7;
  personsPrefetchMode = self->_personsPrefetchMode;
  personsPrefetchMode = [optionsCopy personsPrefetchMode];
  if (personsPrefetchMode <= personsPrefetchMode)
  {
    v10 = personsPrefetchMode;
  }

  else
  {
    v10 = personsPrefetchMode;
  }

  self->_personsPrefetchMode = v10;
  scenesPrefetchMode = self->_scenesPrefetchMode;
  scenesPrefetchMode = [optionsCopy scenesPrefetchMode];
  if (scenesPrefetchMode <= scenesPrefetchMode)
  {
    v13 = scenesPrefetchMode;
  }

  else
  {
    v13 = scenesPrefetchMode;
  }

  self->_scenesPrefetchMode = v13;
  faceInformationPrefetchMode = self->_faceInformationPrefetchMode;
  faceInformationPrefetchMode = [optionsCopy faceInformationPrefetchMode];
  if (faceInformationPrefetchMode <= faceInformationPrefetchMode)
  {
    v16 = faceInformationPrefetchMode;
  }

  else
  {
    v16 = faceInformationPrefetchMode;
  }

  self->_faceInformationPrefetchMode = v16;
  locationPrefetchMode = self->_locationPrefetchMode;
  locationPrefetchMode = [optionsCopy locationPrefetchMode];

  if (locationPrefetchMode <= locationPrefetchMode)
  {
    v19 = locationPrefetchMode;
  }

  else
  {
    v19 = locationPrefetchMode;
  }

  self->_locationPrefetchMode = v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_opt_class() allocWithZone:zone];
  *(result + 1) = self->_personCountPrefetchMode;
  *(result + 2) = self->_personsPrefetchMode;
  *(result + 3) = self->_scenesPrefetchMode;
  *(result + 4) = self->_faceInformationPrefetchMode;
  *(result + 5) = self->_locationPrefetchMode;
  return result;
}

- (CLSFeederPrefetchOptions)init
{
  v3.receiver = self;
  v3.super_class = CLSFeederPrefetchOptions;
  result = [(CLSFeederPrefetchOptions *)&v3 init];
  if (result)
  {
    result->_locationPrefetchMode = 0;
    *&result->_scenesPrefetchMode = 0u;
    *&result->_personCountPrefetchMode = 0u;
  }

  return result;
}

+ (id)feederPrefetchOptionsWithDefaultMode:(unint64_t)mode
{
  v4 = objc_alloc_init(CLSFeederPrefetchOptions);
  v4->_personCountPrefetchMode = mode;
  v4->_personsPrefetchMode = mode;
  v4->_scenesPrefetchMode = mode;
  v4->_faceInformationPrefetchMode = mode;
  v4->_locationPrefetchMode = mode;

  return v4;
}

@end