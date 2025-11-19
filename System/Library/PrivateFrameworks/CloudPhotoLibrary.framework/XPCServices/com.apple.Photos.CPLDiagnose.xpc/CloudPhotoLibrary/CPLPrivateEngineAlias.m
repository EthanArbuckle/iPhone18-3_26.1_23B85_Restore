@interface CPLPrivateEngineAlias
+ (BOOL)registerPrivateEngineAlias:(id)a3 error:(id *)a4;
+ (BOOL)unregisterPrivateEngineAliasWithName:(id)a3 error:(id *)a4;
+ (NSArray)registeredAliasNames;
+ (NSArray)registeredAliases;
+ (id)_defaultBaseURL;
+ (id)_destinationURL;
+ (id)privateEngineAliasWithName:(id)a3;
+ (unint64_t)baseLibraryOptions;
+ (void)_loadNonBuiltinAliases;
+ (void)_registerAliases;
+ (void)_registerPrivateEngineAlias:(id)a3 builtin:(BOOL)a4;
+ (void)_saveNonBuiltinAliases;
- (CPLPrivateEngineAlias)initWithName:(id)a3 mainScopeIdentifier:(id)a4 libraryIdentifier:(id)a5 libraryOptions:(unint64_t)a6 baseURL:(id)a7;
- (CPLPrivateEngineAlias)initWithName:(id)a3 universeName:(id)a4 libraryIdentifier:(id)a5 libraryOptions:(unint64_t)a6 baseURL:(id)a7;
- (CPLPrivateEngineAlias)initWithPlist:(id)a3;
- (NSString)universeName;
- (id)asPlist;
- (id)newLibraryManager;
@end

@implementation CPLPrivateEngineAlias

+ (id)_defaultBaseURL
{
  v2 = +[NSProcessInfo processInfo];
  v3 = [v2 environment];

  v4 = +[CPLPrivateEngineAlias privateEnginePathEnvKey];
  v5 = [v3 objectForKeyedSubscript:v4];
  if (v5)
  {
    v6 = v5;

LABEL_4:
    v7 = [[NSURL alloc] initFileURLWithPath:v6 isDirectory:1];

    goto LABEL_5;
  }

  v6 = [v3 objectForKeyedSubscript:@"TMPDIR"];

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
      v4 = [v3 environment];
      v5 = +[CPLPrivateEngineAlias privateEngineAliasPathEnvKey];
      v6 = [v4 objectForKeyedSubscript:v5];
      v7 = qword_100040BC8;
      qword_100040BC8 = v6;
    }

    byte_100040BD0 = 1;
    v8 = [CPLPrivateEngineAlias alloc];
    v9 = [(CPLPrivateEngineAlias *)v8 initWithName:silentMoverEngineAliasName universeName:silentMoverEngineUniverseName libraryIdentifier:@"CPLSilentMoverLib" libraryOptions:8 baseURL:0];
    [a1 _registerPrivateEngineAlias:v9 builtin:1];

    v10 = [CPLPrivateEngineAlias alloc];
    v11 = [(CPLPrivateEngineAlias *)v10 initWithName:normalCPLEngineAliasName universeName:0 libraryIdentifier:@"CPLPrimarySync" libraryOptions:9 baseURL:0];
    [a1 _registerPrivateEngineAlias:v11 builtin:1];

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
    [a1 _registerPrivateEngineAlias:v15 builtin:1];

    [a1 _loadNonBuiltinAliases];
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
    v2 = qword_100040BC8;
  }

  else
  {
    v2 = [@"~/.cplprivateengines.plist" stringByExpandingTildeInPath];
  }

  v3 = v2;
  v4 = [[NSURL alloc] initFileURLWithPath:v2 isDirectory:0];

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
  v7 = [a1 _destinationURL];
  [v6 writeToURL:v7 error:0];
}

