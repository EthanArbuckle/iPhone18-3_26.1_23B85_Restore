@interface CPLEngineParametersStorage
+ (NSSet)defaultSupportedLibraryIdentifiers;
- (BOOL)removeParametersWithLibraryIdentifier:(id)a3 error:(id *)a4;
- (BOOL)saveParameters:(id)a3 error:(id *)a4;
- (CPLEngineParametersStorage)initWithBundleIdentifier:(id)a3;
- (CPLEngineParametersStorage)initWithUserDefaults:(id)a3 bundleIdentifier:(id)a4 supportedLibraryIdentifiers:(id)a5;
- (NSArray)allDefinedParameters;
- (id)_savedParametersForKey:(id)a3;
- (id)parametersForLibraryIdentifier:(id)a3;
- (void)_removeKeyForInsanityForLibraryIdentifier:(id)a3;
- (void)_saveParameters:(id)a3 withKey:(id)a4;
- (void)_setKeyForInsanityIfNecessaryForParameters:(id)a3;
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

- (CPLEngineParametersStorage)initWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [objc_opt_class() defaultSupportedLibraryIdentifiers];
  v7 = [(CPLEngineParametersStorage *)self initWithUserDefaults:v5 bundleIdentifier:v4 supportedLibraryIdentifiers:v6];

  return v7;
}

- (CPLEngineParametersStorage)initWithUserDefaults:(id)a3 bundleIdentifier:(id)a4 supportedLibraryIdentifiers:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v36.receiver = self;
  v36.super_class = CPLEngineParametersStorage;
  v12 = [(CPLEngineParametersStorage *)&v36 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_userDefaults, a3);
    v14 = [v10 copy];
    bundleIdentifier = v13->_bundleIdentifier;
    v13->_bundleIdentifier = v14;

    v16 = [v11 copy];
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
        v31 = [v26 integerValue];

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
          v29 = [(CPLEngineParameters *)v28 initWithClientLibraryBaseURL:v24 cloudLibraryStateStorageURL:v33 cloudLibraryResourceStorageURL:v35 libraryIdentifier:v20 mainScopeIdentifier:CPLPrimaryScopeIdentifier options:v31];
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

- (id)_savedParametersForKey:(id)a3
{
  v4 = a3;
  v5 = [(NSUserDefaults *)self->_userDefaults dictionaryForKey:v4];
  if (v5)
  {
    v6 = [[CPLEngineParameters alloc] initWithPlist:v5];
    v7 = [(CPLEngineParameters *)v6 asPlist];
    if (([v7 isEqual:v5] & 1) == 0)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v8 = sub_100023BA4();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 138543874;
          v11 = v4;
          v12 = 2112;
          v13 = v5;
          v14 = 2112;
          v15 = v7;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Updating plist for %{public}@ from %@ to %@", &v10, 0x20u);
        }
      }

      [(CPLEngineParametersStorage *)self _saveParameters:v6 withKey:v4];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_saveParameters:(id)a3 withKey:(id)a4
{
  v6 = a4;
  v7 = [a3 asPlist];
  [(NSUserDefaults *)self->_userDefaults setObject:v7 forKey:v6];

  [(NSUserDefaults *)self->_userDefaults synchronize];
}

- (void)_setKeyForInsanityIfNecessaryForParameters:(id)a3
{
  v4 = a3;
  v5 = [v4 cloudLibraryResourceStorageURL];
  v6 = [v5 lastPathComponent];

  if (v6 && ([v6 isEqual:@"storage"] & 1) != 0)
  {
  }

  else
  {
    sub_1001904CC(v6, v4, self);
  }
}

- (void)_removeKeyForInsanityForLibraryIdentifier:(id)a3
{
  userDefaults = self->_userDefaults;
  v4 = [(CPLEngineParametersStorage *)self _keyForInsanityForLibraryIdentifier:a3];
  [(NSUserDefaults *)userDefaults removeObjectForKey:v4];
}

- (id)parametersForLibraryIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineParametersStorage *)self keyForLibraryIdentifier:v4 error:0];
  if (v5)
  {
    v6 = [(CPLEngineParametersStorage *)self _savedParametersForKey:v5];
    v7 = [v6 libraryIdentifier];
    v8 = [v7 isEqualToString:v4];

    if (v8)
    {
      goto LABEL_5;
    }
  }

  v6 = 0;
LABEL_5:

  return v6;
}

- (BOOL)removeParametersWithLibraryIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLEngineParametersStorage *)self keyForLibraryIdentifier:v6 error:a4];
  if (v7)
  {
    [(NSUserDefaults *)self->_userDefaults removeObjectForKey:v7];
    [(CPLEngineParametersStorage *)self _removeKeyForInsanityForLibraryIdentifier:v6];
    [(NSUserDefaults *)self->_userDefaults synchronize];
  }

  return v7 != 0;
}

- (BOOL)saveParameters:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 libraryIdentifier];
  v8 = [(CPLEngineParametersStorage *)self keyForLibraryIdentifier:v7 error:a4];

  if (v8)
  {
    [(CPLEngineParametersStorage *)self _saveParameters:v6 withKey:v8];
    [(CPLEngineParametersStorage *)self _setKeyForInsanityIfNecessaryForParameters:v6];
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
  v13 = self;
  v5 = v3;
  v14 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:&v9];

  [(NSArray *)v5 sortUsingComparator:&stru_1002732C8, v9, v10, v11, v12, v13];
  v6 = v14;
  v7 = v5;

  return v5;
}

@end