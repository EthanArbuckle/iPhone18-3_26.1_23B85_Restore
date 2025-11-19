@interface FASpotlightHostViewController
+ (id)requestViewControllerWithContactID:(id)a3 completion:(id)a4;
@end

@implementation FASpotlightHostViewController

+ (id)requestViewControllerWithContactID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277D08120];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __79__FASpotlightHostViewController_requestViewControllerWithContactID_completion___block_invoke;
  v13[3] = &unk_2782F3E58;
  v14 = v6;
  v15 = v7;
  v9 = v7;
  v10 = v6;
  v11 = [a1 requestViewController:@"FASpotlightServiceViewController" fromServiceWithBundleIdentifier:v8 connectionHandler:v13];

  return v11;
}

void __79__FASpotlightHostViewController_requestViewControllerWithContactID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [v7 serviceViewControllerProxy];
  [v6 updateWithContactIdentifier:*(a1 + 32)];

  (*(*(a1 + 40) + 16))();
}

@end