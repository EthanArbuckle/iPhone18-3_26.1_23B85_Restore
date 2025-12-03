@interface HUWallpaperPickerInlineViewController
- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session;
- (CGSize)imageSize;
- (CGSize)preferredContentSize;
- (HFWallpaper)selectedWallpaper;
- (HUWallpaperPickerInlineViewController)init;
- (HUWallpaperPickerInlineViewControllerDelegate)delegate;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update;
- (id)thumbnailWallpaperForIndexPath:(id)path;
- (id)wallpaperForIndexPath:(id)path;
- (unint64_t)numberOfWallpapers;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)configureCell:(id)cell image:(id)image wallpaper:(id)wallpaper;
- (void)dropInteraction:(id)interaction performDrop:(id)drop;
- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info;
- (void)setCustomWallpaper:(id)wallpaper image:(id)image;
- (void)setImageSize:(CGSize)size;
- (void)setImageSizeToFitWidth:(double)width forNumberOfWallpapers:(unint64_t)wallpapers;
- (void)setNamedWallpaperThumbnails:(id)thumbnails;
- (void)setNamedWallpapers:(id)wallpapers;
- (void)setSelectedIndexPath:(id)path animated:(BOOL)animated;
- (void)setSelectedWallpaper:(id)wallpaper animated:(BOOL)animated;
- (void)updateScrolling;
- (void)viewDidLoad;
- (void)wallpaperPhotoCellDidPressDeleteButton:(id)button;
@end

@implementation HUWallpaperPickerInlineViewController

- (HUWallpaperPickerInlineViewController)init
{
  v3 = objc_alloc_init(MEMORY[0x277D752F0]);
  [v3 setScrollDirection:1];
  [v3 setMinimumLineSpacing:20.0];
  v17.receiver = self;
  v17.super_class = HUWallpaperPickerInlineViewController;
  v4 = [(HUWallpaperPickerInlineViewController *)&v17 initWithCollectionViewLayout:v3];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_flowLayout, v3);
    v5->_imageSize = vdupq_n_s64(0x4049000000000000uLL);
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    imageCache = v5->_imageCache;
    v5->_imageCache = v6;

    v8 = [objc_alloc(MEMORY[0x277D754A0]) initWithDelegate:v5];
    dropInteraction = v5->_dropInteraction;
    v5->_dropInteraction = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEA60]);
    namedWallpapers = v5->_namedWallpapers;
    v5->_namedWallpapers = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    thumbnailCache = v5->_thumbnailCache;
    v5->_thumbnailCache = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEA60]);
    namedWallpaperThumbnails = v5->_namedWallpaperThumbnails;
    v5->_namedWallpaperThumbnails = v14;
  }

  return v5;
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = HUWallpaperPickerInlineViewController;
  [(HUWallpaperPickerInlineViewController *)&v12 viewDidLoad];
  collectionView = [(HUWallpaperPickerInlineViewController *)self collectionView];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"HUWallpaperPhotoCell"];

  collectionView2 = [(HUWallpaperPickerInlineViewController *)self collectionView];
  [collectionView2 setDelegate:self];

  collectionView3 = [(HUWallpaperPickerInlineViewController *)self collectionView];
  [collectionView3 setDataSource:self];

  clearColor = [MEMORY[0x277D75348] clearColor];
  collectionView4 = [(HUWallpaperPickerInlineViewController *)self collectionView];
  [collectionView4 setBackgroundColor:clearColor];

  collectionView5 = [(HUWallpaperPickerInlineViewController *)self collectionView];
  [collectionView5 setAllowsMultipleSelection:0];

  collectionView6 = [(HUWallpaperPickerInlineViewController *)self collectionView];
  [collectionView6 setContentInset:{20.0, 20.0, 20.0, 20.0}];

  collectionView7 = [(HUWallpaperPickerInlineViewController *)self collectionView];
  dropInteraction = [(HUWallpaperPickerInlineViewController *)self dropInteraction];
  [collectionView7 addInteraction:dropInteraction];

  [(HUWallpaperPickerInlineViewController *)self updateScrolling];
}

