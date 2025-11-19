@interface CFXEffectPickerView
- (CFXEffectPickerView)initWithCoder:(id)a3;
- (CFXEffectPickerView)initWithFrame:(CGRect)a3;
- (CFXEffectPickerViewDataSource)dataSource;
- (CFXEffectPickerViewDelegate)delegate;
- (CGSize)cellSize;
- (CGSize)previewSizeInPixels;
- (CGSize)thumbnailSize;
- (id)collectionView;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionViewLayout;
- (id)contentView;
- (id)effectPickerCellReuseIdentifier;
- (unint64_t)numberOfCollectionViewItems;
- (void)applyEffectAtCellIndex:(unint64_t)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)didResizeCollectionViewToSize:(CGSize)a3;
- (void)didScrollCollectionView;
- (void)effectDidLoadForCell:(id)a3 effect:(id)a4;
- (void)effectPreviewManager:(id)a3 didUpdateContinousPreviewsForEffectIDs:(id)a4;
- (void)reloadData;
- (void)setCellSize:(CGSize)a3;
- (void)setContinuousPreviewEnabled:(BOOL)a3;
- (void)setPreviewBackgroundImage:(id)a3;
- (void)setThumbnailSize:(CGSize)a3;
- (void)setUseCameraForContinuousPreview:(BOOL)a3;
- (void)sharedInit;
- (void)startPreviewing;
- (void)stopPreviewing;
- (void)subviewsDidLoad;
- (void)updatePreviewEffects;
- (void)updatePreviewEffectsWhenReloadComplete;
@end

@implementation CFXEffectPickerView

- (CFXEffectPickerView)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v9 = MEMORY[0x277CBEAD8];
    v10 = *MEMORY[0x277CBE658];
    v11 = MEMORY[0x277CCACA8];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v11 stringWithFormat:@"cannot initialize abstract class %@", v13];
    v15 = [v9 exceptionWithName:v10 reason:v14 userInfo:0];
    v16 = v15;

    objc_exception_throw(v15);
  }

  v17.receiver = self;
  v17.super_class = CFXEffectPickerView;
  v6 = [(CFXEffectPickerView *)&v17 initWithCoder:v4];
  v7 = v6;
  if (v6)
  {
    [(CFXEffectPickerView *)v6 sharedInit];
  }

  return v7;
}

- (CFXEffectPickerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = objc_opt_class();
  if (v8 == objc_opt_class())
  {
    v12 = MEMORY[0x277CBEAD8];
    v13 = *MEMORY[0x277CBE658];
    v14 = MEMORY[0x277CCACA8];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v14 stringWithFormat:@"cannot initialize abstract class %@", v16];
    v18 = [v12 exceptionWithName:v13 reason:v17 userInfo:0];
    v19 = v18;

    objc_exception_throw(v18);
  }

  v20.receiver = self;
  v20.super_class = CFXEffectPickerView;
  v9 = [(CFXEffectPickerView *)&v20 initWithFrame:x, y, width, height];
  v10 = v9;
  if (v9)
  {
    [(CFXEffectPickerView *)v9 sharedInit];
  }

  return v10;
}

- (void)sharedInit
{
  v33[4] = *MEMORY[0x277D85DE8];
  [(CFXEffectPickerView *)self setClipsToBounds:1];
  v3 = [(CFXEffectPickerView *)self effectPickerNibName];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] jfxBundle];
    v5 = [v4 loadNibNamed:v3 owner:self options:0];

    v6 = [(CFXEffectPickerView *)self contentView];
    [(CFXEffectPickerView *)self addSubview:v6];

    v7 = [(CFXEffectPickerView *)self contentView];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

    v24 = MEMORY[0x277CCAAD0];
    v31 = [(CFXEffectPickerView *)self contentView];
    v30 = [v31 leadingAnchor];
    v29 = [(CFXEffectPickerView *)self leadingAnchor];
    v28 = [v30 constraintEqualToAnchor:v29];
    v33[0] = v28;
    v27 = [(CFXEffectPickerView *)self contentView];
    v26 = [v27 trailingAnchor];
    v25 = [(CFXEffectPickerView *)self trailingAnchor];
    v23 = [v26 constraintEqualToAnchor:v25];
    v33[1] = v23;
    v8 = [(CFXEffectPickerView *)self contentView];
    [v8 topAnchor];
    v9 = v32 = v3;
    v10 = [(CFXEffectPickerView *)self topAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    v33[2] = v11;
    v12 = [(CFXEffectPickerView *)self contentView];
    v13 = [v12 bottomAnchor];
    v14 = [(CFXEffectPickerView *)self bottomAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v33[3] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:4];
    [v24 activateConstraints:v16];

    v17 = [(CFXEffectPickerView *)self effectPickerCellNibName];
    v18 = MEMORY[0x277D757B0];
    v19 = [MEMORY[0x277CCA8D8] jfxBundle];
    v20 = [v18 nibWithNibName:v17 bundle:v19];

    v21 = [(CFXEffectPickerView *)self collectionView];
    v22 = [(CFXEffectPickerView *)self effectPickerCellReuseIdentifier];
    [v21 registerNib:v20 forCellWithReuseIdentifier:v22];

    v3 = v32;
  }

  else
  {
    v17 = [(CFXEffectPickerView *)self effectPickerCellNibName];
  }

  self->_cellSize = kDefaultCellSize;
  [(CFXEffectPickerView *)self subviewsDidLoad];
}

