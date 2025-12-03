@interface INUICKPSynchronousRemoteViewController
+ (void)requestInstanceWithInfo:(id)info configuration:(id)configuration synchronousRemoteViewControllerDelegate:(id)delegate reply:(id)reply;
- (CGSize)preferredContentSize;
- (CRKCardSectionViewControllingDelegate)cardSectionViewControllingDelegate;
- (INUICKPInterfaceSectionOrganizing)interfaceSectionOrganizer;
- (INUICKPSynchronousRemoteViewControllerDelegate)delegate;
- (NSSet)cachedRepresentedParameters;
- (id)_interaction;
- (id)_minimumSizesBySystemVersion;
- (id)interfaceSectionsForRemoteViewController:(id)controller;
- (id)maximumSizesBySystemVersionForRemoteViewController:(id)controller;
- (void)loadView;
- (void)remoteViewControllerServiceDidTerminate:(id)terminate;
- (void)setRemoteViewController:(id)controller;
@end

@implementation INUICKPSynchronousRemoteViewController

+ (void)requestInstanceWithInfo:(id)info configuration:(id)configuration synchronousRemoteViewControllerDelegate:(id)delegate reply:(id)reply
{
  configurationCopy = configuration;
  replyCopy = reply;
  delegateCopy = delegate;
  infoCopy = info;
  v14 = objc_alloc_init(self);
  [v14 setDelegate:delegateCopy];

  v15 = MEMORY[0x277CD4600];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __126__INUICKPSynchronousRemoteViewController_requestInstanceWithInfo_configuration_synchronousRemoteViewControllerDelegate_reply___block_invoke;
  v19[3] = &unk_2797EB898;
  v21 = configurationCopy;
  v22 = replyCopy;
  v20 = v14;
  v16 = configurationCopy;
  v17 = v14;
  v18 = replyCopy;
  [v15 requestRemoteViewControllerWithRequestInfo:infoCopy reply:v19];
}

void __126__INUICKPSynchronousRemoteViewController_requestInstanceWithInfo_configuration_synchronousRemoteViewControllerDelegate_reply___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && !v6)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __126__INUICKPSynchronousRemoteViewController_requestInstanceWithInfo_configuration_synchronousRemoteViewControllerDelegate_reply___block_invoke_2;
    v9[3] = &unk_2797EB870;
    v10 = a1[4];
    v11 = v5;
    v12 = a1[5];
    v13 = a1[6];
    dispatch_async(MEMORY[0x277D85CD0], v9);
  }

  else
  {
    v8 = a1[6];
    if (v8)
    {
      v8[2](v8, 0, v7);
    }
  }
}

void __126__INUICKPSynchronousRemoteViewController_requestInstanceWithInfo_configuration_synchronousRemoteViewControllerDelegate_reply___block_invoke_2(id *a1)
{
  [a1[4] setRemoteViewController:a1[5]];
  [a1[5] setInheritsSecurity:1];
  [a1[5] setServiceViewShouldShareTouchesWithHost:1];
  objc_initWeak(&location, a1[5]);
  v3 = a1[4];
  v2 = a1[5];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __126__INUICKPSynchronousRemoteViewController_requestInstanceWithInfo_configuration_synchronousRemoteViewControllerDelegate_reply___block_invoke_3;
  v4[3] = &unk_2797EB848;
  objc_copyWeak(&v8, &location);
  v5 = a1[6];
  v7 = a1[7];
  v6 = a1[4];
  [v2 setDelegate:v3 completion:v4];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __126__INUICKPSynchronousRemoteViewController_requestInstanceWithInfo_configuration_synchronousRemoteViewControllerDelegate_reply___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __126__INUICKPSynchronousRemoteViewController_requestInstanceWithInfo_configuration_synchronousRemoteViewControllerDelegate_reply___block_invoke_4;
    v4[3] = &unk_2797EB820;
    v6 = *(a1 + 48);
    v5 = *(a1 + 40);
    [WeakRetained setIdealConfiguration:v3 animated:0 completion:v4];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

uint64_t __126__INUICKPSynchronousRemoteViewController_requestInstanceWithInfo_configuration_synchronousRemoteViewControllerDelegate_reply___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    if (!v3)
    {
      v5 = *(a1 + 32);
    }

    (*(v4 + 16))();
  }

  return MEMORY[0x2821F9730]();
}

- (void)loadView
{
  v3 = objc_alloc_init(INUICKPSynchronousRemoteView);
  [(INUICKPSynchronousRemoteView *)v3 setDelegate:self];
  [(INUICKPSynchronousRemoteViewController *)self setView:v3];
}

