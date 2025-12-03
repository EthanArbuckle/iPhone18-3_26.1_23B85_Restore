@interface CNUIUserActionDisambiguationModeler
- (BOOL)hasDefaultAppForActionType:(id)type;
- (CNUIUserActionDisambiguationModeler)init;
- (CNUIUserActionDisambiguationModeler)initWithDiscoveringEnvironment:(id)environment;
- (CNUIUserActionDisambiguationModeler)initWithTargetDiscoveringHelper:(id)helper rankingHelper:(id)rankingHelper defaultActionFetcher:(id)fetcher discoveringEnvironment:(id)environment;
- (id)_discoverActionsForContact:(id)contact actionType:(id)type;
- (id)defaultActionChangedObservable;
- (id)defaultActionFromActions:(id)actions;
- (id)defaultAppsScorerForActionType:(id)type;
- (id)discoverActionsForContact:(id)contact actionType:(id)type;
- (id)modelsWithActionType:(id)type defaultAction:(id)action actions:(id)actions recentActions:(id)recentActions sorts:(BOOL)sorts throttles:(BOOL)throttles;
- (id)modelsWithContact:(id)contact actionType:(id)type defaultActionItem:(id)item;
- (id)recentActionsFromActions:(id)actions;
- (id)schedulerProvider;
- (id)sortActionsOnModel:(id)model actionType:(id)type;
- (id)targetsChangedObservableForActionType:(id)type;
- (id)thirdPartyActionsForContactProperty:(id)property;
- (id)thirdPartyTargetsForActionTypes:(id)types;
- (void)emptyDefaultAppsCaches;
- (void)setContactStore:(id)store;
@end

@implementation CNUIUserActionDisambiguationModeler

- (CNUIUserActionDisambiguationModeler)init
{
  v3 = objc_alloc_init(CNUIUserActionDiscoveringEnvironment);
  v4 = [(CNUIUserActionDisambiguationModeler *)self initWithDiscoveringEnvironment:v3];

  return v4;
}

- (CNUIUserActionDisambiguationModeler)initWithDiscoveringEnvironment:(id)environment
{
  environmentCopy = environment;
  v5 = objc_alloc_init(CNUIUserActionRanking);
  targetDiscoveringHelper = [environmentCopy targetDiscoveringHelper];
  defaultUserActionFetcher = [environmentCopy defaultUserActionFetcher];
  v8 = [(CNUIUserActionDisambiguationModeler *)self initWithTargetDiscoveringHelper:targetDiscoveringHelper rankingHelper:v5 defaultActionFetcher:defaultUserActionFetcher discoveringEnvironment:environmentCopy];

  return v8;
}

- (CNUIUserActionDisambiguationModeler)initWithTargetDiscoveringHelper:(id)helper rankingHelper:(id)rankingHelper defaultActionFetcher:(id)fetcher discoveringEnvironment:(id)environment
{
  helperCopy = helper;
  rankingHelperCopy = rankingHelper;
  fetcherCopy = fetcher;
  environmentCopy = environment;
  v19.receiver = self;
  v19.super_class = CNUIUserActionDisambiguationModeler;
  v15 = [(CNUIUserActionDisambiguationModeler *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_targetDiscoveringHelper, helper);
    objc_storeStrong(&v16->_rankingHelper, rankingHelper);
    objc_storeStrong(&v16->_defaultActionFetcher, fetcher);
    objc_storeStrong(&v16->_discoveringEnvironment, environment);
    v17 = v16;
  }

  return v16;
}

- (void)setContactStore:(id)store
{
  storeCopy = store;
  discoveringEnvironment = [(CNUIUserActionDisambiguationModeler *)self discoveringEnvironment];
  schedulerProvider = [(CNUIUserActionDisambiguationModeler *)self schedulerProvider];
  v6 = [discoveringEnvironment copyWithContactStore:storeCopy schedulerProvider:schedulerProvider];

  [(CNUIUserActionDisambiguationModeler *)self setDiscoveringEnvironment:v6];
}