- (CGSize)preferredContentSize
{
  view = [(HUWallpaperPickerInlineViewController *)self view];
  [view frame];
  v5 = v4;
  [(HUWallpaperPickerInlineViewController *)self imageSize];
  v7 = v6;
  collectionView = [(HUWallpaperPickerInlineViewController *)self collectionView];
  [collectionView contentInset];
  v10 = v7 + v9;
  collectionView2 = [(HUWallpaperPickerInlineViewController *)self collectionView];
  [collectionView2 contentInset];
  v13 = v10 + v12;

  v14 = v5;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)setCustomWallpaper:(id)wallpaper image:(id)image
{
  wallpaperCopy = wallpaper;
  objc_storeStrong(&self->_customWallpaper, wallpaper);
  imageCopy = image;
  imageCache = [(HUWallpaperPickerInlineViewController *)self imageCache];
  assetIdentifier = [wallpaperCopy assetIdentifier];
  [imageCache setValue:imageCopy forKey:assetIdentifier];

  customWallpaperCell = [(HUWallpaperPickerInlineViewController *)self customWallpaperCell];
  [(HUWallpaperPickerInlineViewController *)self configureCell:customWallpaperCell image:imageCopy wallpaper:wallpaperCopy];

  v11 = wallpaperCopy;
  if (!wallpaperCopy)
  {
    originalCustomImage = self->_originalCustomImage;
    self->_originalCustomImage = 0;

    v11 = 0;
  }
}

- (void)setNamedWallpapers:(id)wallpapers
{
  objc_storeStrong(&self->_namedWallpapers, wallpapers);
  [(HUWallpaperPickerInlineViewController *)self updateScrolling];
  collectionView = [(HUWallpaperPickerInlineViewController *)self collectionView];
  [collectionView reloadData];
}

- (void)setNamedWallpaperThumbnails:(id)thumbnails
{
  objc_storeStrong(&self->_namedWallpaperThumbnails, thumbnails);
  [(HUWallpaperPickerInlineViewController *)self updateScrolling];
  collectionView = [(HUWallpaperPickerInlineViewController *)self collectionView];
  [collectionView reloadData];
}

- (void)setImageSize:(CGSize)size
{
  if (self->_imageSize.width != size.width || self->_imageSize.height != size.height)
  {
    self->_imageSize = size;
    view = [(HUWallpaperPickerInlineViewController *)self view];
    [view layoutIfNeeded];

    collectionViewLayout = [(HUWallpaperPickerInlineViewController *)self collectionViewLayout];
    [collectionViewLayout invalidateLayout];
  }
}

- (void)setImageSizeToFitWidth:(double)width forNumberOfWallpapers:(unint64_t)wallpapers
{
  flowLayout = [(HUWallpaperPickerInlineViewController *)self flowLayout];
  [flowLayout minimumLineSpacing];
  v9 = v8;

  collectionView = [(HUWallpaperPickerInlineViewController *)self collectionView];
  [collectionView contentInset];
  v12 = width - v11;
  collectionView2 = [(HUWallpaperPickerInlineViewController *)self collectionView];
  [collectionView2 contentInset];
  v15 = v12 - v14;

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v18 = v17;
  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 bounds];
  v21 = v18 / v20;

  v22 = (v15 - v9 * ([(HUWallpaperPickerInlineViewController *)self numberOfWallpapers]- 1)) / wallpapers;
  [(HUWallpaperPickerInlineViewController *)self setImageSize:v22, round(v21 * v22)];
  [(HUWallpaperPickerInlineViewController *)self setNumberOfWallpapersFittingInWidth:wallpapers];

  [(HUWallpaperPickerInlineViewController *)self updateScrolling];
}