- (void)subviewsDidLoad
{
  v3 = [MEMORY[0x277D75348] clearColor];
  [(CFXEffectPickerView *)self setBackgroundColor:v3];

  v4 = [(CFXEffectPickerView *)self collectionView];
  [v4 setDelegate:self];
}

- (void)reloadData
{
  v3 = [(CFXEffectPickerView *)self previewManager];
  if (v3)
  {
  }

  else if (![(CFXEffectPickerView *)self previewingIsWaitingForConfiguration])
  {
    return;
  }

  [(CFXEffectPickerView *)self stopPreviewing];

  [(CFXEffectPickerView *)self startPreviewing];
}

- (void)setContinuousPreviewEnabled:(BOOL)a3
{
  if (self->_continuousPreviewEnabled != a3)
  {
    self->_continuousPreviewEnabled = a3;
    v4 = [(CFXEffectPickerView *)self previewManager];

    if (v4)
    {

      [(CFXEffectPickerView *)self reloadData];
    }
  }
}

- (void)setUseCameraForContinuousPreview:(BOOL)a3
{
  if (self->_useCameraForContinuousPreview != a3)
  {
    self->_useCameraForContinuousPreview = a3;
    v4 = [(CFXEffectPickerView *)self previewManager];
    v5 = [v4 isContinouslyPreviewing];

    if (v5)
    {

      [(CFXEffectPickerView *)self reloadData];
    }
  }
}

- (void)setPreviewBackgroundImage:(id)a3
{
  v5 = a3;
  if (self->_previewBackgroundImage != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_previewBackgroundImage, a3);
    v6 = [(CFXEffectPickerView *)self previewManager];
    v7 = [v6 isContinouslyPreviewing];

    v5 = v8;
    if (v7)
    {
      [(CFXEffectPickerView *)self reloadData];
      v5 = v8;
    }
  }
}

- (CGSize)previewSizeInPixels
{
  [(CFXEffectPickerView *)self thumbnailSize];
  v3 = v2;
  v5 = v4;
  v6 = [MEMORY[0x277D759A0] mainScreen];
  [v6 scale];
  v8 = v7;

  v9 = v3 * v8;
  v10 = v5 * v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)setThumbnailSize:(CGSize)a3
{
  if (a3.width != self->_thumbnailSize.width || a3.height != self->_thumbnailSize.height)
  {
    self->_thumbnailSize = a3;
    v5 = [(CFXEffectPickerView *)self previewManager];

    if (!v5)
    {

      [(CFXEffectPickerView *)self reloadData];
    }
  }
}

- (void)setCellSize:(CGSize)a3
{
  if (a3.width != self->_cellSize.width || a3.height != self->_cellSize.height)
  {
    if (a3.width == *MEMORY[0x277CBF3A8] && a3.height == *(MEMORY[0x277CBF3A8] + 8))
    {
      a3.width = 1.0;
      a3.height = 1.0;
    }

    self->_cellSize = a3;
    v6 = [(CFXEffectPickerView *)self collectionViewLayout];
    [objc_opt_class() invalidationContextClass];
    v8 = objc_opt_new();

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 setInvalidateFlowLayoutDelegateMetrics:1];
    }

    v7 = [(CFXEffectPickerView *)self collectionViewLayout];
    [v7 invalidateLayoutWithContext:v8];

    if ([(CFXEffectPickerView *)self previewingIsWaitingForConfiguration])
    {
      [(CFXEffectPickerView *)self reloadData];
    }
  }
}

