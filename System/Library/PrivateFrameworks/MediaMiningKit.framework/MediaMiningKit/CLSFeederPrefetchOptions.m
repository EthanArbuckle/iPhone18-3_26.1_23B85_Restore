@interface CLSFeederPrefetchOptions
+ (id)feederPrefetchOptionsWithDefaultMode:(unint64_t)a3;
- (CLSFeederPrefetchOptions)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)mergeWithFeederPrefetchOptions:(id)a3;
@end

@implementation CLSFeederPrefetchOptions

- (void)mergeWithFeederPrefetchOptions:(id)a3
{
  personCountPrefetchMode = self->_personCountPrefetchMode;
  v5 = a3;
  v6 = [v5 personCountPrefetchMode];
  if (personCountPrefetchMode <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = personCountPrefetchMode;
  }

  self->_personCountPrefetchMode = v7;
  personsPrefetchMode = self->_personsPrefetchMode;
  v9 = [v5 personsPrefetchMode];
  if (personsPrefetchMode <= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = personsPrefetchMode;
  }

  self->_personsPrefetchMode = v10;
  scenesPrefetchMode = self->_scenesPrefetchMode;
  v12 = [v5 scenesPrefetchMode];
  if (scenesPrefetchMode <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = scenesPrefetchMode;
  }

  self->_scenesPrefetchMode = v13;
  faceInformationPrefetchMode = self->_faceInformationPrefetchMode;
  v15 = [v5 faceInformationPrefetchMode];
  if (faceInformationPrefetchMode <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = faceInformationPrefetchMode;
  }

  self->_faceInformationPrefetchMode = v16;
  locationPrefetchMode = self->_locationPrefetchMode;
  v18 = [v5 locationPrefetchMode];

  if (locationPrefetchMode <= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = locationPrefetchMode;
  }

  self->_locationPrefetchMode = v19;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_opt_class() allocWithZone:a3];
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

+ (id)feederPrefetchOptionsWithDefaultMode:(unint64_t)a3
{
  v4 = objc_alloc_init(CLSFeederPrefetchOptions);
  v4->_personCountPrefetchMode = a3;
  v4->_personsPrefetchMode = a3;
  v4->_scenesPrefetchMode = a3;
  v4->_faceInformationPrefetchMode = a3;
  v4->_locationPrefetchMode = a3;

  return v4;
}

@end