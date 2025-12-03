@interface DataMigrationPlugin
- (BOOL)isConcurrent;
- (DataMigrationPlugin)initWithIdentifier:(id)identifier fileSystemRep:(id)rep isUserAgnostic:(BOOL)agnostic;
- (double)appropriateTimeIntervalBeforeReboot;
- (id)_performOneMigrationWithParameters:(id)parameters watchdogCoordinator:(id)coordinator needsRetry:(BOOL *)retry;
- (id)description;
- (id)performMigrationWithParameters:(id)parameters watchdogCoordinator:(id)coordinator countOfAttempts:(unint64_t *)attempts;
@end

@implementation DataMigrationPlugin

- (DataMigrationPlugin)initWithIdentifier:(id)identifier fileSystemRep:(id)rep isUserAgnostic:(BOOL)agnostic
{
  identifierCopy = identifier;
  repCopy = rep;
  v17.receiver = self;
  v17.super_class = DataMigrationPlugin;
  v11 = [(DataMigrationPlugin *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifier, identifier);
    objc_storeStrong(&v12->_rep, rep);
    rep = v12->_rep;
    if (rep)
    {
      name = [(DMPluginFileSystemRep *)rep name];
    }

    else
    {
      name = @"<absent plugin>";
    }

    name = v12->_name;
    v12->_name = &name->isa;

    v12->_isUserAgnostic = agnostic;
    v12->_pidReceiptTimeout = 5.0;
  }

  return v12;
}

- (double)appropriateTimeIntervalBeforeReboot
{
  [(DataMigrationPlugin *)self timeIntervalBeforeReboot];
  if (v3 == 0.0)
  {
    [(DataMigrationPlugin *)self timeIntervalBeforeWatchdog];
    v5 = 0.0;
    if (v6 <= 0.0)
    {
      return v5;
    }

    [(DataMigrationPlugin *)self timeIntervalBeforeWatchdog];
    v8 = v7;
    +[DataMigrationPlugin _minimumTimeIntervalBetweenWatchdogAndReboot];
    v5 = v8 + v9;
    +[DataMigrationPlugin _minimumCalculatedTimeIntervalBeforeReboot];
    if (v10 <= v5)
    {
      return v5;
    }

    else
    {

      +[DataMigrationPlugin _minimumCalculatedTimeIntervalBeforeReboot];
    }
  }

  else
  {

    [(DataMigrationPlugin *)self timeIntervalBeforeReboot];
  }

  return result;
}

- (BOOL)isConcurrent
{
  identifierOfDependency = [(DataMigrationPlugin *)self identifierOfDependency];
  v3 = identifierOfDependency != 0;

  return v3;
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableArray);
  if ([(NSString *)self->_name length])
  {
    [v3 addObject:self->_name];
  }

  if ([(DataMigrationPlugin *)self isUserAgnostic])
  {
    [v3 addObject:@"user-agnostic"];
  }

  if ([(DataMigrationPlugin *)self isConcurrent])
  {
    identifierOfDependency = [(DataMigrationPlugin *)self identifierOfDependency];
    v5 = [NSString stringWithFormat:@"concurrent after %@", identifierOfDependency];
    [v3 addObject:v5];
  }

  v6 = [v3 componentsJoinedByString:{@", "}];
  if ([v6 length])
  {
    v7 = [NSString stringWithFormat:@" (%@)", v6];

    v6 = v7;
  }

  identifier = [(DataMigrationPlugin *)self identifier];
  v9 = [NSString stringWithFormat:@"%@%@", identifier, v6];

  return v9;
}

- (id)performMigrationWithParameters:(id)parameters watchdogCoordinator:(id)coordinator countOfAttempts:(unint64_t *)attempts
{
  parametersCopy = parameters;
  coordinatorCopy = coordinator;
  *attempts = 1;
  v21 = 0;
  v10 = [(DataMigrationPlugin *)self _performOneMigrationWithParameters:parametersCopy watchdogCoordinator:coordinatorCopy needsRetry:&v21];
  if (v21)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v12 = -3;
    while (!__CFADD__(v12++, 1))
    {
      _DMLogFunc();
      ++*attempts;
      v21 = 0;
      v10 = [(DataMigrationPlugin *)self _performOneMigrationWithParameters:parametersCopy watchdogCoordinator:coordinatorCopy needsRetry:&v21, self];
      if (v21)
      {
        v14 = v10 == 0;
      }

      else
      {
        v14 = 0;
      }

      if (!v14)
      {
        goto LABEL_12;
      }
    }

    rep = self->_rep;
    dispositionSupersetOfContext = [parametersCopy dispositionSupersetOfContext];
    v18 = [NSString stringWithFormat:@"%@ — Crashed", self];
    v15 = [DMIncident incidentWithKind:2 responsiblePluginRep:rep userDataDisposition:dispositionSupersetOfContext details:v18];

    v19 = +[DMDiagnostics sharedInstance];
    [v19 captureDiagnosticsForIncident:v15 async:1];
  }

  else
  {
LABEL_12:
    v15 = v10;
  }

  return v15;
}

- (id)_performOneMigrationWithParameters:(id)parameters watchdogCoordinator:(id)coordinator needsRetry:(BOOL *)retry
{
  parametersCopy = parameters;
  coordinatorCopy = coordinator;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v31 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_100011E24;
  v28 = sub_100011E34;
  v29 = 0;
  v10 = +[DMEnvironment sharedInstance];
  v11 = 0;
  if ([v10 shouldWatchdogPluginsAfterTimeout])
  {
    [(DataMigrationPlugin *)self timeIntervalBeforeWatchdog];
    v11 = v12;
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100011E3C;
  v17[3] = &unk_100024F20;
  v22 = v11;
  v20 = v30;
  v17[4] = self;
  v21 = &v24;
  v13 = parametersCopy;
  v18 = v13;
  v14 = coordinatorCopy;
  v19 = v14;
  retryCopy = retry;
  [v14 callRunEventBlock:v17 forPlugin:self];
  v15 = v25[5];

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(v30, 8);

  return v15;
}

@end