- (id)schedulerProvider
{
  discoveringEnvironment = [(CNUIUserActionDisambiguationModeler *)self discoveringEnvironment];
  schedulerProvider = [discoveringEnvironment schedulerProvider];

  return schedulerProvider;
}

- (id)modelsWithContact:(id)contact actionType:(id)type defaultActionItem:(id)item
{
  v70[3] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  typeCopy = type;
  itemCopy = item;
  schedulerProvider = [(CNUIUserActionDisambiguationModeler *)self schedulerProvider];
  v12 = [(CNUIUserActionDisambiguationModeler *)self discoverActionsForContact:contactCopy actionType:typeCopy];
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v67[2] = __86__CNUIUserActionDisambiguationModeler_modelsWithContact_actionType_defaultActionItem___block_invoke;
  v67[3] = &unk_1E76E9D28;
  v53 = contactCopy;
  v68 = v53;
  v13 = typeCopy;
  v69 = v13;
  v14 = [v12 doOnNext:v67];

  backgroundScheduler = [schedulerProvider backgroundScheduler];
  v52 = v14;
  v16 = [v14 subscribeOn:backgroundScheduler];

  v17 = [(CNReplaySubject *)[CNDiscoveredUserActionReplaySubject alloc] initWithCapacity:1 schedulerProvider:schedulerProvider];
  v51 = [v16 subscribe:v17];
  if ((*(*MEMORY[0x1E6996558] + 16))())
  {
    v18 = [(CNUIUserActionDisambiguationModeler *)self defaultActionFromActions:v17];
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __86__CNUIUserActionDisambiguationModeler_modelsWithContact_actionType_defaultActionItem___block_invoke_9;
    v65[3] = &unk_1E76E9D50;
    v66 = v13;
    v47 = [v18 doOnNext:v65];
  }

  else
  {
    v47 = [MEMORY[0x1E6996798] observableWithResult:itemCopy];
  }

  v19 = [(CNUIUserActionDisambiguationModeler *)self recentActionsFromActions:v17];
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __86__CNUIUserActionDisambiguationModeler_modelsWithContact_actionType_defaultActionItem___block_invoke_12;
  v63[3] = &unk_1E76E92E8;
  v20 = v13;
  v64 = v20;
  v21 = [v19 doOnNext:v63];

  v22 = [MEMORY[0x1E6996798] observableWithResult:itemCopy];
  [MEMORY[0x1E6996798] observableWithResult:MEMORY[0x1E695E0F0]];
  v23 = v50 = itemCopy;
  v24 = [(CNUIUserActionDisambiguationModeler *)self modelsWithActionType:v20 defaultAction:v22 actions:v17 recentActions:v23 sorts:0 throttles:0];
  v49 = [v24 take:1];

  v25 = [(CNReplaySubject *)[CNFirstRawActionsModelReplaySubject alloc] initWithCapacity:1 schedulerProvider:schedulerProvider];
  backgroundScheduler2 = [schedulerProvider backgroundScheduler];
  v27 = [v49 subscribeOn:backgroundScheduler2];
  v28 = [v27 subscribe:v25];

  v29 = MEMORY[0x1E6996798];
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __86__CNUIUserActionDisambiguationModeler_modelsWithContact_actionType_defaultActionItem___block_invoke_14;
  v57[3] = &unk_1E76E9DC8;
  v57[4] = self;
  v58 = v20;
  v59 = v47;
  v60 = v17;
  v61 = v21;
  v30 = v28;
  v62 = v30;
  v46 = v21;
  v45 = v17;
  v44 = v47;
  v48 = v20;
  v31 = [v29 observableWithBlock:v57];
  v32 = MEMORY[0x1E6996798];
  v33 = +[CNUIUserActionListModel emptyModel];
  v34 = [v32 observableWithResult:v33];

  v35 = MEMORY[0x1E6996798];
  v70[0] = v34;
  v70[1] = v25;
  v70[2] = v31;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:3];
  v37 = [v35 merge:v36 schedulerProvider:schedulerProvider];

  backgroundScheduler3 = [schedulerProvider backgroundScheduler];
  v39 = [v37 subscribeOn:backgroundScheduler3];

  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __86__CNUIUserActionDisambiguationModeler_modelsWithContact_actionType_defaultActionItem___block_invoke_4;
  v54[3] = &unk_1E76E7F60;
  v55 = v51;
  v56 = v30;
  v40 = v30;
  v41 = v51;
  v42 = [v39 doOnCancel:v54];

  return v42;
}

