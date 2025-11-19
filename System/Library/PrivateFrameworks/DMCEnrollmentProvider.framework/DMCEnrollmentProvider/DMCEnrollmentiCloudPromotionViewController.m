@interface DMCEnrollmentiCloudPromotionViewController
- (DMCEnrollmentiCloudPromotionViewController)initWithType:(unint64_t)a3 delegate:(id)a4;
- (DMCEnrollmentiCloudPromotionViewControllerDelegate)delegate;
- (void)_setupBottomViewForType:(unint64_t)a3;
- (void)_setupUIForType:(unint64_t)a3;
- (void)dmc_viewControllerHasBeenDismissed;
- (void)leftBarButtonTapped:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation DMCEnrollmentiCloudPromotionViewController

- (DMCEnrollmentiCloudPromotionViewController)initWithType:(unint64_t)a3 delegate:(id)a4
{
  v6 = a4;
  v7 = DMCLocalizedString();
  if (a3 > 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = DMCLocalizedString();
  }

  v12.receiver = self;
  v12.super_class = DMCEnrollmentiCloudPromotionViewController;
  v9 = [(DMCEnrollmentTemplateTableViewController *)&v12 initWithIconName:@"icloud" title:v7 subTitle:v8];
  v10 = v9;
  if (v9)
  {
    v9->_type = a3;
    objc_storeWeak(&v9->_delegate, v6);
  }

  return v10;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = DMCEnrollmentiCloudPromotionViewController;
  [(DMCEnrollmentTemplateTableViewController *)&v4 viewWillAppear:a3];
  if (([(DMCEnrollmentiCloudPromotionViewController *)self isBeingPresented]& 1) != 0 || [(DMCEnrollmentiCloudPromotionViewController *)self isMovingToParentViewController])
  {
    [(DMCEnrollmentiCloudPromotionViewController *)self _setupUIForType:[(DMCEnrollmentiCloudPromotionViewController *)self type]];
  }
}

- (void)_setupUIForType:(unint64_t)a3
{
  v61[1] = *MEMORY[0x277D85DE8];
  v5 = [(DMCEnrollmentiCloudPromotionViewController *)self navigationItem];
  [v5 setHidesBackButton:1];

  v6 = objc_opt_new();
  v7 = 0x277CBE000uLL;
  if (a3 == 1)
  {
    v50 = [(DMCEnrollmentiCloudPromotionViewController *)self quotaString];
    v14 = DMCLocalizedFormat();

    v15 = [DMCEnrollmentTableViewPromotionCell alloc];
    v16 = DMCLocalizedString();
    v17 = +[DMCIconFactory iCloudIcon];
    v18 = [(DMCEnrollmentTableViewPromotionCell *)v15 initWithTitle:v14 subtitle:v16 icon:v17];
    v60 = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
    [v6 addObject:v19];

    v7 = 0x277CBE000uLL;
  }

  else if (!a3)
  {
    v8 = [DMCEnrollmentTableViewPromotionCell alloc];
    v9 = DMCLocalizedString();
    v10 = DMCLocalizedString();
    v11 = +[DMCIconFactory iCloudIcon];
    v12 = [(DMCEnrollmentTableViewPromotionCell *)v8 initWithTitle:v9 subtitle:v10 icon:v11];
    v61[0] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:1];
    [v6 addObject:v13];

    v7 = 0x277CBE000;
    [(DMCEnrollmentTemplateTableViewController *)self updateNavBarButtonType:1 forButtonPosition:0 enabled:1];
    [(DMCEnrollmentiCloudPromotionViewController *)self setModalInPresentation:1];
  }

  v20 = [DMCEnrollmentTableViewPromotionCell alloc];
  v21 = DMCLocalizedString();
  v22 = DMCLocalizedString();
  v23 = +[DMCIconFactory iCloudCollaborationIcon];
  v24 = [(DMCEnrollmentTableViewPromotionCell *)v20 initWithTitle:v21 subtitle:v22 icon:v23];
  v59 = v24;
  [*(v7 + 2656) arrayWithObjects:&v59 count:1];
  v26 = v25 = v7;
  [v6 addObject:v26];

  v27 = [DMCEnrollmentTableViewPromotionCell alloc];
  v28 = DMCLocalizedString();
  v29 = DMCLocalizedString();
  v30 = +[DMCIconFactory notesIcon];
  v31 = [(DMCEnrollmentTableViewPromotionCell *)v27 initWithTitle:v28 subtitle:v29 icon:v30];
  v58 = v31;
  v32 = [*(v25 + 2656) arrayWithObjects:&v58 count:1];
  [v6 addObject:v32];

  if ([(DMCEnrollmentiCloudPromotionViewController *)self type]== 1)
  {
    v33 = [DMCEnrollmentTableViewPromotionCell alloc];
    v34 = DMCLocalizedString();
    v35 = DMCLocalizedString();
    v36 = +[DMCIconFactory workBadgeIcon];
    v37 = [(DMCEnrollmentTableViewPromotionCell *)v33 initWithTitle:v34 subtitle:v35 icon:v36];
    v57 = v37;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
    [v6 addObject:v38];
  }

  if ([MEMORY[0x277D03530] isPad])
  {
    v39 = [DMCEnrollmentTableViewPlatterCell alloc];
    v40 = [(DMCEnrollmentTemplateTableViewController *)self tableView];
    v41 = [(DMCEnrollmentTableViewPlatterCell *)v39 initWithCellData:v6 parentTableView:v40 useShadow:0];

    v42 = [(DMCEnrollmentTableViewPlatterCell *)v41 tableViewController];
    [v42 setCustomTopMargin:&unk_285A0E478];

    [(DMCEnrollmentTableViewPlatterCell *)v41 setCustomHorizontalMargin:&unk_285A0E488];
    v43 = [(DMCEnrollmentTableViewPlatterCell *)v41 tableViewController];
    v44 = [v43 view];
    [v44 setNeedsLayout];

    v56 = v41;
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
    [(DMCEnrollmentTemplateTableViewController *)self addSectionWithCellData:v45 animated:0];
  }

  else
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v41 = v6;
    v46 = [(DMCEnrollmentTableViewPlatterCell *)v41 countByEnumeratingWithState:&v51 objects:v55 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v52;
      do
      {
        for (i = 0; i != v47; ++i)
        {
          if (*v52 != v48)
          {
            objc_enumerationMutation(v41);
          }

          [(DMCEnrollmentTemplateTableViewController *)self addSectionWithCellData:*(*(&v51 + 1) + 8 * i) animated:0];
        }

        v47 = [(DMCEnrollmentTableViewPlatterCell *)v41 countByEnumeratingWithState:&v51 objects:v55 count:16];
      }

      while (v47);
    }
  }

  [(DMCEnrollmentiCloudPromotionViewController *)self _setupBottomViewForType:a3];
}

