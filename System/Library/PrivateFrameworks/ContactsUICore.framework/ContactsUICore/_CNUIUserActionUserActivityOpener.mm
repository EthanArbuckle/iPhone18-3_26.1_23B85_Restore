@interface _CNUIUserActionUserActivityOpener
+ (id)errorForUnableToOpenUserActivity:(id)a3 withUnderlyingError:(id)a4;
- (_CNUIUserActionUserActivityOpener)init;
- (_CNUIUserActionUserActivityOpener)initWithApplicationWorkspace:(id)a3;
- (id)openUserActivity:(id)a3 usingBundleIdentifier:(id)a4 withScheduler:(id)a5;
@end

@implementation _CNUIUserActionUserActivityOpener

- (_CNUIUserActionUserActivityOpener)init
{
  v3 = objc_alloc_init(CNLSApplicationWorkspace);
  v4 = [(_CNUIUserActionUserActivityOpener *)self initWithApplicationWorkspace:v3];

  return v4;
}

- (_CNUIUserActionUserActivityOpener)initWithApplicationWorkspace:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = _CNUIUserActionUserActivityOpener;
  v6 = [(_CNUIUserActionUserActivityOpener *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_applicationWorkspace, a3);
    v8 = v7;
  }

  return v7;
}

- (id)openUserActivity:(id)a3 usingBundleIdentifier:(id)a4 withScheduler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = MEMORY[0x1E69967D0];
  v11 = a5;
  v12 = objc_alloc_init(v10);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __90___CNUIUserActionUserActivityOpener_openUserActivity_usingBundleIdentifier_withScheduler___block_invoke;
  v26[3] = &unk_1E76E9330;
  v13 = v8;
  v27 = v13;
  v28 = self;
  v29 = v9;
  v30 = v12;
  v14 = v12;
  v15 = v9;
  [v11 performBlock:v26];

  v16 = [v14 future];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __90___CNUIUserActionUserActivityOpener_openUserActivity_usingBundleIdentifier_withScheduler___block_invoke_2;
  v23 = &unk_1E76E7B78;
  v24 = self;
  v25 = v13;
  v17 = v13;
  v18 = [v16 recover:&v20];

  [v18 addFailureBlock:{&__block_literal_global_62, v20, v21, v22, v23, v24}];

  return v18;
}

+ (id)errorForUnableToOpenUserActivity:(id)a3 withUnderlyingError:(id)a4
{
  v20[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69966B0];
  v6 = a4;
  v7 = a3;
  v8 = [v5 descriptionBuilderWithObject:v7];
  v9 = [v7 activityType];
  v10 = [v8 appendName:@"activityType" object:v9];

  v11 = [v7 title];
  v12 = [v8 appendName:@"title" object:v11];

  v13 = [v7 userInfo];

  v14 = [v8 appendName:@"userInfo" object:v13];
  v19[0] = @"user activity";
  v15 = [v8 build];
  v19[1] = *MEMORY[0x1E696AA08];
  v20[0] = v15;
  v20[1] = v6;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];

  v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNContactsUIErrorDomain" code:202 userInfo:v16];

  return v17;
}

@end