- (void)startPreviewing
{
  v3 = [(CFXEffectPickerView *)self previewManager];

  if (v3)
  {
    return;
  }

  [(CFXEffectPickerView *)self thumbnailSize];
  if (v5 != *MEMORY[0x277CBF3A8] || v4 != *(MEMORY[0x277CBF3A8] + 8))
  {
    [(CFXEffectPickerView *)self cellSize];
    if (v8 != 1.0 || v7 != 1.0)
    {
      v10 = [JFXEffectPreviewManager alloc];
      v11 = [(JFXEffectPreviewManager *)v10 initWithName:@"FilterPicker" callbackQueue:MEMORY[0x277D85CD0]];
      [(CFXEffectPickerView *)self setPreviewManager:v11];

      v12 = [(CFXEffectPickerView *)self previewManager];
      [v12 setDelegate:self];

      [(CFXEffectPickerView *)self setPreviewingIsWaitingForConfiguration:0];
      if ([(CFXEffectPickerView *)self isContinuousPreviewEnabled])
      {
        if ([(CFXEffectPickerView *)self isUsingCameraForContinuousPreview])
        {
          v13 = [[JFXEffectContinousLiveCapturePreviewOptions alloc] initLiveCaptureOptions];
        }

        else
        {
          v13 = [[JFXEffectContinousPreviewImageOptions alloc] initImageOptionsWithFrameRate:15];
          v19 = [(CFXEffectPickerView *)self previewBackgroundImage];

          if (v19)
          {
            v20 = [(CFXEffectPickerView *)self previewBackgroundImage];
          }

          else
          {
            v21 = MEMORY[0x277D755B8];
            v22 = [MEMORY[0x277D75348] clearColor];
            [(CFXEffectPickerView *)self thumbnailSize];
            v20 = [v21 imageWithColor:v22 andSize:?];
          }

          v23 = [JTImage jtImageWithUIImage:v20];
          [v13 setBackgroundImage:v23];
        }

        v24 = [(CFXEffectPickerView *)self previewManager];
        [(CFXEffectPickerView *)self previewSizeInPixels];
        [v24 startPreparingPreviewsContinuouslyAtSize:v13 options:?];
      }

      else
      {
        v14 = [(CFXEffectPickerView *)self previewBackgroundImage];

        if (!v14)
        {
LABEL_24:
          v25 = [(CFXEffectPickerView *)self collectionView];
          [v25 setDataSource:self];

          v26 = [(CFXEffectPickerView *)self collectionView];
          [v26 reloadData];

          v27 = [(CFXEffectPickerView *)self collectionView];
          [v27 setHidden:0];

          v28 = [(CFXEffectPickerView *)self collectionView];
          [v28 layoutIfNeeded];

          [(CFXEffectPickerView *)self updatePreviewEffectsWhenReloadComplete];
          return;
        }

        v15 = [[JFXEffectStaticPreviewOptions alloc] initStaticPreviewOptions];
        [(CFXEffectPickerView *)self setStaticPreviewOptions:v15];

        v16 = [(CFXEffectPickerView *)self previewBackgroundImage];
        v17 = [JTImage jtImageWithUIImage:v16];
        v18 = [(CFXEffectPickerView *)self staticPreviewOptions];
        [v18 setRenderBackgroundImage:v17];

        v13 = [(CFXEffectPickerView *)self staticPreviewOptions];
        [v13 setDontCacheToDisk:1];
      }

      goto LABEL_24;
    }
  }

  [(CFXEffectPickerView *)self setPreviewingIsWaitingForConfiguration:1];
}

- (void)updatePreviewEffectsWhenReloadComplete
{
  v3 = dispatch_time(0, 30000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__CFXEffectPickerView_updatePreviewEffectsWhenReloadComplete__block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_after(v3, MEMORY[0x277D85CD0], block);
}

uint64_t __61__CFXEffectPickerView_updatePreviewEffectsWhenReloadComplete__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionView];
  v3 = [v2 visibleCells];
  v4 = [v3 count];

  v5 = *(a1 + 32);
  if (v4)
  {

    return [v5 updatePreviewEffects];
  }

  else
  {

    return [v5 updatePreviewEffectsWhenReloadComplete];
  }
}

