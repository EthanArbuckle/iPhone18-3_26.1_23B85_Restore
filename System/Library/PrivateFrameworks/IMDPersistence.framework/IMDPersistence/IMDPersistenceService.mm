@interface IMDPersistenceService
+ (IMDIndexingQueries)indexingQueryProvider;
+ (IMDIndexingQueries)synchronousIndexingQueryProvider;
+ (IMDPersistentTaskQueries)pTaskQueryProvider;
+ (IMDPersistentTaskQueries)synchronousPTaskQueryProvider;
+ (IMDRemoteDatabaseProtocol)databaseQueryProvider;
+ (IMDRemoteDatabaseProtocol)synchronousDatabaseQueryProvider;
+ (IMDSpotlightActivityMonitorQueries)spotlightActivityMonitorQueryProvider;
+ (IMDSpotlightActivityMonitorQueries)synchronousSpotlightActivityMonitorQueryProvider;
+ (IMDSpotlightQueries)spotlightQueryProvider;
+ (IMDSpotlightQueries)synchronousSpotlightQueryProvider;
+ (void)reset;
- (IMDPersistenceService)init;
- (IMDPersistenceService)initWithListener:(id)a3;
- (void)sendLegacyXPCCommandWithObject:(id)a3;
- (void)sendLegacyXPCCommandWithObject:(id)a3 reply:(id)a4;
@end

@implementation IMDPersistenceService

- (void)sendLegacyXPCCommandWithObject:(id)a3
{
  v4 = a3;
  v5 = self;
  _sSo21IMDPersistenceServiceC0A0E20sendLegacyXPCCommand10withObject5replyySo15IMXPCDictionaryC_yAHctF_0(v4, 0, 0);
}

- (void)sendLegacyXPCCommandWithObject:(id)a3 reply:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  _sSo21IMDPersistenceServiceC0A0E20sendLegacyXPCCommand10withObject5replyySo15IMXPCDictionaryC_yAHctF_0(v8, sub_1B7AE15E4, v7);
}

+ (IMDRemoteDatabaseProtocol)synchronousDatabaseQueryProvider
{
  v2 = sub_1B7C87D44(a1);

  return v2;
}

- (IMDPersistenceService)initWithListener:(id)a3
{
  v3 = a3;
  v4 = sub_1B7C85AF8();

  return v4;
}

+ (IMDPersistentTaskQueries)pTaskQueryProvider
{
  v2 = sub_1B7C85D58(a1);

  return v2;
}

+ (IMDPersistentTaskQueries)synchronousPTaskQueryProvider
{
  v2 = sub_1B7C860E4(a1);

  return v2;
}

+ (IMDIndexingQueries)indexingQueryProvider
{
  v2 = sub_1B7C86470(a1);

  return v2;
}

+ (IMDIndexingQueries)synchronousIndexingQueryProvider
{
  v2 = sub_1B7C867FC(a1);

  return v2;
}

+ (IMDSpotlightQueries)spotlightQueryProvider
{
  v2 = sub_1B7C86B88(a1);

  return v2;
}

+ (IMDSpotlightQueries)synchronousSpotlightQueryProvider
{
  v2 = sub_1B7C86F14(a1);

  return v2;
}

+ (IMDSpotlightActivityMonitorQueries)spotlightActivityMonitorQueryProvider
{
  v2 = sub_1B7C872A0(a1);

  return v2;
}

+ (IMDSpotlightActivityMonitorQueries)synchronousSpotlightActivityMonitorQueryProvider
{
  v2 = sub_1B7C8762C(a1);

  return v2;
}

+ (IMDRemoteDatabaseProtocol)databaseQueryProvider
{
  v2 = sub_1B7C879B8(a1);

  return v2;
}

- (IMDPersistenceService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (void)reset
{
  if (qword_1EDBE3808 != -1)
  {
    swift_once();
  }

  v0 = sub_1B7CFE420();
  sub_1B7AD9040(v0, qword_1EDBE79D0);
  v1 = sub_1B7CFE400();
  v2 = sub_1B7CFEF00();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1B7AD5000, v1, v2, "Resetting connection to persistence service", v3, 2u);
    MEMORY[0x1B8CB0E70](v3, -1, -1);
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    v5 = [objc_opt_self() defaultCenter];
    [v5 postNotificationName:@"IMDPersistenceServiceResettingNotification" object:0];
  }

  else
  {
    if (qword_1EDBE5968 != -1)
    {
      swift_once();
    }

    v4 = qword_1EDBE79F0;

    [v4 reset];
  }
}

@end