- (void)setSelectedWallpaper:(id)wallpaper animated:(BOOL)animated
{
  animatedCopy = animated;
  wallpaperCopy = wallpaper;
  selectedWallpaper = [(HUWallpaperPickerInlineViewController *)self selectedWallpaper];
  v7 = wallpaperCopy;
  if (!selectedWallpaper || ([wallpaperCopy assetIdentifier], v8 = objc_claimAutoreleasedReturnValue(), -[HUWallpaperPickerInlineViewController selectedWallpaper](self, "selectedWallpaper"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "assetIdentifier"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v8, "isEqualToString:", v10), v10, v9, v8, selectedWallpaper, v7 = wallpaperCopy, (v11 & 1) == 0))
  {
    assetIdentifier = [v7 assetIdentifier];
    customWallpaper = [(HUWallpaperPickerInlineViewController *)self customWallpaper];
    assetIdentifier2 = [customWallpaper assetIdentifier];
    v15 = [assetIdentifier isEqualToString:assetIdentifier2];

    if (v15)
    {
      v16 = [MEMORY[0x277CCAA70] indexPathForItem:-[HUWallpaperPickerInlineViewController numberOfWallpapers](self inSection:{"numberOfWallpapers") - 1, 0}];
    }

    else
    {
      namedWallpapers = [(HUWallpaperPickerInlineViewController *)self namedWallpapers];
      v18 = [namedWallpapers na_map:&__block_literal_global_25];

      assetIdentifier3 = [wallpaperCopy assetIdentifier];
      v20 = [v18 indexOfObject:assetIdentifier3];

      if (v20 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v16 = 0;
      }

      else
      {
        v16 = [MEMORY[0x277CCAA70] indexPathForItem:v20 inSection:0];
      }
    }

    v7 = wallpaperCopy;
    if (v16)
    {
      [(HUWallpaperPickerInlineViewController *)self setSelectedIndexPath:v16 animated:animatedCopy];

      v7 = wallpaperCopy;
    }
  }
}

- (void)setSelectedIndexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  pathCopy = path;
  collectionView = [(HUWallpaperPickerInlineViewController *)self collectionView];
  v8 = [collectionView cellForItemAtIndexPath:pathCopy];
  [v8 showBorder:1 animated:animatedCopy];

  selectedIndexPath = [(HUWallpaperPickerInlineViewController *)self selectedIndexPath];

  if (selectedIndexPath)
  {
    collectionView2 = [(HUWallpaperPickerInlineViewController *)self collectionView];
    selectedIndexPath2 = [(HUWallpaperPickerInlineViewController *)self selectedIndexPath];
    v12 = [collectionView2 cellForItemAtIndexPath:selectedIndexPath2];
    [v12 showBorder:0 animated:animatedCopy];
  }

  collectionView3 = [(HUWallpaperPickerInlineViewController *)self collectionView];
  isScrollEnabled = [collectionView3 isScrollEnabled];

  if (isScrollEnabled)
  {
    collectionView4 = [(HUWallpaperPickerInlineViewController *)self collectionView];
    [collectionView4 scrollToItemAtIndexPath:pathCopy atScrollPosition:32 animated:animatedCopy];
  }

  selectedIndexPath = self->_selectedIndexPath;
  self->_selectedIndexPath = pathCopy;
}

