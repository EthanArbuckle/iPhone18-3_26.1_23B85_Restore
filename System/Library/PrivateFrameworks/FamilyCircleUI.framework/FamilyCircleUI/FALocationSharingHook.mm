@interface FALocationSharingHook
- (BOOL)shouldMatchElement:(id)element;
- (BOOL)shouldMatchModel:(id)model;
- (RUIServerHookDelegate)delegate;
- (id)getFamilyCircle;
- (void)_invokeLocationServicesWithServerAttributes:(id)attributes completion:(id)completion;
- (void)processObjectModel:(id)model completion:(id)completion;
@end

@implementation FALocationSharingHook

- (BOOL)shouldMatchElement:(id)element
{
  name = [element name];
  v4 = [name isEqualToString:@"family:locationSharing"];

  return v4;
}

- (BOOL)shouldMatchModel:(id)model
{
  clientInfo = [model clientInfo];
  v4 = [clientInfo objectForKeyedSubscript:*MEMORY[0x277CEC988]];
  v5 = [v4 isEqualToString:@"family:locationSharing"];

  return v5;
}

- (void)processObjectModel:(id)model completion:(id)completion
{
  completionCopy = completion;
  clientInfo = [model clientInfo];
  [(FALocationSharingHook *)self _invokeLocationServicesWithServerAttributes:clientInfo completion:completionCopy];
}

- (void)_invokeLocationServicesWithServerAttributes:(id)attributes completion:(id)completion
{
  attributesCopy = attributes;
  completionCopy = completion;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy__1;
  v13[4] = __Block_byref_object_dispose__1;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v14 = [WeakRetained presentationContextForHook:self];

  getFamilyCircle = [(FALocationSharingHook *)self getFamilyCircle];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __80__FALocationSharingHook__invokeLocationServicesWithServerAttributes_completion___block_invoke;
  v12[3] = &unk_2782F37C0;
  v12[4] = v13;
  v10 = MEMORY[0x277D85CD0];
  v11 = MEMORY[0x277D85CD0];
  [getFamilyCircle onComplete:v12 onQueue:v10];

  _Block_object_dispose(v13, 8);
}

void __80__FALocationSharingHook__invokeLocationServicesWithServerAttributes_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = +[_TtC14FamilyCircleUI17LocationViewModel createModel];
  v4 = [[FAProfilePictureStore alloc] initWithFamilyCircle:v3];

  v5 = [_TtC14FamilyCircleUI34FASwiftUIHostingControllerProvider getLocationViewControllerWithViewModel:v10 pictureStore:v4 hackfromObjC:1];
  v6 = *(*(*(a1 + 32) + 8) + 40);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [*(*(*(a1 + 32) + 8) + 40) isDismissing])
  {
    v7 = [*(*(*(a1 + 32) + 8) + 40) hostViewController];
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  [*(*(*(a1 + 32) + 8) + 40) showViewController:v5 sender:0];
}

- (id)getFamilyCircle
{
  v2 = [objc_alloc(MEMORY[0x277CE4538]) initWithBlock:&__block_literal_global_11];

  return v2;
}

void __40__FALocationSharingHook_getFamilyCircle__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  [v3 setCachePolicy:1];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__FALocationSharingHook_getFamilyCircle__block_invoke_2;
  v5[3] = &unk_2782F37E8;
  v6 = v2;
  v4 = v2;
  [v3 startRequestWithCompletionHandler:v5];
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end