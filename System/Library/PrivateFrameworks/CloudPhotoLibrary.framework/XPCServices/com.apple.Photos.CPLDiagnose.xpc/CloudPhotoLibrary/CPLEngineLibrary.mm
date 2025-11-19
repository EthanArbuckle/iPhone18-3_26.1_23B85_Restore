@interface CPLEngineLibrary
- (id)initWithParameters:(id)a3;
@end

@implementation CPLEngineLibrary

- (id)initWithParameters:(id)a3
{
  v4 = a3;
  v5 = [v4 clientLibraryBaseURL];
  v6 = [v4 cloudLibraryStateStorageURL];
  v7 = [v4 cloudLibraryResourceStorageURL];
  v8 = [v4 libraryIdentifier];
  v9 = [v4 mainScopeIdentifier];
  v10 = [v4 options];

  v11 = [(CPLEngineLibrary *)self initWithClientLibraryBaseURL:v5 cloudLibraryStateStorageURL:v6 cloudLibraryResourceStorageURL:v7 libraryIdentifier:v8 mainScopeIdentifier:v9 options:v10];
  return v11;
}

@end