- (void)configureCell:(id)cell image:(id)image wallpaper:(id)wallpaper
{
  cellCopy = cell;
  imageCopy = image;
  wallpaperCopy = wallpaper;
  [cellCopy setEmpty:imageCopy == 0];
  if (imageCopy)
  {
    [cellCopy setImage:imageCopy];
    isCustomType = [wallpaperCopy isCustomType];
  }

  else
  {
    v10 = [MEMORY[0x277D755B8] systemImageNamed:@"photo.on.rectangle"];
    [cellCopy setImage:v10];

    isCustomType = 0;
  }

  [cellCopy setRemovable:isCustomType];
  if (wallpaperCopy)
  {
    assetIdentifier = [wallpaperCopy assetIdentifier];
    [cellCopy setAssetIdentifier:assetIdentifier];
  }

  else
  {
    [cellCopy setAssetIdentifier:0];
  }

  [cellCopy setBusy:0];
  [cellCopy setHighlighted:0];
  [cellCopy setContentMode:{2 * (objc_msgSend(wallpaperCopy, "type") != 2)}];
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithReuseIdentifier:@"HUWallpaperPhotoCell" forIndexPath:pathCopy];
  v8 = [(HUWallpaperPickerInlineViewController *)self wallpaperForIndexPath:pathCopy];
  if (!v8)
  {
    goto LABEL_10;
  }

  imageCache = [(HUWallpaperPickerInlineViewController *)self imageCache];
  assetIdentifier = [v8 assetIdentifier];
  v11 = [imageCache objectForKeyedSubscript:assetIdentifier];

  if (v11)
  {
    goto LABEL_13;
  }

  if (![v8 type] || objc_msgSend(v8, "type") == 2 || objc_msgSend(v8, "type") == 3 || objc_msgSend(v8, "type") == 4 || objc_msgSend(v8, "type") == 5)
  {
    v12 = [(HUWallpaperPickerInlineViewController *)self thumbnailWallpaperForIndexPath:pathCopy];
    thumbnailCache = [(HUWallpaperPickerInlineViewController *)self thumbnailCache];
    assetIdentifier2 = [v12 assetIdentifier];
    v15 = [thumbnailCache objectForKeyedSubscript:assetIdentifier2];
    v16 = v15;
    if (v15)
    {
      v11 = v15;
    }

    else
    {
      mEMORY[0x277D14D18] = [MEMORY[0x277D14D18] sharedInstance];
      v11 = [mEMORY[0x277D14D18] wallpaperImageForWallpaper:v12 variant:0];
    }

    thumbnailCache2 = [(HUWallpaperPickerInlineViewController *)self thumbnailCache];
    assetIdentifier3 = [v12 assetIdentifier];
    [thumbnailCache2 setValue:v11 forKey:assetIdentifier3];
  }

  else
  {
LABEL_10:
    v11 = 0;
  }

