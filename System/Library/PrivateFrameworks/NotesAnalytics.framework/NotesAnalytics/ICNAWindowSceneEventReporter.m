@interface ICNAWindowSceneEventReporter
+ (double)areaOfWindowScene:(id)a3;
- (ICNAWindowSceneEventReporter)initWithSubTrackerName:(id)a3 windowScene:(id)a4;
- (NSString)saltedInstrumentationID;
- (void)startWindowSceneEventDurationTracking;
- (void)submitWindowSceneEvent;
- (void)submitWindowSceneResizeEventIfNecessaryWithWindowScene:(id)a3 forceSubmit:(BOOL)a4;
@end

@implementation ICNAWindowSceneEventReporter

- (ICNAWindowSceneEventReporter)initWithSubTrackerName:(id)a3 windowScene:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = ICNAWindowSceneEventReporter;
  v7 = [(ICNAEventReporter *)&v13 initWithSubTrackerName:a3 windowScene:v6];
  if (v7)
  {
    [objc_opt_class() areaOfWindowScene:v6];
    v7->_previousArea = v8;
    v9 = [v6 session];
    v10 = [v9 persistentIdentifier];
    windowSceneID = v7->_windowSceneID;
    v7->_windowSceneID = v10;
  }

  return v7;
}

+ (double)areaOfWindowScene:(id)a3
{
  v3 = [a3 coordinateSpace];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  return v5 * v7;
}

- (NSString)saltedInstrumentationID
{
  v3 = +[ICNAController sharedController];
  v4 = [v3 privateSessionID];

  v5 = MEMORY[0x277CCACA8];
  v6 = [(ICNAWindowSceneEventReporter *)self windowSceneID];
  v7 = [v5 stringWithFormat:@"%@%@", v6, v4];

  v8 = +[ICNAIdentityManager sharedManager];
  v9 = [v8 saltedID:v7 forClass:objc_opt_class()];

  return v9;
}

- (void)startWindowSceneEventDurationTracking
{
  v10[1] = *MEMORY[0x277D85DE8];
  [(ICNAEventReporter *)self startTimedEventOfType:objc_opt_class()];
  v3 = [ICASWindowSceneData alloc];
  v4 = [(ICNAWindowSceneEventReporter *)self saltedInstrumentationID];
  v5 = [(ICASWindowSceneData *)v3 initWithWindowSceneID:v4];

  v6 = +[ICNAController sharedController];
  v10[0] = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v8 = [(ICNAEventReporter *)self subTracker];
  [v6 pushDataObjects:v7 unique:1 onlyOnce:0 subTracker:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)submitWindowSceneEvent
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [ICASWindowSceneData alloc];
  v4 = [(ICNAWindowSceneEventReporter *)self saltedInstrumentationID];
  v5 = [(ICASWindowSceneData *)v3 initWithWindowSceneID:v4];

  v6 = +[ICNAController sharedController];
  v10[0] = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v8 = [(ICNAEventReporter *)self subTracker];
  [v6 pushDataObjects:v7 unique:1 onlyOnce:1 subTracker:v8];

  [(ICNAEventReporter *)self submitTimedEventOfTypeIfPossible:objc_opt_class()];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)submitWindowSceneResizeEventIfNecessaryWithWindowScene:(id)a3 forceSubmit:(BOOL)a4
{
  v26[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  [objc_opt_class() areaOfWindowScene:v6];
  v8 = v7;
  if (a4 || ([(ICNAWindowSceneEventReporter *)self previousArea], vabdd_f64(v9, v8) > 0.00000011920929))
  {
    v10 = [v6 screen];
    [v10 bounds];
    v12 = v11;
    v14 = v13;

    v15 = [ICASWindowSceneData alloc];
    v16 = [(ICNAWindowSceneEventReporter *)self saltedInstrumentationID];
    v17 = [(ICASWindowSceneData *)v15 initWithWindowSceneID:v16];

    v18 = [ICASWindowSceneResizeData alloc];
    v19 = [MEMORY[0x277CCABB0] numberWithBool:{vabdd_f64(v12 * v14, v8) > 0.00000011920929}];
    v20 = [(ICASWindowSceneResizeData *)v18 initWithUsesMultiWindow:v19];

    v21 = +[ICNAController sharedController];
    v22 = objc_opt_class();
    v26[0] = v17;
    v26[1] = v20;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
    v24 = [(ICNAEventReporter *)self subTracker];
    [v21 submitEventOfType:v22 pushThenPopDataObjects:v23 subTracker:v24];

    [(ICNAWindowSceneEventReporter *)self setPreviousArea:v8];
  }

  v25 = *MEMORY[0x277D85DE8];
}

@end