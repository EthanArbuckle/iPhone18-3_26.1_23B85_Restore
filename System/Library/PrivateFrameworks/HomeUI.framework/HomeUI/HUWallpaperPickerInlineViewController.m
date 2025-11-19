@interface HUWallpaperPickerInlineViewController
- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4;
- (CGSize)imageSize;
- (CGSize)preferredContentSize;
- (HFWallpaper)selectedWallpaper;
- (HUWallpaperPickerInlineViewController)init;
- (HUWallpaperPickerInlineViewControllerDelegate)delegate;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4;
- (id)thumbnailWallpaperForIndexPath:(id)a3;
- (id)wallpaperForIndexPath:(id)a3;
- (unint64_t)numberOfWallpapers;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)configureCell:(id)a3 image:(id)a4 wallpaper:(id)a5;
- (void)dropInteraction:(id)a3 performDrop:(id)a4;
- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4;
- (void)setCustomWallpaper:(id)a3 image:(id)a4;
- (void)setImageSize:(CGSize)a3;
- (void)setImageSizeToFitWidth:(double)a3 forNumberOfWallpapers:(unint64_t)a4;
- (void)setNamedWallpaperThumbnails:(id)a3;
- (void)setNamedWallpapers:(id)a3;
- (void)setSelectedIndexPath:(id)a3 animated:(BOOL)a4;
- (void)setSelectedWallpaper:(id)a3 animated:(BOOL)a4;
- (void)updateScrolling;
- (void)viewDidLoad;
- (void)wallpaperPhotoCellDidPressDeleteButton:(id)a3;
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
  v3 = [(HUWallpaperPickerInlineViewController *)self collectionView];
  [v3 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"HUWallpaperPhotoCell"];

  v4 = [(HUWallpaperPickerInlineViewController *)self collectionView];
  [v4 setDelegate:self];

  v5 = [(HUWallpaperPickerInlineViewController *)self collectionView];
  [v5 setDataSource:self];

  v6 = [MEMORY[0x277D75348] clearColor];
  v7 = [(HUWallpaperPickerInlineViewController *)self collectionView];
  [v7 setBackgroundColor:v6];

  v8 = [(HUWallpaperPickerInlineViewController *)self collectionView];
  [v8 setAllowsMultipleSelection:0];

  v9 = [(HUWallpaperPickerInlineViewController *)self collectionView];
  [v9 setContentInset:{20.0, 20.0, 20.0, 20.0}];

  v10 = [(HUWallpaperPickerInlineViewController *)self collectionView];
  v11 = [(HUWallpaperPickerInlineViewController *)self dropInteraction];
  [v10 addInteraction:v11];

  [(HUWallpaperPickerInlineViewController *)self updateScrolling];
}

- (CGSize)preferredContentSize
{
  v3 = [(HUWallpaperPickerInlineViewController *)self view];
  [v3 frame];
  v5 = v4;
  [(HUWallpaperPickerInlineViewController *)self imageSize];
  v7 = v6;
  v8 = [(HUWallpaperPickerInlineViewController *)self collectionView];
  [v8 contentInset];
  v10 = v7 + v9;
  v11 = [(HUWallpaperPickerInlineViewController *)self collectionView];
  [v11 contentInset];
  v13 = v10 + v12;

  v14 = v5;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)setCustomWallpaper:(id)a3 image:(id)a4
{
  v13 = a3;
  objc_storeStrong(&self->_customWallpaper, a3);
  v7 = a4;
  v8 = [(HUWallpaperPickerInlineViewController *)self imageCache];
  v9 = [v13 assetIdentifier];
  [v8 setValue:v7 forKey:v9];

  v10 = [(HUWallpaperPickerInlineViewController *)self customWallpaperCell];
  [(HUWallpaperPickerInlineViewController *)self configureCell:v10 image:v7 wallpaper:v13];

  v11 = v13;
  if (!v13)
  {
    originalCustomImage = self->_originalCustomImage;
    self->_originalCustomImage = 0;

    v11 = 0;
  }
}

- (void)setNamedWallpapers:(id)a3
{
  objc_storeStrong(&self->_namedWallpapers, a3);
  [(HUWallpaperPickerInlineViewController *)self updateScrolling];
  v4 = [(HUWallpaperPickerInlineViewController *)self collectionView];
  [v4 reloadData];
}

- (void)setNamedWallpaperThumbnails:(id)a3
{
  objc_storeStrong(&self->_namedWallpaperThumbnails, a3);
  [(HUWallpaperPickerInlineViewController *)self updateScrolling];
  v4 = [(HUWallpaperPickerInlineViewController *)self collectionView];
  [v4 reloadData];
}

