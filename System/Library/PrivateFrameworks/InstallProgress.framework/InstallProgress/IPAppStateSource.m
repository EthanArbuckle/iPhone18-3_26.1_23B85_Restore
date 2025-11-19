@interface IPAppStateSource
- (IPAppStateSource)initWithApplicationIdentity:(id)a3 forStateSourceRegistry:(id)a4;
- (id)currentProgressForSource:(id)a3 error:(id *)a4;
- (id)currentStateWithError:(id *)a3;
- (id)progressSourceWithError:(id *)a3;
- (void)noteInstallStarted;
- (void)noteRemoved;
- (void)notifyOfUpdate:(id)a3;
@end

@implementation IPAppStateSource

- (IPAppStateSource)initWithApplicationIdentity:(id)a3 forStateSourceRegistry:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = IPAppStateSource;
  v8 = [(IPInstallableStateSource *)&v11 initWithRegistry:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_appIdentity, a3);
  }

  return v9;
}

- (id)currentStateWithError:(id *)a3
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

  if (a3 && !v9)
  {
    v10 = v8;
    *a3 = v8;
  }

  return v9;
}

- (id)progressSourceWithError:(id *)a3
{
  v3 = [[IPInstallableProgressSource alloc] initWithStateSource:self];

  return v3;
}

- (id)currentProgressForSource:(id)a3 error:(id *)a4
{
  v6 = [(IPInstallableStateSource *)self associatedRegistry];
  v7 = [v6 currentProgressForIdentity:self->_appIdentity error:a4];

  return v7;
}

- (void)noteInstallStarted
{
  v3 = [[IPAppState alloc] initWithAppStateSource:self applicationIdentity:self->_appIdentity isInstalling:1];
  [(IPAppStateSource *)self notifyOfUpdate:v3];
}

- (void)notifyOfUpdate:(id)a3
{
  v4 = a3;
  v5 = [(IPInstallableStateSource *)self observer];
  [v5 observationOfSource:self didChangeToState:v4];
}

- (void)noteRemoved
{
  v3 = [(IPInstallableStateSource *)self observer];
  [v3 observationOfSource:self didEndForReason:2];
}

@end