@interface CPLPrivateEngineAlias
+ (BOOL)registerPrivateEngineAlias:(id)alias error:(id *)error;
+ (BOOL)unregisterPrivateEngineAliasWithName:(id)name error:(id *)error;
+ (NSArray)registeredAliasNames;
+ (NSArray)registeredAliases;
+ (id)_defaultBaseURL;
+ (id)_destinationURL;
+ (id)privateEngineAliasWithName:(id)name;
+ (unint64_t)baseLibraryOptions;
+ (void)_loadNonBuiltinAliases;
+ (void)_registerAliases;
+ (void)_registerPrivateEngineAlias:(id)alias builtin:(BOOL)builtin;
+ (void)_saveNonBuiltinAliases;
- (CPLPrivateEngineAlias)initWithName:(id)name mainScopeIdentifier:(id)identifier libraryIdentifier:(id)libraryIdentifier libraryOptions:(unint64_t)options baseURL:(id)l;
- (CPLPrivateEngineAlias)initWithName:(id)name universeName:(id)universeName libraryIdentifier:(id)identifier libraryOptions:(unint64_t)options baseURL:(id)l;
- (CPLPrivateEngineAlias)initWithPlist:(id)plist;
- (NSString)universeName;
- (id)asPlist;
- (id)newLibraryManager;
@end

@implementation CPLPrivateEngineAlias

+ (id)_defaultBaseURL
{
  v2 = +[NSProcessInfo processInfo];
  environment = [v2 environment];

  v4 = +[CPLPrivateEngineAlias privateEnginePathEnvKey];
  v5 = [environment objectForKeyedSubscript:v4];
  if (v5)
  {
    v6 = v5;

LABEL_4:
    v7 = [[NSURL alloc] initFileURLWithPath:v6 isDirectory:1];

    goto LABEL_5;
  }

  v6 = [environment objectForKeyedSubscript:@"TMPDIR"];

  if (v6)
  {
    goto LABEL_4;
  }

  v7 = [[NSURL alloc] initFileURLWithPath:@"/var/tmp" isDirectory:1];
LABEL_5:

  return v7;
}

+ (void)_registerAliases
{
  if (![qword_100040BC0 count])
  {
    if (!qword_100040BC8)
    {
      v3 = +[NSProcessInfo processInfo];
      environment = [v3 environment];
      v5 = +[CPLPrivateEngineAlias privateEngineAliasPathEnvKey];
      v6 = [environment objectForKeyedSubscript:v5];
      v7 = qword_100040BC8;
      qword_100040BC8 = v6;
    }

    byte_100040BD0 = 1;
    v8 = [CPLPrivateEngineAlias alloc];
    v9 = [(CPLPrivateEngineAlias *)v8 initWithName:silentMoverEngineAliasName universeName:silentMoverEngineUniverseName libraryIdentifier:@"CPLSilentMoverLib" libraryOptions:8 baseURL:0];
    [self _registerPrivateEngineAlias:v9 builtin:1];

    v10 = [CPLPrivateEngineAlias alloc];
    v11 = [(CPLPrivateEngineAlias *)v10 initWithName:normalCPLEngineAliasName universeName:0 libraryIdentifier:@"CPLPrimarySync" libraryOptions:9 baseURL:0];
    [self _registerPrivateEngineAlias:v11 builtin:1];

    v12 = +[NSUserDefaults standardUserDefaults];
    v13 = [v12 BOOLForKey:@"CPLTestPrivateEngineDisableScopeSync"];

    if (v13)
    {
      v14 = 9;
    }

    else
    {
      v14 = 1035;
    }

    if (CPLIsCollectionShareFeatureEnabled())
    {
      v14 |= 0x10uLL;
    }

    v15 = [[CPLPrivateEngineAlias alloc] initWithName:@"tests" universeName:@"UnitTests" libraryIdentifier:@"CPLUnitTests" libraryOptions:v14 baseURL:0];
    [self _registerPrivateEngineAlias:v15 builtin:1];

    [self _loadNonBuiltinAliases];
  }
}

+ (unint64_t)baseLibraryOptions
{
  if (byte_100040BD0)
  {
    return 8;
  }

  else
  {
    return 0;
  }
}

+ (id)_destinationURL
{
  if (qword_100040BC8)
  {
    stringByExpandingTildeInPath = qword_100040BC8;
  }

  else
  {
    stringByExpandingTildeInPath = [@"~/.cplprivateengines.plist" stringByExpandingTildeInPath];
  }

  v3 = stringByExpandingTildeInPath;
  v4 = [[NSURL alloc] initFileURLWithPath:stringByExpandingTildeInPath isDirectory:0];

  return v4;
}

+ (void)_saveNonBuiltinAliases
{
  v3 = [NSMutableArray alloc];
  v4 = [v3 initWithCapacity:{objc_msgSend(qword_100040BD8, "count")}];
  v5 = qword_100040BD8;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100007EB4;
  v8[3] = &unk_100034D58;
  v9 = v4;
  v6 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];
  _destinationURL = [self _destinationURL];
  [v6 writeToURL:_destinationURL error:0];
}

