@interface ICPaperStyleSheetCollectionViewController
- (CGSize)preferredContentSize;
- (ICPaperStyleSheetCollectionViewController)initWithInitialPaperStyleType:(unint64_t)a3 delegate:(id)a4;
- (ICPaperStyleSheetCollectionViewControllerDelegate)paperStyleDelegate;
- (id)indexPathForInitialSelection;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation ICPaperStyleSheetCollectionViewController

- (ICPaperStyleSheetCollectionViewController)initWithInitialPaperStyleType:(unint64_t)a3 delegate:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = ICPaperStyleSheetCollectionViewController;
  v7 = [(ICPaperStyleCollectionViewController *)&v10 initWithLargeIcons:0 forPreferences:0];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_paperStyleDelegate, v6);
    v8->_initialPaperStyleType = a3;
  }

  return v8;
}

- (void)viewDidLoad
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = ICPaperStyleSheetCollectionViewController;
  [(ICPaperStyleCollectionViewController *)&v6 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancelAction_];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v5 = [(ICPaperStyleSheetCollectionViewController *)self navigationItem];
  [v5 setLeftBarButtonItems:v4];
}

- (id)indexPathForInitialSelection
{
  v3 = [(ICPaperStyleSheetCollectionViewController *)self initialPaperStyleType];

  return [(ICPaperStyleCollectionViewController *)self indexPathFromPaperStyleType:v3];
}

- (CGSize)preferredContentSize
{
  v3 = [(ICPaperStyleSheetCollectionViewController *)self collectionView];
  v4 = [(ICPaperStyleSheetCollectionViewController *)self collectionViewLayout];
  [(ICPaperStyleCollectionViewController *)self collectionView:v3 layout:v4 referenceSizeForHeaderInSection:0];
  v6 = v5;

  [(ICPaperStyleCollectionViewController *)self itemSize];
  v8 = v7 * 3.0 + 128.0;
  [(ICPaperStyleCollectionViewController *)self itemSize];
  v10 = v6 + v9 * 3.0 + 96.0;
  v11 = v8;
  result.height = v10;
  result.width = v11;
  return result;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  if (a4)
  {
    v5 = a4;
    v6 = [(ICPaperStyleSheetCollectionViewController *)self paperStyleDelegate];
    v7 = [(ICPaperStyleCollectionViewController *)self paperStyleTypeFromIndexPath:v5];

    [v6 paperStyleSheetCollectionViewController:self didFinishWithPaperStyleType:v7];
  }

  [(ICPaperStyleSheetCollectionViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (ICPaperStyleSheetCollectionViewControllerDelegate)paperStyleDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_paperStyleDelegate);

  return WeakRetained;
}

@end