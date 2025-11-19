@interface HURestrictedGuestScheduleViewController
- (HURestrictedGuestScheduleViewController)initWithHome:(id)a3 user:(id)a4;
- (HURestrictedGuestScheduleViewController)initWithSchedule:(id)a3 delegate:(id)a4;
- (HURestrictedGuestScheduleViewControllerDelegate)delegate;
- (id)_editorItemModule;
- (id)_originalScheduleBuilder;
- (id)buildItemModuleControllerForModule:(id)a3;
- (void)doneButtonPressed:(id)a3;
- (void)scheduleEditorModule:(id)a3 didUpdateScheduleBuilder:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation HURestrictedGuestScheduleViewController

- (HURestrictedGuestScheduleViewController)initWithHome:(id)a3 user:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"HURestrictedGuestScheduleViewController.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"home"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x277CCA890] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"HURestrictedGuestScheduleViewController.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"user"}];

LABEL_3:
  if (([v8 hf_userIsRestrictedGuest:v10] & 1) == 0)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"HURestrictedGuestScheduleViewController.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"[home hf_userIsRestrictedGuest:user]"}];
  }

  v11 = [[HURestrictedGuestScheduleItemManager alloc] initWithHome:v8 user:v10 delegate:self];
  v19.receiver = self;
  v19.super_class = HURestrictedGuestScheduleViewController;
  v12 = [(HUItemTableViewController *)&v19 initWithItemManager:v11 tableViewStyle:1];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_home, a3);
    objc_storeStrong(&v13->_user, a4);
    objc_storeStrong(&v13->_scheduleItemManager, v11);
    if ([(HURestrictedGuestScheduleItemManager *)v11 scheduleContext])
    {
      v18 = [MEMORY[0x277CCA890] currentHandler];
      [v18 handleFailureInMethod:a2 object:v13 file:@"HURestrictedGuestScheduleViewController.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"itemManager.scheduleContext == HUScheduleContextExistingUser"}];
    }
  }

  return v13;
}

- (HURestrictedGuestScheduleViewController)initWithSchedule:(id)a3 delegate:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"HURestrictedGuestScheduleViewController.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"schedule"}];

    if (v10)
    {
      goto LABEL_3;
    }

LABEL_8:
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"HURestrictedGuestScheduleViewController.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"delegate"}];

    goto LABEL_3;
  }

  if (!v9)
  {
    goto LABEL_8;
  }

LABEL_3:
  v11 = [[HURestrictedGuestScheduleItemManager alloc] initWithSchedule:v8 delegate:self];
  v18.receiver = self;
  v18.super_class = HURestrictedGuestScheduleViewController;
  v12 = [(HUItemTableViewController *)&v18 initWithItemManager:v11 tableViewStyle:1];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_inviteUserSchedule, a3);
    objc_storeWeak(&v13->_delegate, v10);
    objc_storeStrong(&v13->_scheduleItemManager, v11);
    if ([(HURestrictedGuestScheduleItemManager *)v11 scheduleContext]!= 1)
    {
      v17 = [MEMORY[0x277CCA890] currentHandler];
      [v17 handleFailureInMethod:a2 object:v13 file:@"HURestrictedGuestScheduleViewController.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"itemManager.scheduleContext == HUScheduleContextNewUser"}];
    }
  }

  return v13;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = HURestrictedGuestScheduleViewController;
  [(HUItemTableViewController *)&v10 viewDidLoad];
  v3 = [(HURestrictedGuestScheduleViewController *)self home];
  if ([v3 hf_currentUserIsRestrictedGuest])
  {
    v4 = @"HURestrictedGuestScheduleItem_GuestView_Title";
  }

  else
  {
    v4 = @"HURestrictedGuestScheduleItem_AdminView_Title";
  }

  v5 = _HULocalizedStringWithDefaultValue(v4, v4, 1);

  [(HURestrictedGuestScheduleViewController *)self setTitle:v5];
  v6 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_doneButtonPressed_];
  v7 = [(HURestrictedGuestScheduleViewController *)self navigationItem];
  [v7 setRightBarButtonItem:v6];

  v8 = [(HURestrictedGuestScheduleViewController *)self navigationItem];
  v9 = [v8 rightBarButtonItem];
  [v9 setAccessibilityIdentifier:@"Home.Users.Guest.Schedule.Done"];
}

