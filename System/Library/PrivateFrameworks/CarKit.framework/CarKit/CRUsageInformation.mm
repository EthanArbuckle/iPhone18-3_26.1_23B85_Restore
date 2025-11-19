@interface CRUsageInformation
- (BOOL)shouldSuggestCarPlayTips;
- (CRUsageInformation)init;
@end

@implementation CRUsageInformation

- (CRUsageInformation)init
{
  v5.receiver = self;
  v5.super_class = CRUsageInformation;
  v2 = [(CRUsageInformation *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(CRCarKitServiceClient);
    [(CRUsageInformation *)v2 setServiceClient:v3];
  }

  return v2;
}

- (BOOL)shouldSuggestCarPlayTips
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C81FC000, v3, OS_LOG_TYPE_DEFAULT, "Checking vehicle storage for CarPlay tips.", buf, 2u);
  }

  v4 = [(CRUsageInformation *)self serviceClient];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__CRUsageInformation_shouldSuggestCarPlayTips__block_invoke;
  v6[3] = &unk_1E82FC008;
  v6[4] = &v8;
  [v4 performSynchronousServiceBlock:v6 errorHandler:0];

  LOBYTE(v4) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __46__CRUsageInformation_shouldSuggestCarPlayTips__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46__CRUsageInformation_shouldSuggestCarPlayTips__block_invoke_2;
  v3[3] = &unk_1E82FBFE0;
  v3[4] = *(a1 + 32);
  return [a2 hasVehiclesWithReply:v3];
}

void __46__CRUsageInformation_shouldSuggestCarPlayTips__block_invoke_2(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = CarGeneralLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (a2)
    {
      v5 = @"YES";
    }

    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_1C81FC000, v4, OS_LOG_TYPE_DEFAULT, "CarPlay Tips vehicle storage indicates %@", &v6, 0xCu);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
}

@end