void __86__CNUIUserActionDisambiguationModeler_modelsWithContact_actionType_defaultActionItem___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[CNUICoreLogProvider actions_os_log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __86__CNUIUserActionDisambiguationModeler_modelsWithContact_actionType_defaultActionItem___block_invoke_cold_1();
  }
}

void __86__CNUIUserActionDisambiguationModeler_modelsWithContact_actionType_defaultActionItem___block_invoke_9(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[CNUICoreLogProvider actions_os_log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __86__CNUIUserActionDisambiguationModeler_modelsWithContact_actionType_defaultActionItem___block_invoke_9_cold_1();
  }
}

void __86__CNUIUserActionDisambiguationModeler_modelsWithContact_actionType_defaultActionItem___block_invoke_12(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[CNUICoreLogProvider actions_os_log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __86__CNUIUserActionDisambiguationModeler_modelsWithContact_actionType_defaultActionItem___block_invoke_12_cold_1();
  }
}

id __86__CNUIUserActionDisambiguationModeler_modelsWithContact_actionType_defaultActionItem___block_invoke_14(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] discoveringEnvironment];
  v5 = [v4 highLatencySchedulerProvider];
  v6 = [v5 backgroundScheduler];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __86__CNUIUserActionDisambiguationModeler_modelsWithContact_actionType_defaultActionItem___block_invoke_2;
  v15[3] = &unk_1E76E9DA0;
  v14 = *(a1 + 2);
  v7 = *(&v14 + 1);
  v8 = a1[6];
  v9 = a1[7];
  *&v10 = v8;
  *(&v10 + 1) = v9;
  v16 = v14;
  v17 = v10;
  v18 = a1[8];
  v19 = a1[9];
  v20 = v3;
  v11 = v3;
  v12 = [v6 performCancelableBlock:v15 qualityOfService:2];

  return v12;
}

void __86__CNUIUserActionDisambiguationModeler_modelsWithContact_actionType_defaultActionItem___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = a2;
  v9 = [v3 modelsWithActionType:v4 defaultAction:v5 actions:v6 recentActions:v7 sorts:1 throttles:1];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __86__CNUIUserActionDisambiguationModeler_modelsWithContact_actionType_defaultActionItem___block_invoke_3;
  v12[3] = &unk_1E76E9D78;
  v13 = *(a1 + 72);
  v10 = [v9 doOnNext:v12];
  v11 = [v10 subscribe:*(a1 + 80)];

  [v8 addCancelable:v11];
}

uint64_t __86__CNUIUserActionDisambiguationModeler_modelsWithContact_actionType_defaultActionItem___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) cancel];
  v2 = *(a1 + 40);

  return [v2 cancel];
}

- (id)targetsChangedObservableForActionType:(id)type
{
  v20[1] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  discoveringEnvironment = [(CNUIUserActionDisambiguationModeler *)self discoveringEnvironment];
  highLatencySchedulerProvider = [discoveringEnvironment highLatencySchedulerProvider];

  targetDiscoveringHelper = [(CNUIUserActionDisambiguationModeler *)self targetDiscoveringHelper];
  v8 = [targetDiscoveringHelper observableForTargetsChangedForActionType:typeCopy schedulerProvider:highLatencySchedulerProvider];
  backgroundScheduler = [highLatencySchedulerProvider backgroundScheduler];
  v10 = [v8 subscribeOn:backgroundScheduler];

  v11 = [v10 throttle:highLatencySchedulerProvider schedulerProvider:0.5];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __77__CNUIUserActionDisambiguationModeler_targetsChangedObservableForActionType___block_invoke;
  v18[3] = &unk_1E76E9768;
  v19 = typeCopy;
  v12 = typeCopy;
  v13 = [v11 doOnNext:v18];

  null = [MEMORY[0x1E695DFB0] null];
  v20[0] = null;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v16 = [v13 startWith:v15];

  return v16;
}

