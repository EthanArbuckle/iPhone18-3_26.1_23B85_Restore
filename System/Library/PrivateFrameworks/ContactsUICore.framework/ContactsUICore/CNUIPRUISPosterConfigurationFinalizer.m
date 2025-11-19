@interface CNUIPRUISPosterConfigurationFinalizer
+ (id)finalizedConfiguration:(id)a3 forExtensionIdentifier:(id)a4;
@end

@implementation CNUIPRUISPosterConfigurationFinalizer

+ (id)finalizedConfiguration:(id)a3 forExtensionIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2050000000;
  v7 = getPRSPosterConfigurationAttributesClass_softClass;
  v33 = getPRSPosterConfigurationAttributesClass_softClass;
  if (!getPRSPosterConfigurationAttributesClass_softClass)
  {
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __getPRSPosterConfigurationAttributesClass_block_invoke;
    v28 = &unk_1E76E79E0;
    v29 = &v30;
    __getPRSPosterConfigurationAttributesClass_block_invoke(&v25);
    v7 = v31[3];
  }

  v8 = v7;
  _Block_object_dispose(&v30, 8);
  v9 = [v7 alloc];
  v10 = [v5 wrappedMutablePosterConfiguration];
  v11 = [v10 _path];
  v12 = [v9 initWithPath:v11 extensionIdentifier:v6];

  v30 = 0;
  v31 = &v30;
  v32 = 0x2050000000;
  v13 = getPRPosterConfiguredPropertiesClass_softClass;
  v33 = getPRPosterConfiguredPropertiesClass_softClass;
  if (!getPRPosterConfiguredPropertiesClass_softClass)
  {
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __getPRPosterConfiguredPropertiesClass_block_invoke;
    v28 = &unk_1E76E79E0;
    v29 = &v30;
    __getPRPosterConfiguredPropertiesClass_block_invoke(&v25);
    v13 = v31[3];
  }

  v14 = v13;
  _Block_object_dispose(&v30, 8);
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v15 = getPRSPosterRoleIncomingCallSymbolLoc_ptr;
  v33 = getPRSPosterRoleIncomingCallSymbolLoc_ptr;
  if (!getPRSPosterRoleIncomingCallSymbolLoc_ptr)
  {
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __getPRSPosterRoleIncomingCallSymbolLoc_block_invoke;
    v28 = &unk_1E76E79E0;
    v29 = &v30;
    v16 = PosterBoardServicesLibrary();
    v17 = dlsym(v16, "PRSPosterRoleIncomingCall");
    *(v29[1] + 24) = v17;
    getPRSPosterRoleIncomingCallSymbolLoc_ptr = *(v29[1] + 24);
    v15 = v31[3];
  }

  _Block_object_dispose(&v30, 8);
  if (!v15)
  {
    v24 = +[CNUIIDSRequest IDSServiceForService:];
    _Block_object_dispose(&v30, 8);
    _Unwind_Resume(v24);
  }

  v18 = [v13 defaultConfiguredPropertiesForRole:*v15];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2050000000;
  v19 = getPRUISPosterConfigurationFinalizerClass_softClass;
  v33 = getPRUISPosterConfigurationFinalizerClass_softClass;
  if (!getPRUISPosterConfigurationFinalizerClass_softClass)
  {
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __getPRUISPosterConfigurationFinalizerClass_block_invoke;
    v28 = &unk_1E76E79E0;
    v29 = &v30;
    __getPRUISPosterConfigurationFinalizerClass_block_invoke(&v25);
    v19 = v31[3];
  }

  v20 = v19;
  _Block_object_dispose(&v30, 8);
  v21 = [v19 finalizedConfigurationForAttributes:v12 withConfiguredProperties:v18 error:0];
  v22 = [[CNUIPRSPosterConfiguration alloc] initWithPosterConfiguration:v21];

  return v22;
}

@end