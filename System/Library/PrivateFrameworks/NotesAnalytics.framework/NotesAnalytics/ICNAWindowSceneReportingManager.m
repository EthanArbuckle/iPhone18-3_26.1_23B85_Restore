@interface ICNAWindowSceneReportingManager
+ (id)sharedManager;
- (BOOL)hasActiveWindowScenes;
- (ICNAWindowSceneReportingManager)init;
- (void)windowSceneDidEnd:(id)a3;
- (void)windowSceneMayBeResized:(id)a3;
- (void)windowSceneWillBegin:(id)a3;
@end

@implementation ICNAWindowSceneReportingManager

+ (id)sharedManager
{
  if (s_onceToken_2 != -1)
  {
    +[ICNAWindowSceneReportingManager sharedManager];
  }

  v3 = sharedManager_s_instance_0;

  return v3;
}

uint64_t __48__ICNAWindowSceneReportingManager_sharedManager__block_invoke()
{
  sharedManager_s_instance_0 = objc_alloc_init(ICNAWindowSceneReportingManager);

  return MEMORY[0x2821F96F8]();
}

- (ICNAWindowSceneReportingManager)init
{
  v6.receiver = self;
  v6.super_class = ICNAWindowSceneReportingManager;
  v2 = [(ICNAOptedInObject *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    eventReporters = v2->_eventReporters;
    v2->_eventReporters = v3;
  }

  return v2;
}

- (void)windowSceneWillBegin:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v15 = v4;
    v5 = [v4 session];
    v6 = [v5 persistentIdentifier];

    v7 = [(ICNAWindowSceneReportingManager *)self eventReporters];
    v8 = [v7 objectForKeyedSubscript:v6];

    if (!v8 && +[(ICNAOptedInObject *)ICNAEventReporter])
    {
      v9 = +[ICNAIdentityManager sharedManager];
      v10 = [v9 saltedID:v6 forClass:objc_opt_class()];

      v11 = [[ICNAWindowSceneEventReporter alloc] initWithSubTrackerName:v10 windowScene:v15];
      v12 = [(ICNAWindowSceneReportingManager *)self eventReporters];
      [v12 setObject:v11 forKeyedSubscript:v6];
    }

    v13 = [(ICNAWindowSceneReportingManager *)self eventReporters];
    v14 = [v13 objectForKeyedSubscript:v6];

    [v14 startWindowSceneEventDurationTracking];
    [v14 submitWindowSceneResizeEventIfNecessaryWithWindowScene:v15 forceSubmit:1];

    v4 = v15;
  }
}

- (void)windowSceneDidEnd:(id)a3
{
  if (a3)
  {
    v4 = [a3 session];
    v8 = [v4 persistentIdentifier];

    v5 = [(ICNAWindowSceneReportingManager *)self eventReporters];
    v6 = [v5 objectForKeyedSubscript:v8];

    [v6 submitWindowSceneEvent];
    v7 = [(ICNAWindowSceneReportingManager *)self eventReporters];
    [v7 setObject:0 forKeyedSubscript:v8];
  }
}

- (void)windowSceneMayBeResized:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 session];
    v8 = [v5 persistentIdentifier];

    v6 = [(ICNAWindowSceneReportingManager *)self eventReporters];
    v7 = [v6 objectForKeyedSubscript:v8];

    [v7 submitWindowSceneResizeEventIfNecessaryWithWindowScene:v4 forceSubmit:0];
  }
}

- (BOOL)hasActiveWindowScenes
{
  v2 = [(ICNAWindowSceneReportingManager *)self eventReporters];
  v3 = [v2 count] != 0;

  return v3;
}

@end