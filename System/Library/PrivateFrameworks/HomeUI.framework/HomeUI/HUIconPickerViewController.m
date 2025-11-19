@interface HUIconPickerViewController
+ (id)sceneIconDescriptors;
- (HUIconPickerViewController)initWithIconDescriptors:(id)a3 selectedIconDescriptor:(id)a4 delegate:(id)a5;
- (HUIconPickerViewControllerDelegate)delegate;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)_cancel:(id)a3;
- (void)_done:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
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

- (HUIconPickerViewController)initWithIconDescriptors:(id)a3 selectedIconDescriptor:(id)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v10 && ([v9 containsObject:v10] & 1) == 0)
  {
    NSLog(&cfstr_SelectedIconDe.isa, v10, v9);
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
    objc_storeStrong(&v13->_iconDescriptors, a3);
    objc_storeStrong(&v14->_selectedIconDescriptor, a4);
    objc_storeWeak(&v14->_delegate, v11);
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
  v3 = [MEMORY[0x277D75348] systemBackgroundColor];
  v4 = [(HUIconPickerViewController *)self collectionView];
  [v4 setBackgroundColor:v3];

  v5 = [(HUIconPickerViewController *)self collectionView];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v5 registerClass:v6 forCellWithReuseIdentifier:v8];

  v9 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancel_];
  v10 = [(HUIconPickerViewController *)self navigationItem];
  [v10 setLeftBarButtonItem:v9];

  v11 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel__done_];
  v12 = [(HUIconPickerViewController *)self navigationItem];
  [v12 setRightBarButtonItem:v11];

  v13 = [(HUIconPickerViewController *)self selectedIconDescriptor];
  v14 = [(HUIconPickerViewController *)self navigationItem];
  v15 = [v14 rightBarButtonItem];
  [v15 setEnabled:v13 != 0];
}

- (void)viewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = HUIconPickerViewController;
  [(HUIconPickerViewController *)&v13 viewDidLayoutSubviews];
  v3 = [(HUIconPickerViewController *)self selectedIconDescriptor];
  if (v3)
  {
    v4 = v3;
    v5 = [(HUIconPickerViewController *)self collectionView];
    v6 = [v5 indexPathsForSelectedItems];
    v7 = [v6 count];

    if (!v7)
    {
      v8 = [(HUIconPickerViewController *)self iconDescriptors];
      v9 = [(HUIconPickerViewController *)self selectedIconDescriptor];
      v10 = [v8 indexOfObject:v9];

      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = [(HUIconPickerViewController *)self collectionView];
        v12 = [MEMORY[0x277CCAA70] indexPathForItem:v10 inSection:0];
        [v11 selectItemAtIndexPath:v12 animated:0 scrollPosition:2];
      }
    }
  }
}

- (void)_cancel:(id)a3
{
  v4 = [(HUIconPickerViewController *)self delegate];
  [v4 iconPickerDidCancel:self];
}

- (void)_done:(id)a3
{
  v5 = [(HUIconPickerViewController *)self delegate];
  v4 = [(HUIconPickerViewController *)self selectedIconDescriptor];
  [v5 iconPicker:self didPickIconDescriptor:v4];
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(HUIconPickerViewController *)self iconDescriptors:a3];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 dequeueReusableCellWithReuseIdentifier:v9 forIndexPath:v6];

  v11 = [(HUIconPickerViewController *)self iconDescriptors];
  v12 = [v6 item];

  v13 = [v11 objectAtIndexedSubscript:v12];
  [v10 setIconDescriptor:v13];

  return v10;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(HUIconPickerViewController *)self iconDescriptors];
  v7 = [v5 item];

  v8 = [v6 objectAtIndexedSubscript:v7];
  [(HUIconPickerViewController *)self setSelectedIconDescriptor:v8];

  v10 = [(HUIconPickerViewController *)self navigationItem];
  v9 = [v10 rightBarButtonItem];
  [v9 setEnabled:1];
}

- (HUIconPickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end