+ (void)_loadNonBuiltinAliases
{
  v3 = [NSArray alloc];
  v4 = [a1 _destinationURL];
  v5 = [v3 initWithContentsOfURL:v4 error:0];

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
            [a1 _registerPrivateEngineAlias:v13 builtin:0];
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

+ (BOOL)registerPrivateEngineAlias:(id)a3 error:(id *)a4
{
  v6 = a3;
  [a1 _registerAliases];
  v7 = qword_100040BC0;
  v8 = [v6 aliasName];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = [v6 aliasName];

    v11 = [CPLErrors cplErrorWithCode:150 description:@"Alias %@ is already registered", v10];

    if (a4)
    {
      v12 = v11;
      *a4 = v11;
    }
  }

  else
  {
    [a1 _registerPrivateEngineAlias:v6 builtin:0];

    [a1 _saveNonBuiltinAliases];
    v11 = 0;
  }

  return v9 == 0;
}

+ (void)_registerPrivateEngineAlias:(id)a3 builtin:(BOOL)a4
{
  v5 = a3;
  v6 = qword_100040BC0;
  v14 = v5;
  if (!qword_100040BC0)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    v8 = qword_100040BC0;
    qword_100040BC0 = v7;

    v9 = objc_alloc_init(NSMutableDictionary);
    v10 = qword_100040BD8;
    qword_100040BD8 = v9;

    v5 = v14;
    v6 = qword_100040BC0;
  }

  v11 = [v5 aliasName];
  [v6 setObject:v14 forKeyedSubscript:v11];

  if (!a4)
  {
    v12 = qword_100040BD8;
    v13 = [v14 aliasName];
    [v12 setObject:v14 forKeyedSubscript:v13];
  }
}

+ (BOOL)unregisterPrivateEngineAliasWithName:(id)a3 error:(id *)a4
{
  v6 = a3;
  [a1 _registerAliases];
  v7 = [qword_100040BC0 objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = [qword_100040BD8 objectForKeyedSubscript:v6];

    if (v8)
    {
      [qword_100040BC0 removeObjectForKey:v6];
      [qword_100040BD8 removeObjectForKey:v6];
      [a1 _saveNonBuiltinAliases];
      [a1 _saveNonBuiltinAliases];
      v9 = 0;
      v10 = 1;
      goto LABEL_9;
    }

    v11 = @"Can't registered builtin alias %@";
  }

  else
  {
    v11 = @"Unknown alias %@";
  }

  v9 = [CPLErrors cplErrorWithCode:150 description:v11, v6];
  if (a4)
  {
    v9 = v9;
    v10 = 0;
    *a4 = v9;
  }

  else
  {
    v10 = 0;
  }

LABEL_9:

  return v10;
}

+ (id)privateEngineAliasWithName:(id)a3
{
  v4 = a3;
  [a1 _registerAliases];
  v5 = [qword_100040BC0 objectForKeyedSubscript:v4];

  return v5;
}

+ (NSArray)registeredAliasNames
{
  [a1 _registerAliases];
  v2 = [qword_100040BC0 allKeys];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
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
  [a1 _registerAliases];
  v2 = [qword_100040BC0 allValues];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  v5 = v4;

  return v4;
}

- (CPLPrivateEngineAlias)initWithName:(id)a3 mainScopeIdentifier:(id)a4 libraryIdentifier:(id)a5 libraryOptions:(unint64_t)a6 baseURL:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if (!v15)
  {
    v15 = [objc_opt_class() _defaultBaseURL];
  }

  v29.receiver = self;
  v29.super_class = CPLPrivateEngineAlias;
  v16 = [(CPLPrivateEngineAlias *)&v29 init];
  if (v16)
  {
    v17 = [v12 copy];
    aliasName = v16->_aliasName;
    v16->_aliasName = v17;

    v19 = [v13 copy];
    mainScopeIdentifier = v16->_mainScopeIdentifier;
    v16->_mainScopeIdentifier = v19;

    v21 = [v14 copy];
    libraryIdentifier = v16->_libraryIdentifier;
    v16->_libraryIdentifier = v21;

    v16->_libraryOptions = a6;
    v23 = [v15 copy];
    baseURL = v16->_baseURL;
    v16->_baseURL = v23;

    v25 = [v15 URLByAppendingPathComponent:v14];
    v26 = [v25 URLByAppendingPathExtension:@"cpltestlibrary"];
    cplDirectoryURL = v16->_cplDirectoryURL;
    v16->_cplDirectoryURL = v26;
  }

  return v16;
}