LABEL_13:
  [v7 setDelegate:self];
  [v7 setCornerRadius:10.0];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v7 setBackgroundColor:clearColor];

  [(HUWallpaperPickerInlineViewController *)self configureCell:v7 image:v11 wallpaper:v8];
  selectedWallpaper = [(HUWallpaperPickerInlineViewController *)self selectedWallpaper];

  if (selectedWallpaper)
  {
    assetIdentifier4 = [v8 assetIdentifier];
    selectedWallpaper2 = [(HUWallpaperPickerInlineViewController *)self selectedWallpaper];
    assetIdentifier5 = [selectedWallpaper2 assetIdentifier];
    [v7 showBorder:objc_msgSend(assetIdentifier4 animated:{"isEqualToString:", assetIdentifier5), 0}];
  }

  item = [pathCopy item];
  if (item == [(HUWallpaperPickerInlineViewController *)self numberOfWallpapers]- 1)
  {
    [(HUWallpaperPickerInlineViewController *)self setCustomWallpaperCell:v7];
  }

  return v7;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  selectedIndexPath = [(HUWallpaperPickerInlineViewController *)self selectedIndexPath];
  if (selectedIndexPath)
  {
    v8 = selectedIndexPath;
    selectedIndexPath2 = [(HUWallpaperPickerInlineViewController *)self selectedIndexPath];
    item = [selectedIndexPath2 item];
    item2 = [pathCopy item];

    if (item == item2)
    {
      delegate = [(HUWallpaperPickerInlineViewController *)self delegate];

      if (!delegate)
      {
        goto LABEL_25;
      }

      delegate2 = [(HUWallpaperPickerInlineViewController *)self delegate];
      [delegate2 wallpaperPickerRequestOpenWallpaperEditor:self];
      goto LABEL_24;
    }
  }

  v14 = [(HUWallpaperPickerInlineViewController *)self wallpaperForIndexPath:pathCopy];

  if (!v14)
  {
    customWallpaper = [(HUWallpaperPickerInlineViewController *)self customWallpaper];

    if (customWallpaper)
    {
      goto LABEL_25;
    }

    v26 = objc_alloc_init(MEMORY[0x277D755C8]);
    [(HUWallpaperPickerInlineViewController *)self setImagePicker:v26];

    imagePicker = [(HUWallpaperPickerInlineViewController *)self imagePicker];
    [imagePicker setDelegate:self];

    imagePicker2 = [(HUWallpaperPickerInlineViewController *)self imagePicker];
    [imagePicker2 setSourceType:0];

    imagePicker3 = [(HUWallpaperPickerInlineViewController *)self imagePicker];
    [imagePicker3 setModalPresentationStyle:2];

    delegate2 = [(HUWallpaperPickerInlineViewController *)self popoverPresentationController];
    v30 = [viewCopy cellForItemAtIndexPath:pathCopy];
    [delegate2 setSourceView:v30];

    imagePicker4 = [(HUWallpaperPickerInlineViewController *)self imagePicker];
    [(HUWallpaperPickerInlineViewController *)self presentViewController:imagePicker4 animated:1 completion:0];
    goto LABEL_23;
  }

  [(HUWallpaperPickerInlineViewController *)self setSelectedIndexPath:pathCopy animated:1];
  delegate3 = [(HUWallpaperPickerInlineViewController *)self delegate];
  if (delegate3)
  {
    v16 = delegate3;
    selectedWallpaper = [(HUWallpaperPickerInlineViewController *)self selectedWallpaper];

    if (selectedWallpaper)
    {
      imageCache = [(HUWallpaperPickerInlineViewController *)self imageCache];
      selectedWallpaper2 = [(HUWallpaperPickerInlineViewController *)self selectedWallpaper];
      assetIdentifier = [selectedWallpaper2 assetIdentifier];
      delegate2 = [imageCache objectForKeyedSubscript:assetIdentifier];

      selectedWallpaper3 = [(HUWallpaperPickerInlineViewController *)self selectedWallpaper];
      v22 = selectedWallpaper3;
      if (delegate2)
      {
        if ([selectedWallpaper3 isCustomType])
        {
          originalCustomImage = [(HUWallpaperPickerInlineViewController *)self originalCustomImage];

          if (originalCustomImage)
          {
            originalCustomImage2 = [(HUWallpaperPickerInlineViewController *)self originalCustomImage];
            goto LABEL_19;
          }
        }

        else
        {
        }

LABEL_22:
        imagePicker4 = [(HUWallpaperPickerInlineViewController *)self delegate];
        selectedWallpaper4 = [(HUWallpaperPickerInlineViewController *)self selectedWallpaper];
        [imagePicker4 wallpaperPicker:self didSelectWallpaper:selectedWallpaper4 withImage:delegate2];

LABEL_23:
LABEL_24:

        goto LABEL_25;
      }

      if (![selectedWallpaper3 type])
      {
        goto LABEL_17;
      }

      selectedWallpaper5 = [(HUWallpaperPickerInlineViewController *)self selectedWallpaper];
      if ([selectedWallpaper5 type] == 4)
      {

LABEL_17:
LABEL_18:
        delegate2 = [MEMORY[0x277D14D18] sharedInstance];
        selectedWallpaper6 = [(HUWallpaperPickerInlineViewController *)self selectedWallpaper];
        originalCustomImage2 = [delegate2 wallpaperImageForWallpaper:selectedWallpaper6 variant:0];

LABEL_19:
        delegate2 = originalCustomImage2;
        if (!originalCustomImage2)
        {
          goto LABEL_25;
        }

        goto LABEL_22;
      }

      selectedWallpaper7 = [(HUWallpaperPickerInlineViewController *)self selectedWallpaper];
      type = [selectedWallpaper7 type];

      if (type == 5)
      {
        goto LABEL_18;
      }
    }
  }

