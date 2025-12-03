@interface FAPresetsConfiguration
- (BOOL)areMusicProfilesAllowed;
- (BOOL)areMusicVideosAllowed;
- (BOOL)isBooksAllowed;
- (BOOL)isDeletingAppsAllowed;
- (BOOL)isExplicitMediaAllowed;
- (BOOL)isSiriExplicitAllowed;
- (BOOL)isSiriWebSearchAllowed;
- (FAPresetsConfiguration)initWithSTPresetsConfiguration:(id)configuration;
- (NSNumber)allowedAppStoreRating;
- (NSNumber)allowedMovieRating;
- (NSNumber)allowedTVRating;
@end

@implementation FAPresetsConfiguration

- (FAPresetsConfiguration)initWithSTPresetsConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = FAPresetsConfiguration;
  v6 = [(FAPresetsConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_stPresetsConfiguration, configuration);
  }

  return v7;
}

- (NSNumber)allowedAppStoreRating
{
  stPresetsConfiguration = [(FAPresetsConfiguration *)self stPresetsConfiguration];
  allowedAppStoreRating = [stPresetsConfiguration allowedAppStoreRating];

  return allowedAppStoreRating;
}

- (BOOL)isBooksAllowed
{
  stPresetsConfiguration = [(FAPresetsConfiguration *)self stPresetsConfiguration];
  isBooksAllowed = [stPresetsConfiguration isBooksAllowed];

  return isBooksAllowed;
}

- (NSNumber)allowedTVRating
{
  stPresetsConfiguration = [(FAPresetsConfiguration *)self stPresetsConfiguration];
  allowedTVRating = [stPresetsConfiguration allowedTVRating];

  return allowedTVRating;
}

- (NSNumber)allowedMovieRating
{
  stPresetsConfiguration = [(FAPresetsConfiguration *)self stPresetsConfiguration];
  allowedMovieRating = [stPresetsConfiguration allowedMovieRating];

  return allowedMovieRating;
}

- (BOOL)isExplicitMediaAllowed
{
  stPresetsConfiguration = [(FAPresetsConfiguration *)self stPresetsConfiguration];
  isExplicitMediaAllowed = [stPresetsConfiguration isExplicitMediaAllowed];

  return isExplicitMediaAllowed;
}

- (BOOL)areMusicVideosAllowed
{
  stPresetsConfiguration = [(FAPresetsConfiguration *)self stPresetsConfiguration];
  areMusicVideosAllowed = [stPresetsConfiguration areMusicVideosAllowed];

  return areMusicVideosAllowed;
}

- (BOOL)areMusicProfilesAllowed
{
  stPresetsConfiguration = [(FAPresetsConfiguration *)self stPresetsConfiguration];
  areMusicProfilesAllowed = [stPresetsConfiguration areMusicProfilesAllowed];

  return areMusicProfilesAllowed;
}

- (BOOL)isSiriWebSearchAllowed
{
  stPresetsConfiguration = [(FAPresetsConfiguration *)self stPresetsConfiguration];
  isSiriWebSearchAllowed = [stPresetsConfiguration isSiriWebSearchAllowed];

  return isSiriWebSearchAllowed;
}

- (BOOL)isSiriExplicitAllowed
{
  stPresetsConfiguration = [(FAPresetsConfiguration *)self stPresetsConfiguration];
  isSiriExplicitAllowed = [stPresetsConfiguration isSiriExplicitAllowed];

  return isSiriExplicitAllowed;
}

- (BOOL)isDeletingAppsAllowed
{
  stPresetsConfiguration = [(FAPresetsConfiguration *)self stPresetsConfiguration];
  isDeletingAppsAllowed = [stPresetsConfiguration isDeletingAppsAllowed];

  return isDeletingAppsAllowed;
}

@end