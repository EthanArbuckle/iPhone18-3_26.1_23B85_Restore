@interface CPLEngineParameters
- (BOOL)matchesParameters:(id)parameters;
- (CPLEngineParameters)initWithClientLibraryBaseURL:(id)l cloudLibraryStateStorageURL:(id)rL cloudLibraryResourceStorageURL:(id)uRL libraryIdentifier:(id)identifier mainScopeIdentifier:(id)scopeIdentifier options:(unint64_t)options;
- (CPLEngineParameters)initWithCoder:(id)coder;
- (CPLEngineParameters)initWithPlist:(id)plist;
- (id)asPlist;
- (id)description;
- (id)redactedDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPLEngineParameters

- (CPLEngineParameters)initWithClientLibraryBaseURL:(id)l cloudLibraryStateStorageURL:(id)rL cloudLibraryResourceStorageURL:(id)uRL libraryIdentifier:(id)identifier mainScopeIdentifier:(id)scopeIdentifier options:(unint64_t)options
{
  lCopy = l;
  rLCopy = rL;
  uRLCopy = uRL;
  identifierCopy = identifier;
  scopeIdentifierCopy = scopeIdentifier;
  v31.receiver = self;
  v31.super_class = CPLEngineParameters;
  v19 = [(CPLEngineParameters *)&v31 init];
  if (v19)
  {
    v20 = [lCopy copy];
    clientLibraryBaseURL = v19->_clientLibraryBaseURL;
    v19->_clientLibraryBaseURL = v20;

    v22 = [rLCopy copy];
    cloudLibraryStateStorageURL = v19->_cloudLibraryStateStorageURL;
    v19->_cloudLibraryStateStorageURL = v22;

    v24 = [uRLCopy copy];
    cloudLibraryResourceStorageURL = v19->_cloudLibraryResourceStorageURL;
    v19->_cloudLibraryResourceStorageURL = v24;

    v26 = [identifierCopy copy];
    libraryIdentifier = v19->_libraryIdentifier;
    v19->_libraryIdentifier = v26;

    v28 = [scopeIdentifierCopy copy];
    mainScopeIdentifier = v19->_mainScopeIdentifier;
    v19->_mainScopeIdentifier = v28;

    v19->_options = options;
  }

  return v19;
}

- (CPLEngineParameters)initWithPlist:(id)plist
{
  plistCopy = plist;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = plistCopy;
    v6 = [v5 objectForKeyedSubscript:@"libraryIdentifier"];
    v7 = [v5 objectForKeyedSubscript:@"mainScopeIdentifier"];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = CPLPrimaryScopeIdentifierForCurrentUniverse();
    }

    v11 = v9;

    v12 = [v5 objectForKeyedSubscript:@"clientLibraryBasePath"];
    v13 = [v5 objectForKeyedSubscript:@"cloudLibraryStateStoragePath"];
    v14 = [v5 objectForKeyedSubscript:@"cloudLibraryResourceStoragePath"];
    if (v12)
    {
      v15 = [NSURL fileURLWithPath:v12 isDirectory:1];
    }

    else
    {
      v15 = 0;
    }

    v29 = v15;
    v31 = v12;
    if (v13)
    {
      v16 = [NSURL fileURLWithPath:v13 isDirectory:1];
    }

    else
    {
      v16 = 0;
    }

    v30 = v11;
    v17 = v6;
    v27 = v14;
    if (v14)
    {
      v18 = v14;
      selfCopy2 = self;
      v20 = [NSURL fileURLWithPath:v18 isDirectory:1, v27];
    }

    else
    {
      selfCopy2 = self;
      v20 = 0;
    }

    v21 = [v5 objectForKeyedSubscript:{@"options", v27}];
    integerValue = [v21 integerValue];

    selfCopy3 = 0;
    if (v13)
    {
      v23 = v29;
      if (v29 && v20)
      {
        v24 = selfCopy2;
        v25 = v30;
        self = [(CPLEngineParameters *)v24 initWithClientLibraryBaseURL:v29 cloudLibraryStateStorageURL:v16 cloudLibraryResourceStorageURL:v20 libraryIdentifier:v17 mainScopeIdentifier:v30 options:integerValue];
        selfCopy3 = self;
      }

      else
      {
        self = selfCopy2;
        v25 = v30;
      }
    }

    else
    {
      self = selfCopy2;
      v23 = v29;
      v25 = v30;
    }
  }

  else
  {
    selfCopy3 = 0;
  }

  return selfCopy3;
}

