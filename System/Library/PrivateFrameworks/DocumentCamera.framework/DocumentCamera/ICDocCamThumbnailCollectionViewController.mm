@interface ICDocCamThumbnailCollectionViewController
- (CGRect)targetViewRect;
- (CGSize)collectionView:(id)view imageSizeAtIndex:(int64_t)index;
- (ICDocCamThumbnailCollectionViewController)initWithDelegate:(id)delegate;
- (ICDocCamThumbnailViewDelegate)delegate;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)rootView;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)addNewDocument:(id)document completionBlock:(id)block;
- (void)animateLayoutChange;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)didReceiveMemoryWarning;
- (void)reloadDataForCollectionView;
- (void)setImageWithUUID:(id)d forCell:(id)cell useResizedImage:(BOOL)image;
- (void)update;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation ICDocCamThumbnailCollectionViewController

- (ICDocCamThumbnailCollectionViewController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = objc_alloc_init(ICDocCamThumbnailCollectionViewLayout);
  v14.receiver = self;
  v14.super_class = ICDocCamThumbnailCollectionViewController;
  v6 = [(ICDocCamThumbnailCollectionViewController *)&v14 initWithCollectionViewLayout:v5];
  v7 = v6;
  if (v6)
  {
    [(ICDocCamThumbnailCollectionViewController *)v6 setLayout:v5];
    collectionView = [(ICDocCamThumbnailCollectionViewController *)v7 collectionView];
    [collectionView setDataSource:v7];

    collectionView2 = [(ICDocCamThumbnailCollectionViewController *)v7 collectionView];
    [collectionView2 setDelegate:v7];

    collectionView3 = [(ICDocCamThumbnailCollectionViewController *)v7 collectionView];
    v11 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.0];
    [collectionView3 setBackgroundColor:v11];

    [(ICDocCamThumbnailCollectionViewController *)v7 setDelegate:delegateCopy];
    layout = [(ICDocCamThumbnailCollectionViewController *)v7 layout];
    [layout setDelegate:v7];
  }

  return v7;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = ICDocCamThumbnailCollectionViewController;
  [(ICDocCamThumbnailCollectionViewController *)&v5 viewDidLoad];
  collectionView = [(ICDocCamThumbnailCollectionViewController *)self collectionView];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"ICDocCamThumbnailCellKind"];

  collectionView2 = [(ICDocCamThumbnailCollectionViewController *)self collectionView];
  [collectionView2 setClipsToBounds:0];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = ICDocCamThumbnailCollectionViewController;
  [(ICDocCamThumbnailCollectionViewController *)&v2 didReceiveMemoryWarning];
}

- (CGSize)collectionView:(id)view imageSizeAtIndex:(int64_t)index
{
  documentInfoArray = [(ICDocCamThumbnailCollectionViewController *)self documentInfoArray];
  if (documentInfoArray && (v7 = documentInfoArray, -[ICDocCamThumbnailCollectionViewController documentInfoArray](self, "documentInfoArray"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 count], v8, v7, v9))
  {
    documentInfoArray2 = [(ICDocCamThumbnailCollectionViewController *)self documentInfoArray];
    v11 = [documentInfoArray2 objectAtIndexedSubscript:index];
    croppedAndFilteredImageUUID = [v11 croppedAndFilteredImageUUID];

    if (!croppedAndFilteredImageUUID)
    {
      documentInfoArray3 = [(ICDocCamThumbnailCollectionViewController *)self documentInfoArray];
      v14 = [documentInfoArray3 objectAtIndexedSubscript:index];
      croppedAndFilteredImageUUID = [v14 meshAnimImageUUID];
    }

    imageCache = [(ICDocCamThumbnailCollectionViewController *)self imageCache];
    [imageCache getImageSize:croppedAndFilteredImageUUID];
    v17 = v16;
    v19 = v18;

    v20 = v17;
    v21 = v19;
  }

  else
  {
    v20 = 0.0;
    v21 = 0.0;
  }

  result.height = v21;
  result.width = v20;
  return result;
}