- (void)updatePreviewEffects
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(CFXEffectPickerView *)self previewManager];

  if (v3)
  {
    v4 = [(CFXEffectPickerView *)self previewManager];
    if ([v4 isContinouslyPreviewing])
    {
    }

    else
    {
      v5 = [(CFXEffectPickerView *)self isContinuousPreviewEnabled];

      if (!v5)
      {
        return;
      }
    }

    v6 = [(CFXEffectPickerView *)self collectionView];
    v7 = [v6 visibleCells];

    v8 = objc_opt_new();
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        v13 = 0;
        do
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v19 + 1) + 8 * v13) effect];
          if (v14)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || ([v14 jtEffect], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isEmoji"), v15, (v16 & 1) == 0))
            {
              v17 = [v14 jtEffect];
              [v8 addObject:v17];
            }
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    v18 = [(CFXEffectPickerView *)self previewManager];
    [v18 setContinousPreviewEffects:v8];
  }
}

- (void)stopPreviewing
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(CFXEffectPickerView *)self previewManager];

  if (v3)
  {
    [(CFXEffectPickerView *)self setPreviewManager:0];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(CFXEffectPickerView *)self collectionView];
    v5 = [v4 visibleCells];

    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v12 + 1) + 8 * v9++) setImage:0];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    v10 = [(CFXEffectPickerView *)self collectionView];
    [v10 setDataSource:0];

    v11 = [(CFXEffectPickerView *)self collectionView];
    [v11 setHidden:1];
  }
}

- (void)applyEffectAtCellIndex:(unint64_t)a3
{
  v4 = [(CFXEffectPickerView *)self effectIndexForCellIndex:a3];
  v5 = [(CFXEffectPickerView *)self delegate];
  [v5 effectPickerView:self didPickEffectAtIndex:v4];
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = [a4 item];

  [(CFXEffectPickerView *)self didSelectItemAtCellIndex:v5];
}

- (void)didScrollCollectionView
{
  v3 = [(CFXEffectPickerView *)self delegate];
  [v3 effectPickerViewDidScroll:self];

  [(CFXEffectPickerView *)self updatePreviewEffects];
}

- (unint64_t)numberOfCollectionViewItems
{
  v3 = [(CFXEffectPickerView *)self dataSource];
  v4 = [v3 numberOfEffectsInPickerView:self];

  return v4;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(CFXEffectPickerView *)self collectionView];
  v7 = [(CFXEffectPickerView *)self effectPickerCellReuseIdentifier];
  v8 = [v6 dequeueReusableCellWithReuseIdentifier:v7 forIndexPath:v5];

  v9 = [v5 item];
  v10 = [(CFXEffectPickerView *)self effectIndexForCellIndex:v9];
  v11 = [(CFXEffectPickerView *)self dataSource];
  v12 = [v11 effectPickerView:self effectIdentifierAtIndex:v10];

  [v8 setEffectIdentifier:v12];
  [(CFXEffectPickerView *)self configureCell:v8];
  v13 = [(CFXEffectPickerView *)self dataSource];
  [(CFXEffectPickerView *)self previewSizeInPixels];
  v15 = v14;
  v17 = v16;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __61__CFXEffectPickerView_collectionView_cellForItemAtIndexPath___block_invoke;
  v21[3] = &unk_278D7ABF0;
  v18 = v8;
  v22 = v18;
  v23 = self;
  [v13 effectPickerView:self effectAtIndex:v10 forPreviewingAtSizeInPixels:v21 completionBlock:{v15, v17}];

  v19 = v18;
  return v18;
}

void __61__CFXEffectPickerView_collectionView_cellForItemAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = [*(a1 + 32) effectIdentifier];
    v4 = [v6 identifier];
    v5 = [v3 isEqualToString:v4];

    if (v5)
    {
      [*(a1 + 40) effectDidLoadForCell:*(a1 + 32) effect:v6];
    }
  }
}

