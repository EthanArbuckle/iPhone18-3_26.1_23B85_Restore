@interface CFXEffectPickerView
- (CFXEffectPickerView)initWithCoder:(id)coder;
- (CFXEffectPickerView)initWithFrame:(CGRect)frame;
- (CFXEffectPickerViewDataSource)dataSource;
- (CFXEffectPickerViewDelegate)delegate;
- (CGSize)cellSize;
- (CGSize)previewSizeInPixels;
- (CGSize)thumbnailSize;
- (id)collectionView;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionViewLayout;
- (id)contentView;
- (id)effectPickerCellReuseIdentifier;
- (unint64_t)numberOfCollectionViewItems;
- (void)applyEffectAtCellIndex:(unint64_t)index;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)didResizeCollectionViewToSize:(CGSize)size;
- (void)didScrollCollectionView;
- (void)effectDidLoadForCell:(id)cell effect:(id)effect;
- (void)effectPreviewManager:(id)manager didUpdateContinousPreviewsForEffectIDs:(id)ds;
- (void)reloadData;
- (void)setCellSize:(CGSize)size;
- (void)setContinuousPreviewEnabled:(BOOL)enabled;
- (void)setPreviewBackgroundImage:(id)image;
- (void)setThumbnailSize:(CGSize)size;
- (void)setUseCameraForContinuousPreview:(BOOL)preview;
- (void)sharedInit;
- (void)startPreviewing;
- (void)stopPreviewing;
- (void)subviewsDidLoad;
- (void)updatePreviewEffects;
- (void)updatePreviewEffectsWhenReloadComplete;
@end

@implementation CFXEffectPickerView

- (CFXEffectPickerView)initWithCoder:(id)coder
{
  coderCopy = coder;
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
  v6 = [(CFXEffectPickerView *)&v17 initWithCoder:coderCopy];
  v7 = v6;
  if (v6)
  {
    [(CFXEffectPickerView *)v6 sharedInit];
  }

  return v7;
}

- (CFXEffectPickerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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
  height = [(CFXEffectPickerView *)&v20 initWithFrame:x, y, width, height];
  v10 = height;
  if (height)
  {
    [(CFXEffectPickerView *)height sharedInit];
  }

  return v10;
}

- (void)sharedInit
{
  v33[4] = *MEMORY[0x277D85DE8];
  [(CFXEffectPickerView *)self setClipsToBounds:1];
  effectPickerNibName = [(CFXEffectPickerView *)self effectPickerNibName];
  if (effectPickerNibName)
  {
    jfxBundle = [MEMORY[0x277CCA8D8] jfxBundle];
    v5 = [jfxBundle loadNibNamed:effectPickerNibName owner:self options:0];

    contentView = [(CFXEffectPickerView *)self contentView];
    [(CFXEffectPickerView *)self addSubview:contentView];

    contentView2 = [(CFXEffectPickerView *)self contentView];
    [contentView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    v24 = MEMORY[0x277CCAAD0];
    contentView3 = [(CFXEffectPickerView *)self contentView];
    leadingAnchor = [contentView3 leadingAnchor];
    leadingAnchor2 = [(CFXEffectPickerView *)self leadingAnchor];
    v28 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v33[0] = v28;
    contentView4 = [(CFXEffectPickerView *)self contentView];
    trailingAnchor = [contentView4 trailingAnchor];
    trailingAnchor2 = [(CFXEffectPickerView *)self trailingAnchor];
    v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v33[1] = v23;
    contentView5 = [(CFXEffectPickerView *)self contentView];
    [contentView5 topAnchor];
    v9 = v32 = effectPickerNibName;
    topAnchor = [(CFXEffectPickerView *)self topAnchor];
    v11 = [v9 constraintEqualToAnchor:topAnchor];
    v33[2] = v11;
    contentView6 = [(CFXEffectPickerView *)self contentView];
    bottomAnchor = [contentView6 bottomAnchor];
    bottomAnchor2 = [(CFXEffectPickerView *)self bottomAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v33[3] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:4];
    [v24 activateConstraints:v16];

    effectPickerCellNibName = [(CFXEffectPickerView *)self effectPickerCellNibName];
    v18 = MEMORY[0x277D757B0];
    jfxBundle2 = [MEMORY[0x277CCA8D8] jfxBundle];
    v20 = [v18 nibWithNibName:effectPickerCellNibName bundle:jfxBundle2];

    collectionView = [(CFXEffectPickerView *)self collectionView];
    effectPickerCellReuseIdentifier = [(CFXEffectPickerView *)self effectPickerCellReuseIdentifier];
    [collectionView registerNib:v20 forCellWithReuseIdentifier:effectPickerCellReuseIdentifier];

    effectPickerNibName = v32;
  }

  else
  {
    effectPickerCellNibName = [(CFXEffectPickerView *)self effectPickerCellNibName];
  }

  self->_cellSize = kDefaultCellSize;
  [(CFXEffectPickerView *)self subviewsDidLoad];
}

- (void)subviewsDidLoad
{
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(CFXEffectPickerView *)self setBackgroundColor:clearColor];

  collectionView = [(CFXEffectPickerView *)self collectionView];
  [collectionView setDelegate:self];
}