LABEL_25:
}

- (void)wallpaperPhotoCellDidPressDeleteButton:(id)button
{
  selectedWallpaper = [(HUWallpaperPickerInlineViewController *)self selectedWallpaper];
  isCustomType = [selectedWallpaper isCustomType];

  if (isCustomType)
  {
    namedWallpapers = [(HUWallpaperPickerInlineViewController *)self namedWallpapers];
    lastObject = [namedWallpapers lastObject];
    [(HUWallpaperPickerInlineViewController *)self setSelectedWallpaper:lastObject animated:1];
  }

  customWallpaper = [(HUWallpaperPickerInlineViewController *)self customWallpaper];

  if (customWallpaper)
  {
    imageCache = [(HUWallpaperPickerInlineViewController *)self imageCache];
    customWallpaper2 = [(HUWallpaperPickerInlineViewController *)self customWallpaper];
    assetIdentifier = [customWallpaper2 assetIdentifier];
    [imageCache removeObjectForKey:assetIdentifier];

    [(HUWallpaperPickerInlineViewController *)self setCustomWallpaper:0];
  }

  customWallpaperCell = [(HUWallpaperPickerInlineViewController *)self customWallpaperCell];
  [(HUWallpaperPickerInlineViewController *)self configureCell:customWallpaperCell image:0 wallpaper:0];

  delegate = [(HUWallpaperPickerInlineViewController *)self delegate];
  if (delegate)
  {
    v14 = delegate;
    selectedWallpaper2 = [(HUWallpaperPickerInlineViewController *)self selectedWallpaper];

    if (selectedWallpaper2)
    {
      imageCache2 = [(HUWallpaperPickerInlineViewController *)self imageCache];
      selectedWallpaper3 = [(HUWallpaperPickerInlineViewController *)self selectedWallpaper];
      assetIdentifier2 = [selectedWallpaper3 assetIdentifier];
      v23 = [imageCache2 objectForKeyedSubscript:assetIdentifier2];

      if (!v23)
      {
        mEMORY[0x277D14D18] = [MEMORY[0x277D14D18] sharedInstance];
        selectedWallpaper4 = [(HUWallpaperPickerInlineViewController *)self selectedWallpaper];
        v23 = [mEMORY[0x277D14D18] wallpaperImageForWallpaper:selectedWallpaper4 variant:0];
      }

      delegate2 = [(HUWallpaperPickerInlineViewController *)self delegate];
      selectedWallpaper5 = [(HUWallpaperPickerInlineViewController *)self selectedWallpaper];
      [delegate2 wallpaperPicker:self didSelectWallpaper:selectedWallpaper5 withImage:v23];
    }
  }
}

- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session
{
  sessionCopy = session;
  v5 = [sessionCopy canLoadObjectsOfClass:objc_opt_class()];

  return v5;
}

- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update
{
  items = [update items];
  v5 = [items count] < 2;

  v6 = [objc_alloc(MEMORY[0x277D754A8]) initWithDropOperation:2 * v5];

  return v6;
}

- (void)dropInteraction:(id)interaction performDrop:(id)drop
{
  dropCopy = drop;
  customWallpaperCell = [(HUWallpaperPickerInlineViewController *)self customWallpaperCell];
  [customWallpaperCell layoutIfNeeded];

  items = [dropCopy items];

  firstObject = [items firstObject];
  itemProvider = [firstObject itemProvider];
  v10 = objc_opt_class();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__HUWallpaperPickerInlineViewController_dropInteraction_performDrop___block_invoke;
  v12[3] = &unk_277DB8998;
  v12[4] = self;
  v11 = [itemProvider loadObjectOfClass:v10 completionHandler:v12];
}

