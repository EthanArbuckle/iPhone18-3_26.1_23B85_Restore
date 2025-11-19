@interface HUFaceRecognitionAddPersonViewController
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HUFaceRecognitionAddPersonViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4 searchBar:(id)a5 searchBarPosition:(unint64_t)a6;
- (HUFaceRecognitionAddPersonViewController)initWithSignificantEvent:(id)a3 home:(id)a4;
- (HUFaceRecognitionAddPersonViewControllerDelegate)delegate;
- (void)_donePressed:(id)a3;
- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateForSearch;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation HUFaceRecognitionAddPersonViewController

- (HUFaceRecognitionAddPersonViewController)initWithSignificantEvent:(id)a3 home:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 faceClassification];

  if (!v8)
  {
    NSLog(&cfstr_FaceClassifica.isa, v6);
  }

  v9 = [[HUFaceRecognitionAddPersonItemManager alloc] initWithSignificantEvent:v6 home:v7 delegate:0];

  addPersonItemManager = self->_addPersonItemManager;
  self->_addPersonItemManager = v9;

  v11 = objc_alloc_init(HUFaceRecognitionAddPersonSearchBar);
  v12 = self->_addPersonItemManager;
  v23.receiver = self;
  v23.super_class = HUFaceRecognitionAddPersonViewController;
  v13 = [(HUSearchableItemTableViewController *)&v23 initWithItemManager:v12 tableViewStyle:0 searchBar:v11 searchBarPosition:0];
  if (v13)
  {
    v14 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v13 action:sel__donePressed_];
    doneButton = v13->_doneButton;
    v13->_doneButton = v14;

    v16 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionAddPersonViewControllerTitle", @"HUFaceRecognitionAddPersonViewControllerTitle", 1);
    [(HUFaceRecognitionAddPersonViewController *)v13 setTitle:v16];

    v17 = [(HUFaceRecognitionAddPersonViewController *)v13 addPersonItemManager];
    v18 = [v17 faceCropImageFuture];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __74__HUFaceRecognitionAddPersonViewController_initWithSignificantEvent_home___block_invoke;
    v21[3] = &unk_277DB7E18;
    v22 = v11;
    v19 = [v18 addSuccessBlock:v21];
  }

  return v13;
}

void __74__HUFaceRecognitionAddPersonViewController_initWithSignificantEvent_home___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 faceCropView];
  [v4 setImage:v3];
}

- (HUFaceRecognitionAddPersonViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4 searchBar:(id)a5 searchBarPosition:(unint64_t)a6
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v9 = NSStringFromSelector(sel_initWithSignificantEvent_home_);
  [v8 handleFailureInMethod:a2 object:self file:@"HUFaceRecognitionAddPersonViewController.m" lineNumber:51 description:{@"%s is unavailable; use %@ instead", "-[HUFaceRecognitionAddPersonViewController initWithItemManager:tableViewStyle:searchBar:searchBarPosition:]", v9}];

  return 0;
}

- (void)updateForSearch
{
  v8.receiver = self;
  v8.super_class = HUFaceRecognitionAddPersonViewController;
  [(HUSearchableItemTableViewController *)&v8 updateForSearch];
  v3 = [(HUSearchableItemTableViewController *)self searchBar];
  v4 = [v3 searchTextField];
  v5 = [v4 text];
  v6 = [v5 length] != 0;
  v7 = [(HUFaceRecognitionAddPersonViewController *)self doneButton];
  [v7 setEnabled:v6];
}

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v4 = [a3 latestResults];
  [v4 objectForKeyedSubscript:*MEMORY[0x277D13CF0]];

  v5 = objc_opt_class();

  return v5;
}

- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5
{
  v6 = a3;
  v7 = MEMORY[0x277D756E0];
  v8 = a4;
  v9 = [v7 cellConfiguration];
  v10 = [v8 latestResults];
  v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  [v9 setText:v11];

  v12 = [v8 latestResults];

  v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277D13CF0]];
  [v9 setImage:v13];

  v14 = [v9 imageProperties];
  [v14 setMaximumSize:{44.0, 44.0}];

  v15 = [v9 imageProperties];
  [v15 setCornerRadius:22.0];

  [v6 setContentConfiguration:v9];
  objc_opt_class();
  v18 = v6;
  if (objc_opt_isKindOfClass())
  {
    v16 = v18;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  [v17 setAvatarSize:44.0];
  [v18 setAccessoryType:0];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21.receiver = self;
  v21.super_class = HUFaceRecognitionAddPersonViewController;
  [(HUItemTableViewController *)&v21 tableView:v6 didSelectRowAtIndexPath:v7];
  objc_opt_class();
  v8 = [(HUItemTableViewController *)self itemManager];
  v9 = [v8 displayedItemAtIndexPath:v7];
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = [v11 person];

  if (v12)
  {
    v13 = [(HUFaceRecognitionAddPersonViewController *)self addPersonItemManager];
    v14 = [v13 associateFaceClassificationWithExistingPerson:v11];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __78__HUFaceRecognitionAddPersonViewController_tableView_didSelectRowAtIndexPath___block_invoke;
    v16[3] = &unk_277DB7E40;
    v17 = v6;
    v18 = v7;
    v19 = self;
    v20 = v11;
    v15 = [v14 addCompletionBlock:v16];
  }
}

void __78__HUFaceRecognitionAddPersonViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a3;
  if (v11)
  {
    v4 = [MEMORY[0x277D14640] sharedHandler];
    [v4 handleError:v11];

    [*(a1 + 32) deselectRowAtIndexPath:*(a1 + 40) animated:1];
  }

  else
  {
    v5 = [*(a1 + 48) delegate];

    if (v5)
    {
      v6 = [*(a1 + 48) delegate];
      [v6 addPersonViewControllerDidFinish:*(a1 + 48)];
    }

    v7 = [*(a1 + 48) navigationController];
    v8 = [v7 popViewControllerAnimated:1];
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v9 na_safeSetObject:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D13650]];
  v10 = [*(a1 + 56) person];
  [v9 na_safeSetObject:v10 forKey:*MEMORY[0x277D13658]];

  [v9 na_safeSetObject:v11 forKey:*MEMORY[0x277D13510]];
  [MEMORY[0x277D143D8] sendEvent:4 withData:v9];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = HUFaceRecognitionAddPersonViewController;
  [(HUSearchableItemTableViewController *)&v8 viewDidLoad];
  [(HUTableViewController *)self setSectionContentInsetFollowsLayoutMargins:0];
  v3 = [(HUFaceRecognitionAddPersonViewController *)self navigationController];
  v4 = [v3 navigationBar];
  [v4 setTranslucent:0];

  v5 = [(HUFaceRecognitionAddPersonViewController *)self doneButton];
  v6 = [(HUFaceRecognitionAddPersonViewController *)self navigationItem];
  [v6 setRightBarButtonItem:v5];

  v7 = [(HUFaceRecognitionAddPersonViewController *)self doneButton];
  [v7 setEnabled:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = HUFaceRecognitionAddPersonViewController;
  [(HUItemTableViewController *)&v6 viewDidAppear:a3];
  v4 = [(HUSearchableItemTableViewController *)self searchBar];
  v5 = [v4 searchTextField];
  [v5 becomeFirstResponder];
}

- (void)_donePressed:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = self;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@: Done pressed", buf, 0xCu);
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v5 na_safeSetObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D13650]];
  v6 = [(HUFaceRecognitionAddPersonViewController *)self addPersonItemManager];
  v7 = [v6 faceClassification];
  v8 = [v7 person];

  [v5 na_safeSetObject:v8 forKey:*MEMORY[0x277D13658]];
  v9 = [(HUSearchableItemTableViewController *)self searchBar];
  v10 = [v9 searchTextField];
  v11 = [v10 text];

  v12 = [(HUFaceRecognitionAddPersonViewController *)self doneButton];
  [v12 setEnabled:0];

  v13 = [(HUFaceRecognitionAddPersonViewController *)self addPersonItemManager];
  v14 = [v13 associateFaceClassificationWithNewPersonNamed:v11];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __57__HUFaceRecognitionAddPersonViewController__donePressed___block_invoke;
  v21[3] = &unk_277DB7E68;
  v21[4] = self;
  v15 = v5;
  v22 = v15;
  v16 = [v14 addSuccessBlock:v21];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __57__HUFaceRecognitionAddPersonViewController__donePressed___block_invoke_2;
  v19[3] = &unk_277DB7E90;
  v19[4] = self;
  v20 = v15;
  v17 = v15;
  v18 = [v16 addFailureBlock:v19];
}

uint64_t __57__HUFaceRecognitionAddPersonViewController__donePressed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];

  if (v2)
  {
    v3 = [*(a1 + 32) delegate];
    [v3 addPersonViewControllerDidFinish:*(a1 + 32)];
  }

  v4 = [*(a1 + 32) navigationController];
  v5 = [v4 popViewControllerAnimated:1];

  v6 = MEMORY[0x277D143D8];
  v7 = *(a1 + 40);

  return [v6 sendEvent:4 withData:v7];
}

uint64_t __57__HUFaceRecognitionAddPersonViewController__donePressed___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 doneButton];
  [v5 setEnabled:1];

  v6 = [MEMORY[0x277D14640] sharedHandler];
  [v6 handleError:v4];

  [*(a1 + 40) na_safeSetObject:v4 forKey:*MEMORY[0x277D13510]];
  v7 = MEMORY[0x277D143D8];
  v8 = *(a1 + 40);

  return [v7 sendEvent:4 withData:v8];
}

- (HUFaceRecognitionAddPersonViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end