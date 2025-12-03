@interface CPLEngineParametersStorage
+ (NSSet)defaultSupportedLibraryIdentifiers;
- (BOOL)removeParametersWithLibraryIdentifier:(id)identifier error:(id *)error;
- (BOOL)saveParameters:(id)parameters error:(id *)error;
- (CPLEngineParametersStorage)initWithBundleIdentifier:(id)identifier;
- (CPLEngineParametersStorage)initWithUserDefaults:(id)defaults bundleIdentifier:(id)identifier supportedLibraryIdentifiers:(id)identifiers;
- (NSArray)allDefinedParameters;
- (id)_savedParametersForKey:(id)key;
- (id)parametersForLibraryIdentifier:(id)identifier;
- (void)_removeKeyForInsanityForLibraryIdentifier:(id)identifier;
- (void)_saveParameters:(id)parameters withKey:(id)key;
- (void)_setKeyForInsanityIfNecessaryForParameters:(id)parameters;
@end

@implementation CPLEngineParametersStorage

+ (NSSet)defaultSupportedLibraryIdentifiers
{
  if (qword_1002C4F98 != -1)
  {
    sub_1001903D0();
  }

  v3 = qword_1002C4F90;

  return v3;
}

- (CPLEngineParametersStorage)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[NSUserDefaults standardUserDefaults];
  defaultSupportedLibraryIdentifiers = [objc_opt_class() defaultSupportedLibraryIdentifiers];
  v7 = [(CPLEngineParametersStorage *)self initWithUserDefaults:v5 bundleIdentifier:identifierCopy supportedLibraryIdentifiers:defaultSupportedLibraryIdentifiers];

  return v7;
}

- (CPLEngineParametersStorage)initWithUserDefaults:(id)defaults bundleIdentifier:(id)identifier supportedLibraryIdentifiers:(id)identifiers
{
  defaultsCopy = defaults;
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  v36.receiver = self;
  v36.super_class = CPLEngineParametersStorage;
  v12 = [(CPLEngineParametersStorage *)&v36 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_userDefaults, defaults);
    v14 = [identifierCopy copy];
    bundleIdentifier = v13->_bundleIdentifier;
    v13->_bundleIdentifier = v14;

    v16 = [identifiersCopy copy];
    supportedLibraryIdentifiers = v13->_supportedLibraryIdentifiers;
    v13->_supportedLibraryIdentifiers = v16;

    v18 = [(NSUserDefaults *)v13->_userDefaults dictionaryForKey:@"CPLEngineInfo"];
    v19 = v18;
    if (!v18)
    {
LABEL_37:

      goto LABEL_38;
    }

    v20 = [v18 objectForKeyedSubscript:@"libraryIdentifier"];
    if ([v20 isEqualToString:@"MobileSlideShow"])
    {
      sub_1001903E4(v20, buf);
      v20 = *buf;
      if (*buf)
      {
LABEL_5:
        v21 = [(CPLEngineParametersStorage *)v13 keyForLibraryIdentifier:v20 error:0];
        if (!v21)
        {
          v23 = 0;
          goto LABEL_15;
        }

        v22 = [(CPLEngineParametersStorage *)v13 _savedParametersForKey:v21];
        if (v22)
        {
          v23 = v22;
LABEL_15:
          if (_CPLSilentLogging)
          {
LABEL_36:
            [(NSUserDefaults *)v13->_userDefaults removeObjectForKey:@"CPLEngineInfo"];

            goto LABEL_37;
          }

          v24 = sub_100023BA4();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = v20;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Discarding old engine info for %{public}@", buf, 0xCu);
          }

LABEL_35:

          goto LABEL_36;
        }

        v24 = [v19 objectForKeyedSubscript:@"clientLibraryBasePath"];
        v25 = [v19 objectForKeyedSubscript:@"cloudLibraryStateStoragePath"];
        v34 = [v19 objectForKeyedSubscript:@"cloudLibraryResourceStoragePath"];
        v32 = v24;
        if (v24)
        {
          v24 = [NSURL fileURLWithPath:v24 isDirectory:1];
        }

        if (v25)
        {
          v33 = [NSURL fileURLWithPath:v25 isDirectory:1];
        }

        else
        {
          v33 = 0;
        }

        if (v34)
        {
          v35 = [NSURL fileURLWithPath:v34 isDirectory:1];
        }

        else
        {
          v35 = 0;
        }

        v26 = [v19 objectForKeyedSubscript:@"options"];
        integerValue = [v26 integerValue];

        if (v25 && v24 && v35)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v27 = sub_100023BA4();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              *&buf[4] = v20;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Upgrading old engine info for %{public}@", buf, 0xCu);
            }
          }

          v28 = [CPLEngineParameters alloc];
          v29 = [(CPLEngineParameters *)v28 initWithClientLibraryBaseURL:v24 cloudLibraryStateStorageURL:v33 cloudLibraryResourceStorageURL:v35 libraryIdentifier:v20 mainScopeIdentifier:CPLPrimaryScopeIdentifier options:integerValue];
          [(CPLEngineParametersStorage *)v13 _saveParameters:v29 withKey:v21];
        }

        else
        {
          if (_CPLSilentLogging)
          {
LABEL_34:

            v23 = 0;
            goto LABEL_35;
          }

          v29 = sub_100023BA4();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            *&buf[4] = v20;
            v38 = 2112;
            v39 = v19;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Discarding old invalid engine info for %{public}@: %@", buf, 0x16u);
          }
        }

        goto LABEL_34;
      }
    }

    else if (v20)
    {
      goto LABEL_5;
    }

    v23 = 0;
    v21 = 0;
    goto LABEL_15;
  }