void __69__HUWallpaperPickerInlineViewController_dropInteraction_performDrop___block_invoke(uint64_t a1, void *a2)
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

  v7 = [*(a1 + 32) delegate];

  if (v7 && v6)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __69__HUWallpaperPickerInlineViewController_dropInteraction_performDrop___block_invoke_2;
    v8[3] = &unk_277DB7558;
    v8[4] = *(a1 + 32);
    v9 = v6;
    dispatch_async(MEMORY[0x277D85CD0], v8);
  }
}

void __69__HUWallpaperPickerInlineViewController_dropInteraction_performDrop___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 wallpaperPicker:*(a1 + 32) didReceiveDroppedImage:*(a1 + 40)];
}

- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info
{
  controllerCopy = controller;
  v6 = [info objectForKey:*MEMORY[0x277D76A80]];
  delegate = [(HUWallpaperPickerInlineViewController *)self delegate];

  if (delegate && v6)
  {
    collectionView = [(HUWallpaperPickerInlineViewController *)self collectionView];
    customWallpaperCell = [(HUWallpaperPickerInlineViewController *)self customWallpaperCell];
    v10 = [collectionView indexPathForCell:customWallpaperCell];

    [(HUWallpaperPickerInlineViewController *)self setSelectedIndexPath:v10 animated:1];
    delegate2 = [(HUWallpaperPickerInlineViewController *)self delegate];
    [delegate2 wallpaperPicker:self didReceiveDroppedImage:v6];
  }

  [controllerCopy dismissViewControllerAnimated:1 completion:0];
}

- (unint64_t)numberOfWallpapers
{
  namedWallpaperThumbnails = [(HUWallpaperPickerInlineViewController *)self namedWallpaperThumbnails];
  v3 = [namedWallpaperThumbnails count];

  return v3 + 1;
}

- (HFWallpaper)selectedWallpaper
{
  selectedIndexPath = [(HUWallpaperPickerInlineViewController *)self selectedIndexPath];

  if (selectedIndexPath)
  {
    selectedIndexPath2 = [(HUWallpaperPickerInlineViewController *)self selectedIndexPath];
    v5 = [(HUWallpaperPickerInlineViewController *)self wallpaperForIndexPath:selectedIndexPath2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)wallpaperForIndexPath:(id)path
{
  pathCopy = path;
  item = [pathCopy item];
  namedWallpapers = [(HUWallpaperPickerInlineViewController *)self namedWallpapers];
  v7 = [namedWallpapers count];

  if (item >= v7)
  {
    customWallpaper = [(HUWallpaperPickerInlineViewController *)self customWallpaper];
  }

  else
  {
    namedWallpapers2 = [(HUWallpaperPickerInlineViewController *)self namedWallpapers];
    customWallpaper = [namedWallpapers2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];
  }

  return customWallpaper;
}

- (id)thumbnailWallpaperForIndexPath:(id)path
{
  pathCopy = path;
  item = [pathCopy item];
  namedWallpaperThumbnails = [(HUWallpaperPickerInlineViewController *)self namedWallpaperThumbnails];
  v7 = [namedWallpaperThumbnails count];

  if (item >= v7)
  {
    v9 = 0;
  }

  else
  {
    namedWallpaperThumbnails2 = [(HUWallpaperPickerInlineViewController *)self namedWallpaperThumbnails];
    v9 = [namedWallpaperThumbnails2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];
  }

  return v9;
}

- (void)updateScrolling
{
  collectionView = [(HUWallpaperPickerInlineViewController *)self collectionView];
  [collectionView setScrollEnabled:{-[HUWallpaperPickerInlineViewController numberOfWallpapers](self, "numberOfWallpapers") > -[HUWallpaperPickerInlineViewController numberOfWallpapersFittingInWidth](self, "numberOfWallpapersFittingInWidth")}];
}

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (HUWallpaperPickerInlineViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end