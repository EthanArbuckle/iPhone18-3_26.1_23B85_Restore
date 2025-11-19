@interface HUDashboardCameraItemModuleController
- (HUDashboardCameraItemModuleController)initWithModule:(id)a3 cameraPresentationStyle:(int64_t)a4;
- (NSMapTable)mapTable;
- (id)_cameraItemFor:(id)a3;
- (id)_cellLayoutOptions;
- (id)_detailsViewControllerForCameraItem:(id)a3;
- (id)_presentCameraPlayerViewControllerForCameraItem:(id)a3;
- (id)_presentCameraPlayerViewControllerForCameraItem:(id)a3 cameraClip:(id)a4 animated:(BOOL)a5;
- (id)_presentCameraPlayerViewControllerForCameraItem:(id)a3 startDate:(id)a4 endDate:(id)a5 animated:(BOOL)a6;
- (id)_presentCameraPlayerViewControllerForCameraItem:(id)a3 withConfiguration:(id)a4;
- (id)_sourceViewForPresentingCameraItem:(id)a3;
- (id)presentCameraPlayerViewControllerForHomeKitObject:(id)a3 cameraClip:(id)a4 animated:(BOOL)a5;
- (id)presentCameraPlayerViewControllerForHomeKitObject:(id)a3 startDate:(id)a4 endDate:(id)a5 animated:(BOOL)a6;
- (id)presentFeedbackFlowForCameraClip:(id)a3 fromProfile:(id)a4;
- (id)presentItem:(id)a3 destination:(unint64_t)a4 animated:(BOOL)a5;
- (id)targetViewForDismissingCameraProfile:(id)a3;
- (unint64_t)didSelectItem:(id)a3;
- (void)_logInteractionEventOfType:(unint64_t)a3 withItem:(id)a4;
- (void)configureCell:(id)a3 forItem:(id)a4;
- (void)didDismissCameraController:(id)a3 forProfile:(id)a4;
- (void)disableCameraSnapshotsForCells:(id)a3;
- (void)enableCameraSnapshotsForCells:(id)a3;
@end

@implementation HUDashboardCameraItemModuleController

- (HUDashboardCameraItemModuleController)initWithModule:(id)a3 cameraPresentationStyle:(int64_t)a4
{
  v6.receiver = self;
  v6.super_class = HUDashboardCameraItemModuleController;
  result = [(HUItemModuleController *)&v6 initWithModule:a3];
  if (result)
  {
    result->_cameraPresentationStyle = a4;
  }

  return result;
}

- (void)configureCell:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v17.receiver = self;
  v17.super_class = HUDashboardCameraItemModuleController;
  v7 = a4;
  [(HUItemModuleController *)&v17 configureCell:v6 forItem:v7];
  v8 = objc_opt_class();
  v9 = v6;
  if (!v9)
  {
    goto LABEL_7;
  }

  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v9;
  if (!v10)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v12 handleFailureInFunction:v13 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v8, objc_opt_class(), v17.receiver, v17.super_class}];

LABEL_7:
    v11 = 0;
  }

  v14 = [MEMORY[0x277D756E0] cellConfiguration];
  [v11 setContentConfiguration:v14];
  v15 = [(HUDashboardCameraItemModuleController *)self _cellLayoutOptions];
  [v11 setLayoutOptions:v15];

  [v11 setNeedsUpdateConfiguration];
  v16 = [(HUDashboardCameraItemModuleController *)self mapTable];
  [v16 setObject:v11 forKey:v7];
}

- (id)_cellLayoutOptions
{
  v3 = [(HUItemModuleController *)self host];
  v4 = [v3 presentingViewControllerForModuleController:self];

  v5 = [v4 view];
  [v5 frame];
  v8 = HUViewSizeSubclassForViewSize(v6, v7);

  v9 = [HUMosaicCameraCellLayoutOptions defaultOptionsForCellSizeSubclass:HUCellSizeSubclassForViewSizeSubclass(v8) viewSizeSubclass:v8];
  [v9 setIsMosaicCell:{-[HUDashboardCameraItemModuleController cameraPresentationStyle](self, "cameraPresentationStyle") == 1}];

  return v9;
}