void __77__CNUIUserActionDisambiguationModeler_targetsChangedObservableForActionType___block_invoke()
{
  v0 = +[CNUICoreLogProvider actions_os_log];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __77__CNUIUserActionDisambiguationModeler_targetsChangedObservableForActionType___block_invoke_cold_1();
  }
}

- (id)discoverActionsForContact:(id)contact actionType:(id)type
{
  contactCopy = contact;
  typeCopy = type;
  v8 = objc_autoreleasePoolPush();
  v9 = [(CNUIUserActionDisambiguationModeler *)self _discoverActionsForContact:contactCopy actionType:typeCopy];
  objc_autoreleasePoolPop(v8);

  return v9;
}

- (id)_discoverActionsForContact:(id)contact actionType:(id)type
{
  contactCopy = contact;
  typeCopy = type;
  schedulerProvider = [(CNUIUserActionDisambiguationModeler *)self schedulerProvider];
  targetDiscoveringHelper = [(CNUIUserActionDisambiguationModeler *)self targetDiscoveringHelper];
  v10 = [targetDiscoveringHelper targetsForActionType:typeCopy];
  v11 = MEMORY[0x1E695E0F0];
  v12 = [v10 scan:&__block_literal_global_64 seed:MEMORY[0x1E695E0F0]];

  discoveringEnvironment = [(CNUIUserActionDisambiguationModeler *)self discoveringEnvironment];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __77__CNUIUserActionDisambiguationModeler__discoverActionsForContact_actionType___block_invoke_2;
  v26[3] = &unk_1E76E9E38;
  v14 = typeCopy;
  v27 = v14;
  v28 = contactCopy;
  v29 = discoveringEnvironment;
  v30 = schedulerProvider;
  v15 = schedulerProvider;
  v16 = discoveringEnvironment;
  v17 = contactCopy;
  v18 = [v12 switchMap:v26 schedulerProvider:v15];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __77__CNUIUserActionDisambiguationModeler__discoverActionsForContact_actionType___block_invoke_29;
  v24[3] = &unk_1E76E92E8;
  v25 = v14;
  v19 = v14;
  v20 = [v18 doOnNext:v24];

  v21 = [MEMORY[0x1E6996798] observableWithResult:v11];
  v22 = [v20 onEmpty:v21];

  return v22;
}

id __77__CNUIUserActionDisambiguationModeler__discoverActionsForContact_actionType___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[CNUICoreLogProvider actions_os_log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __77__CNUIUserActionDisambiguationModeler__discoverActionsForContact_actionType___block_invoke_2_cold_1();
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __77__CNUIUserActionDisambiguationModeler__discoverActionsForContact_actionType___block_invoke_24;
  v12[3] = &unk_1E76E9E10;
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v5 = [v3 _cn_map:v12];
  v6 = [MEMORY[0x1E6996798] combineLatest:v5 schedulerProvider:*(a1 + 56)];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__CNUIUserActionDisambiguationModeler__discoverActionsForContact_actionType___block_invoke_27;
  v10[3] = &unk_1E76E9768;
  v11 = *(a1 + 40);
  v7 = [v6 doOnNext:v10];

  v8 = [v7 map:*MEMORY[0x1E6996460]];

  return v8;
}

id __77__CNUIUserActionDisambiguationModeler__discoverActionsForContact_actionType___block_invoke_24(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 actionsForContact:*(a1 + 32) discoveringEnvironment:*(a1 + 40)];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77__CNUIUserActionDisambiguationModeler__discoverActionsForContact_actionType___block_invoke_2_25;
  v8[3] = &unk_1E76E9D28;
  v9 = v3;
  v10 = *(a1 + 32);
  v5 = v3;
  v6 = [v4 doOnNext:v8];

  return v6;
}

void __77__CNUIUserActionDisambiguationModeler__discoverActionsForContact_actionType___block_invoke_2_25(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[CNUICoreLogProvider actions_os_log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __77__CNUIUserActionDisambiguationModeler__discoverActionsForContact_actionType___block_invoke_2_25_cold_1(a1);
  }
}