+ (void)_loadNonBuiltinAliases
{
  v3 = [NSArray alloc];
  _destinationURL = [self _destinationURL];
  v5 = [v3 initWithContentsOfURL:_destinationURL error:0];

  if (v5)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * v10);
          v12 = [CPLPrivateEngineAlias alloc];
          v13 = [(CPLPrivateEngineAlias *)v12 initWithPlist:v11, v14];
          if (v13)
          {
            [self _registerPrivateEngineAlias:v13 builtin:0];
          }

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }
}

+ (BOOL)registerPrivateEngineAlias:(id)alias error:(id *)error
{
  aliasCopy = alias;
  [self _registerAliases];
  v7 = qword_100040BC0;
  aliasName = [aliasCopy aliasName];
  v9 = [v7 objectForKeyedSubscript:aliasName];

  if (v9)
  {
    aliasName2 = [aliasCopy aliasName];

    v11 = [CPLErrors cplErrorWithCode:150 description:@"Alias %@ is already registered", aliasName2];

    if (error)
    {
      v12 = v11;
      *error = v11;
    }
  }

  else
  {
    [self _registerPrivateEngineAlias:aliasCopy builtin:0];

    [self _saveNonBuiltinAliases];
    v11 = 0;
  }

  return v9 == 0;
}

+ (void)_registerPrivateEngineAlias:(id)alias builtin:(BOOL)builtin
{
  aliasCopy = alias;
  v6 = qword_100040BC0;
  v14 = aliasCopy;
  if (!qword_100040BC0)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    v8 = qword_100040BC0;
    qword_100040BC0 = v7;

    v9 = objc_alloc_init(NSMutableDictionary);
    v10 = qword_100040BD8;
    qword_100040BD8 = v9;

    aliasCopy = v14;
    v6 = qword_100040BC0;
  }

  aliasName = [aliasCopy aliasName];
  [v6 setObject:v14 forKeyedSubscript:aliasName];

  if (!builtin)
  {
    v12 = qword_100040BD8;
    aliasName2 = [v14 aliasName];
    [v12 setObject:v14 forKeyedSubscript:aliasName2];
  }
}

+ (BOOL)unregisterPrivateEngineAliasWithName:(id)name error:(id *)error
{
  nameCopy = name;
  [self _registerAliases];
  v7 = [qword_100040BC0 objectForKeyedSubscript:nameCopy];

  if (v7)
  {
    v8 = [qword_100040BD8 objectForKeyedSubscript:nameCopy];

    if (v8)
    {
      [qword_100040BC0 removeObjectForKey:nameCopy];
      [qword_100040BD8 removeObjectForKey:nameCopy];
      [self _saveNonBuiltinAliases];
      [self _saveNonBuiltinAliases];
      nameCopy = 0;
      v10 = 1;
      goto LABEL_9;
    }

    v11 = @"Can't registered builtin alias %@";
  }

  else
  {
    v11 = @"Unknown alias %@";
  }

  nameCopy = [CPLErrors cplErrorWithCode:150 description:v11, nameCopy];
  if (error)
  {
    nameCopy = nameCopy;
    v10 = 0;
    *error = nameCopy;
  }

  else
  {
    v10 = 0;
  }

LABEL_9:

  return v10;
}

+ (id)privateEngineAliasWithName:(id)name
{
  nameCopy = name;
  [self _registerAliases];
  v5 = [qword_100040BC0 objectForKeyedSubscript:nameCopy];

  return v5;
}