LABEL_38:

  return v13;
}

- (id)_savedParametersForKey:(id)key
{
  keyCopy = key;
  v5 = [(NSUserDefaults *)self->_userDefaults dictionaryForKey:keyCopy];
  if (v5)
  {
    v6 = [[CPLEngineParameters alloc] initWithPlist:v5];
    asPlist = [(CPLEngineParameters *)v6 asPlist];
    if (([asPlist isEqual:v5] & 1) == 0)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v8 = sub_100023BA4();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 138543874;
          v11 = keyCopy;
          v12 = 2112;
          v13 = v5;
          v14 = 2112;
          v15 = asPlist;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Updating plist for %{public}@ from %@ to %@", &v10, 0x20u);
        }
      }

      [(CPLEngineParametersStorage *)self _saveParameters:v6 withKey:keyCopy];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_saveParameters:(id)parameters withKey:(id)key
{
  keyCopy = key;
  asPlist = [parameters asPlist];
  [(NSUserDefaults *)self->_userDefaults setObject:asPlist forKey:keyCopy];

  [(NSUserDefaults *)self->_userDefaults synchronize];
}

- (void)_setKeyForInsanityIfNecessaryForParameters:(id)parameters
{
  parametersCopy = parameters;
  cloudLibraryResourceStorageURL = [parametersCopy cloudLibraryResourceStorageURL];
  lastPathComponent = [cloudLibraryResourceStorageURL lastPathComponent];

  if (lastPathComponent && ([lastPathComponent isEqual:@"storage"] & 1) != 0)
  {
  }

  else
  {
    sub_1001904CC(lastPathComponent, parametersCopy, self);
  }
}

- (void)_removeKeyForInsanityForLibraryIdentifier:(id)identifier
{
  userDefaults = self->_userDefaults;
  v4 = [(CPLEngineParametersStorage *)self _keyForInsanityForLibraryIdentifier:identifier];
  [(NSUserDefaults *)userDefaults removeObjectForKey:v4];
}

- (id)parametersForLibraryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(CPLEngineParametersStorage *)self keyForLibraryIdentifier:identifierCopy error:0];
  if (v5)
  {
    v6 = [(CPLEngineParametersStorage *)self _savedParametersForKey:v5];
    libraryIdentifier = [v6 libraryIdentifier];
    v8 = [libraryIdentifier isEqualToString:identifierCopy];

    if (v8)
    {
      goto LABEL_5;
    }
  }

  v6 = 0;
LABEL_5:

  return v6;
}

- (BOOL)removeParametersWithLibraryIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = [(CPLEngineParametersStorage *)self keyForLibraryIdentifier:identifierCopy error:error];
  if (v7)
  {
    [(NSUserDefaults *)self->_userDefaults removeObjectForKey:v7];
    [(CPLEngineParametersStorage *)self _removeKeyForInsanityForLibraryIdentifier:identifierCopy];
    [(NSUserDefaults *)self->_userDefaults synchronize];
  }

  return v7 != 0;
}

- (BOOL)saveParameters:(id)parameters error:(id *)error
{
  parametersCopy = parameters;
  libraryIdentifier = [parametersCopy libraryIdentifier];
  v8 = [(CPLEngineParametersStorage *)self keyForLibraryIdentifier:libraryIdentifier error:error];

  if (v8)
  {
    [(CPLEngineParametersStorage *)self _saveParameters:parametersCopy withKey:v8];
    [(CPLEngineParametersStorage *)self _setKeyForInsanityIfNecessaryForParameters:parametersCopy];
  }

  return v8 != 0;
}

- (NSArray)allDefinedParameters
{
  v3 = [[NSMutableArray alloc] initWithCapacity:{-[NSSet count](self->_supportedLibraryIdentifiers, "count")}];
  v4 = [(NSUserDefaults *)self->_userDefaults persistentDomainForName:self->_bundleIdentifier];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100024778;
  v12 = &unk_100273288;
  selfCopy = self;
  v5 = v3;
  v14 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:&v9];

  [(NSArray *)v5 sortUsingComparator:&stru_1002732C8, v9, v10, v11, v12, selfCopy];
  v6 = v14;
  v7 = v5;

  return v5;
}

@end