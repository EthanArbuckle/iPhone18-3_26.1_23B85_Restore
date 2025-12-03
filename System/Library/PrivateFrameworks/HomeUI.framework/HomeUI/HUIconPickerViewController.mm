@interface HUIconPickerViewController
+ (id)sceneIconDescriptors;
- (HUIconPickerViewController)initWithIconDescriptors:(id)descriptors selectedIconDescriptor:(id)descriptor delegate:(id)delegate;
- (HUIconPickerViewControllerDelegate)delegate;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)_cancel:(id)_cancel;
- (void)_done:(id)_done;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation HUIconPickerViewController

+ (id)sceneIconDescriptors
{
  if (qword_27C837E50 != -1)
  {
    dispatch_once(&qword_27C837E50, &__block_literal_global_47);
  }

  v3 = _MergedGlobals_3_2;

  return v3;
}

void __50__HUIconPickerViewController_sceneIconDescriptors__block_invoke()
{
  v9[12] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D13A78];
  v9[0] = *MEMORY[0x277D13A70];
  v9[1] = v0;
  v1 = *MEMORY[0x277D13A88];
  v9[2] = *MEMORY[0x277D13A80];
  v9[3] = v1;
  v2 = *MEMORY[0x277D13A98];
  v9[4] = *MEMORY[0x277D13A90];
  v9[5] = v2;
  v3 = *MEMORY[0x277D13AA8];
  v9[6] = *MEMORY[0x277D13AA0];
  v9[7] = v3;
  v4 = *MEMORY[0x277D13AB8];
  v9[8] = *MEMORY[0x277D13AB0];
  v9[9] = v4;
  v5 = *MEMORY[0x277D13A30];
  v9[10] = *MEMORY[0x277D13AC0];
  v9[11] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:12];
  v7 = [v6 na_map:&__block_literal_global_3];
  v8 = _MergedGlobals_3_2;
  _MergedGlobals_3_2 = v7;
}

id __50__HUIconPickerViewController_sceneIconDescriptors__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D14728];
  v3 = a2;
  v4 = [[v2 alloc] initWithImageIdentifier:v3];

  return v4;
}

- (HUIconPickerViewController)initWithIconDescriptors:(id)descriptors selectedIconDescriptor:(id)descriptor delegate:(id)delegate
{
  descriptorsCopy = descriptors;
  descriptorCopy = descriptor;
  delegateCopy = delegate;
  if (descriptorCopy && ([descriptorsCopy containsObject:descriptorCopy] & 1) == 0)
  {
    NSLog(&cfstr_SelectedIconDe.isa, descriptorCopy, descriptorsCopy);
  }

  v12 = objc_alloc_init(MEMORY[0x277D752F0]);
  [v12 setItemSize:{88.0, 88.0}];
  [v12 setScrollDirection:0];
  [v12 setMinimumLineSpacing:0.0];
  [v12 setMinimumInteritemSpacing:0.0];
  v17.receiver = self;
  v17.super_class = HUIconPickerViewController;
  v13 = [(HUIconPickerViewController *)&v17 initWithCollectionViewLayout:v12];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_iconDescriptors, descriptors);
    objc_storeStrong(&v14->_selectedIconDescriptor, descriptor);
    objc_storeWeak(&v14->_delegate, delegateCopy);
    v15 = _HULocalizedStringWithDefaultValue(@"HUIconPickerTitle", @"HUIconPickerTitle", 1);
    [(HUIconPickerViewController *)v14 setTitle:v15];
  }

  return v14;
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = HUIconPickerViewController;
  [(HUIconPickerViewController *)&v16 viewDidLoad];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  collectionView = [(HUIconPickerViewController *)self collectionView];
  [collectionView setBackgroundColor:systemBackgroundColor];

  collectionView2 = [(HUIconPickerViewController *)self collectionView];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [collectionView2 registerClass:v6 forCellWithReuseIdentifier:v8];

  v9 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancel_];
  navigationItem = [(HUIconPickerViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v9];

  v11 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel__done_];
  navigationItem2 = [(HUIconPickerViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v11];

  selectedIconDescriptor = [(HUIconPickerViewController *)self selectedIconDescriptor];
  navigationItem3 = [(HUIconPickerViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem3 rightBarButtonItem];
  [rightBarButtonItem setEnabled:selectedIconDescriptor != 0];
}

- (void)viewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = HUIconPickerViewController;
  [(HUIconPickerViewController *)&v13 viewDidLayoutSubviews];
  selectedIconDescriptor = [(HUIconPickerViewController *)self selectedIconDescriptor];
  if (selectedIconDescriptor)
  {
    v4 = selectedIconDescriptor;
    collectionView = [(HUIconPickerViewController *)self collectionView];
    indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
    v7 = [indexPathsForSelectedItems count];

    if (!v7)
    {
      iconDescriptors = [(HUIconPickerViewController *)self iconDescriptors];
      selectedIconDescriptor2 = [(HUIconPickerViewController *)self selectedIconDescriptor];
      v10 = [iconDescriptors indexOfObject:selectedIconDescriptor2];

      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        collectionView2 = [(HUIconPickerViewController *)self collectionView];
        v12 = [MEMORY[0x277CCAA70] indexPathForItem:v10 inSection:0];
        [collectionView2 selectItemAtIndexPath:v12 animated:0 scrollPosition:2];
      }
    }
  }
}

- (void)_cancel:(id)_cancel
{
  delegate = [(HUIconPickerViewController *)self delegate];
  [delegate iconPickerDidCancel:self];
}

- (void)_done:(id)_done
{
  delegate = [(HUIconPickerViewController *)self delegate];
  selectedIconDescriptor = [(HUIconPickerViewController *)self selectedIconDescriptor];
  [delegate iconPicker:self didPickIconDescriptor:selectedIconDescriptor];
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(HUIconPickerViewController *)self iconDescriptors:view];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [viewCopy dequeueReusableCellWithReuseIdentifier:v9 forIndexPath:pathCopy];

  iconDescriptors = [(HUIconPickerViewController *)self iconDescriptors];
  item = [pathCopy item];

  v13 = [iconDescriptors objectAtIndexedSubscript:item];
  [v10 setIconDescriptor:v13];

  return v10;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  iconDescriptors = [(HUIconPickerViewController *)self iconDescriptors];
  item = [pathCopy item];

  v8 = [iconDescriptors objectAtIndexedSubscript:item];
  [(HUIconPickerViewController *)self setSelectedIconDescriptor:v8];

  navigationItem = [(HUIconPickerViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:1];
}

- (HUIconPickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end