+ (NSArray)registeredAliasNames
{
  [self _registerAliases];
  allKeys = [qword_100040BC0 allKeys];
  v3 = allKeys;
  if (allKeys)
  {
    v4 = allKeys;
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  v5 = v4;

  return v4;
}

+ (NSArray)registeredAliases
{
  [self _registerAliases];
  allValues = [qword_100040BC0 allValues];
  v3 = allValues;
  if (allValues)
  {
    v4 = allValues;
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  v5 = v4;

  return v4;
}

- (CPLPrivateEngineAlias)initWithName:(id)name mainScopeIdentifier:(id)identifier libraryIdentifier:(id)libraryIdentifier libraryOptions:(unint64_t)options baseURL:(id)l
{
  nameCopy = name;
  identifierCopy = identifier;
  libraryIdentifierCopy = libraryIdentifier;
  lCopy = l;
  if (!lCopy)
  {
    lCopy = [objc_opt_class() _defaultBaseURL];
  }

  v29.receiver = self;
  v29.super_class = CPLPrivateEngineAlias;
  v16 = [(CPLPrivateEngineAlias *)&v29 init];
  if (v16)
  {
    v17 = [nameCopy copy];
    aliasName = v16->_aliasName;
    v16->_aliasName = v17;

    v19 = [identifierCopy copy];
    mainScopeIdentifier = v16->_mainScopeIdentifier;
    v16->_mainScopeIdentifier = v19;

    v21 = [libraryIdentifierCopy copy];
    libraryIdentifier = v16->_libraryIdentifier;
    v16->_libraryIdentifier = v21;

    v16->_libraryOptions = options;
    v23 = [lCopy copy];
    baseURL = v16->_baseURL;
    v16->_baseURL = v23;

    v25 = [lCopy URLByAppendingPathComponent:libraryIdentifierCopy];
    v26 = [v25 URLByAppendingPathExtension:@"cpltestlibrary"];
    cplDirectoryURL = v16->_cplDirectoryURL;
    v16->_cplDirectoryURL = v26;
  }

  return v16;
}

- (CPLPrivateEngineAlias)initWithName:(id)name universeName:(id)universeName libraryIdentifier:(id)identifier libraryOptions:(unint64_t)options baseURL:(id)l
{
  lCopy = l;
  identifierCopy = identifier;
  nameCopy = name;
  v14 = CPLPrimaryScopeIdentifierForUniverseName();
  v15 = [(CPLPrivateEngineAlias *)self initWithName:nameCopy mainScopeIdentifier:v14 libraryIdentifier:identifierCopy libraryOptions:options baseURL:lCopy];

  return v15;
}

- (CPLPrivateEngineAlias)initWithPlist:(id)plist
{
  plistCopy = plist;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [plistCopy objectForKeyedSubscript:@"name"];
    v6 = [plistCopy objectForKeyedSubscript:@"identifier"];
    v7 = v6;
    selfCopy = 0;
    if (!v5 || !v6)
    {
      goto LABEL_31;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      selfCopy = 0;
LABEL_31:

      goto LABEL_32;
    }

    v9 = [plistCopy objectForKeyedSubscript:@"path"];
    if (v9)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        selfCopy = 0;
LABEL_30:

        goto LABEL_31;
      }
    }

    v10 = [plistCopy objectForKeyedSubscript:@"mainScopeIdentifier"];
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v12 = [plistCopy objectForKeyedSubscript:@"universe"];
      if (v12)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v11 = 0;
          goto LABEL_25;
        }
      }

      v11 = CPLPrimaryScopeIdentifierForUniverseName();

      if (!v11)
      {
LABEL_20:
        selfCopy = 0;
LABEL_29:

        goto LABEL_30;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [plistCopy objectForKeyedSubscript:@"options"];
      if (!v12)
      {
        baseLibraryOptions = [objc_opt_class() baseLibraryOptions];
        goto LABEL_22;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        baseLibraryOptions = [v12 integerValue];
LABEL_22:
        v14 = baseLibraryOptions;
        if (v9)
        {
          v15 = [[NSURL alloc] initFileURLWithPath:v9 isDirectory:0];
        }

        else
        {
          v15 = 0;
        }

        self = [(CPLPrivateEngineAlias *)self initWithName:v5 mainScopeIdentifier:v11 libraryIdentifier:v7 libraryOptions:v14 baseURL:v15];

        selfCopy = self;
        goto LABEL_28;
      }

LABEL_25:
      selfCopy = 0;
LABEL_28:

      goto LABEL_29;
    }

    goto LABEL_20;
  }

  selfCopy = 0;
LABEL_32:

  return selfCopy;
}

- (id)asPlist
{
  v14[0] = @"name";
  aliasName = [(CPLPrivateEngineAlias *)self aliasName];
  v15[0] = aliasName;
  v14[1] = @"identifier";
  libraryIdentifier = [(CPLPrivateEngineAlias *)self libraryIdentifier];
  v15[1] = libraryIdentifier;
  v14[2] = @"mainScopeIdentifier";
  mainScopeIdentifier = [(CPLPrivateEngineAlias *)self mainScopeIdentifier];
  v15[2] = mainScopeIdentifier;
  v6 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];
  v7 = [v6 mutableCopy];

  baseURL = [(CPLPrivateEngineAlias *)self baseURL];
  _defaultBaseURL = [objc_opt_class() _defaultBaseURL];
  LOBYTE(mainScopeIdentifier) = [baseURL isEqual:_defaultBaseURL];

  if ((mainScopeIdentifier & 1) == 0)
  {
    baseURL2 = [(CPLPrivateEngineAlias *)self baseURL];
    path = [baseURL2 path];
    [v7 setObject:path forKeyedSubscript:@"path"];
  }

  v12 = [NSNumber numberWithUnsignedInteger:self->_libraryOptions];
  [v7 setObject:v12 forKeyedSubscript:@"options"];

  return v7;
}

- (NSString)universeName
{
  mainScopeIdentifier = [(CPLPrivateEngineAlias *)self mainScopeIdentifier];
  v3 = CPLUniverseNameFromMainScopeIdentifier();

  return v3;
}

- (id)newLibraryManager
{
  v3 = [(NSURL *)self->_cplDirectoryURL URLByAppendingPathComponent:@"state"];
  v4 = [(NSURL *)self->_cplDirectoryURL URLByAppendingPathComponent:@"resources"];
  v5 = [[CPLLibraryManager alloc] initWithClientLibraryBaseURL:self->_cplDirectoryURL cloudLibraryStateStorageURL:v3 cloudLibraryResourceStorageURL:v4 libraryIdentifier:self->_libraryIdentifier mainScopeIdentifier:self->_mainScopeIdentifier options:self->_libraryOptions];

  return v5;
}

@end