- (id)buildItemModuleControllerForModule:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    NSLog(&cfstr_UnexpectedModu.isa, v4);
  }

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

  [v7 setDelegate:self];
  v8 = [(HUItemModuleController *)[HUScheduleEditorItemModuleController alloc] initWithModule:v5];

  return v8;
}

- (void)doneButtonPressed:(id)a3
{
  v68 = *MEMORY[0x277D85DE8];
  v46 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138412546;
    v59 = self;
    v60 = 2112;
    v61 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ Done button pressed", buf, 0x16u);
  }

  v7 = [(HURestrictedGuestScheduleViewController *)self _editorItemModule];
  v8 = [(HUItemTableViewController *)self itemModuleControllers];
  v9 = [v8 na_firstObjectPassingTest:&__block_literal_global_70];

  if ([v9 saveCustomScheduleStartAndEndTimes])
  {
    v10 = [v7 updatedScheduleBuilder];
    v11 = [v7 originalScheduleBuilder];
    v12 = [v10 isEqual:v11];

    if (v12)
    {
      v13 = HFLogForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = NSStringFromSelector(a2);
        v15 = [v7 originalScheduleBuilder];
        *buf = 138413058;
        v59 = self;
        v60 = 2112;
        v61 = v14;
        v62 = 2112;
        v63 = v10;
        v64 = 2112;
        v65 = v15;
        _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "%@:%@ Exiting without applying changes...New guest access schedule builder [%@] did not change from original schedule builder [%@].", buf, 0x2Au);
      }

      v16 = [(HURestrictedGuestScheduleViewController *)self navigationController];
      [v16 dismissViewControllerAnimated:1 completion:0];
    }

    else
    {
      v17 = [(HURestrictedGuestScheduleViewController *)self scheduleItemManager];
      v18 = [v17 scheduleContext] == 0;

      if (v18)
      {
        v26 = [(HURestrictedGuestScheduleViewController *)self home];
        v27 = [(HURestrictedGuestScheduleViewController *)self user];
        v16 = [v26 homeAccessControlForUser:v27];

        v42 = [v16 restrictedGuestAccessSettings];
        v44 = [v42 guestAccessSchedule];
        v43 = [v10 build];
        v45 = [MEMORY[0x277CD1D78] hf_restrictedGuestHomeAccessScheduleFromHFSchedule:v43];
        v28 = HFLogForCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = NSStringFromSelector(a2);
          *buf = 138413058;
          v59 = self;
          v60 = 2112;
          v61 = v29;
          v62 = 2112;
          v63 = v45;
          v64 = 2112;
          v65 = v43;
          _os_log_impl(&dword_20CEB6000, v28, OS_LOG_TYPE_DEFAULT, "%@:%@ Constructed new guest access schedule [%@] from schedule [%@].", buf, 0x2Au);
        }

        if ([v44 isEqual:v45])
        {
          v30 = HFLogForCategory();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v31 = NSStringFromSelector(a2);
            *buf = 138413058;
            v59 = self;
            v60 = 2112;
            v61 = v31;
            v62 = 2112;
            v63 = v45;
            v64 = 2112;
            v65 = v44;
            _os_log_impl(&dword_20CEB6000, v30, OS_LOG_TYPE_DEFAULT, "%@:%@ Exiting without applying changes...New guest access schedule [%@] is the same as the current access schedule [%@].", buf, 0x2Au);
          }

          v32 = [(HURestrictedGuestScheduleViewController *)self navigationController];
          [v32 dismissViewControllerAnimated:1 completion:0];
        }

        else
        {
          v33 = [(HURestrictedGuestScheduleViewController *)self navigationItem];
          v34 = [v33 rightBarButtonItem];
          [(HURestrictedGuestScheduleViewController *)self setSavedButtonBarItem:v34];

          v32 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
          v35 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v32];
          v36 = [(HURestrictedGuestScheduleViewController *)self navigationItem];
          [v36 setRightBarButtonItem:v35];

          [v32 startAnimating];
          objc_initWeak(buf, self);
          v37 = MEMORY[0x277D2C900];
          v53[0] = MEMORY[0x277D85DD0];
          v53[1] = 3221225472;
          v53[2] = __61__HURestrictedGuestScheduleViewController_doneButtonPressed___block_invoke_73;
          v53[3] = &unk_277DBB7D8;
          objc_copyWeak(v57, buf);
          v57[1] = a2;
          v54 = v44;
          v55 = v45;
          v56 = v16;
          v38 = [v37 futureWithBlock:v53];
          v51[0] = MEMORY[0x277D85DD0];
          v51[1] = 3221225472;
          v51[2] = __61__HURestrictedGuestScheduleViewController_doneButtonPressed___block_invoke_2;
          v51[3] = &unk_277DB94D0;
          objc_copyWeak(&v52, buf);
          v39 = [v38 addFailureBlock:v51];
          v49[0] = MEMORY[0x277D85DD0];
          v49[1] = 3221225472;
          v49[2] = __61__HURestrictedGuestScheduleViewController_doneButtonPressed___block_invoke_2_85;
          v49[3] = &unk_277DB8CA8;
          objc_copyWeak(&v50, buf);
          v40 = [v38 addCompletionBlock:v49];
          v47[0] = MEMORY[0x277D85DD0];
          v47[1] = 3221225472;
          v47[2] = __61__HURestrictedGuestScheduleViewController_doneButtonPressed___block_invoke_3;
          v47[3] = &unk_277DB99B8;
          objc_copyWeak(&v48, buf);
          v41 = [v38 addSuccessBlock:v47];
          objc_destroyWeak(&v48);
          objc_destroyWeak(&v50);
          objc_destroyWeak(&v52);

          objc_destroyWeak(v57);
          objc_destroyWeak(buf);
        }
      }

      else
      {
        v19 = [(HURestrictedGuestScheduleViewController *)self scheduleItemManager];
        v20 = [v19 scheduleContext] == 1;

        if (!v20)
        {
LABEL_22:

          goto LABEL_23;
        }

        v16 = [v10 build];
        v21 = HFLogForCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = NSStringFromSelector(a2);
          v23 = [(HURestrictedGuestScheduleViewController *)self delegate];
          *buf = 138413314;
          v59 = self;
          v60 = 2112;
          v61 = v22;
          v62 = 2112;
          v63 = v23;
          v64 = 2112;
          v65 = v16;
          v66 = 2112;
          v67 = v10;
          _os_log_impl(&dword_20CEB6000, v21, OS_LOG_TYPE_DEFAULT, "%@:%@ Notifying delegate [%@] of updated schedule [%@] from schedule builder [%@].", buf, 0x34u);
        }

        v24 = [(HURestrictedGuestScheduleViewController *)self delegate];
        [v24 didUpdateInviteUserSchedule:self schedule:v16];

        v25 = [(HURestrictedGuestScheduleViewController *)self navigationController];
        [v25 dismissViewControllerAnimated:1 completion:0];
      }
    }

    goto LABEL_22;
  }

