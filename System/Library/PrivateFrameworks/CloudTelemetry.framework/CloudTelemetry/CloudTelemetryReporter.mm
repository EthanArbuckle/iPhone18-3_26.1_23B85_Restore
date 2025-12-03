@interface CloudTelemetryReporter
+ (BOOL)reportWithTeamID:(id)d eventType:(id)type event:(id)event allowCellularAccess:(BOOL)access allowExpensiveAccess:(BOOL)expensiveAccess bundleID:(id)iD error:(id *)error;
+ (id)_privacyLogs:(id *)logs;
- (CloudTelemetryReporter)init;
@end

@implementation CloudTelemetryReporter

+ (BOOL)reportWithTeamID:(id)d eventType:(id)type event:(id)event allowCellularAccess:(BOOL)access allowExpensiveAccess:(BOOL)expensiveAccess bundleID:(id)iD error:(id *)error
{
  v11 = sub_22B4C5150();
  v13 = v12;
  v14 = sub_22B4C5150();
  v16 = v15;
  v17 = sub_22B4C50E0();
  v18 = sub_22B4C5150();
  v20 = v19;
  swift_getObjCClassMetadata();
  static Reporter.report(teamID:eventType:event:allowCellularAccess:allowExpensiveAccess:bundleID:)(v11, v13, v14, v16, v17, access, expensiveAccess, v18, v20);

  return 1;
}

+ (id)_privacyLogs:(id *)logs
{
  sub_22B4BC2C4();
  sub_22B4C4FE0();
  v3 = sub_22B4C51E0();

  return v3;
}

- (CloudTelemetryReporter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end