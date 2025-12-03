@interface CPLEngineLibrary
- (id)initWithParameters:(id)parameters;
@end

@implementation CPLEngineLibrary

- (id)initWithParameters:(id)parameters
{
  parametersCopy = parameters;
  clientLibraryBaseURL = [parametersCopy clientLibraryBaseURL];
  cloudLibraryStateStorageURL = [parametersCopy cloudLibraryStateStorageURL];
  cloudLibraryResourceStorageURL = [parametersCopy cloudLibraryResourceStorageURL];
  libraryIdentifier = [parametersCopy libraryIdentifier];
  mainScopeIdentifier = [parametersCopy mainScopeIdentifier];
  options = [parametersCopy options];

  v11 = [(CPLEngineLibrary *)self initWithClientLibraryBaseURL:clientLibraryBaseURL cloudLibraryStateStorageURL:cloudLibraryStateStorageURL cloudLibraryResourceStorageURL:cloudLibraryResourceStorageURL libraryIdentifier:libraryIdentifier mainScopeIdentifier:mainScopeIdentifier options:options];
  return v11;
}

@end