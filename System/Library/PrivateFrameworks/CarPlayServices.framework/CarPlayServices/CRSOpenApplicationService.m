@interface CRSOpenApplicationService
+ (id)defaultService;
- (void)openApplication:(id)a3 completion:(id)a4;
@end

@implementation CRSOpenApplicationService

+ (id)defaultService
{
  v2 = [MEMORY[0x277D0AD78] dashboardService];
  if (v2)
  {
    v3 = objc_alloc_init(CRSOpenApplicationService);
    objc_storeStrong(&v3->_openService, v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)openApplication:(id)a3 completion:(id)a4
{
  v6 = a4;
  openService = self->_openService;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__CRSOpenApplicationService_openApplication_completion___block_invoke;
  v9[3] = &unk_278D8E5E0;
  v10 = v6;
  v8 = v6;
  [(FBSOpenApplicationService *)openService openApplication:a3 withOptions:0 completion:v9];
}

uint64_t __56__CRSOpenApplicationService_openApplication_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

@end