- (void)setImageSize:(CGSize)a3
{
  if (self->_imageSize.width != a3.width || self->_imageSize.height != a3.height)
  {
    self->_imageSize = a3;
    v4 = [(HUWallpaperPickerInlineViewController *)self view];
    [v4 layoutIfNeeded];

    v5 = [(HUWallpaperPickerInlineViewController *)self collectionViewLayout];
    [v5 invalidateLayout];
  }
}

- (void)setImageSizeToFitWidth:(double)a3 forNumberOfWallpapers:(unint64_t)a4
{
  v7 = [(HUWallpaperPickerInlineViewController *)self flowLayout];
  [v7 minimumLineSpacing];
  v9 = v8;

  v10 = [(HUWallpaperPickerInlineViewController *)self collectionView];
  [v10 contentInset];
  v12 = a3 - v11;
  v13 = [(HUWallpaperPickerInlineViewController *)self collectionView];
  [v13 contentInset];
  v15 = v12 - v14;

  v16 = [MEMORY[0x277D759A0] mainScreen];
  [v16 bounds];
  v18 = v17;
  v19 = [MEMORY[0x277D759A0] mainScreen];
  [v19 bounds];
  v21 = v18 / v20;

  v22 = (v15 - v9 * ([(HUWallpaperPickerInlineViewController *)self numberOfWallpapers]- 1)) / a4;
  [(HUWallpaperPickerInlineViewController *)self setImageSize:v22, round(v21 * v22)];
  [(HUWallpaperPickerInlineViewController *)self setNumberOfWallpapersFittingInWidth:a4];

  [(HUWallpaperPickerInlineViewController *)self updateScrolling];
}

- (void)setSelectedWallpaper:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v21 = a3;
  v6 = [(HUWallpaperPickerInlineViewController *)self selectedWallpaper];
  v7 = v21;
  if (!v6 || ([v21 assetIdentifier], v8 = objc_claimAutoreleasedReturnValue(), -[HUWallpaperPickerInlineViewController selectedWallpaper](self, "selectedWallpaper"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "assetIdentifier"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v8, "isEqualToString:", v10), v10, v9, v8, v6, v7 = v21, (v11 & 1) == 0))
  {
    v12 = [v7 assetIdentifier];
    v13 = [(HUWallpaperPickerInlineViewController *)self customWallpaper];
    v14 = [v13 assetIdentifier];
    v15 = [v12 isEqualToString:v14];

    if (v15)
    {
      v16 = [MEMORY[0x277CCAA70] indexPathForItem:-[HUWallpaperPickerInlineViewController numberOfWallpapers](self inSection:{"numberOfWallpapers") - 1, 0}];
    }

    else
    {
      v17 = [(HUWallpaperPickerInlineViewController *)self namedWallpapers];
      v18 = [v17 na_map:&__block_literal_global_25];

      v19 = [v21 assetIdentifier];
      v20 = [v18 indexOfObject:v19];

      if (v20 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v16 = 0;
      }

      else
      {
        v16 = [MEMORY[0x277CCAA70] indexPathForItem:v20 inSection:0];
      }
    }

    v7 = v21;
    if (v16)
    {
      [(HUWallpaperPickerInlineViewController *)self setSelectedIndexPath:v16 animated:v4];

      v7 = v21;
    }
  }
}

- (void)setSelectedIndexPath:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(HUWallpaperPickerInlineViewController *)self collectionView];
  v8 = [v7 cellForItemAtIndexPath:v6];
  [v8 showBorder:1 animated:v4];

  v9 = [(HUWallpaperPickerInlineViewController *)self selectedIndexPath];

  if (v9)
  {
    v10 = [(HUWallpaperPickerInlineViewController *)self collectionView];
    v11 = [(HUWallpaperPickerInlineViewController *)self selectedIndexPath];
    v12 = [v10 cellForItemAtIndexPath:v11];
    [v12 showBorder:0 animated:v4];
  }

  v13 = [(HUWallpaperPickerInlineViewController *)self collectionView];
  v14 = [v13 isScrollEnabled];

  if (v14)
  {
    v15 = [(HUWallpaperPickerInlineViewController *)self collectionView];
    [v15 scrollToItemAtIndexPath:v6 atScrollPosition:32 animated:v4];
  }

  selectedIndexPath = self->_selectedIndexPath;
  self->_selectedIndexPath = v6;
}