- (id)asPlist
{
  path = [(NSURL *)self->_clientLibraryBaseURL path];
  path2 = [(NSURL *)self->_cloudLibraryStateStorageURL path];
  path3 = [(NSURL *)self->_cloudLibraryResourceStorageURL path];
  v11[0] = @"clientLibraryBasePath";
  v11[1] = @"cloudLibraryStateStoragePath";
  v11[2] = @"cloudLibraryResourceStoragePath";
  v11[3] = @"libraryIdentifier";
  libraryIdentifier = self->_libraryIdentifier;
  mainScopeIdentifier = self->_mainScopeIdentifier;
  v12[2] = path3;
  v12[3] = libraryIdentifier;
  v12[4] = mainScopeIdentifier;
  v12[0] = path;
  v12[1] = path2;
  v11[4] = @"mainScopeIdentifier";
  v11[5] = @"options";
  v8 = [NSNumber numberWithUnsignedInteger:self->_options];
  v12[5] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:6];

  return v9;
}

- (id)description
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  libraryIdentifier = self->_libraryIdentifier;
  path = [(NSURL *)self->_clientLibraryBaseURL path];
  stringByAbbreviatingWithTildeInPath = [path stringByAbbreviatingWithTildeInPath];
  v8 = [v3 initWithFormat:@"<%@ for %@ at %@>", v4, libraryIdentifier, stringByAbbreviatingWithTildeInPath];

  return v8;
}

- (id)redactedDescription
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  libraryIdentifier = self->_libraryIdentifier;
  path = [(NSURL *)self->_clientLibraryBaseURL path];
  lastPathComponent = [path lastPathComponent];
  v8 = [v3 initWithFormat:@"<%@ for %@ at %@>", v4, libraryIdentifier, lastPathComponent];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  asPlist = [(CPLEngineParameters *)self asPlist];
  v9 = 0;
  v7 = [NSPropertyListSerialization dataWithPropertyList:asPlist format:200 options:0 error:&v9];
  v8 = v9;

  if (!v7)
  {
    sub_1001901F8(self, a2, v8);
  }

  [coderCopy encodeObject:v7 forKey:@"data"];
}

- (CPLEngineParameters)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];

  if (v5)
  {
    v11 = 0;
    v6 = [NSPropertyListSerialization propertyListWithData:v5 options:0 format:0 error:&v11];
    v7 = v11;
    v8 = v7;
    if (v6)
    {
      self = [(CPLEngineParameters *)self initWithPlist:v6];

      selfCopy = self;
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        sub_100190318(v7);
      }

      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)matchesParameters:(id)parameters
{
  parametersCopy = parameters;
  clientLibraryBaseURL = self->_clientLibraryBaseURL;
  clientLibraryBaseURL = [parametersCopy clientLibraryBaseURL];
  if (sub_10018FFDC(self, clientLibraryBaseURL, clientLibraryBaseURL))
  {
    cloudLibraryStateStorageURL = self->_cloudLibraryStateStorageURL;
    cloudLibraryStateStorageURL = [parametersCopy cloudLibraryStateStorageURL];
    if (sub_10018FFDC(self, cloudLibraryStateStorageURL, cloudLibraryStateStorageURL))
    {
      cloudLibraryResourceStorageURL = self->_cloudLibraryResourceStorageURL;
      cloudLibraryResourceStorageURL = [parametersCopy cloudLibraryResourceStorageURL];
      if (sub_10018FFDC(self, cloudLibraryResourceStorageURL, cloudLibraryResourceStorageURL))
      {
        v13 = self->_mainScopeIdentifier;
        mainScopeIdentifier = [parametersCopy mainScopeIdentifier];
        v15 = mainScopeIdentifier;
        v7 = v13 && mainScopeIdentifier && ([v13 isEqual:mainScopeIdentifier] & 1) != 0 || (v13 | v15) == 0;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end