- (void)effectDidLoadForCell:(id)a3 effect:(id)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [v6 setEffect:v7];
  v8 = [v7 jtEffect];
  v9 = [v8 accessibilityName];
  [v6 setAccessibilityLabel:v9];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v7 jtEffect], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEmoji"), v10, v11))
  {
    v12 = [MEMORY[0x277D755B8] systemImageNamed:@"face.smiling.fill"];
    v13 = [JTImage jtImageWithUIImage:v12];
    [v6 setImage:v13];
  }

  else
  {
    v14 = [v7 jtEffect];
    v15 = [v14 type];

    if (v15 == 1)
    {
      v16 = +[CFXEffectHostAppDelegate sharedInstance];
      v17 = [v16 preferredDisplayColorSpace];
      v18 = [v17 isHDRSpace];

      v19 = [v7 jtEffect];
      [v19 setHDR:v18];
    }

    v20 = [(CFXEffectPickerView *)self previewManager];
    v21 = [v7 jtEffect];
    [(CFXEffectPickerView *)self previewSizeInPixels];
    v23 = v22;
    v25 = v24;
    v26 = [(CFXEffectPickerView *)self staticPreviewOptions];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __51__CFXEffectPickerView_effectDidLoadForCell_effect___block_invoke;
    v47[3] = &unk_278D7AC18;
    v48 = v6;
    v27 = v7;
    v49 = v27;
    [v20 previewForEffect:v21 atSize:v26 options:v47 completion:{v23, v25}];

    [(CFXEffectPickerView *)self updatePreviewEffects];
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v28 = [(CFXEffectPickerView *)self previewManager];
    v29 = [v28 continousPreviewEffects];

    v30 = [v29 countByEnumeratingWithState:&v43 objects:v52 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v44;
LABEL_8:
      v33 = 0;
      while (1)
      {
        if (*v44 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v43 + 1) + 8 * v33);
        v35 = [v27 jtEffect];

        if (v35 == v34)
        {
          break;
        }

        if (v31 == ++v33)
        {
          v31 = [v29 countByEnumeratingWithState:&v43 objects:v52 count:16];
          if (v31)
          {
            goto LABEL_8;
          }

          goto LABEL_14;
        }
      }
    }

    else
    {
LABEL_14:

      v36 = [(CFXEffectPickerView *)self previewManager];
      v37 = [v36 continousPreviewEffects];
      v29 = [v37 mutableCopy];

      v38 = [v27 jtEffect];
      [v29 addObject:v38];

      v39 = [(CFXEffectPickerView *)self previewManager];
      [v39 setContinousPreviewEffects:v29];

      v40 = JFXLog_pickerUI();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = [v27 jtEffect];
        v42 = [v41 accessibilityName];
        *buf = 138412290;
        v51 = v42;
        _os_log_impl(&dword_242A3B000, v40, OS_LOG_TYPE_DEFAULT, "Missing entry for %@, adding here as a workaround", buf, 0xCu);
      }
    }
  }
}

void __51__CFXEffectPickerView_effectDidLoadForCell_effect___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) effectIdentifier];
  v4 = [*(a1 + 40) identifier];
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {
    [*(a1 + 32) setImage:v6];
  }
}

- (void)effectPreviewManager:(id)a3 didUpdateContinousPreviewsForEffectIDs:(id)a4
{
  v5 = a4;
  v6 = [(CFXEffectPickerView *)self previewManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __83__CFXEffectPickerView_effectPreviewManager_didUpdateContinousPreviewsForEffectIDs___block_invoke;
  v7[3] = &unk_278D7AC40;
  v7[4] = self;
  [v6 continousPreviewsForEffectIDs:v5 completion:v7];
}

void __83__CFXEffectPickerView_effectPreviewManager_didUpdateContinousPreviewsForEffectIDs___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [*(a1 + 32) collectionView];
  v5 = [v4 visibleCells];

  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    v9 = *MEMORY[0x277D41718];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 effect];
        v13 = [v12 identifier];
        v14 = [v3 objectForKey:v13];

        if (v14)
        {
          [v11 setImage:v14];
        }

        else
        {
          v15 = [v3 objectForKey:v9];
          [v11 setImage:v15];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }
}

- (void)didResizeCollectionViewToSize:(CGSize)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__CFXEffectPickerView_didResizeCollectionViewToSize___block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (id)effectPickerCellReuseIdentifier
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"must override %@ in subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (id)collectionView
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"must override %@ in subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (id)collectionViewLayout
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"must override %@ in subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (id)contentView
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"must override %@ in subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (CFXEffectPickerViewDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (CFXEffectPickerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)cellSize
{
  width = self->_cellSize.width;
  height = self->_cellSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)thumbnailSize
{
  width = self->_thumbnailSize.width;
  height = self->_thumbnailSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end