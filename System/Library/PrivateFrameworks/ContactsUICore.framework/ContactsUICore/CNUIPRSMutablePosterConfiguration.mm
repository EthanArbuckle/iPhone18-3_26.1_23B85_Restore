@interface CNUIPRSMutablePosterConfiguration
- (CNUIPRSMutablePosterConfiguration)init;
@end

@implementation CNUIPRSMutablePosterConfiguration

- (CNUIPRSMutablePosterConfiguration)init
{
  v16.receiver = self;
  v16.super_class = CNUIPRSMutablePosterConfiguration;
  v2 = [(CNUIPRSMutablePosterConfiguration *)&v16 init];
  if (v2)
  {
    getPRSMutablePosterConfigurationClass();
    objc_opt_class();
    v3 = objc_opt_respondsToSelector();
    PRSMutablePosterConfigurationClass = getPRSMutablePosterConfigurationClass();
    v5 = PRSMutablePosterConfigurationClass;
    if (v3)
    {
      v22 = 0;
      v23 = &v22;
      v24 = 0x2020000000;
      v6 = getPRSPosterRoleIncomingCallSymbolLoc_ptr_0;
      v25 = getPRSPosterRoleIncomingCallSymbolLoc_ptr_0;
      if (!getPRSPosterRoleIncomingCallSymbolLoc_ptr_0)
      {
        v17 = MEMORY[0x1E69E9820];
        v18 = 3221225472;
        v19 = __getPRSPosterRoleIncomingCallSymbolLoc_block_invoke_0;
        v20 = &unk_1E76E79E0;
        v21 = &v22;
        v7 = PosterBoardServicesLibrary_0();
        v8 = dlsym(v7, "PRSPosterRoleIncomingCall");
        *(v21[1] + 24) = v8;
        getPRSPosterRoleIncomingCallSymbolLoc_ptr_0 = *(v21[1] + 24);
        v6 = v23[3];
      }

      _Block_object_dispose(&v22, 8);
      if (!v6)
      {
        v15 = +[CNUIIDSRequest IDSServiceForService:];
        _Block_object_dispose(&v22, 8);
        _Unwind_Resume(v15);
      }

      v9 = *v6;
      v10 = [v5 mutableConfigurationWithRole:v9];
      wrappedMutablePosterConfiguration = v2->_wrappedMutablePosterConfiguration;
      v2->_wrappedMutablePosterConfiguration = v10;
    }

    else
    {
      mutableConfiguration = [PRSMutablePosterConfigurationClass mutableConfiguration];
      v9 = v2->_wrappedMutablePosterConfiguration;
      v2->_wrappedMutablePosterConfiguration = mutableConfiguration;
    }

    v13 = v2;
  }

  return v2;
}

@end