LABEL_23:
}

uint64_t __61__HURestrictedGuestScheduleViewController_doneButtonPressed___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __61__HURestrictedGuestScheduleViewController_doneButtonPressed___block_invoke_73(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(*(a1 + 64));
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = [WeakRetained user];
    v10 = [WeakRetained home];
    *buf = 138413570;
    v19 = WeakRetained;
    v20 = 2112;
    v21 = v6;
    v22 = 2112;
    v23 = v8;
    v24 = 2112;
    v25 = v7;
    v26 = 2112;
    v27 = v9;
    v28 = 2112;
    v29 = v10;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ Preparing to update (current) guest access schedule [%@] to (new) restricted guest home access schedule [%@] for user [%@] in home [%@].", buf, 0x3Eu);
  }

  v12 = *(a1 + 40);
  v11 = *(a1 + 48);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__HURestrictedGuestScheduleViewController_doneButtonPressed___block_invoke_74;
  v15[3] = &unk_277DBB7B0;
  v13 = *(a1 + 64);
  v15[4] = WeakRetained;
  v17[1] = v13;
  v14 = v3;
  v16 = v14;
  objc_copyWeak(v17, (a1 + 56));
  [v11 updateRestrictedGuestSchedule:v12 completionHandler:v15];
  objc_destroyWeak(v17);
}

