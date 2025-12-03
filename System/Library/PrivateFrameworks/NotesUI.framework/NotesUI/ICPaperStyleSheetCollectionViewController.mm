@interface ICPaperStyleSheetCollectionViewController
- (CGSize)preferredContentSize;
- (ICPaperStyleSheetCollectionViewController)initWithInitialPaperStyleType:(unint64_t)type delegate:(id)delegate;
- (ICPaperStyleSheetCollectionViewControllerDelegate)paperStyleDelegate;
- (id)indexPathForInitialSelection;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation ICPaperStyleSheetCollectionViewController

- (ICPaperStyleSheetCollectionViewController)initWithInitialPaperStyleType:(unint64_t)type delegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = ICPaperStyleSheetCollectionViewController;
  v7 = [(ICPaperStyleCollectionViewController *)&v10 initWithLargeIcons:0 forPreferences:0];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_paperStyleDelegate, delegateCopy);
    v8->_initialPaperStyleType = type;
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
  navigationItem = [(ICPaperStyleSheetCollectionViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItems:v4];
}

- (id)indexPathForInitialSelection
{
  initialPaperStyleType = [(ICPaperStyleSheetCollectionViewController *)self initialPaperStyleType];

  return [(ICPaperStyleCollectionViewController *)self indexPathFromPaperStyleType:initialPaperStyleType];
}

- (CGSize)preferredContentSize
{
  collectionView = [(ICPaperStyleSheetCollectionViewController *)self collectionView];
  collectionViewLayout = [(ICPaperStyleSheetCollectionViewController *)self collectionViewLayout];
  [(ICPaperStyleCollectionViewController *)self collectionView:collectionView layout:collectionViewLayout referenceSizeForHeaderInSection:0];
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

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  if (path)
  {
    pathCopy = path;
    paperStyleDelegate = [(ICPaperStyleSheetCollectionViewController *)self paperStyleDelegate];
    v7 = [(ICPaperStyleCollectionViewController *)self paperStyleTypeFromIndexPath:pathCopy];

    [paperStyleDelegate paperStyleSheetCollectionViewController:self didFinishWithPaperStyleType:v7];
  }

  [(ICPaperStyleSheetCollectionViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (ICPaperStyleSheetCollectionViewControllerDelegate)paperStyleDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_paperStyleDelegate);

  return WeakRetained;
}

@end