- (void)setRemoteViewController:(id)controller
{
  controllerCopy = controller;
  remoteViewController = self->_remoteViewController;
  v10 = controllerCopy;
  if (remoteViewController != controllerCopy)
  {
    [(INUIRemoteViewController *)remoteViewController removeFromParentViewController];
    view = [(INUIRemoteViewController *)self->_remoteViewController view];
    [view removeFromSuperview];

    [(INUIRemoteViewController *)self->_remoteViewController didMoveToParentViewController:0];
    objc_storeStrong(&self->_remoteViewController, controller);
    if (self->_remoteViewController)
    {
      [(INUICKPSynchronousRemoteViewController *)self addChildViewController:?];
      view2 = [(INUICKPSynchronousRemoteViewController *)self view];
      view3 = [(INUIRemoteViewController *)self->_remoteViewController view];
      [view2 addSubview:view3];

      [(INUIRemoteViewController *)self->_remoteViewController didMoveToParentViewController:self];
    }
  }
}

- (NSSet)cachedRepresentedParameters
{
  remoteViewController = [(INUICKPSynchronousRemoteViewController *)self remoteViewController];
  configuration = [remoteViewController configuration];
  parameters = [configuration parameters];

  return parameters;
}

- (id)_interaction
{
  remoteViewController = [(INUICKPSynchronousRemoteViewController *)self remoteViewController];
  requestInfo = [remoteViewController requestInfo];
  interaction = [requestInfo interaction];

  return interaction;
}

- (id)_minimumSizesBySystemVersion
{
  v12[2] = *MEMORY[0x277D85DE8];
  delegate = [(INUICKPSynchronousRemoteViewController *)self delegate];
  [delegate boundingWidthForSynchronousRemoteViewController:self];
  v5 = v4;

  v11[0] = &unk_286772998;
  v6 = [MEMORY[0x277CCAE60] valueWithCGSize:{v5, 120.0}];
  v11[1] = &unk_2867729B0;
  v12[0] = v6;
  v7 = [MEMORY[0x277CCAE60] valueWithCGSize:{v5, 20.0}];
  v12[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)remoteViewControllerServiceDidTerminate:(id)terminate
{
  v4 = *MEMORY[0x277CF93F0];
  if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
  {
    [(INUICKPSynchronousRemoteViewController *)v4 remoteViewControllerServiceDidTerminate:?];
  }
}

- (id)maximumSizesBySystemVersionForRemoteViewController:(id)controller
{
  v15[2] = *MEMORY[0x277D85DE8];
  delegate = [(INUICKPSynchronousRemoteViewController *)self delegate];
  [delegate boundingWidthForSynchronousRemoteViewController:self];
  v6 = v5;

  v14[0] = &unk_286772998;
  v7 = [MEMORY[0x277CCAE60] valueWithCGSize:{v6, 200.0}];
  v14[1] = &unk_2867729B0;
  v15[0] = v7;
  v8 = MEMORY[0x277CCAE60];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v10 = [v8 valueWithCGSize:{v6, CGRectGetHeight(v17)}];
  v15[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)interfaceSectionsForRemoteViewController:(id)controller
{
  interfaceSectionOrganizer = [(INUICKPSynchronousRemoteViewController *)self interfaceSectionOrganizer];
  organizedInterfaceSections = [interfaceSectionOrganizer organizedInterfaceSections];

  return organizedInterfaceSections;
}

- (CGSize)preferredContentSize
{
  remoteViewController = [(INUICKPSynchronousRemoteViewController *)self remoteViewController];
  v4 = remoteViewController;
  if (remoteViewController)
  {
    [remoteViewController preferredContentSize];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    _minimumSizesBySystemVersion = [(INUICKPSynchronousRemoteViewController *)self _minimumSizesBySystemVersion];
    _INUIUtilitiesBestFittingSizeForSizeBySystemVersionDictionary();
    v6 = v10;
    v8 = v11;
  }

  v12 = v6;
  v13 = v8;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CRKCardSectionViewControllingDelegate)cardSectionViewControllingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->cardSectionViewControllingDelegate);

  return WeakRetained;
}

- (INUICKPInterfaceSectionOrganizing)interfaceSectionOrganizer
{
  WeakRetained = objc_loadWeakRetained(&self->_interfaceSectionOrganizer);

  return WeakRetained;
}

- (INUICKPSynchronousRemoteViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)remoteViewControllerServiceDidTerminate:(void *)a1 .cold.1(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 _interaction];
  v5 = [a2 cachedRepresentedParameters];
  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_255550000, v3, OS_LOG_TYPE_ERROR, "IntentsUI remote view controller did terminate\n    Interaction: %@\n    Parameters: %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end