- (unint64_t)didSelectItem:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  [(HUDashboardCameraItemModuleController *)self _logInteractionEventOfType:1 withItem:v5];
  v8 = [(HUDashboardCameraItemModuleController *)self _presentCameraPlayerViewControllerForCameraItem:v7];

  return 0;
}

- (id)presentCameraPlayerViewControllerForHomeKitObject:(id)a3 startDate:(id)a4 endDate:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a4;
  v11 = a5;
  v12 = [(HUDashboardCameraItemModuleController *)self _cameraItemFor:a3];
  if (v12)
  {
    v13 = [(HUDashboardCameraItemModuleController *)self _presentCameraPlayerViewControllerForCameraItem:v12 startDate:v10 endDate:v11 animated:v6];
  }

  else
  {
    v14 = MEMORY[0x277D2C900];
    v15 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
    v13 = [v14 futureWithError:v15];
  }

  return v13;
}

- (id)presentCameraPlayerViewControllerForHomeKitObject:(id)a3 cameraClip:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(HUDashboardCameraItemModuleController *)self _cameraItemFor:v8];
  if (v10)
  {
    v11 = [(HUDashboardCameraItemModuleController *)self _presentCameraPlayerViewControllerForCameraItem:v10 cameraClip:v9 animated:v5];
  }

  else
  {
    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = [v8 uniqueIdentifier];
      v17 = [v16 UUIDString];
      v18 = 138543362;
      v19 = v17;
      _os_log_error_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_ERROR, "Cancelling presentation – unable to find camera item for homeKitObject: %{public}@", &v18, 0xCu);
    }

    v13 = MEMORY[0x277D2C900];
    v14 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
    v11 = [v13 futureWithError:v14];
  }

  return v11;
}

- (id)_cameraItemFor:(id)a3
{
  v4 = a3;
  v5 = [(HUItemModuleController *)self module];
  v6 = [v5 matchingItemForHomeKitObject:v4];

  v7 = objc_opt_class();
  v8 = v6;
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v8;
    if (v9)
    {
      goto LABEL_8;
    }

    v11 = [MEMORY[0x277CCA890] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v11 handleFailureInFunction:v12 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v7, objc_opt_class()}];
  }

  v10 = 0;
LABEL_8:

  return v10;
}

- (id)_presentCameraPlayerViewControllerForCameraItem:(id)a3 startDate:(id)a4 endDate:(id)a5 animated:(BOOL)a6
{
  v8 = a4;
  v9 = a3;
  v10 = [HUCameraPlayerConfiguration alloc];
  v11 = [(HUItemModuleController *)self module];
  v12 = [v11 home];
  v13 = [v9 profile];
  v14 = [(HUCameraPlayerConfiguration *)v10 initWithHome:v12 cameraProfile:v13 notificationUUID:0 clipUUID:0];

  [(HUCameraPlayerConfiguration *)v14 setStartingPlaybackDate:v8];
  v15 = [(HUDashboardCameraItemModuleController *)self _presentCameraPlayerViewControllerForCameraItem:v9 withConfiguration:v14];

  return v15;
}

- (id)_presentCameraPlayerViewControllerForCameraItem:(id)a3 cameraClip:(id)a4 animated:(BOOL)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [HUCameraPlayerConfiguration alloc];
  v10 = [(HUItemModuleController *)self module];
  v11 = [v10 home];
  v12 = [v8 profile];
  v13 = [v7 uniqueIdentifier];

  v14 = [(HUCameraPlayerConfiguration *)v9 initWithHome:v11 cameraProfile:v12 notificationUUID:0 clipUUID:v13];
  v15 = [(HUDashboardCameraItemModuleController *)self _presentCameraPlayerViewControllerForCameraItem:v8 withConfiguration:v14];

  return v15;
}