void __77__CNUIUserActionDisambiguationModeler__discoverActionsForContact_actionType___block_invoke_27(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[CNUICoreLogProvider actions_os_log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __77__CNUIUserActionDisambiguationModeler__discoverActionsForContact_actionType___block_invoke_27_cold_1(a1);
  }
}

void __77__CNUIUserActionDisambiguationModeler__discoverActionsForContact_actionType___block_invoke_29(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[CNUICoreLogProvider actions_os_log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __77__CNUIUserActionDisambiguationModeler__discoverActionsForContact_actionType___block_invoke_29_cold_1();
  }
}

- (id)defaultActionChangedObservable
{
  v14[1] = *MEMORY[0x1E69E9840];
  discoveringEnvironment = [(CNUIUserActionDisambiguationModeler *)self discoveringEnvironment];
  highLatencySchedulerProvider = [discoveringEnvironment highLatencySchedulerProvider];

  defaultActionFetcher = [(CNUIUserActionDisambiguationModeler *)self defaultActionFetcher];
  observableForDefaultActionsChanged = [defaultActionFetcher observableForDefaultActionsChanged];
  backgroundScheduler = [highLatencySchedulerProvider backgroundScheduler];
  v8 = [observableForDefaultActionsChanged subscribeOn:backgroundScheduler];

  v9 = [v8 doOnNext:&__block_literal_global_31_0];

  null = [MEMORY[0x1E695DFB0] null];
  v14[0] = null;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v12 = [v9 startWith:v11];

  return v12;
}

void __69__CNUIUserActionDisambiguationModeler_defaultActionChangedObservable__block_invoke()
{
  v0 = +[CNUICoreLogProvider actions_os_log];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __69__CNUIUserActionDisambiguationModeler_defaultActionChangedObservable__block_invoke_cold_1();
  }
}

- (id)defaultActionFromActions:(id)actions
{
  v14[1] = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  defaultActionFetcher = [(CNUIUserActionDisambiguationModeler *)self defaultActionFetcher];
  discoveringEnvironment = [(CNUIUserActionDisambiguationModeler *)self discoveringEnvironment];
  highLatencySchedulerProvider = [discoveringEnvironment highLatencySchedulerProvider];
  v8 = [defaultActionFetcher defaultActionItemForActionItems:actionsCopy schedulerProvider:highLatencySchedulerProvider];

  null = [MEMORY[0x1E695DFB0] null];
  v14[0] = null;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v11 = [v8 startWith:v10];

  v12 = [v11 onErrorHandler:&__block_literal_global_34];

  return v12;
}

id __64__CNUIUserActionDisambiguationModeler_defaultActionFromActions___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[CNUICoreLogProvider actions_os_log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __64__CNUIUserActionDisambiguationModeler_defaultActionFromActions___block_invoke_cold_1();
  }

  v4 = +[CNUICoreLogProvider actions_os_log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __64__CNUIUserActionDisambiguationModeler_defaultActionFromActions___block_invoke_cold_2();
  }

  v5 = [MEMORY[0x1E6996798] emptyObservable];

  return v5;
}

- (id)recentActionsFromActions:(id)actions
{
  actionsCopy = actions;
  rankingHelper = [(CNUIUserActionDisambiguationModeler *)self rankingHelper];
  discoveringEnvironment = [(CNUIUserActionDisambiguationModeler *)self discoveringEnvironment];
  highLatencySchedulerProvider = [discoveringEnvironment highLatencySchedulerProvider];
  v8 = [rankingHelper selectRecentActionItems:actionsCopy schedulerProvider:highLatencySchedulerProvider];

  v9 = [v8 doOnNext:&__block_literal_global_36_0];

  return v9;
}

void __64__CNUIUserActionDisambiguationModeler_recentActionsFromActions___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[CNUICoreLogProvider actions_os_log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __64__CNUIUserActionDisambiguationModeler_recentActionsFromActions___block_invoke_cold_1(v2);
  }
}

