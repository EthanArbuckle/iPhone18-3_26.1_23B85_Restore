@interface CPLForceSyncTask
- (CPLForceSyncTask)initWithScopeIdentifiers:(id)identifiers;
- (id)description;
- (void)launchTask;
@end

@implementation CPLForceSyncTask

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  taskIdentifier = [(CPLForceSyncTask *)self taskIdentifier];
  scopeIdentifiers = [(CPLForceSyncTask *)self scopeIdentifiers];
  v7 = [scopeIdentifiers componentsJoinedByString:{@", "}];
  v8 = [v3 initWithFormat:@"<%@ %@ (%@)>", v4, taskIdentifier, v7];

  return v8;
}

- (void)launchTask
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLForceSyncTask.m"];
  v6 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:v5 lineNumber:23 description:{@"%@ should be overriden by subclasses", v6}];

  abort();
}

- (CPLForceSyncTask)initWithScopeIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v9.receiver = self;
  v9.super_class = CPLForceSyncTask;
  v5 = [(CPLForceSyncTask *)&v9 init];
  if (v5)
  {
    v6 = [identifiersCopy copy];
    scopeIdentifiers = v5->_scopeIdentifiers;
    v5->_scopeIdentifiers = v6;
  }

  return v5;
}

@end