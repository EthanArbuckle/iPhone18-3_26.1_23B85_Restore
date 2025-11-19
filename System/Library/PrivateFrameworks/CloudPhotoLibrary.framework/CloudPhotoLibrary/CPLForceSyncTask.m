@interface CPLForceSyncTask
- (CPLForceSyncTask)initWithScopeIdentifiers:(id)a3;
- (id)description;
- (void)launchTask;
@end

@implementation CPLForceSyncTask

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = [(CPLForceSyncTask *)self taskIdentifier];
  v6 = [(CPLForceSyncTask *)self scopeIdentifiers];
  v7 = [v6 componentsJoinedByString:{@", "}];
  v8 = [v3 initWithFormat:@"<%@ %@ (%@)>", v4, v5, v7];

  return v8;
}

- (void)launchTask
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLForceSyncTask.m"];
  v6 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:v5 lineNumber:23 description:{@"%@ should be overriden by subclasses", v6}];

  abort();
}

- (CPLForceSyncTask)initWithScopeIdentifiers:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CPLForceSyncTask;
  v5 = [(CPLForceSyncTask *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    scopeIdentifiers = v5->_scopeIdentifiers;
    v5->_scopeIdentifiers = v6;
  }

  return v5;
}

@end