- (id)modelsWithActionType:(id)type defaultAction:(id)action actions:(id)actions recentActions:(id)recentActions sorts:(BOOL)sorts throttles:(BOOL)throttles
{
  sortsCopy = sorts;
  v33[3] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  actionCopy = action;
  actionsCopy = actions;
  recentActionsCopy = recentActions;
  v18 = MEMORY[0x1E6996798];
  v33[0] = actionCopy;
  v33[1] = actionsCopy;
  v33[2] = recentActionsCopy;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:3];
  schedulerProvider = [(CNUIUserActionDisambiguationModeler *)self schedulerProvider];
  v21 = [v18 combineLatest:v19 schedulerProvider:schedulerProvider];

  if (throttles)
  {
    schedulerProvider2 = [(CNUIUserActionDisambiguationModeler *)self schedulerProvider];
    v23 = [v21 throttle:schedulerProvider2 schedulerProvider:0.1];
  }

  else
  {
    v23 = v21;
  }

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __112__CNUIUserActionDisambiguationModeler_modelsWithActionType_defaultAction_actions_recentActions_sorts_throttles___block_invoke;
  v31[3] = &unk_1E76E9E80;
  v31[4] = self;
  v24 = typeCopy;
  v32 = v24;
  v25 = [v23 map:v31];
  if (sortsCopy)
  {
    v29 = MEMORY[0x1E69E9820];
    v30 = v24;
    v26 = [(CNUIUserActionDisambiguationModeler *)self schedulerProvider:v29];
    v27 = [v25 switchMap:&v29 schedulerProvider:v26];

    v25 = v27;
  }

  return v25;
}

id __112__CNUIUserActionDisambiguationModeler_modelsWithActionType_defaultAction_actions_recentActions_sorts_throttles___block_invoke(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x1E6996590];
  v4 = a2;
  v5 = [v4 objectAtIndexedSubscript:0];
  v6 = (*(v3 + 16))(v3, v5);

  v7 = [v4 objectAtIndexedSubscript:1];
  v8 = [v4 objectAtIndexedSubscript:2];

  v9 = [*(a1 + 32) hasDefaultAppForActionType:*(a1 + 40)];
  v10 = [CNUIUserActionDisambiguationModelFinalizer modelWithDefaultAction:v6 actions:v7 recentActions:v8 directoryServiceActions:MEMORY[0x1E695E0F0] foundOnDeviceActions:MEMORY[0x1E695E0F0] hasDefaultApp:v9];

  return v10;
}

- (id)sortActionsOnModel:(id)model actionType:(id)type
{
  modelCopy = model;
  v7 = [(CNUIUserActionDisambiguationModeler *)self defaultAppsScorerForActionType:type];
  rankingHelper = [(CNUIUserActionDisambiguationModeler *)self rankingHelper];
  actions = [modelCopy actions];
  discoveringEnvironment = [(CNUIUserActionDisambiguationModeler *)self discoveringEnvironment];
  highLatencySchedulerProvider = [discoveringEnvironment highLatencySchedulerProvider];
  v12 = [rankingHelper sortActionItems:actions schedulerProvider:highLatencySchedulerProvider defaultAppsScorer:v7];

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __69__CNUIUserActionDisambiguationModeler_sortActionsOnModel_actionType___block_invoke;
  v24[3] = &unk_1E76E9210;
  v13 = modelCopy;
  v25 = v13;
  v14 = [v12 flatMap:v24];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __69__CNUIUserActionDisambiguationModeler_sortActionsOnModel_actionType___block_invoke_2;
  v22 = &unk_1E76E9CD8;
  v23 = v13;
  v15 = v13;
  v16 = [v14 recover:&v19];

  v17 = [MEMORY[0x1E6996798] observableWithFuture:{v16, v19, v20, v21, v22}];

  return v17;
}

id __69__CNUIUserActionDisambiguationModeler_sortActionsOnModel_actionType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[CNUIUserActionListModel alloc] initWithModel:*(a1 + 32) actions:v3];

  v5 = [MEMORY[0x1E6996720] futureWithResult:v4];

  return v5;
}

