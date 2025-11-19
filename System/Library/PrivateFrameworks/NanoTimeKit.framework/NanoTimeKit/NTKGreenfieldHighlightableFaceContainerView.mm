@interface NTKGreenfieldHighlightableFaceContainerView
+ (id)_createFaceForDisplayingFrom:(id)a3;
- (NTKGreenfieldHighlightableFaceContainerView)initWithFace:(id)a3;
- (void)_toggleHighlight:(BOOL)a3 forComplicationWrapperViewAtSlot:(id)a4;
- (void)_updateTemplateForSlot:(id)a3;
- (void)layoutSubviews;
- (void)setComplicationDisplayViewState:(int64_t)a3 forSlot:(id)a4;
- (void)setTemplate:(id)a3 forSlot:(id)a4;
@end

@implementation NTKGreenfieldHighlightableFaceContainerView

- (NTKGreenfieldHighlightableFaceContainerView)initWithFace:(id)a3
{
  v5 = a3;
  v6 = [NTKGreenfieldHighlightableFaceContainerView _createFaceForDisplayingFrom:v5];
  v7 = [NTKFaceViewController alloc];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __60__NTKGreenfieldHighlightableFaceContainerView_initWithFace___block_invoke;
  v29[3] = &unk_27877FC60;
  v8 = v5;
  v30 = v8;
  v9 = [(NTKFaceViewController *)v7 initWithFace:v6 configuration:v29];
  v10 = [(NTKFaceViewController *)v9 faceView];
  [v10 bounds];
  v28.receiver = self;
  v28.super_class = NTKGreenfieldHighlightableFaceContainerView;
  v11 = [(NTKGreenfieldHighlightableFaceContainerView *)&v28 initWithFrame:?];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_originalFace, a3);
    objc_storeStrong(&v12->_faceViewController, v9);
    [(NTKGreenfieldHighlightableFaceContainerView *)v12 addSubview:v10];
    v13 = objc_alloc(MEMORY[0x277D75D18]);
    [v10 bounds];
    v14 = [v13 initWithFrame:?];
    overlayView = v12->_overlayView;
    v12->_overlayView = v14;

    v16 = v12->_overlayView;
    v17 = [MEMORY[0x277D75348] blackColor];
    [(UIView *)v16 setBackgroundColor:v17];

    [(UIView *)v12->_overlayView setAlpha:0.8];
    [(UIView *)v12->_overlayView setHidden:1];
    [(NTKGreenfieldHighlightableFaceContainerView *)v12 addSubview:v12->_overlayView];
    v18 = objc_alloc(MEMORY[0x277D75D18]);
    [v10 bounds];
    v19 = [v18 initWithFrame:?];
    highlightedDisplaysContainerView = v12->_highlightedDisplaysContainerView;
    v12->_highlightedDisplaysContainerView = v19;

    [(NTKGreenfieldHighlightableFaceContainerView *)v12 addSubview:v12->_highlightedDisplaysContainerView];
    v21 = [MEMORY[0x277CBEB58] set];
    highlightedSlots = v12->_highlightedSlots;
    v12->_highlightedSlots = v21;

    v23 = [MEMORY[0x277CBEB38] dictionary];
    highlightedSlotToDisplayWrapperViewMapping = v12->_highlightedSlotToDisplayWrapperViewMapping;
    v12->_highlightedSlotToDisplayWrapperViewMapping = v23;

    v25 = [MEMORY[0x277CBEB38] dictionary];
    slotToTemplateMapping = v12->_slotToTemplateMapping;
    v12->_slotToTemplateMapping = v25;

    [(NTKGreenfieldHighlightableFaceContainerView *)v12 setUserInteractionEnabled:0];
  }

  return v12;
}

