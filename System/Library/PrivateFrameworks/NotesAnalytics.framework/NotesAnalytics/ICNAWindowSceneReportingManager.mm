@interface ICNAWindowSceneReportingManager
+ (id)sharedManager;
- (BOOL)hasActiveWindowScenes;
- (ICNAWindowSceneReportingManager)init;
- (void)windowSceneDidEnd:(id)end;
- (void)windowSceneMayBeResized:(id)resized;
- (void)windowSceneWillBegin:(id)begin;
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

- (void)windowSceneWillBegin:(id)begin
{
  beginCopy = begin;
  if (beginCopy)
  {
    v15 = beginCopy;
    session = [beginCopy session];
    persistentIdentifier = [session persistentIdentifier];

    eventReporters = [(ICNAWindowSceneReportingManager *)self eventReporters];
    v8 = [eventReporters objectForKeyedSubscript:persistentIdentifier];

    if (!v8 && +[(ICNAOptedInObject *)ICNAEventReporter])
    {
      v9 = +[ICNAIdentityManager sharedManager];
      v10 = [v9 saltedID:persistentIdentifier forClass:objc_opt_class()];

      v11 = [[ICNAWindowSceneEventReporter alloc] initWithSubTrackerName:v10 windowScene:v15];
      eventReporters2 = [(ICNAWindowSceneReportingManager *)self eventReporters];
      [eventReporters2 setObject:v11 forKeyedSubscript:persistentIdentifier];
    }

    eventReporters3 = [(ICNAWindowSceneReportingManager *)self eventReporters];
    v14 = [eventReporters3 objectForKeyedSubscript:persistentIdentifier];

    [v14 startWindowSceneEventDurationTracking];
    [v14 submitWindowSceneResizeEventIfNecessaryWithWindowScene:v15 forceSubmit:1];

    beginCopy = v15;
  }
}

- (void)windowSceneDidEnd:(id)end
{
  if (end)
  {
    session = [end session];
    persistentIdentifier = [session persistentIdentifier];

    eventReporters = [(ICNAWindowSceneReportingManager *)self eventReporters];
    v6 = [eventReporters objectForKeyedSubscript:persistentIdentifier];

    [v6 submitWindowSceneEvent];
    eventReporters2 = [(ICNAWindowSceneReportingManager *)self eventReporters];
    [eventReporters2 setObject:0 forKeyedSubscript:persistentIdentifier];
  }
}

- (void)windowSceneMayBeResized:(id)resized
{
  if (resized)
  {
    resizedCopy = resized;
    session = [resizedCopy session];
    persistentIdentifier = [session persistentIdentifier];

    eventReporters = [(ICNAWindowSceneReportingManager *)self eventReporters];
    v7 = [eventReporters objectForKeyedSubscript:persistentIdentifier];

    [v7 submitWindowSceneResizeEventIfNecessaryWithWindowScene:resizedCopy forceSubmit:0];
  }
}

- (BOOL)hasActiveWindowScenes
{
  eventReporters = [(ICNAWindowSceneReportingManager *)self eventReporters];
  v3 = [eventReporters count] != 0;

  return v3;
}

@end