- (void)_setupBottomViewForType:(unint64_t)a3
{
  if (a3 == 1)
  {
    objc_initWeak(&location, self);
    v8 = [DMCEnrollmentConfirmationView alloc];
    v5 = DMCLocalizedString();
    v6 = v10;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __70__DMCEnrollmentiCloudPromotionViewController__setupBottomViewForType___block_invoke_3;
    v10[3] = &unk_278EE7880;
    objc_copyWeak(&v11, &location);
    v7 = [(DMCEnrollmentConfirmationView *)v8 initWithConfirmationText:v5 cancelText:0 confirmationAction:v10 cancelAction:&__block_literal_global_55];
  }

  else
  {
    if (a3)
    {
      v9 = 0;
      goto LABEL_7;
    }

    objc_initWeak(&location, self);
    v4 = [DMCEnrollmentConfirmationView alloc];
    v5 = DMCLocalizedString();
    v6 = v12;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __70__DMCEnrollmentiCloudPromotionViewController__setupBottomViewForType___block_invoke;
    v12[3] = &unk_278EE7880;
    objc_copyWeak(&v13, &location);
    v7 = [(DMCEnrollmentConfirmationView *)v4 initWithConfirmationText:v5 cancelText:0 confirmationAction:v12 cancelAction:&__block_literal_global_3];
  }

  v9 = v7;

  objc_destroyWeak(v6 + 4);
  objc_destroyWeak(&location);
LABEL_7:
  [(DMCEnrollmentTemplateTableViewController *)self addBottomView:v9];
}

void __70__DMCEnrollmentiCloudPromotionViewController__setupBottomViewForType___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 iCloudPromotionViewController:v3 didReceiveUserAction:1];

    WeakRetained = v3;
  }
}

void __70__DMCEnrollmentiCloudPromotionViewController__setupBottomViewForType___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 iCloudPromotionViewController:v3 didReceiveUserAction:1];

    WeakRetained = v3;
  }
}

- (void)leftBarButtonTapped:(id)a3
{
  v4 = [(DMCEnrollmentiCloudPromotionViewController *)self delegate];
  [v4 iCloudPromotionViewController:self didReceiveUserAction:0];
}

- (void)dmc_viewControllerHasBeenDismissed
{
  v3 = [(DMCEnrollmentiCloudPromotionViewController *)self delegate];
  [v3 iCloudPromotionViewController:self didReceiveUserAction:0];
}

- (DMCEnrollmentiCloudPromotionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end