- (void)reloadData
{
  previewManager = [(CFXEffectPickerView *)self previewManager];
  if (previewManager)
  {
  }

  else if (![(CFXEffectPickerView *)self previewingIsWaitingForConfiguration])
  {
    return;
  }

  [(CFXEffectPickerView *)self stopPreviewing];

  [(CFXEffectPickerView *)self startPreviewing];
}

- (void)setContinuousPreviewEnabled:(BOOL)enabled
{
  if (self->_continuousPreviewEnabled != enabled)
  {
    self->_continuousPreviewEnabled = enabled;
    previewManager = [(CFXEffectPickerView *)self previewManager];

    if (previewManager)
    {

      [(CFXEffectPickerView *)self reloadData];
    }
  }
}

- (void)setUseCameraForContinuousPreview:(BOOL)preview
{
  if (self->_useCameraForContinuousPreview != preview)
  {
    self->_useCameraForContinuousPreview = preview;
    previewManager = [(CFXEffectPickerView *)self previewManager];
    isContinouslyPreviewing = [previewManager isContinouslyPreviewing];

    if (isContinouslyPreviewing)
    {

      [(CFXEffectPickerView *)self reloadData];
    }
  }
}

- (void)setPreviewBackgroundImage:(id)image
{
  imageCopy = image;
  if (self->_previewBackgroundImage != imageCopy)
  {
    v8 = imageCopy;
    objc_storeStrong(&self->_previewBackgroundImage, image);
    previewManager = [(CFXEffectPickerView *)self previewManager];
    isContinouslyPreviewing = [previewManager isContinouslyPreviewing];

    imageCopy = v8;
    if (isContinouslyPreviewing)
    {
      [(CFXEffectPickerView *)self reloadData];
      imageCopy = v8;
    }
  }
}

- (CGSize)previewSizeInPixels
{
  [(CFXEffectPickerView *)self thumbnailSize];
  v3 = v2;
  v5 = v4;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v8 = v7;

  v9 = v3 * v8;
  v10 = v5 * v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)setThumbnailSize:(CGSize)size
{
  if (size.width != self->_thumbnailSize.width || size.height != self->_thumbnailSize.height)
  {
    self->_thumbnailSize = size;
    previewManager = [(CFXEffectPickerView *)self previewManager];

    if (!previewManager)
    {

      [(CFXEffectPickerView *)self reloadData];
    }
  }
}