- (CGRect)targetViewRect
{
  delegate = [(ICDocCamThumbnailCollectionViewController *)self delegate];
  [delegate targetViewRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (id)rootView
{
  delegate = [(ICDocCamThumbnailCollectionViewController *)self delegate];
  rootView = [delegate rootView];

  return rootView;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v5 = [(ICDocCamThumbnailCollectionViewController *)self documentInfoArray:view];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  documentInfoArray = [(ICDocCamThumbnailCollectionViewController *)self documentInfoArray];
  v8 = [documentInfoArray count];

  if (!v8)
  {
    return 0;
  }

  documentInfoArray2 = [(ICDocCamThumbnailCollectionViewController *)self documentInfoArray];
  v10 = [documentInfoArray2 count];

  return v10;
}

- (void)setImageWithUUID:(id)d forCell:(id)cell useResizedImage:(BOOL)image
{
  imageCopy = image;
  dCopy = d;
  cellCopy = cell;
  imageCache = [(ICDocCamThumbnailCollectionViewController *)self imageCache];
  v11 = [imageCache getImage:dCopy];

  if (!v11)
  {
    v28 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [ICDocCamThumbnailCollectionViewController setImageWithUUID:dCopy forCell:v28 useResizedImage:?];
    }

    goto LABEL_7;
  }

  if (!imageCopy)
  {
LABEL_7:
    imageView = [cellCopy imageView];
    [imageView setImage:v11];
    goto LABEL_8;
  }

  collectionView = [(ICDocCamThumbnailCollectionViewController *)self collectionView];
  imageView = [collectionView collectionViewLayout];

  [v11 size];
  v15 = v14;
  v17 = v16;
  [imageView frameSizeForImageSize:?];
  v19 = v18;
  v21 = v20;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v24 = v23;

  v25 = fmax(v24, 1.0);
  [ICDocCamUtilities aspectFillSize:v15 targetSize:v17, v19 * v25, v21 * v25];
  v26 = [ICDocCamUtilities resizedImage:v11 newSize:3 interpolationQuality:?];
  imageView2 = [cellCopy imageView];
  [imageView2 setImage:v26];

LABEL_8:
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithReuseIdentifier:@"ICDocCamThumbnailCellKind" forIndexPath:pathCopy];
  if ([(ICDocCamThumbnailCollectionViewController *)self isPerformingBatchUpdates])
  {
    v8 = 0.5;
  }

  else
  {
    v8 = 1.0;
  }

  layer = [v7 layer];
  *&v10 = v8;
  [layer setSpeed:v10];

  documentInfoArray = [(ICDocCamThumbnailCollectionViewController *)self documentInfoArray];
  if (documentInfoArray)
  {
    v12 = documentInfoArray;
    documentInfoArray2 = [(ICDocCamThumbnailCollectionViewController *)self documentInfoArray];
    v14 = [documentInfoArray2 count];

    if (v14)
    {
      documentInfoArray3 = [(ICDocCamThumbnailCollectionViewController *)self documentInfoArray];
      v16 = [documentInfoArray3 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];
      croppedAndFilteredImageUUID = [v16 croppedAndFilteredImageUUID];

      if (!croppedAndFilteredImageUUID)
      {
        documentInfoArray4 = [(ICDocCamThumbnailCollectionViewController *)self documentInfoArray];
        v19 = [documentInfoArray4 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];
        croppedAndFilteredImageUUID = [v19 meshAnimImageUUID];
      }

      [(ICDocCamThumbnailCollectionViewController *)self setImageWithUUID:croppedAndFilteredImageUUID forCell:v7 useResizedImage:[(ICDocCamThumbnailCollectionViewController *)self isPerformingBatchUpdates]^ 1];
    }
  }

  return v7;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  delegate = [(ICDocCamThumbnailCollectionViewController *)self delegate];
  [delegate thumbnailViewDidTap:pathCopy];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v11.receiver = self;
  v11.super_class = ICDocCamThumbnailCollectionViewController;
  coordinatorCopy = coordinator;
  [(ICDocCamThumbnailCollectionViewController *)&v11 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  collectionView = [(ICDocCamThumbnailCollectionViewController *)self collectionView];
  [collectionView setClipsToBounds:1];

  layout = [(ICDocCamThumbnailCollectionViewController *)self layout];
  [layout setTransitioning:1];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __96__ICDocCamThumbnailCollectionViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v10[3] = &unk_278F92D48;
  v10[4] = self;
  [coordinatorCopy animateAlongsideTransition:&__block_literal_global_19 completion:v10];
}

void __96__ICDocCamThumbnailCollectionViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc_init(ICDocCamThumbnailCollectionViewLayout);
  [*(a1 + 32) setLayout:v2];

  v3 = *(a1 + 32);
  v4 = [v3 layout];
  [v4 setDelegate:v3];

  v5 = [*(a1 + 32) collectionView];
  v6 = [*(a1 + 32) layout];
  [v5 setCollectionViewLayout:v6 animated:1];

  [*(a1 + 32) reloadDataForCollectionView];
  v7 = [*(a1 + 32) collectionView];
  [v7 setClipsToBounds:0];

  v8 = [*(a1 + 32) layout];
  [v8 setTransitioning:0];
}

