@interface CPSAKAuthorizationRequestFromASAuthorizationAppleIDRequest
@end

@implementation CPSAKAuthorizationRequestFromASAuthorizationAppleIDRequest

id ___CPSAKAuthorizationRequestFromASAuthorizationAppleIDRequest_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v3 = getASAuthorizationScopeEmailSymbolLoc_ptr;
  v13 = getASAuthorizationScopeEmailSymbolLoc_ptr;
  if (!getASAuthorizationScopeEmailSymbolLoc_ptr)
  {
    v4 = AuthenticationServicesLibrary();
    v11[3] = dlsym(v4, "ASAuthorizationScopeEmail");
    getASAuthorizationScopeEmailSymbolLoc_ptr = v11[3];
    v3 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v3)
  {
    ___CPSAKAuthorizationRequestFromASAuthorizationAppleIDRequest_block_invoke_cold_1();
  }

  if ([v2 isEqualToString:*v3])
  {
    v5 = MEMORY[0x277CEFFE0];
LABEL_11:
    v8 = *v5;
    goto LABEL_13;
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v6 = getASAuthorizationScopeFullNameSymbolLoc_ptr;
  v13 = getASAuthorizationScopeFullNameSymbolLoc_ptr;
  if (!getASAuthorizationScopeFullNameSymbolLoc_ptr)
  {
    v7 = AuthenticationServicesLibrary();
    v11[3] = dlsym(v7, "ASAuthorizationScopeFullName");
    getASAuthorizationScopeFullNameSymbolLoc_ptr = v11[3];
    v6 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v6)
  {
    ___CPSAKAuthorizationRequestFromASAuthorizationAppleIDRequest_block_invoke_cold_1();
  }

  if ([v2 isEqualToString:*v6])
  {
    v5 = MEMORY[0x277CEFFE8];
    goto LABEL_11;
  }

  v8 = 0;
LABEL_13:

  return v8;
}

void ___CPSAKAuthorizationRequestFromASAuthorizationAppleIDRequest_block_invoke_cold_1()
{
  dlerror();
  abort_report_np();
  __getASAuthorizationPasswordRequestClass_block_invoke_cold_1();
}

@end