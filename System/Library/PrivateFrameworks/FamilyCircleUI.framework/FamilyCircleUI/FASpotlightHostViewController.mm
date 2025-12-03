@interface FASpotlightHostViewController
+ (id)requestViewControllerWithContactID:(id)d completion:(id)completion;
@end

@implementation FASpotlightHostViewController

+ (id)requestViewControllerWithContactID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = *MEMORY[0x277D08120];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __79__FASpotlightHostViewController_requestViewControllerWithContactID_completion___block_invoke;
  v13[3] = &unk_2782F3E58;
  v14 = dCopy;
  v15 = completionCopy;
  v9 = completionCopy;
  v10 = dCopy;
  v11 = [self requestViewController:@"FASpotlightServiceViewController" fromServiceWithBundleIdentifier:v8 connectionHandler:v13];

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