void __60__NTKGreenfieldHighlightableFaceContainerView_initWithFace___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  [v8 setDataMode:3];
  [v8 setShouldShowSnapshot:0];
  [v8 setShowsCanonicalContent:1];
  [v8 setShouldUseSampleTemplate:1];
  v3 = [*(a1 + 32) device];
  if ([v3 deviceCategory] != 1)
  {
    [v3 screenCornerRadius];
    v5 = v4;
    v6 = [v8 faceView];
    [v6 _setContinuousCornerRadius:v5];

    v7 = [v8 faceView];
    [v7 setClipsToBounds:1];
  }
}

- (void)setTemplate:(id)a3 forSlot:(id)a4
{
  slotToTemplateMapping = self->_slotToTemplateMapping;
  v7 = a4;
  [(NSMutableDictionary *)slotToTemplateMapping setObject:a3 forKeyedSubscript:v7];
  [(NTKGreenfieldHighlightableFaceContainerView *)self _updateTemplateForSlot:v7];
}

- (void)setComplicationDisplayViewState:(int64_t)a3 forSlot:(id)a4
{
  v19 = a4;
  v6 = [(NTKFaceViewController *)self->_faceViewController face];
  v7 = [(NTKFace *)self->_originalFace complicationForSlot:v19];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v9 = [v8 complication];
    if ([v9 complicationType] == 31 || objc_msgSend(v9, "complicationType") == 56)
    {
      v10 = [v8 complication];
      v11 = [NTKGreenfieldPlaceholderComplication placeholderWithComplication:v10];

      v8 = v10;
    }

    else
    {
      v11 = v9;
    }

    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v6 preferredComplicationFamilyForComplication:v7 withSlot:v19];
    v13 = +[NTKBundleComplicationManager sharedManager];
    v14 = [v6 device];
    v15 = [v13 dataSourceClassForBundleComplication:v7 withFamily:v12 andDevice:v14 factorInMigration:1];

    if (!v15)
    {
      v11 = [NTKGreenfieldPlaceholderComplication placeholderWithComplication:v7];
LABEL_10:

      v7 = v11;
    }
  }

  if (a3 == 2)
  {
    [(NSMutableSet *)self->_highlightedSlots addObject:v19];
    [v6 setComplication:v7 forSlot:v19];
    [(NTKGreenfieldHighlightableFaceContainerView *)self _updateTemplateForSlot:v19];
    v16 = self;
    v17 = 1;
  }

  else
  {
    if (a3 == 1)
    {
      [(NTKGreenfieldHighlightableFaceContainerView *)self _toggleHighlight:0 forComplicationWrapperViewAtSlot:v19];
      v18 = +[NTKComplication nullComplication];
      [v6 setComplication:v18 forSlot:v19];

      goto LABEL_18;
    }

    if (a3)
    {
      goto LABEL_18;
    }

    [(NSMutableSet *)self->_highlightedSlots removeObject:v19];
    [v6 setComplication:v7 forSlot:v19];
    [(NTKGreenfieldHighlightableFaceContainerView *)self _updateTemplateForSlot:v19];
    v16 = self;
    v17 = 0;
  }

  [(NTKGreenfieldHighlightableFaceContainerView *)v16 _toggleHighlight:v17 forComplicationWrapperViewAtSlot:v19];
LABEL_18:
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = NTKGreenfieldHighlightableFaceContainerView;
  [(NTKGreenfieldHighlightableFaceContainerView *)&v8 layoutSubviews];
  v3 = [(NTKFaceViewController *)self->_faceViewController faceView];
  [v3 layoutComplicationViews];
  highlightedSlotToDisplayWrapperViewMapping = self->_highlightedSlotToDisplayWrapperViewMapping;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__NTKGreenfieldHighlightableFaceContainerView_layoutSubviews__block_invoke;
  v6[3] = &unk_278786F38;
  v7 = v3;
  v5 = v3;
  [(NSMutableDictionary *)highlightedSlotToDisplayWrapperViewMapping enumerateKeysAndObjectsUsingBlock:v6];
}