- (void)configureCell:(id)a3 image:(id)a4 wallpaper:(id)a5
{
  v12 = a3;
  v7 = a4;
  v8 = a5;
  [v12 setEmpty:v7 == 0];
  if (v7)
  {
    [v12 setImage:v7];
    v9 = [v8 isCustomType];
  }

  else
  {
    v10 = [MEMORY[0x277D755B8] systemImageNamed:@"photo.on.rectangle"];
    [v12 setImage:v10];

    v9 = 0;
  }

  [v12 setRemovable:v9];
  if (v8)
  {
    v11 = [v8 assetIdentifier];
    [v12 setAssetIdentifier:v11];
  }

  else
  {
    [v12 setAssetIdentifier:0];
  }

  [v12 setBusy:0];
  [v12 setHighlighted:0];
  [v12 setContentMode:{2 * (objc_msgSend(v8, "type") != 2)}];
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithReuseIdentifier:@"HUWallpaperPhotoCell" forIndexPath:v6];
  v8 = [(HUWallpaperPickerInlineViewController *)self wallpaperForIndexPath:v6];
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = [(HUWallpaperPickerInlineViewController *)self imageCache];
  v10 = [v8 assetIdentifier];
  v11 = [v9 objectForKeyedSubscript:v10];

  if (v11)
  {
    goto LABEL_13;
  }

  if (![v8 type] || objc_msgSend(v8, "type") == 2 || objc_msgSend(v8, "type") == 3 || objc_msgSend(v8, "type") == 4 || objc_msgSend(v8, "type") == 5)
  {
    v12 = [(HUWallpaperPickerInlineViewController *)self thumbnailWallpaperForIndexPath:v6];
    v13 = [(HUWallpaperPickerInlineViewController *)self thumbnailCache];
    v14 = [v12 assetIdentifier];
    v15 = [v13 objectForKeyedSubscript:v14];
    v16 = v15;
    if (v15)
    {
      v11 = v15;
    }

    else
    {
      v17 = [MEMORY[0x277D14D18] sharedInstance];
      v11 = [v17 wallpaperImageForWallpaper:v12 variant:0];
    }

    v18 = [(HUWallpaperPickerInlineViewController *)self thumbnailCache];
    v19 = [v12 assetIdentifier];
    [v18 setValue:v11 forKey:v19];
  }

  else
  {
LABEL_10:
    v11 = 0;
  }

