@interface _CNUIUserActionDialRequestOpener
+ (id)errorForUnableToCastDialRequest:(id)request;
+ (id)errorForUnableToOpenDialRequest:(id)request withUnderlyingError:(id)error;
- (_CNUIUserActionDialRequestOpener)init;
- (_CNUIUserActionDialRequestOpener)initWithCallCenter:(id)center;
- (id)openDialRequest:(id)request withScheduler:(id)scheduler;
@end

@implementation _CNUIUserActionDialRequestOpener

- (_CNUIUserActionDialRequestOpener)init
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v3 = getTUCallCenterClass_softClass;
  v12 = getTUCallCenterClass_softClass;
  if (!getTUCallCenterClass_softClass)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __getTUCallCenterClass_block_invoke;
    v8[3] = &unk_1E76E79E0;
    v8[4] = &v9;
    __getTUCallCenterClass_block_invoke(v8);
    v3 = v10[3];
  }

  v4 = v3;
  _Block_object_dispose(&v9, 8);
  sharedInstance = [v3 sharedInstance];
  v6 = [(_CNUIUserActionDialRequestOpener *)self initWithCallCenter:sharedInstance];

  return v6;
}

- (_CNUIUserActionDialRequestOpener)initWithCallCenter:(id)center
{
  centerCopy = center;
  v10.receiver = self;
  v10.super_class = _CNUIUserActionDialRequestOpener;
  v6 = [(_CNUIUserActionDialRequestOpener *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_callCenter, center);
    v8 = v7;
  }

  return v7;
}

- (id)openDialRequest:(id)request withScheduler:(id)scheduler
{
  requestCopy = request;
  schedulerCopy = scheduler;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2050000000;
  v8 = getTUDialRequestClass_softClass;
  v32 = getTUDialRequestClass_softClass;
  if (!getTUDialRequestClass_softClass)
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __getTUDialRequestClass_block_invoke;
    v28[3] = &unk_1E76E79E0;
    v28[4] = &v29;
    __getTUDialRequestClass_block_invoke(v28);
    v8 = v30[3];
  }

  v9 = v8;
  _Block_object_dispose(&v29, 8);
  objc_opt_class();
  v10 = requestCopy;
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    v13 = objc_alloc_init(MEMORY[0x1E69967D0]);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __66___CNUIUserActionDialRequestOpener_openDialRequest_withScheduler___block_invoke;
    v25[3] = &unk_1E76E7B50;
    v25[4] = self;
    v14 = v12;
    v26 = v14;
    v27 = v13;
    v15 = v13;
    [schedulerCopy performBlock:v25];
    future = [v15 future];
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __66___CNUIUserActionDialRequestOpener_openDialRequest_withScheduler___block_invoke_2;
    v22 = &unk_1E76E7B78;
    selfCopy = self;
    v24 = v14;
    v17 = [future recover:&v19];

    [v17 addFailureBlock:{&__block_literal_global_2, v19, v20, v21, v22, selfCopy}];
  }

  else
  {
    v15 = [objc_opt_class() errorForUnableToCastDialRequest:v10];
    v17 = [MEMORY[0x1E6996720] futureWithError:v15];
  }

  return v17;
}

+ (id)errorForUnableToCastDialRequest:(id)request
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69966B0];
  requestCopy = request;
  v5 = [v3 descriptionBuilderWithObject:requestCopy];
  handle = [requestCopy handle];
  v7 = [v5 appendName:@"handle" object:handle];

  contactIdentifier = [requestCopy contactIdentifier];
  v9 = [v5 appendName:@"contactIdentifier" object:contactIdentifier];

  isVideo = [requestCopy isVideo];
  v11 = [v5 appendName:@"video" BOOLValue:isVideo];
  v16 = @"dial request";
  build = [v5 build];
  v17[0] = build;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];

  v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNContactsUIErrorDomain" code:206 userInfo:v13];

  return v14;
}

+ (id)errorForUnableToOpenDialRequest:(id)request withUnderlyingError:(id)error
{
  v28[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69966B0];
  errorCopy = error;
  requestCopy = request;
  v8 = [v5 descriptionBuilderWithObject:requestCopy];
  handle = [requestCopy handle];
  v10 = [v8 appendName:@"handle" object:handle];

  contactIdentifier = [requestCopy contactIdentifier];
  v12 = [v8 appendName:@"contactIdentifier" object:contactIdentifier];

  v13 = [v8 appendName:@"video" BOOLValue:{objc_msgSend(requestCopy, "isVideo")}];
  provider = [requestCopy provider];
  identifier = [provider identifier];
  v16 = [v8 appendName:@"provider.identifier" object:identifier];

  provider2 = [requestCopy provider];
  localizedName = [provider2 localizedName];
  v19 = [v8 appendName:@"provider.localizedName" object:localizedName];

  provider3 = [requestCopy provider];

  bundleIdentifier = [provider3 bundleIdentifier];
  v22 = [v8 appendName:@"provider.bundleIdentifier" object:bundleIdentifier];

  v27[0] = @"dial request";
  build = [v8 build];
  v27[1] = *MEMORY[0x1E696AA08];
  v28[0] = build;
  v28[1] = errorCopy;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];

  v25 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNContactsUIErrorDomain" code:207 userInfo:v24];

  return v25;
}

@end