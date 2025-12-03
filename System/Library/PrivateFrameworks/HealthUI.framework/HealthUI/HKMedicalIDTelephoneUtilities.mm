@interface HKMedicalIDTelephoneUtilities
+ (id)dialRequest:(id)request;
+ (id)emergencyContactURL:(id)l;
+ (void)callEmergencyContact:(id)contact;
@end

@implementation HKMedicalIDTelephoneUtilities

+ (id)dialRequest:(id)request
{
  requestCopy = request;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2050000000;
  v4 = getTUCallProviderManagerClass_softClass;
  v24 = getTUCallProviderManagerClass_softClass;
  if (!getTUCallProviderManagerClass_softClass)
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __getTUCallProviderManagerClass_block_invoke;
    v19 = &unk_1E81B5C18;
    v20 = &v21;
    __getTUCallProviderManagerClass_block_invoke(&v16);
    v4 = v22[3];
  }

  v5 = v4;
  _Block_object_dispose(&v21, 8);
  v6 = objc_alloc_init(v4);
  defaultProvider = [v6 defaultProvider];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2050000000;
  v8 = getTUDialRequestClass_softClass;
  v24 = getTUDialRequestClass_softClass;
  if (!getTUDialRequestClass_softClass)
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __getTUDialRequestClass_block_invoke;
    v19 = &unk_1E81B5C18;
    v20 = &v21;
    __getTUDialRequestClass_block_invoke(&v16);
    v8 = v22[3];
  }

  v9 = v8;
  _Block_object_dispose(&v21, 8);
  v10 = [[v8 alloc] initWithProvider:defaultProvider];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2050000000;
  v11 = getTUHandleClass_softClass;
  v24 = getTUHandleClass_softClass;
  if (!getTUHandleClass_softClass)
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __getTUHandleClass_block_invoke;
    v19 = &unk_1E81B5C18;
    v20 = &v21;
    __getTUHandleClass_block_invoke(&v16);
    v11 = v22[3];
  }

  v12 = v11;
  _Block_object_dispose(&v21, 8);
  v13 = [[v11 alloc] initWithType:2 value:requestCopy];
  [v10 setHandle:v13];
  [v10 setShowUIPrompt:0];
  [v10 setPreferDefaultApp:0];
  if ([v10 isValid])
  {
    v14 = v10;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (void)callEmergencyContact:(id)contact
{
  v3 = [self dialRequest:contact];
  if (v3)
  {
    v6 = v3;
    defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
    v5 = [v6 URL];
    [defaultWorkspace openURL:v5 configuration:0 completionHandler:0];

    v3 = v6;
  }
}

+ (id)emergencyContactURL:(id)l
{
  v3 = [self dialRequest:l];
  v4 = [v3 URL];

  return v4;
}

@end