LABEL_13:
  [v7 setDelegate:self];
  [v7 setCornerRadius:10.0];
  v20 = [MEMORY[0x277D75348] clearColor];
  [v7 setBackgroundColor:v20];

  [(HUWallpaperPickerInlineViewController *)self configureCell:v7 image:v11 wallpaper:v8];
  v21 = [(HUWallpaperPickerInlineViewController *)self selectedWallpaper];

  if (v21)
  {
    v22 = [v8 assetIdentifier];
    v23 = [(HUWallpaperPickerInlineViewController *)self selectedWallpaper];
    v24 = [v23 assetIdentifier];
    [v7 showBorder:objc_msgSend(v22 animated:{"isEqualToString:", v24), 0}];
  }

  v25 = [v6 item];
  if (v25 == [(HUWallpaperPickerInlineViewController *)self numberOfWallpapers]- 1)
  {
    [(HUWallpaperPickerInlineViewController *)self setCustomWallpaperCell:v7];
  }

  return v7;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v37 = a3;
  v6 = a4;
  v7 = [(HUWallpaperPickerInlineViewController *)self selectedIndexPath];
  if (v7)
  {
    v8 = v7;
    v9 = [(HUWallpaperPickerInlineViewController *)self selectedIndexPath];
    v10 = [v9 item];
    v11 = [v6 item];

    if (v10 == v11)
    {
      v12 = [(HUWallpaperPickerInlineViewController *)self delegate];

      if (!v12)
      {
        goto LABEL_25;
      }

      v13 = [(HUWallpaperPickerInlineViewController *)self delegate];
      [v13 wallpaperPickerRequestOpenWallpaperEditor:self];
      goto LABEL_24;
    }
  }

  v14 = [(HUWallpaperPickerInlineViewController *)self wallpaperForIndexPath:v6];

  if (!v14)
  {
    v25 = [(HUWallpaperPickerInlineViewController *)self customWallpaper];

    if (v25)
    {
      goto LABEL_25;
    }

    v26 = objc_alloc_init(MEMORY[0x277D755C8]);
    [(HUWallpaperPickerInlineViewController *)self setImagePicker:v26];

    v27 = [(HUWallpaperPickerInlineViewController *)self imagePicker];
    [v27 setDelegate:self];

    v28 = [(HUWallpaperPickerInlineViewController *)self imagePicker];
    [v28 setSourceType:0];

    v29 = [(HUWallpaperPickerInlineViewController *)self imagePicker];
    [v29 setModalPresentationStyle:2];

    v13 = [(HUWallpaperPickerInlineViewController *)self popoverPresentationController];
    v30 = [v37 cellForItemAtIndexPath:v6];
    [v13 setSourceView:v30];

    v31 = [(HUWallpaperPickerInlineViewController *)self imagePicker];
    [(HUWallpaperPickerInlineViewController *)self presentViewController:v31 animated:1 completion:0];
    goto LABEL_23;
  }

  [(HUWallpaperPickerInlineViewController *)self setSelectedIndexPath:v6 animated:1];
  v15 = [(HUWallpaperPickerInlineViewController *)self delegate];
  if (v15)
  {
    v16 = v15;
    v17 = [(HUWallpaperPickerInlineViewController *)self selectedWallpaper];

    if (v17)
    {
      v18 = [(HUWallpaperPickerInlineViewController *)self imageCache];
      v19 = [(HUWallpaperPickerInlineViewController *)self selectedWallpaper];
      v20 = [v19 assetIdentifier];
      v13 = [v18 objectForKeyedSubscript:v20];

      v21 = [(HUWallpaperPickerInlineViewController *)self selectedWallpaper];
      v22 = v21;
      if (v13)
      {
        if ([v21 isCustomType])
        {
          v23 = [(HUWallpaperPickerInlineViewController *)self originalCustomImage];

          if (v23)
          {
            v24 = [(HUWallpaperPickerInlineViewController *)self originalCustomImage];
            goto LABEL_19;
          }
        }

        else
        {
        }

LABEL_22:
        v31 = [(HUWallpaperPickerInlineViewController *)self delegate];
        v34 = [(HUWallpaperPickerInlineViewController *)self selectedWallpaper];
        [v31 wallpaperPicker:self didSelectWallpaper:v34 withImage:v13];

LABEL_23:
LABEL_24:

        goto LABEL_25;
      }

      if (![v21 type])
      {
        goto LABEL_17;
      }

      v32 = [(HUWallpaperPickerInlineViewController *)self selectedWallpaper];
      if ([v32 type] == 4)
      {

LABEL_17:
LABEL_18:
        v13 = [MEMORY[0x277D14D18] sharedInstance];
        v33 = [(HUWallpaperPickerInlineViewController *)self selectedWallpaper];
        v24 = [v13 wallpaperImageForWallpaper:v33 variant:0];

LABEL_19:
        v13 = v24;
        if (!v24)
        {
          goto LABEL_25;
        }

        goto LABEL_22;
      }

      v35 = [(HUWallpaperPickerInlineViewController *)self selectedWallpaper];
      v36 = [v35 type];

      if (v36 == 5)
      {
        goto LABEL_18;
      }
    }
  }

LABEL_25:
}

- (void)wallpaperPhotoCellDidPressDeleteButton:(id)a3
{
  v4 = [(HUWallpaperPickerInlineViewController *)self selectedWallpaper];
  v5 = [v4 isCustomType];

  if (v5)
  {
    v6 = [(HUWallpaperPickerInlineViewController *)self namedWallpapers];
    v7 = [v6 lastObject];
    [(HUWallpaperPickerInlineViewController *)self setSelectedWallpaper:v7 animated:1];
  }

  v8 = [(HUWallpaperPickerInlineViewController *)self customWallpaper];

  if (v8)
  {
    v9 = [(HUWallpaperPickerInlineViewController *)self imageCache];
    v10 = [(HUWallpaperPickerInlineViewController *)self customWallpaper];
    v11 = [v10 assetIdentifier];
    [v9 removeObjectForKey:v11];

    [(HUWallpaperPickerInlineViewController *)self setCustomWallpaper:0];
  }

  v12 = [(HUWallpaperPickerInlineViewController *)self customWallpaperCell];
  [(HUWallpaperPickerInlineViewController *)self configureCell:v12 image:0 wallpaper:0];

  v13 = [(HUWallpaperPickerInlineViewController *)self delegate];
  if (v13)
  {
    v14 = v13;
    v15 = [(HUWallpaperPickerInlineViewController *)self selectedWallpaper];

    if (v15)
    {
      v16 = [(HUWallpaperPickerInlineViewController *)self imageCache];
      v17 = [(HUWallpaperPickerInlineViewController *)self selectedWallpaper];
      v18 = [v17 assetIdentifier];
      v23 = [v16 objectForKeyedSubscript:v18];

      if (!v23)
      {
        v19 = [MEMORY[0x277D14D18] sharedInstance];
        v20 = [(HUWallpaperPickerInlineViewController *)self selectedWallpaper];
        v23 = [v19 wallpaperImageForWallpaper:v20 variant:0];
      }

      v21 = [(HUWallpaperPickerInlineViewController *)self delegate];
      v22 = [(HUWallpaperPickerInlineViewController *)self selectedWallpaper];
      [v21 wallpaperPicker:self didSelectWallpaper:v22 withImage:v23];
    }
  }
}

- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4
{
  v4 = a4;
  v5 = [v4 canLoadObjectsOfClass:objc_opt_class()];

  return v5;
}

- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4
{
  v4 = [a4 items];
  v5 = [v4 count] < 2;

  v6 = [objc_alloc(MEMORY[0x277D754A8]) initWithDropOperation:2 * v5];

  return v6;
}

- (void)dropInteraction:(id)a3 performDrop:(id)a4
{
  v5 = a4;
  v6 = [(HUWallpaperPickerInlineViewController *)self customWallpaperCell];
  [v6 layoutIfNeeded];

  v7 = [v5 items];

  v8 = [v7 firstObject];
  v9 = [v8 itemProvider];
  v10 = objc_opt_class();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__HUWallpaperPickerInlineViewController_dropInteraction_performDrop___block_invoke;
  v12[3] = &unk_277DB8998;
  v12[4] = self;
  v11 = [v9 loadObjectOfClass:v10 completionHandler:v12];
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

- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4
{
  v12 = a3;
  v6 = [a4 objectForKey:*MEMORY[0x277D76A80]];
  v7 = [(HUWallpaperPickerInlineViewController *)self delegate];

  if (v7 && v6)
  {
    v8 = [(HUWallpaperPickerInlineViewController *)self collectionView];
    v9 = [(HUWallpaperPickerInlineViewController *)self customWallpaperCell];
    v10 = [v8 indexPathForCell:v9];

    [(HUWallpaperPickerInlineViewController *)self setSelectedIndexPath:v10 animated:1];
    v11 = [(HUWallpaperPickerInlineViewController *)self delegate];
    [v11 wallpaperPicker:self didReceiveDroppedImage:v6];
  }

  [v12 dismissViewControllerAnimated:1 completion:0];
}

- (unint64_t)numberOfWallpapers
{
  v2 = [(HUWallpaperPickerInlineViewController *)self namedWallpaperThumbnails];
  v3 = [v2 count];

  return v3 + 1;
}

- (HFWallpaper)selectedWallpaper
{
  v3 = [(HUWallpaperPickerInlineViewController *)self selectedIndexPath];

  if (v3)
  {
    v4 = [(HUWallpaperPickerInlineViewController *)self selectedIndexPath];
    v5 = [(HUWallpaperPickerInlineViewController *)self wallpaperForIndexPath:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)wallpaperForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 item];
  v6 = [(HUWallpaperPickerInlineViewController *)self namedWallpapers];
  v7 = [v6 count];

  if (v5 >= v7)
  {
    v9 = [(HUWallpaperPickerInlineViewController *)self customWallpaper];
  }

  else
  {
    v8 = [(HUWallpaperPickerInlineViewController *)self namedWallpapers];
    v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v4, "item")}];
  }

  return v9;
}

- (id)thumbnailWallpaperForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 item];
  v6 = [(HUWallpaperPickerInlineViewController *)self namedWallpaperThumbnails];
  v7 = [v6 count];

  if (v5 >= v7)
  {
    v9 = 0;
  }

  else
  {
    v8 = [(HUWallpaperPickerInlineViewController *)self namedWallpaperThumbnails];
    v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v4, "item")}];
  }

  return v9;
}

- (void)updateScrolling
{
  v3 = [(HUWallpaperPickerInlineViewController *)self collectionView];
  [v3 setScrollEnabled:{-[HUWallpaperPickerInlineViewController numberOfWallpapers](self, "numberOfWallpapers") > -[HUWallpaperPickerInlineViewController numberOfWallpapersFittingInWidth](self, "numberOfWallpapersFittingInWidth")}];
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