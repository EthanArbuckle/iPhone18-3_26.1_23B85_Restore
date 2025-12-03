@interface HUFaceRecognitionAddPersonViewController
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HUFaceRecognitionAddPersonViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style searchBar:(id)bar searchBarPosition:(unint64_t)position;
- (HUFaceRecognitionAddPersonViewController)initWithSignificantEvent:(id)event home:(id)home;
- (HUFaceRecognitionAddPersonViewControllerDelegate)delegate;
- (void)_donePressed:(id)pressed;
- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateForSearch;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation HUFaceRecognitionAddPersonViewController

- (HUFaceRecognitionAddPersonViewController)initWithSignificantEvent:(id)event home:(id)home
{
  eventCopy = event;
  homeCopy = home;
  faceClassification = [eventCopy faceClassification];

  if (!faceClassification)
  {
    NSLog(&cfstr_FaceClassifica.isa, eventCopy);
  }

  v9 = [[HUFaceRecognitionAddPersonItemManager alloc] initWithSignificantEvent:eventCopy home:homeCopy delegate:0];

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

    addPersonItemManager = [(HUFaceRecognitionAddPersonViewController *)v13 addPersonItemManager];
    faceCropImageFuture = [addPersonItemManager faceCropImageFuture];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __74__HUFaceRecognitionAddPersonViewController_initWithSignificantEvent_home___block_invoke;
    v21[3] = &unk_277DB7E18;
    v22 = v11;
    v19 = [faceCropImageFuture addSuccessBlock:v21];
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

- (HUFaceRecognitionAddPersonViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style searchBar:(id)bar searchBarPosition:(unint64_t)position
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v9 = NSStringFromSelector(sel_initWithSignificantEvent_home_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUFaceRecognitionAddPersonViewController.m" lineNumber:51 description:{@"%s is unavailable; use %@ instead", "-[HUFaceRecognitionAddPersonViewController initWithItemManager:tableViewStyle:searchBar:searchBarPosition:]", v9}];

  return 0;
}

- (void)updateForSearch
{
  v8.receiver = self;
  v8.super_class = HUFaceRecognitionAddPersonViewController;
  [(HUSearchableItemTableViewController *)&v8 updateForSearch];
  searchBar = [(HUSearchableItemTableViewController *)self searchBar];
  searchTextField = [searchBar searchTextField];
  text = [searchTextField text];
  v6 = [text length] != 0;
  doneButton = [(HUFaceRecognitionAddPersonViewController *)self doneButton];
  [doneButton setEnabled:v6];
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  latestResults = [item latestResults];
  [latestResults objectForKeyedSubscript:*MEMORY[0x277D13CF0]];

  v5 = objc_opt_class();

  return v5;
}

- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path
{
  cellCopy = cell;
  v7 = MEMORY[0x277D756E0];
  itemCopy = item;
  cellConfiguration = [v7 cellConfiguration];
  latestResults = [itemCopy latestResults];
  v11 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  [cellConfiguration setText:v11];

  latestResults2 = [itemCopy latestResults];

  v13 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13CF0]];
  [cellConfiguration setImage:v13];

  imageProperties = [cellConfiguration imageProperties];
  [imageProperties setMaximumSize:{44.0, 44.0}];

  imageProperties2 = [cellConfiguration imageProperties];
  [imageProperties2 setCornerRadius:22.0];

  [cellCopy setContentConfiguration:cellConfiguration];
  objc_opt_class();
  v18 = cellCopy;
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v21.receiver = self;
  v21.super_class = HUFaceRecognitionAddPersonViewController;
  [(HUItemTableViewController *)&v21 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  objc_opt_class();
  itemManager = [(HUItemTableViewController *)self itemManager];
  v9 = [itemManager displayedItemAtIndexPath:pathCopy];
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  person = [v11 person];

  if (person)
  {
    addPersonItemManager = [(HUFaceRecognitionAddPersonViewController *)self addPersonItemManager];
    v14 = [addPersonItemManager associateFaceClassificationWithExistingPerson:v11];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __78__HUFaceRecognitionAddPersonViewController_tableView_didSelectRowAtIndexPath___block_invoke;
    v16[3] = &unk_277DB7E40;
    v17 = viewCopy;
    v18 = pathCopy;
    selfCopy = self;
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
  navigationController = [(HUFaceRecognitionAddPersonViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar setTranslucent:0];

  doneButton = [(HUFaceRecognitionAddPersonViewController *)self doneButton];
  navigationItem = [(HUFaceRecognitionAddPersonViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:doneButton];

  doneButton2 = [(HUFaceRecognitionAddPersonViewController *)self doneButton];
  [doneButton2 setEnabled:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = HUFaceRecognitionAddPersonViewController;
  [(HUItemTableViewController *)&v6 viewDidAppear:appear];
  searchBar = [(HUSearchableItemTableViewController *)self searchBar];
  searchTextField = [searchBar searchTextField];
  [searchTextField becomeFirstResponder];
}

- (void)_donePressed:(id)pressed
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@: Done pressed", buf, 0xCu);
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v5 na_safeSetObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D13650]];
  addPersonItemManager = [(HUFaceRecognitionAddPersonViewController *)self addPersonItemManager];
  faceClassification = [addPersonItemManager faceClassification];
  person = [faceClassification person];

  [v5 na_safeSetObject:person forKey:*MEMORY[0x277D13658]];
  searchBar = [(HUSearchableItemTableViewController *)self searchBar];
  searchTextField = [searchBar searchTextField];
  text = [searchTextField text];

  doneButton = [(HUFaceRecognitionAddPersonViewController *)self doneButton];
  [doneButton setEnabled:0];

  addPersonItemManager2 = [(HUFaceRecognitionAddPersonViewController *)self addPersonItemManager];
  v14 = [addPersonItemManager2 associateFaceClassificationWithNewPersonNamed:text];
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