void __61__HURestrictedGuestScheduleViewController_doneButtonPressed___block_invoke_74(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412802;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      v17 = 2112;
      v18 = v3;
      _os_log_error_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_ERROR, "%@:%@ Failed to update guest access schedule for user with error: %@", buf, 0x20u);
    }

    [*(a1 + 40) finishWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412546;
      v14 = v6;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ Successfully updated guest access schedule for user.", buf, 0x16u);
    }

    v8 = [MEMORY[0x277D146E8] sharedDispatcher];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __61__HURestrictedGuestScheduleViewController_doneButtonPressed___block_invoke_76;
    v11[3] = &unk_277DB8C80;
    objc_copyWeak(&v12, (a1 + 48));
    [v8 dispatchHomeObserverMessage:v11 sender:0];

    [*(a1 + 40) finishWithNoResult];
    objc_destroyWeak(&v12);
  }
}

void __61__HURestrictedGuestScheduleViewController_doneButtonPressed___block_invoke_76(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained home];
    v5 = [WeakRetained user];
    [v6 home:v4 didUpdateAccessControlForUser:v5];
  }
}

void __61__HURestrictedGuestScheduleViewController_doneButtonPressed___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v9 = "[HURestrictedGuestScheduleViewController doneButtonPressed:]_block_invoke_2";
    v10 = 2112;
    v11 = v3;
    _os_log_error_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_ERROR, "(%s) Will show error alert for failed attempt to update restricted guest access schedule with error: %@", buf, 0x16u);
  }

  v5 = [MEMORY[0x277D14640] sharedHandler];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__HURestrictedGuestScheduleViewController_doneButtonPressed___block_invoke_83;
  v6[3] = &unk_277DB8770;
  objc_copyWeak(&v7, (a1 + 32));
  [v5 handleError:v3 retryBlock:v6 cancelBlock:0];

  objc_destroyWeak(&v7);
}

void __61__HURestrictedGuestScheduleViewController_doneButtonPressed___block_invoke_83(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained doneButtonPressed:0];
}

void __61__HURestrictedGuestScheduleViewController_doneButtonPressed___block_invoke_2_85(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained savedButtonBarItem];
  v2 = [WeakRetained navigationItem];
  [v2 setRightBarButtonItem:v1];

  [WeakRetained setSavedButtonBarItem:0];
}

void __61__HURestrictedGuestScheduleViewController_doneButtonPressed___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained navigationController];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

