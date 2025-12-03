@interface ICNAWindowSceneEventReporter
+ (double)areaOfWindowScene:(id)scene;
- (ICNAWindowSceneEventReporter)initWithSubTrackerName:(id)name windowScene:(id)scene;
- (NSString)saltedInstrumentationID;
- (void)startWindowSceneEventDurationTracking;
- (void)submitWindowSceneEvent;
- (void)submitWindowSceneResizeEventIfNecessaryWithWindowScene:(id)scene forceSubmit:(BOOL)submit;
@end

@implementation ICNAWindowSceneEventReporter

- (ICNAWindowSceneEventReporter)initWithSubTrackerName:(id)name windowScene:(id)scene
{
  sceneCopy = scene;
  v13.receiver = self;
  v13.super_class = ICNAWindowSceneEventReporter;
  v7 = [(ICNAEventReporter *)&v13 initWithSubTrackerName:name windowScene:sceneCopy];
  if (v7)
  {
    [objc_opt_class() areaOfWindowScene:sceneCopy];
    v7->_previousArea = v8;
    session = [sceneCopy session];
    persistentIdentifier = [session persistentIdentifier];
    windowSceneID = v7->_windowSceneID;
    v7->_windowSceneID = persistentIdentifier;
  }

  return v7;
}

+ (double)areaOfWindowScene:(id)scene
{
  coordinateSpace = [scene coordinateSpace];
  [coordinateSpace bounds];
  v5 = v4;
  v7 = v6;

  return v5 * v7;
}

- (NSString)saltedInstrumentationID
{
  v3 = +[ICNAController sharedController];
  privateSessionID = [v3 privateSessionID];

  v5 = MEMORY[0x277CCACA8];
  windowSceneID = [(ICNAWindowSceneEventReporter *)self windowSceneID];
  v7 = [v5 stringWithFormat:@"%@%@", windowSceneID, privateSessionID];

  v8 = +[ICNAIdentityManager sharedManager];
  v9 = [v8 saltedID:v7 forClass:objc_opt_class()];

  return v9;
}

- (void)startWindowSceneEventDurationTracking
{
  v10[1] = *MEMORY[0x277D85DE8];
  [(ICNAEventReporter *)self startTimedEventOfType:objc_opt_class()];
  v3 = [ICASWindowSceneData alloc];
  saltedInstrumentationID = [(ICNAWindowSceneEventReporter *)self saltedInstrumentationID];
  v5 = [(ICASWindowSceneData *)v3 initWithWindowSceneID:saltedInstrumentationID];

  v6 = +[ICNAController sharedController];
  v10[0] = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v6 pushDataObjects:v7 unique:1 onlyOnce:0 subTracker:subTracker];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)submitWindowSceneEvent
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [ICASWindowSceneData alloc];
  saltedInstrumentationID = [(ICNAWindowSceneEventReporter *)self saltedInstrumentationID];
  v5 = [(ICASWindowSceneData *)v3 initWithWindowSceneID:saltedInstrumentationID];

  v6 = +[ICNAController sharedController];
  v10[0] = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v6 pushDataObjects:v7 unique:1 onlyOnce:1 subTracker:subTracker];

  [(ICNAEventReporter *)self submitTimedEventOfTypeIfPossible:objc_opt_class()];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)submitWindowSceneResizeEventIfNecessaryWithWindowScene:(id)scene forceSubmit:(BOOL)submit
{
  v26[2] = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  [objc_opt_class() areaOfWindowScene:sceneCopy];
  v8 = v7;
  if (submit || ([(ICNAWindowSceneEventReporter *)self previousArea], vabdd_f64(v9, v8) > 0.00000011920929))
  {
    screen = [sceneCopy screen];
    [screen bounds];
    v12 = v11;
    v14 = v13;

    v15 = [ICASWindowSceneData alloc];
    saltedInstrumentationID = [(ICNAWindowSceneEventReporter *)self saltedInstrumentationID];
    v17 = [(ICASWindowSceneData *)v15 initWithWindowSceneID:saltedInstrumentationID];

    v18 = [ICASWindowSceneResizeData alloc];
    v19 = [MEMORY[0x277CCABB0] numberWithBool:{vabdd_f64(v12 * v14, v8) > 0.00000011920929}];
    v20 = [(ICASWindowSceneResizeData *)v18 initWithUsesMultiWindow:v19];

    v21 = +[ICNAController sharedController];
    v22 = objc_opt_class();
    v26[0] = v17;
    v26[1] = v20;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
    subTracker = [(ICNAEventReporter *)self subTracker];
    [v21 submitEventOfType:v22 pushThenPopDataObjects:v23 subTracker:subTracker];

    [(ICNAWindowSceneEventReporter *)self setPreviousArea:v8];
  }

  v25 = *MEMORY[0x277D85DE8];
}

@end