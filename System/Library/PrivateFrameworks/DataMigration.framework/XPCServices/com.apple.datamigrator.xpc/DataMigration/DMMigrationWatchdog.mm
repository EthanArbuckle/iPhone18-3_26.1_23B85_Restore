@interface DMMigrationWatchdog
- (DMMigrationWatchdog)initWithMigrationPluginDescription:(id)description userDataDisposition:(id)disposition migrationStartTime:(double)time;
- (void)_takeStackshot;
- (void)cancel;
- (void)resume;
@end

@implementation DMMigrationWatchdog

- (DMMigrationWatchdog)initWithMigrationPluginDescription:(id)description userDataDisposition:(id)disposition migrationStartTime:(double)time
{
  descriptionCopy = description;
  dispositionCopy = disposition;
  v14.receiver = self;
  v14.super_class = DMMigrationWatchdog;
  v10 = [(DMMigrationWatchdog *)&v14 init];
  if (v10)
  {
    v11 = [descriptionCopy copy];
    migrationPluginDescription = v10->_migrationPluginDescription;
    v10->_migrationPluginDescription = v11;

    objc_storeStrong(&v10->_userDataDisposition, disposition);
    v10->_migrationStartTime = time;
    [(DMMigrationWatchdog *)v10 setSecondsBeforeNextStackshot:300];
    v10->_minutesSinceStarting = 0;
    [(DMMigrationWatchdog *)v10 setNextSecondsBeforeNextStackshotAdditionForUnitTesting:0];
    [(DMMigrationWatchdog *)v10 setStackshotTimerLeewaySeconds:10];
  }

  return v10;
}

- (void)resume
{
  [(DMMigrationWatchdog *)self timer];
  if (objc_claimAutoreleasedReturnValue())
  {
    sub_100012984();
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100001688;
  v5[3] = &unk_1000246B0;
  v5[4] = self;
  v3 = [[DMTimer alloc] initWithSecondsBeforeFirstFire:-[DMMigrationWatchdog secondsBeforeNextStackshot](self secondsOfLeeway:"secondsBeforeNextStackshot") fireBlock:{-[DMMigrationWatchdog stackshotTimerLeewaySeconds](self, "stackshotTimerLeewaySeconds"), v5}];
  [(DMMigrationWatchdog *)self setTimer:v3];

  timer = [(DMMigrationWatchdog *)self timer];
  [timer resume];
}

- (void)cancel
{
  timer = [(DMMigrationWatchdog *)self timer];
  [timer cancel];
}

- (void)_takeStackshot
{
  migrationPluginDescription = self->_migrationPluginDescription;
  minutesSinceStarting = self->_minutesSinceStarting;
  _DMLogFunc();
  v7 = [NSString stringWithFormat:@"PRECAUTIONARY stackshot - migration might be hung or deadlocked. Plugin: %@ (%llu minutes) (overall migration start %llu)", self->_migrationPluginDescription, self->_minutesSinceStarting, self->_migrationStartTime];
  v3 = [DMIncident incidentWithKind:0 responsiblePluginRep:0 userDataDisposition:self->_userDataDisposition details:v7];
  v4 = +[DMDiagnostics sharedInstance];
  [v4 captureDiagnosticsForIncident:v3 async:1];
}

@end