- (void)scheduleEditorModule:(id)a3 didUpdateScheduleBuilder:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [v6 build];
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    v12 = 138413058;
    v13 = self;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@:%@ Updated schedule builder [%@] results in schedule [%@].", &v12, 0x2Au);
  }

  v10 = [(HURestrictedGuestScheduleViewController *)self navigationItem];
  v11 = [v10 rightBarButtonItem];
  [v11 setEnabled:v7 != 0];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v71 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v56.receiver = self;
  v56.super_class = HURestrictedGuestScheduleViewController;
  v49 = v6;
  [(HUItemTableViewController *)&v56 tableView:v6 didSelectRowAtIndexPath:v7];
  v8 = [(HURestrictedGuestScheduleViewController *)self scheduleItemManager];
  LODWORD(v6) = [v8 scheduleContext] == 0;

  if (v6)
  {
    v9 = [(HUItemTableViewController *)self itemManager];
    v10 = [v9 displayedItemAtIndexPath:v7];

    objc_opt_class();
    v43 = v10;
    if (objc_opt_isKindOfClass())
    {
      v11 = v43;
    }

    else
    {
      v11 = 0;
    }

    v47 = v11;

    v12 = [v47 type];
    v46 = [MEMORY[0x277D14A08] scheduleBuilderFromType:objc_msgSend(v47 withDefaultRules:{"type"), 1}];
    v13 = [(HURestrictedGuestScheduleViewController *)self home];
    v14 = [(HURestrictedGuestScheduleViewController *)self user];
    v15 = [v13 homeAccessControlForUser:v14];
    v16 = [v15 restrictedGuestAccessSettings];
    v48 = [v16 mutableCopy];

    v17 = MEMORY[0x277CD1D78];
    v18 = [v46 build];
    v42 = [v17 hf_restrictedGuestHomeAccessScheduleFromHFSchedule:v18];

    [v48 setGuestAccessSchedule:v42];
    v44 = [v48 locksWithReducedFunctionalityDueToSchedule];
    v41 = [(HURestrictedGuestScheduleViewController *)self _editorItemModule];
    v45 = [v41 originalScheduleBuilder];
    v19 = [v45 rules];
    v20 = 0;
    if (![v19 count] && v12)
    {
      v20 = !-[HURestrictedGuestScheduleViewController didDisplayLimitedLockAlert](self, "didDisplayLimitedLockAlert") && [v44 count] != 0;
    }

    v21 = HFLogForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [(HURestrictedGuestScheduleViewController *)self didDisplayLimitedLockAlert];
      v23 = MEMORY[0x277CD1650];
      v24 = [v44 allObjects];
      v25 = [v23 hf_minimumDescriptionsOfAccessories:v24];
      v26 = MEMORY[0x277CD1650];
      v27 = [v48 accessAllowedToAccessories];
      v28 = [v27 allObjects];
      v29 = [v26 hf_minimumDescriptionsOfAccessories:v28];
      *buf = 136316674;
      v58 = "[HURestrictedGuestScheduleViewController tableView:didSelectRowAtIndexPath:]";
      v59 = 1024;
      v60 = v20;
      v61 = 2112;
      v62 = v45;
      v63 = 2112;
      v64 = v46;
      v65 = 1024;
      v66 = v22;
      v67 = 2112;
      v68 = v25;
      v69 = 2112;
      v70 = v29;
      _os_log_impl(&dword_20CEB6000, v21, OS_LOG_TYPE_DEFAULT, "(%s) shouldDisplayLimitedLockAlert = %{BOOL}d | originalSchedule = %@ | newSchedule = %@ | didDisplayLimitedLockAlert = %{BOOL}d | limitedLockAccessories = %@ | allowedAccessories = %@", buf, 0x40u);
    }

    if (v20)
    {
      objc_initWeak(buf, self);
      if ([v44 count] == 1)
      {
        v30 = @"%@_SingleLock";
      }

      else
      {
        v30 = @"%@_PluralLocks";
      }

      v31 = [MEMORY[0x277CCACA8] stringWithFormat:v30, @"HURestrictedGuest_LocksWithReducedFunctionalityDueToSchedule_Alert_SingleGuest"];
      v32 = MEMORY[0x277D75110];
      v33 = _HULocalizedStringWithDefaultValue(v31, v31, 1);
      v34 = [v32 alertControllerWithTitle:&stru_2823E0EE8 message:v33 preferredStyle:0];

      v35 = MEMORY[0x277D750F8];
      v36 = _HULocalizedStringWithDefaultValue(@"HUContinueTitle", @"HUContinueTitle", 1);
      v37 = [v35 actionWithTitle:v36 style:0 handler:&__block_literal_global_113_0];

      [v37 setAccessibilityIdentifier:@"Home.Guest.ReducedFunctionality.Alert.ContinueButton"];
      [v34 addAction:v37];
      v38 = MEMORY[0x277D750F8];
      v39 = _HULocalizedStringWithDefaultValue(@"HUCancelTitle", @"HUCancelTitle", 1);
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __77__HURestrictedGuestScheduleViewController_tableView_didSelectRowAtIndexPath___block_invoke_120;
      v52[3] = &unk_277DBB800;
      objc_copyWeak(&v55, buf);
      v53 = v49;
      v54 = self;
      v40 = [v38 actionWithTitle:v39 style:0 handler:v52];

      [v40 setAccessibilityIdentifier:@"Home.Guest.ReducedFunctionality.Alert.CancelButton"];
      [v34 addAction:v40];
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __77__HURestrictedGuestScheduleViewController_tableView_didSelectRowAtIndexPath___block_invoke_128;
      v50[3] = &unk_277DB8770;
      objc_copyWeak(&v51, buf);
      [(HURestrictedGuestScheduleViewController *)self presentViewController:v34 animated:1 completion:v50];
      objc_destroyWeak(&v51);

      objc_destroyWeak(&v55);
      objc_destroyWeak(buf);
    }
  }
}