- (void)reloadDataForCollectionView
{
  if ([(ICDocCamThumbnailCollectionViewController *)self isPerformingBatchUpdates])
  {

    [(ICDocCamThumbnailCollectionViewController *)self setNeedReloadAfterBatchUpdates:1];
  }

  else
  {
    collectionView = [(ICDocCamThumbnailCollectionViewController *)self collectionView];
    [collectionView reloadData];
  }
}

- (void)update
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__ICDocCamThumbnailCollectionViewController_update__block_invoke;
  block[3] = &unk_278F92C70;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)addNewDocument:(id)document completionBlock:(id)block
{
  documentCopy = document;
  blockCopy = block;
  v8 = os_log_create("com.apple.documentcamera", "");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [ICDocCamThumbnailCollectionViewController addNewDocument:documentCopy completionBlock:v8];
  }

  [(ICDocCamThumbnailCollectionViewController *)self setIsPerformingBatchUpdates:1];
  documentInfoArray = [(ICDocCamThumbnailCollectionViewController *)self documentInfoArray];
  v10 = [documentInfoArray count];

  v11 = [MEMORY[0x277CCAA70] indexPathForItem:v10 inSection:0];
  collectionView = [(ICDocCamThumbnailCollectionViewController *)self collectionView];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __76__ICDocCamThumbnailCollectionViewController_addNewDocument_completionBlock___block_invoke;
  v20[3] = &unk_278F93258;
  v20[4] = self;
  v21 = documentCopy;
  v22 = v11;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __76__ICDocCamThumbnailCollectionViewController_addNewDocument_completionBlock___block_invoke_2;
  v16[3] = &unk_278F94050;
  v16[4] = self;
  v17 = v22;
  v18 = v21;
  v19 = blockCopy;
  v13 = blockCopy;
  v14 = v22;
  v15 = v21;
  [collectionView performBatchUpdates:v20 completion:v16];
}

void __76__ICDocCamThumbnailCollectionViewController_addNewDocument_completionBlock___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];
  [v2 addNewDocument:*(a1 + 40)];

  v3 = [*(a1 + 32) collectionView];
  v5[0] = *(a1 + 48);
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  [v3 insertItemsAtIndexPaths:v4];
}

void __76__ICDocCamThumbnailCollectionViewController_addNewDocument_completionBlock___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    (*(v2 + 16))();
  }

  [*(a1 + 32) setIsPerformingBatchUpdates:0];
  v3 = [*(a1 + 32) collectionView];
  v4 = [v3 cellForItemAtIndexPath:*(a1 + 40)];

  v5 = [v4 layer];
  LODWORD(v6) = 1.0;
  [v5 setSpeed:v6];

  v7 = [*(a1 + 48) croppedAndFilteredImageUUID];
  if (!v7)
  {
    v7 = [*(a1 + 48) meshAnimImageUUID];
  }

  v8 = os_log_create("com.apple.documentcamera", "");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __76__ICDocCamThumbnailCollectionViewController_addNewDocument_completionBlock___block_invoke_2_cold_1((a1 + 48), v7, v8);
  }

  [*(a1 + 32) setImageWithUUID:v7 forCell:v4 useResizedImage:1];
  if ([*(a1 + 32) needReloadAfterBatchUpdates])
  {
    [*(a1 + 32) setNeedReloadAfterBatchUpdates:0];
    v9 = [*(a1 + 32) collectionView];
    [v9 reloadData];
  }
}

- (void)animateLayoutChange
{
  v3 = objc_alloc_init(ICDocCamThumbnailCollectionViewLayout);
  [(ICDocCamThumbnailCollectionViewController *)self setLayout:v3];

  layout = [(ICDocCamThumbnailCollectionViewController *)self layout];
  [layout setDelegate:self];

  collectionView = [(ICDocCamThumbnailCollectionViewController *)self collectionView];
  layout2 = [(ICDocCamThumbnailCollectionViewController *)self layout];
  [collectionView setCollectionViewLayout:layout2 animated:1];
}

- (ICDocCamThumbnailViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setImageWithUUID:(uint64_t)a1 forCell:(NSObject *)a2 useResizedImage:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_249253000, a2, OS_LOG_TYPE_ERROR, "Error finding image: %@", &v2, 0xCu);
}

- (void)addNewDocument:(uint64_t)a1 completionBlock:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_249253000, a2, OS_LOG_TYPE_DEBUG, "addNewDocument: %p", &v2, 0xCu);
}

void __76__ICDocCamThumbnailCollectionViewController_addNewDocument_completionBlock___block_invoke_2_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = 134218242;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_249253000, log, OS_LOG_TYPE_DEBUG, "addNewDocument: %p %@", &v4, 0x16u);
}

@end