- (id)_presentCameraPlayerViewControllerForCameraItem:(id)a3
{
  v4 = a3;
  v5 = [HUCameraPlayerConfiguration alloc];
  v6 = [(HUItemModuleController *)self module];
  v7 = [v6 home];
  v8 = [v4 profile];
  v9 = [(HUCameraPlayerConfiguration *)v5 initWithHome:v7 cameraProfile:v8 notificationUUID:0 clipUUID:0];

  v10 = [(HUDashboardCameraItemModuleController *)self _presentCameraPlayerViewControllerForCameraItem:v4 withConfiguration:v9];

  return v10;
}

- (id)_presentCameraPlayerViewControllerForCameraItem:(id)a3 withConfiguration:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[HUCameraController alloc] initWithConfiguration:v6 cameraDelegate:self];

  [(HUDashboardCameraItemModuleController *)self setCameraController:v8];
  v9 = [(HUDashboardCameraItemModuleController *)self _sourceViewForPresentingCameraItem:v7];

  v10 = MEMORY[0x277D2C900];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __107__HUDashboardCameraItemModuleController__presentCameraPlayerViewControllerForCameraItem_withConfiguration___block_invoke;
  v14[3] = &unk_277DB8200;
  v14[4] = self;
  v15 = v9;
  v11 = v9;
  v12 = [v10 futureWithBlock:v14];

  return v12;
}

void __107__HUDashboardCameraItemModuleController__presentCameraPlayerViewControllerForCameraItem_withConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) cameraController];
  v5 = [v4 playerViewController];
  v6 = *(a1 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __107__HUDashboardCameraItemModuleController__presentCameraPlayerViewControllerForCameraItem_withConfiguration___block_invoke_2;
  v8[3] = &unk_277DB8488;
  v9 = v3;
  v7 = v3;
  [v5 showFullScreenPresentationFromView:v6 completion:v8];
}

- (id)presentFeedbackFlowForCameraClip:(id)a3 fromProfile:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v26 = v6;
    v27 = 2112;
    v28 = v7;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "Present dashboard-launched feedback flow for clip:%@ cameraProfile:%@", buf, 0x16u);
  }

  v9 = [(HUItemModuleController *)self host];
  v10 = [v9 presentingViewControllerForModuleController:self];

  v11 = v10;
  v12 = &unk_28249D748;
  if ([v11 conformsToProtocol:v12])
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  v15 = [v14 hu_preloadContent];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __86__HUDashboardCameraItemModuleController_presentFeedbackFlowForCameraClip_fromProfile___block_invoke;
  v21[3] = &unk_277DB8888;
  v22 = v6;
  v23 = v7;
  v24 = v11;
  v16 = v11;
  v17 = v7;
  v18 = v6;
  v19 = [v15 flatMap:v21];

  return v19;
}

id __86__HUDashboardCameraItemModuleController_presentFeedbackFlowForCameraClip_fromProfile___block_invoke(id *a1)
{
  v2 = MEMORY[0x277D2C900];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __86__HUDashboardCameraItemModuleController_presentFeedbackFlowForCameraClip_fromProfile___block_invoke_2;
  v5[3] = &unk_277DB8860;
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v3 = [v2 futureWithBlock:v5];

  return v3;
}

void __86__HUDashboardCameraItemModuleController_presentFeedbackFlowForCameraClip_fromProfile___block_invoke_2(id *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D14500] videoDestinationURLForCameraClip:a1[4]];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v2;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "Preparing file for export at path:%@.", buf, 0xCu);
  }

  v4 = [HUCameraRecordingExportPreviewViewController alloc];
  v5 = a1[4];
  v6 = a1[5];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __86__HUDashboardCameraItemModuleController_presentFeedbackFlowForCameraClip_fromProfile___block_invoke_133;
  v21[3] = &unk_277DB8838;
  v22 = a1[6];
  v23 = a1[4];
  v24 = a1[5];
  v7 = [(HUCameraRecordingExportPreviewViewController *)v4 initWithCameraClip:v5 cameraProfile:v6 completionHandler:v21];
  v8 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v7];
  v9 = [a1[6] view];
  v10 = [v8 popoverPresentationController];
  [v10 setSourceView:v9];

  v11 = [a1[6] view];
  [v11 frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [v8 popoverPresentationController];
  [v20 setSourceRect:{v13, v15, v17, v19}];

  [a1[6] presentViewController:v8 animated:1 completion:0];
}