uint64_t __69__CNUIUserActionDisambiguationModeler_sortActionsOnModel_actionType___block_invoke_2(uint64_t a1, uint64_t a2)
{
  NSLog(&cfstr_Disambiguation_12.isa, a2);
  NSLog(&cfstr_Disambiguation_13.isa);
  v3 = MEMORY[0x1E6996720];
  v4 = *(a1 + 32);

  return [v3 futureWithResult:v4];
}

- (BOOL)hasDefaultAppForActionType:(id)type
{
  typeCopy = type;
  if (([typeCopy isEqualToString:*MEMORY[0x1E695C150]] & 1) != 0 || objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x1E695C1B8]))
  {
    discoveringEnvironment = [(CNUIUserActionDisambiguationModeler *)self discoveringEnvironment];
    callProviderManager = [discoveringEnvironment callProviderManager];
    hasDefaultCallProvider = [callProviderManager hasDefaultCallProvider];
  }

  else
  {
    hasDefaultCallProvider = 1;
  }

  return hasDefaultCallProvider;
}

- (id)defaultAppsScorerForActionType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:*MEMORY[0x1E695C178]])
  {
    targetDiscoveringHelper = [(CNUIUserActionDisambiguationModeler *)self targetDiscoveringHelper];
    defaultMessagingAppsBundleIdentifierScorer = [targetDiscoveringHelper defaultMessagingAppsBundleIdentifierScorer];
LABEL_8:

    goto LABEL_9;
  }

  if ([typeCopy isEqualToString:*MEMORY[0x1E695C150]])
  {
    targetDiscoveringHelper = [(CNUIUserActionDisambiguationModeler *)self discoveringEnvironment];
    callProviderManager = [targetDiscoveringHelper callProviderManager];
    defaultCallingAppsBundleIdentifierScorer = [callProviderManager defaultCallingAppsBundleIdentifierScorer];
LABEL_7:
    defaultMessagingAppsBundleIdentifierScorer = defaultCallingAppsBundleIdentifierScorer;

    goto LABEL_8;
  }

  if ([typeCopy isEqualToString:*MEMORY[0x1E695C1B8]])
  {
    targetDiscoveringHelper = [(CNUIUserActionDisambiguationModeler *)self discoveringEnvironment];
    callProviderManager = [targetDiscoveringHelper callProviderManager];
    defaultCallingAppsBundleIdentifierScorer = [callProviderManager defaultVideoAppsBundleIdentifierScorer];
    goto LABEL_7;
  }

  defaultMessagingAppsBundleIdentifierScorer = 0;
LABEL_9:

  return defaultMessagingAppsBundleIdentifierScorer;
}

- (id)thirdPartyTargetsForActionTypes:(id)types
{
  typesCopy = types;
  targetDiscoveringHelper = [(CNUIUserActionDisambiguationModeler *)self targetDiscoveringHelper];
  v6 = [targetDiscoveringHelper thirdPartyTargetsForActionTypes:typesCopy];

  return v6;
}

- (id)thirdPartyActionsForContactProperty:(id)property
{
  propertyCopy = property;
  if (thirdPartyActionsForContactProperty__cn_once_token_13 != -1)
  {
    [CNUIUserActionDisambiguationModeler thirdPartyActionsForContactProperty:];
  }

  v5 = thirdPartyActionsForContactProperty__cn_once_object_13;
  v6 = [propertyCopy key];
  v7 = [v5 containsObject:v6];

  if (v7)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__6;
    v26 = __Block_byref_object_dispose__6;
    v27 = 0;
    value = [propertyCopy value];
    bundleIdentifiers = [value bundleIdentifiers];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __75__CNUIUserActionDisambiguationModeler_thirdPartyActionsForContactProperty___block_invoke_49;
    v21[3] = &unk_1E76E9ED0;
    v21[4] = self;
    v21[5] = &v22;
    [bundleIdentifiers enumerateObjectsUsingBlock:v21];

    v10 = v23[5];
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __75__CNUIUserActionDisambiguationModeler_thirdPartyActionsForContactProperty___block_invoke_2;
    v18 = &unk_1E76E9EF8;
    v19 = propertyCopy;
    selfCopy = self;
    v11 = [v10 _cn_flatMap:&v15];
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = MEMORY[0x1E695E0F0];
    }

    v13 = [MEMORY[0x1E6996720] futureWithResult:{v12, v15, v16, v17, v18}];

    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v13 = [MEMORY[0x1E6996720] futureWithResult:MEMORY[0x1E695E0F0]];
  }

  return v13;
}

