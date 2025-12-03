@interface _CNUIUserActionUserActivityOpener
+ (id)errorForUnableToOpenUserActivity:(id)activity withUnderlyingError:(id)error;
- (_CNUIUserActionUserActivityOpener)init;
- (_CNUIUserActionUserActivityOpener)initWithApplicationWorkspace:(id)workspace;
- (id)openUserActivity:(id)activity usingBundleIdentifier:(id)identifier withScheduler:(id)scheduler;
@end

@implementation _CNUIUserActionUserActivityOpener

- (_CNUIUserActionUserActivityOpener)init
{
  v3 = objc_alloc_init(CNLSApplicationWorkspace);
  v4 = [(_CNUIUserActionUserActivityOpener *)self initWithApplicationWorkspace:v3];

  return v4;
}

- (_CNUIUserActionUserActivityOpener)initWithApplicationWorkspace:(id)workspace
{
  workspaceCopy = workspace;
  v10.receiver = self;
  v10.super_class = _CNUIUserActionUserActivityOpener;
  v6 = [(_CNUIUserActionUserActivityOpener *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_applicationWorkspace, workspace);
    v8 = v7;
  }

  return v7;
}

- (id)openUserActivity:(id)activity usingBundleIdentifier:(id)identifier withScheduler:(id)scheduler
{
  activityCopy = activity;
  identifierCopy = identifier;
  v10 = MEMORY[0x1E69967D0];
  schedulerCopy = scheduler;
  v12 = objc_alloc_init(v10);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __90___CNUIUserActionUserActivityOpener_openUserActivity_usingBundleIdentifier_withScheduler___block_invoke;
  v26[3] = &unk_1E76E9330;
  v13 = activityCopy;
  v27 = v13;
  selfCopy = self;
  v29 = identifierCopy;
  v30 = v12;
  v14 = v12;
  v15 = identifierCopy;
  [schedulerCopy performBlock:v26];

  future = [v14 future];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __90___CNUIUserActionUserActivityOpener_openUserActivity_usingBundleIdentifier_withScheduler___block_invoke_2;
  v23 = &unk_1E76E7B78;
  selfCopy2 = self;
  v25 = v13;
  v17 = v13;
  v18 = [future recover:&v20];

  [v18 addFailureBlock:{&__block_literal_global_62, v20, v21, v22, v23, selfCopy2}];

  return v18;
}

+ (id)errorForUnableToOpenUserActivity:(id)activity withUnderlyingError:(id)error
{
  v20[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69966B0];
  errorCopy = error;
  activityCopy = activity;
  v8 = [v5 descriptionBuilderWithObject:activityCopy];
  activityType = [activityCopy activityType];
  v10 = [v8 appendName:@"activityType" object:activityType];

  title = [activityCopy title];
  v12 = [v8 appendName:@"title" object:title];

  userInfo = [activityCopy userInfo];

  v14 = [v8 appendName:@"userInfo" object:userInfo];
  v19[0] = @"user activity";
  build = [v8 build];
  v19[1] = *MEMORY[0x1E696AA08];
  v20[0] = build;
  v20[1] = errorCopy;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];

  v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNContactsUIErrorDomain" code:202 userInfo:v16];

  return v17;
}

@end