void __86__HUDashboardCameraItemModuleController_presentFeedbackFlowForCameraClip_fromProfile___block_invoke_133(id *a1, int a2)
{
  if (a2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __86__HUDashboardCameraItemModuleController_presentFeedbackFlowForCameraClip_fromProfile___block_invoke_2_134;
    block[3] = &unk_277DB8810;
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __86__HUDashboardCameraItemModuleController_presentFeedbackFlowForCameraClip_fromProfile___block_invoke_2_134(uint64_t a1)
{
  [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
  if ([*(a1 + 40) isDonated])
  {
    v7 = _HULocalizedStringWithDefaultValue(@"HUCameraFeedbackAlreadySubmittedTitle", @"HUCameraFeedbackAlreadySubmittedTitle", 1);
    v2 = _HULocalizedStringWithDefaultValue(@"HUCameraFeedbackAlreadySubmittedMessage", @"HUCameraFeedbackAlreadySubmittedMessage", 1);
    v3 = [MEMORY[0x277D75110] hu_alertControllerForAcknowledgementWithTitle:v7 message:v2];
    [*(a1 + 32) presentViewController:v3 animated:1 completion:0];
  }

  else
  {
    v4 = MEMORY[0x277D14478];
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __86__HUDashboardCameraItemModuleController_presentFeedbackFlowForCameraClip_fromProfile___block_invoke_3;
    v8[3] = &unk_277DB7E90;
    v9 = v5;
    v10 = *(a1 + 32);
    [v4 donateNotificationCenterCameraClip:v9 forCameraProfile:v6 completion:v8];
  }
}

void __86__HUDashboardCameraItemModuleController_presentFeedbackFlowForCameraClip_fromProfile___block_invoke_3(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = [*(a1 + 32) uniqueIdentifier];
      v10 = 138412546;
      v11 = v9;
      v12 = 2112;
      v13 = v3;
      _os_log_error_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_ERROR, "Error donating clip:%@. %@", &v10, 0x16u);
    }

    v5 = _HULocalizedStringWithDefaultValue(@"HUCameraFeedbackFailureToSubmitTitle", @"HUCameraFeedbackFailureToSubmitTitle", 1);
    v6 = @"HUCameraFeedbackFailureToSubmitMessage";
  }

  else
  {
    v5 = _HULocalizedStringWithDefaultValue(@"HUCameraFeedbackSubmittedTitle", @"HUCameraFeedbackSubmittedTitle", 1);
    v6 = @"HUCameraFeedbackSubmittedMessage";
  }

  v7 = _HULocalizedStringWithDefaultValue(v6, v6, 1);
  v8 = [MEMORY[0x277D75110] hu_alertControllerForAcknowledgementWithTitle:v5 message:v7];
  [*(a1 + 40) presentViewController:v8 animated:1 completion:0];
}

- (NSMapTable)mapTable
{
  mapTable = self->_mapTable;
  if (!mapTable)
  {
    v4 = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
    v5 = self->_mapTable;
    self->_mapTable = v4;

    mapTable = self->_mapTable;
  }

  return mapTable;
}

- (id)presentItem:(id)a3 destination:(unint64_t)a4 animated:(BOOL)a5
{
  v7 = a3;
  objc_opt_class();
  v8 = v7;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    v11 = [(HUDashboardCameraItemModuleController *)self _presentCameraPlayerViewControllerForCameraItem:v10];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __74__HUDashboardCameraItemModuleController_presentItem_destination_animated___block_invoke;
    v16[3] = &unk_277DB88B0;
    v16[4] = self;
    v16[5] = a4;
    v12 = [v11 flatMap:v16];
  }

  else
  {
    v13 = MEMORY[0x277D2C900];
    v14 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
    v12 = [v13 futureWithError:v14];
  }

  return v12;
}