void __77__HURestrictedGuestScheduleViewController_tableView_didSelectRowAtIndexPath___block_invoke()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = HFLogForCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315138;
    v2 = "[HURestrictedGuestScheduleViewController tableView:didSelectRowAtIndexPath:]_block_invoke";
    _os_log_impl(&dword_20CEB6000, v0, OS_LOG_TYPE_DEFAULT, "(%s) User selected 'Continue' button about the limit for wallet key and pin code. Proceeding with schedule change.", &v1, 0xCu);
  }
}

void __77__HURestrictedGuestScheduleViewController_tableView_didSelectRowAtIndexPath___block_invoke_120(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[HURestrictedGuestScheduleViewController tableView:didSelectRowAtIndexPath:]_block_invoke";
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "(%s) User selected 'cancel' button about the limit for wallet key/pin code. Going back to 'Anytime' schedule option.", buf, 0xCu);
  }

  objc_opt_class();
  v4 = [WeakRetained itemManager];
  v5 = [v4 allDisplayedItems];
  v6 = [v5 na_firstObjectPassingTest:&__block_literal_global_124_0];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [WeakRetained itemManager];
  v10 = [v9 indexPathForItem:v8];

  if (v10)
  {
    v11 = *(a1 + 32);
    v15.receiver = *(a1 + 40);
    v15.super_class = HURestrictedGuestScheduleViewController;
    objc_msgSendSuper2(&v15, sel_tableView_didSelectRowAtIndexPath_, v11, v10);
  }

  else
  {
    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [WeakRetained itemManager];
      v14 = [v13 allDisplayedItems];
      *buf = 136315394;
      v17 = "[HURestrictedGuestScheduleViewController tableView:didSelectRowAtIndexPath:]_block_invoke_2";
      v18 = 2112;
      v19 = v14;
      _os_log_error_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_ERROR, "(%s) Failed to find indexpath for always allowed among %@", buf, 0x16u);
    }
  }
}

BOOL __77__HURestrictedGuestScheduleViewController_tableView_didSelectRowAtIndexPath___block_invoke_121(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [v5 type] == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __77__HURestrictedGuestScheduleViewController_tableView_didSelectRowAtIndexPath___block_invoke_128(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[HURestrictedGuestScheduleViewController tableView:didSelectRowAtIndexPath:]_block_invoke";
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "(%s) Displayed alert about wallet key and pin code limits when updating schedule for restricted guest", &v3, 0xCu);
  }

  [WeakRetained setDidDisplayLimitedLockAlert:1];
}

- (id)_originalScheduleBuilder
{
  v2 = [(HURestrictedGuestScheduleViewController *)self _editorItemModule];
  v3 = [v2 originalScheduleBuilder];

  return v3;
}

- (id)_editorItemModule
{
  v2 = [(HUItemTableViewController *)self itemManager];
  v3 = [v2 itemModules];
  v4 = [v3 na_firstObjectPassingTest:&__block_literal_global_131_0];

  return v4;
}

uint64_t __60__HURestrictedGuestScheduleViewController__editorItemModule__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (HURestrictedGuestScheduleViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end