void __61__NTKGreenfieldHighlightableFaceContainerView_layoutSubviews__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v8 = [v5 normalComplicationDisplayWrapperForSlot:a2];
  v7 = *(a1 + 32);
  [v8 bounds];
  [v7 convertRect:v8 fromView:?];
  [v6 setFrame:?];
}

- (void)_updateTemplateForSlot:(id)a3
{
  v7 = a3;
  v4 = [(NTKFaceViewController *)self->_faceViewController faceView];
  v5 = [v4 normalComplicationDisplayWrapperForSlot:v7];
  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_slotToTemplateMapping objectForKeyedSubscript:v7];
    if (v6)
    {
      [v5 setComplicationTemplate:v6 reason:0 animation:0];
    }
  }
}

- (void)_toggleHighlight:(BOOL)a3 forComplicationWrapperViewAtSlot:(id)a4
{
  v4 = a3;
  v19 = a4;
  v6 = [(NTKFaceViewController *)self->_faceViewController faceView];
  [v6 setNeedsLayout];
  [v6 layoutIfNeeded];
  v7 = [(NTKFaceViewController *)self->_faceViewController face];
  v8 = [v6 normalComplicationDisplayWrapperForSlot:v19];
  v9 = v8;
  if (v8)
  {
    [v8 setHidden:0];
    if (v4)
    {
      v10 = [v7 complicationForSlot:v19];
      v11 = [NTKFaceViewController _controllerForComplication:v10 face:v7 slot:v19];
      v12 = [NTKFaceViewController _createNormalDisplayForComplicationController:v11 slot:v19 face:v7 faceView:v6];
      [v6 configureComplicationViewDisplayWrapper:v12 forSlot:v19];
      v13 = [(NSMutableDictionary *)self->_slotToTemplateMapping objectForKeyedSubscript:v19];
      [v12 setComplicationTemplate:v13 reason:0 animation:0];

      v14 = [v12 display];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v16 = [v12 display];
        v17 = [MEMORY[0x277D75348] whiteColor];
        [v16 setBezelTextColor:v17];
      }

      [(NSMutableDictionary *)self->_highlightedSlotToDisplayWrapperViewMapping setObject:v12 forKeyedSubscript:v19];
      [(UIView *)self->_highlightedDisplaysContainerView addSubview:v12];
      [(NTKGreenfieldHighlightableFaceContainerView *)self setNeedsLayout];
    }

    else
    {
      v10 = [(NSMutableDictionary *)self->_highlightedSlotToDisplayWrapperViewMapping objectForKeyedSubscript:v19];
      [v10 removeFromSuperview];
      [(NSMutableDictionary *)self->_highlightedSlotToDisplayWrapperViewMapping setObject:0 forKeyedSubscript:v19];
    }

    v18 = [(NSMutableDictionary *)self->_highlightedSlotToDisplayWrapperViewMapping count]== 0;
    [(UIView *)self->_overlayView setHidden:v18];
    [(UIView *)self->_highlightedDisplaysContainerView setHidden:v18];
  }
}

+ (id)_createFaceForDisplayingFrom:(id)a3
{
  v3 = [a3 deepCopy];
  [v3 toggleComplicationChangeObservation:0];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __76__NTKGreenfieldHighlightableFaceContainerView__createFaceForDisplayingFrom___block_invoke;
  v6[3] = &unk_278781568;
  v4 = v3;
  v7 = v4;
  [v4 enumerateComplicationSlotsWithBlock:v6];

  return v4;
}

void __76__NTKGreenfieldHighlightableFaceContainerView__createFaceForDisplayingFrom___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [*(a1 + 32) complicationForSlot:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [v4 complication];

    if (v5)
    {
      v6 = [v4 complication];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v8 = [v4 complication];
        v9 = [NTKGreenfieldPlaceholderComplication placeholderWithComplication:v8];

        v10 = *(a1 + 32);
      }

      else
      {
        v11 = *(a1 + 32);
        v9 = [v4 complication];
        v10 = v11;
      }

      [v10 setComplication:v9 forSlot:v12];
    }
  }
}

@end