- (void)setCellSize:(CGSize)size
{
  if (size.width != self->_cellSize.width || size.height != self->_cellSize.height)
  {
    if (size.width == *MEMORY[0x277CBF3A8] && size.height == *(MEMORY[0x277CBF3A8] + 8))
    {
      size.width = 1.0;
      size.height = 1.0;
    }

    self->_cellSize = size;
    collectionViewLayout = [(CFXEffectPickerView *)self collectionViewLayout];
    [objc_opt_class() invalidationContextClass];
    v8 = objc_opt_new();

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 setInvalidateFlowLayoutDelegateMetrics:1];
    }

    collectionViewLayout2 = [(CFXEffectPickerView *)self collectionViewLayout];
    [collectionViewLayout2 invalidateLayoutWithContext:v8];

    if ([(CFXEffectPickerView *)self previewingIsWaitingForConfiguration])
    {
      [(CFXEffectPickerView *)self reloadData];
    }
  }
}

- (void)startPreviewing
{
  previewManager = [(CFXEffectPickerView *)self previewManager];

  if (previewManager)
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

      previewManager2 = [(CFXEffectPickerView *)self previewManager];
      [previewManager2 setDelegate:self];

      [(CFXEffectPickerView *)self setPreviewingIsWaitingForConfiguration:0];
      if ([(CFXEffectPickerView *)self isContinuousPreviewEnabled])
      {
        if ([(CFXEffectPickerView *)self isUsingCameraForContinuousPreview])
        {
          initLiveCaptureOptions = [[JFXEffectContinousLiveCapturePreviewOptions alloc] initLiveCaptureOptions];
        }

        else
        {
          initLiveCaptureOptions = [[JFXEffectContinousPreviewImageOptions alloc] initImageOptionsWithFrameRate:15];
          previewBackgroundImage = [(CFXEffectPickerView *)self previewBackgroundImage];

          if (previewBackgroundImage)
          {
            previewBackgroundImage2 = [(CFXEffectPickerView *)self previewBackgroundImage];
          }

          else
          {
            v21 = MEMORY[0x277D755B8];
            clearColor = [MEMORY[0x277D75348] clearColor];
            [(CFXEffectPickerView *)self thumbnailSize];
            previewBackgroundImage2 = [v21 imageWithColor:clearColor andSize:?];
          }

          v23 = [JTImage jtImageWithUIImage:previewBackgroundImage2];
          [initLiveCaptureOptions setBackgroundImage:v23];
        }

        previewManager3 = [(CFXEffectPickerView *)self previewManager];
        [(CFXEffectPickerView *)self previewSizeInPixels];
        [previewManager3 startPreparingPreviewsContinuouslyAtSize:initLiveCaptureOptions options:?];
      }

      else
      {
        previewBackgroundImage3 = [(CFXEffectPickerView *)self previewBackgroundImage];

        if (!previewBackgroundImage3)
        {
LABEL_24:
          collectionView = [(CFXEffectPickerView *)self collectionView];
          [collectionView setDataSource:self];

          collectionView2 = [(CFXEffectPickerView *)self collectionView];
          [collectionView2 reloadData];

          collectionView3 = [(CFXEffectPickerView *)self collectionView];
          [collectionView3 setHidden:0];

          collectionView4 = [(CFXEffectPickerView *)self collectionView];
          [collectionView4 layoutIfNeeded];

          [(CFXEffectPickerView *)self updatePreviewEffectsWhenReloadComplete];
          return;
        }

        initStaticPreviewOptions = [[JFXEffectStaticPreviewOptions alloc] initStaticPreviewOptions];
        [(CFXEffectPickerView *)self setStaticPreviewOptions:initStaticPreviewOptions];

        previewBackgroundImage4 = [(CFXEffectPickerView *)self previewBackgroundImage];
        v17 = [JTImage jtImageWithUIImage:previewBackgroundImage4];
        staticPreviewOptions = [(CFXEffectPickerView *)self staticPreviewOptions];
        [staticPreviewOptions setRenderBackgroundImage:v17];

        initLiveCaptureOptions = [(CFXEffectPickerView *)self staticPreviewOptions];
        [initLiveCaptureOptions setDontCacheToDisk:1];
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
  previewManager = [(CFXEffectPickerView *)self previewManager];

  if (previewManager)
  {
    previewManager2 = [(CFXEffectPickerView *)self previewManager];
    if ([previewManager2 isContinouslyPreviewing])
    {
    }

    else
    {
      isContinuousPreviewEnabled = [(CFXEffectPickerView *)self isContinuousPreviewEnabled];

      if (!isContinuousPreviewEnabled)
      {
        return;
      }
    }

    collectionView = [(CFXEffectPickerView *)self collectionView];
    visibleCells = [collectionView visibleCells];

    v8 = objc_opt_new();
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = visibleCells;
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

          effect = [*(*(&v19 + 1) + 8 * v13) effect];
          if (effect)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || ([effect jtEffect], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isEmoji"), v15, (v16 & 1) == 0))
            {
              jtEffect = [effect jtEffect];
              [v8 addObject:jtEffect];
            }
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    previewManager3 = [(CFXEffectPickerView *)self previewManager];
    [previewManager3 setContinousPreviewEffects:v8];
  }
}

- (void)stopPreviewing
{
  v17 = *MEMORY[0x277D85DE8];
  previewManager = [(CFXEffectPickerView *)self previewManager];

  if (previewManager)
  {
    [(CFXEffectPickerView *)self setPreviewManager:0];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    collectionView = [(CFXEffectPickerView *)self collectionView];
    visibleCells = [collectionView visibleCells];

    v6 = [visibleCells countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(visibleCells);
          }

          [*(*(&v12 + 1) + 8 * v9++) setImage:0];
        }

        while (v7 != v9);
        v7 = [visibleCells countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    collectionView2 = [(CFXEffectPickerView *)self collectionView];
    [collectionView2 setDataSource:0];

    collectionView3 = [(CFXEffectPickerView *)self collectionView];
    [collectionView3 setHidden:1];
  }
}

- (void)applyEffectAtCellIndex:(unint64_t)index
{
  v4 = [(CFXEffectPickerView *)self effectIndexForCellIndex:index];
  delegate = [(CFXEffectPickerView *)self delegate];
  [delegate effectPickerView:self didPickEffectAtIndex:v4];
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  item = [path item];

  [(CFXEffectPickerView *)self didSelectItemAtCellIndex:item];
}

- (void)didScrollCollectionView
{
  delegate = [(CFXEffectPickerView *)self delegate];
  [delegate effectPickerViewDidScroll:self];

  [(CFXEffectPickerView *)self updatePreviewEffects];
}

- (unint64_t)numberOfCollectionViewItems
{
  dataSource = [(CFXEffectPickerView *)self dataSource];
  v4 = [dataSource numberOfEffectsInPickerView:self];

  return v4;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(CFXEffectPickerView *)self collectionView];
  effectPickerCellReuseIdentifier = [(CFXEffectPickerView *)self effectPickerCellReuseIdentifier];
  v8 = [collectionView dequeueReusableCellWithReuseIdentifier:effectPickerCellReuseIdentifier forIndexPath:pathCopy];

  item = [pathCopy item];
  v10 = [(CFXEffectPickerView *)self effectIndexForCellIndex:item];
  dataSource = [(CFXEffectPickerView *)self dataSource];
  v12 = [dataSource effectPickerView:self effectIdentifierAtIndex:v10];

  [v8 setEffectIdentifier:v12];
  [(CFXEffectPickerView *)self configureCell:v8];
  dataSource2 = [(CFXEffectPickerView *)self dataSource];
  [(CFXEffectPickerView *)self previewSizeInPixels];
  v15 = v14;
  v17 = v16;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __61__CFXEffectPickerView_collectionView_cellForItemAtIndexPath___block_invoke;
  v21[3] = &unk_278D7ABF0;
  v18 = v8;
  v22 = v18;
  selfCopy = self;
  [dataSource2 effectPickerView:self effectAtIndex:v10 forPreviewingAtSizeInPixels:v21 completionBlock:{v15, v17}];

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

- (void)effectDidLoadForCell:(id)cell effect:(id)effect
{
  v53 = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  effectCopy = effect;
  [cellCopy setEffect:effectCopy];
  jtEffect = [effectCopy jtEffect];
  accessibilityName = [jtEffect accessibilityName];
  [cellCopy setAccessibilityLabel:accessibilityName];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([effectCopy jtEffect], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEmoji"), v10, v11))
  {
    v12 = [MEMORY[0x277D755B8] systemImageNamed:@"face.smiling.fill"];
    v13 = [JTImage jtImageWithUIImage:v12];
    [cellCopy setImage:v13];
  }

  else
  {
    jtEffect2 = [effectCopy jtEffect];
    type = [jtEffect2 type];

    if (type == 1)
    {
      v16 = +[CFXEffectHostAppDelegate sharedInstance];
      preferredDisplayColorSpace = [v16 preferredDisplayColorSpace];
      isHDRSpace = [preferredDisplayColorSpace isHDRSpace];

      jtEffect3 = [effectCopy jtEffect];
      [jtEffect3 setHDR:isHDRSpace];
    }

    previewManager = [(CFXEffectPickerView *)self previewManager];
    jtEffect4 = [effectCopy jtEffect];
    [(CFXEffectPickerView *)self previewSizeInPixels];
    v23 = v22;
    v25 = v24;
    staticPreviewOptions = [(CFXEffectPickerView *)self staticPreviewOptions];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __51__CFXEffectPickerView_effectDidLoadForCell_effect___block_invoke;
    v47[3] = &unk_278D7AC18;
    v48 = cellCopy;
    v27 = effectCopy;
    v49 = v27;
    [previewManager previewForEffect:jtEffect4 atSize:staticPreviewOptions options:v47 completion:{v23, v25}];

    [(CFXEffectPickerView *)self updatePreviewEffects];
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    previewManager2 = [(CFXEffectPickerView *)self previewManager];
    continousPreviewEffects = [previewManager2 continousPreviewEffects];

    v30 = [continousPreviewEffects countByEnumeratingWithState:&v43 objects:v52 count:16];
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
          objc_enumerationMutation(continousPreviewEffects);
        }

        v34 = *(*(&v43 + 1) + 8 * v33);
        jtEffect5 = [v27 jtEffect];

        if (jtEffect5 == v34)
        {
          break;
        }

        if (v31 == ++v33)
        {
          v31 = [continousPreviewEffects countByEnumeratingWithState:&v43 objects:v52 count:16];
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

      previewManager3 = [(CFXEffectPickerView *)self previewManager];
      continousPreviewEffects2 = [previewManager3 continousPreviewEffects];
      continousPreviewEffects = [continousPreviewEffects2 mutableCopy];

      jtEffect6 = [v27 jtEffect];
      [continousPreviewEffects addObject:jtEffect6];

      previewManager4 = [(CFXEffectPickerView *)self previewManager];
      [previewManager4 setContinousPreviewEffects:continousPreviewEffects];

      v40 = JFXLog_pickerUI();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        jtEffect7 = [v27 jtEffect];
        accessibilityName2 = [jtEffect7 accessibilityName];
        *buf = 138412290;
        v51 = accessibilityName2;
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

- (void)effectPreviewManager:(id)manager didUpdateContinousPreviewsForEffectIDs:(id)ds
{
  dsCopy = ds;
  previewManager = [(CFXEffectPickerView *)self previewManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __83__CFXEffectPickerView_effectPreviewManager_didUpdateContinousPreviewsForEffectIDs___block_invoke;
  v7[3] = &unk_278D7AC40;
  v7[4] = self;
  [previewManager continousPreviewsForEffectIDs:dsCopy completion:v7];
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

- (void)didResizeCollectionViewToSize:(CGSize)size
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