id __74__HUDashboardCameraItemModuleController_presentItem_destination_animated___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == 1)
  {
    v2 = [*(a1 + 32) cameraController];
    v3 = [v2 presentSettingsViewController];
  }

  else
  {
    v3 = [MEMORY[0x277D2C900] futureWithResult:a2];
  }

  return v3;
}

- (id)_sourceViewForPresentingCameraItem:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(HUDashboardCameraItemModuleController *)self mapTable];
  v6 = [v5 objectForKey:v4];

  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [v8 cameraContentView];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_detailsViewControllerForCameraItem:(id)a3
{
  v3 = a3;
  v4 = [v3 profile];

  if (v4)
  {
    v5 = [[HUServiceDetailsViewController alloc] initWithServiceLikeItem:v3];
  }

  else
  {
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_ERROR, "Camera profile must not be nil to show the editor.", v8, 2u);
    }

    v5 = 0;
  }

  return v5;
}

- (void)_logInteractionEventOfType:(unint64_t)a3 withItem:(id)a4
{
  v17[4] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277D143D8];
  v16[0] = *MEMORY[0x277D13528];
  v7 = MEMORY[0x277CCABB0];
  v8 = a4;
  v9 = [v7 numberWithUnsignedInteger:a3];
  v10 = *MEMORY[0x277D13538];
  v17[0] = v9;
  v17[1] = v8;
  v11 = *MEMORY[0x277D13588];
  v16[1] = v10;
  v16[2] = v11;
  v17[2] = self;
  v16[3] = *MEMORY[0x277D13568];
  v12 = [(HUItemModuleController *)self module];
  v13 = [v12 room];
  v14 = MEMORY[0x277CBEC38];
  if (!v13)
  {
    v14 = MEMORY[0x277CBEC28];
  }

  v17[3] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];
  [v6 sendEvent:13 withData:v15];
}

- (id)targetViewForDismissingCameraProfile:(id)a3
{
  v4 = a3;
  v5 = [(HUItemModuleController *)self module];
  v6 = [v5 allItems];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__HUDashboardCameraItemModuleController_targetViewForDismissingCameraProfile___block_invoke;
  v11[3] = &unk_277DB85D8;
  v12 = v4;
  v7 = v4;
  v8 = [v6 na_firstObjectPassingTest:v11];

  v9 = [(HUDashboardCameraItemModuleController *)self _sourceViewForPresentingCameraItem:v8];

  return v9;
}

uint64_t __78__HUDashboardCameraItemModuleController_targetViewForDismissingCameraProfile___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 profile];
  v8 = [v7 isEqual:*(a1 + 32)];

  return v8;
}

- (void)didDismissCameraController:(id)a3 forProfile:(id)a4
{
  v5 = a3;
  v6 = [(HUDashboardCameraItemModuleController *)self cameraController];

  if (v6 == v5)
  {

    [(HUDashboardCameraItemModuleController *)self setCameraController:0];
  }
}

- (void)enableCameraSnapshotsForCells:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        objc_opt_class();
        v9 = v8;
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }

        v11 = v10;

        if (v11)
        {
          v12 = [v11 item];
          v13 = [v12 profile];
          v14 = [v13 hf_cameraManager];
          [v14 beginPeriodicSnapshotsWithRequester:v11];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }
}

- (void)disableCameraSnapshotsForCells:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        objc_opt_class();
        v9 = v8;
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }

        v11 = v10;

        if (v11)
        {
          v12 = [v11 item];
          v13 = [v12 profile];
          v14 = [v13 hf_cameraManager];
          [v14 endPeriodicSnapshotsWithRequester:v11];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }
}

@end