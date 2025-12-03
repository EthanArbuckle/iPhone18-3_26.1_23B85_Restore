@interface IPAppStateSource
- (IPAppStateSource)initWithApplicationIdentity:(id)identity forStateSourceRegistry:(id)registry;
- (id)currentProgressForSource:(id)source error:(id *)error;
- (id)currentStateWithError:(id *)error;
- (id)progressSourceWithError:(id *)error;
- (void)noteInstallStarted;
- (void)noteRemoved;
- (void)notifyOfUpdate:(id)update;
@end

@implementation IPAppStateSource

- (IPAppStateSource)initWithApplicationIdentity:(id)identity forStateSourceRegistry:(id)registry
{
  identityCopy = identity;
  v11.receiver = self;
  v11.super_class = IPAppStateSource;
  v8 = [(IPInstallableStateSource *)&v11 initWithRegistry:registry];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_appIdentity, identity);
  }

  return v9;
}

- (id)currentStateWithError:(id *)error
{
  v5 = [(LSApplicationIdentity *)self->_appIdentity findApplicationRecordFetchingPlaceholder:3 error:0];
  appIdentity = self->_appIdentity;
  v12 = 0;
  v7 = [(LSApplicationIdentity *)appIdentity findApplicationRecordFetchingPlaceholder:0 error:&v12];
  v8 = v12;
  v9 = 0;
  if (v5 | v7)
  {
    v9 = [[IPAppState alloc] initWithAppStateSource:self applicationIdentity:self->_appIdentity isInstalling:v5 != 0];
  }

  if (error && !v9)
  {
    v10 = v8;
    *error = v8;
  }

  return v9;
}

- (id)progressSourceWithError:(id *)error
{
  v3 = [[IPInstallableProgressSource alloc] initWithStateSource:self];

  return v3;
}

- (id)currentProgressForSource:(id)source error:(id *)error
{
  associatedRegistry = [(IPInstallableStateSource *)self associatedRegistry];
  v7 = [associatedRegistry currentProgressForIdentity:self->_appIdentity error:error];

  return v7;
}

- (void)noteInstallStarted
{
  v3 = [[IPAppState alloc] initWithAppStateSource:self applicationIdentity:self->_appIdentity isInstalling:1];
  [(IPAppStateSource *)self notifyOfUpdate:v3];
}

- (void)notifyOfUpdate:(id)update
{
  updateCopy = update;
  observer = [(IPInstallableStateSource *)self observer];
  [observer observationOfSource:self didChangeToState:updateCopy];
}

- (void)noteRemoved
{
  observer = [(IPInstallableStateSource *)self observer];
  [observer observationOfSource:self didEndForReason:2];
}

@end