void __75__CNUIUserActionDisambiguationModeler_thirdPartyActionsForContactProperty___block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695C2B0];
  v4[0] = *MEMORY[0x1E695C3D0];
  v4[1] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];
  v2 = [v1 copy];
  v3 = thirdPartyActionsForContactProperty__cn_once_object_13;
  thirdPartyActionsForContactProperty__cn_once_object_13 = v2;
}

void __75__CNUIUserActionDisambiguationModeler_thirdPartyActionsForContactProperty___block_invoke_49(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 targetDiscoveringHelper];
  v9 = [v8 thirdPartyTargetsForBundleIdentifier:v7];

  v15 = 0;
  v10 = [v9 result:&v15];
  v11 = v15;
  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v10;

  v14 = [*(*(*(a1 + 40) + 8) + 40) count];
  *a4 = v14 != 0;
}

id __75__CNUIUserActionDisambiguationModeler_thirdPartyActionsForContactProperty___block_invoke_2(uint64_t a1, void *a2)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x1E695CEE0]);
  v5 = [*(a1 + 32) identifier];
  v6 = [*(a1 + 32) label];
  v7 = [*(a1 + 32) value];
  v8 = [v4 initWithIdentifier:v5 label:v6 value:v7];

  v9 = [*(a1 + 32) key];
  v10 = *MEMORY[0x1E695C3D0];
  if (v9 | *MEMORY[0x1E695C3D0] && (v11 = v9, [*(a1 + 32) key], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqual:", v10), v12, v11, !v13))
  {
    v20 = v8;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
    v15 = [*(a1 + 32) contact];
    v16 = [*(a1 + 40) discoveringEnvironment];
    v17 = [v3 actionsForInstantMessageAddresses:v14 contact:v15 discoveringEnvironment:v16];
  }

  else
  {
    v21[0] = v8;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    v15 = [*(a1 + 32) contact];
    v16 = [*(a1 + 40) discoveringEnvironment];
    v17 = [v3 actionsForSocialProfiles:v14 contact:v15 discoveringEnvironment:v16];
  }

  v18 = v17;

  return v18;
}

- (void)emptyDefaultAppsCaches
{
  targetDiscoveringHelper = [(CNUIUserActionDisambiguationModeler *)self targetDiscoveringHelper];
  [targetDiscoveringHelper emptyDefaultAppsCaches];

  discoveringEnvironment = [(CNUIUserActionDisambiguationModeler *)self discoveringEnvironment];
  callProviderManager = [discoveringEnvironment callProviderManager];
  [callProviderManager emptyDefaultAppsCaches];
}

void __86__CNUIUserActionDisambiguationModeler_modelsWithContact_actionType_defaultActionItem___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [*(v0 + 32) shortDebugDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void __77__CNUIUserActionDisambiguationModeler__discoverActionsForContact_actionType___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_3_1();
  [v0 count];
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
}

void __77__CNUIUserActionDisambiguationModeler__discoverActionsForContact_actionType___block_invoke_2_25_cold_1(uint64_t a1)
{
  v6 = [*(a1 + 40) shortDebugDescription];
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
}

void __77__CNUIUserActionDisambiguationModeler__discoverActionsForContact_actionType___block_invoke_27_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) shortDebugDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __77__CNUIUserActionDisambiguationModeler__discoverActionsForContact_actionType___block_invoke_29_cold_1()
{
  OUTLINED_FUNCTION_3_1();
  [v0 count];
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
}

void __64__CNUIUserActionDisambiguationModeler_defaultActionFromActions___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __64__CNUIUserActionDisambiguationModeler_recentActionsFromActions___block_invoke_cold_1(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

@end