- (CPLPrivateEngineAlias)initWithName:(id)a3 universeName:(id)a4 libraryIdentifier:(id)a5 libraryOptions:(unint64_t)a6 baseURL:(id)a7
{
  v11 = a7;
  v12 = a5;
  v13 = a3;
  v14 = CPLPrimaryScopeIdentifierForUniverseName();
  v15 = [(CPLPrivateEngineAlias *)self initWithName:v13 mainScopeIdentifier:v14 libraryIdentifier:v12 libraryOptions:a6 baseURL:v11];

  return v15;
}

- (CPLPrivateEngineAlias)initWithPlist:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 objectForKeyedSubscript:@"name"];
    v6 = [v4 objectForKeyedSubscript:@"identifier"];
    v7 = v6;
    v8 = 0;
    if (!v5 || !v6)
    {
      goto LABEL_31;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v8 = 0;
LABEL_31:

      goto LABEL_32;
    }

    v9 = [v4 objectForKeyedSubscript:@"path"];
    if (v9)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v8 = 0;
LABEL_30:

        goto LABEL_31;
      }
    }

    v10 = [v4 objectForKeyedSubscript:@"mainScopeIdentifier"];
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v12 = [v4 objectForKeyedSubscript:@"universe"];
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
        v8 = 0;
LABEL_29:

        goto LABEL_30;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v4 objectForKeyedSubscript:@"options"];
      if (!v12)
      {
        v13 = [objc_opt_class() baseLibraryOptions];
        goto LABEL_22;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v12 integerValue];
LABEL_22:
        v14 = v13;
        if (v9)
        {
          v15 = [[NSURL alloc] initFileURLWithPath:v9 isDirectory:0];
        }

        else
        {
          v15 = 0;
        }

        self = [(CPLPrivateEngineAlias *)self initWithName:v5 mainScopeIdentifier:v11 libraryIdentifier:v7 libraryOptions:v14 baseURL:v15];

        v8 = self;
        goto LABEL_28;
      }

LABEL_25:
      v8 = 0;
LABEL_28:

      goto LABEL_29;
    }

    goto LABEL_20;
  }

  v8 = 0;
LABEL_32:

  return v8;
}

- (id)asPlist
{
  v14[0] = @"name";
  v3 = [(CPLPrivateEngineAlias *)self aliasName];
  v15[0] = v3;
  v14[1] = @"identifier";
  v4 = [(CPLPrivateEngineAlias *)self libraryIdentifier];
  v15[1] = v4;
  v14[2] = @"mainScopeIdentifier";
  v5 = [(CPLPrivateEngineAlias *)self mainScopeIdentifier];
  v15[2] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];
  v7 = [v6 mutableCopy];

  v8 = [(CPLPrivateEngineAlias *)self baseURL];
  v9 = [objc_opt_class() _defaultBaseURL];
  LOBYTE(v5) = [v8 isEqual:v9];

  if ((v5 & 1) == 0)
  {
    v10 = [(CPLPrivateEngineAlias *)self baseURL];
    v11 = [v10 path];
    [v7 setObject:v11 forKeyedSubscript:@"path"];
  }

  v12 = [NSNumber numberWithUnsignedInteger:self->_libraryOptions];
  [v7 setObject:v12 forKeyedSubscript:@"options"];

  return v7;
}

- (NSString)universeName
{
  v2 = [(CPLPrivateEngineAlias *)self mainScopeIdentifier];
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