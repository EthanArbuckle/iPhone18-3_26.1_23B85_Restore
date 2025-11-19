@interface CPLEngineParameters
- (BOOL)matchesParameters:(id)a3;
- (CPLEngineParameters)initWithClientLibraryBaseURL:(id)a3 cloudLibraryStateStorageURL:(id)a4 cloudLibraryResourceStorageURL:(id)a5 libraryIdentifier:(id)a6 mainScopeIdentifier:(id)a7 options:(unint64_t)a8;
- (CPLEngineParameters)initWithCoder:(id)a3;
- (CPLEngineParameters)initWithPlist:(id)a3;
- (id)asPlist;
- (id)description;
- (id)redactedDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPLEngineParameters

- (CPLEngineParameters)initWithClientLibraryBaseURL:(id)a3 cloudLibraryStateStorageURL:(id)a4 cloudLibraryResourceStorageURL:(id)a5 libraryIdentifier:(id)a6 mainScopeIdentifier:(id)a7 options:(unint64_t)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v31.receiver = self;
  v31.super_class = CPLEngineParameters;
  v19 = [(CPLEngineParameters *)&v31 init];
  if (v19)
  {
    v20 = [v14 copy];
    clientLibraryBaseURL = v19->_clientLibraryBaseURL;
    v19->_clientLibraryBaseURL = v20;

    v22 = [v15 copy];
    cloudLibraryStateStorageURL = v19->_cloudLibraryStateStorageURL;
    v19->_cloudLibraryStateStorageURL = v22;

    v24 = [v16 copy];
    cloudLibraryResourceStorageURL = v19->_cloudLibraryResourceStorageURL;
    v19->_cloudLibraryResourceStorageURL = v24;

    v26 = [v17 copy];
    libraryIdentifier = v19->_libraryIdentifier;
    v19->_libraryIdentifier = v26;

    v28 = [v18 copy];
    mainScopeIdentifier = v19->_mainScopeIdentifier;
    v19->_mainScopeIdentifier = v28;

    v19->_options = a8;
  }

  return v19;
}

- (CPLEngineParameters)initWithPlist:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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
      v19 = self;
      v20 = [NSURL fileURLWithPath:v18 isDirectory:1, v27];
    }

    else
    {
      v19 = self;
      v20 = 0;
    }

    v21 = [v5 objectForKeyedSubscript:{@"options", v27}];
    v22 = [v21 integerValue];

    v10 = 0;
    if (v13)
    {
      v23 = v29;
      if (v29 && v20)
      {
        v24 = v19;
        v25 = v30;
        self = [(CPLEngineParameters *)v24 initWithClientLibraryBaseURL:v29 cloudLibraryStateStorageURL:v16 cloudLibraryResourceStorageURL:v20 libraryIdentifier:v17 mainScopeIdentifier:v30 options:v22];
        v10 = self;
      }

      else
      {
        self = v19;
        v25 = v30;
      }
    }

    else
    {
      self = v19;
      v23 = v29;
      v25 = v30;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)asPlist
{
  v3 = [(NSURL *)self->_clientLibraryBaseURL path];
  v4 = [(NSURL *)self->_cloudLibraryStateStorageURL path];
  v5 = [(NSURL *)self->_cloudLibraryResourceStorageURL path];
  v11[0] = @"clientLibraryBasePath";
  v11[1] = @"cloudLibraryStateStoragePath";
  v11[2] = @"cloudLibraryResourceStoragePath";
  v11[3] = @"libraryIdentifier";
  libraryIdentifier = self->_libraryIdentifier;
  mainScopeIdentifier = self->_mainScopeIdentifier;
  v12[2] = v5;
  v12[3] = libraryIdentifier;
  v12[4] = mainScopeIdentifier;
  v12[0] = v3;
  v12[1] = v4;
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
  v6 = [(NSURL *)self->_clientLibraryBaseURL path];
  v7 = [v6 stringByAbbreviatingWithTildeInPath];
  v8 = [v3 initWithFormat:@"<%@ for %@ at %@>", v4, libraryIdentifier, v7];

  return v8;
}

- (id)redactedDescription
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  libraryIdentifier = self->_libraryIdentifier;
  v6 = [(NSURL *)self->_clientLibraryBaseURL path];
  v7 = [v6 lastPathComponent];
  v8 = [v3 initWithFormat:@"<%@ for %@ at %@>", v4, libraryIdentifier, v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v6 = [(CPLEngineParameters *)self asPlist];
  v9 = 0;
  v7 = [NSPropertyListSerialization dataWithPropertyList:v6 format:200 options:0 error:&v9];
  v8 = v9;

  if (!v7)
  {
    sub_10001D404(self, a2, v8);
  }

  [v5 encodeObject:v7 forKey:@"data"];
}

- (CPLEngineParameters)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];

  if (v5)
  {
    v11 = 0;
    v6 = [NSPropertyListSerialization propertyListWithData:v5 options:0 format:0 error:&v11];
    v7 = v11;
    v8 = v7;
    if (v6)
    {
      self = [(CPLEngineParameters *)self initWithPlist:v6];

      v9 = self;
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        sub_10001D524(v7);
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)matchesParameters:(id)a3
{
  v4 = a3;
  clientLibraryBaseURL = self->_clientLibraryBaseURL;
  v6 = [v4 clientLibraryBaseURL];
  if (sub_10001D1E8(self, clientLibraryBaseURL, v6))
  {
    cloudLibraryStateStorageURL = self->_cloudLibraryStateStorageURL;
    v10 = [v4 cloudLibraryStateStorageURL];
    if (sub_10001D1E8(self, cloudLibraryStateStorageURL, v10))
    {
      cloudLibraryResourceStorageURL = self->_cloudLibraryResourceStorageURL;
      v12 = [v4 cloudLibraryResourceStorageURL];
      if (sub_10001D1E8(self, cloudLibraryResourceStorageURL, v12))
      {
        v13 = self->_mainScopeIdentifier;
        v14 = [v4 mainScopeIdentifier];
        v15 = v14;
        v7 = v13 && v14 && ([v13 isEqual:v14] & 1) != 0 || (v13 | v15) == 0;
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