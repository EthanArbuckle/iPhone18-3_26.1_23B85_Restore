@interface NTKGreenfieldHighlightableFaceContainerView
+ (id)_createFaceForDisplayingFrom:(id)from;
- (NTKGreenfieldHighlightableFaceContainerView)initWithFace:(id)face;
- (void)_toggleHighlight:(BOOL)highlight forComplicationWrapperViewAtSlot:(id)slot;
- (void)_updateTemplateForSlot:(id)slot;
- (void)layoutSubviews;
- (void)setComplicationDisplayViewState:(int64_t)state forSlot:(id)slot;
- (void)setTemplate:(id)template forSlot:(id)slot;
@end

@implementation NTKGreenfieldHighlightableFaceContainerView

- (NTKGreenfieldHighlightableFaceContainerView)initWithFace:(id)face
{
  faceCopy = face;
  v6 = [NTKGreenfieldHighlightableFaceContainerView _createFaceForDisplayingFrom:faceCopy];
  v7 = [NTKFaceViewController alloc];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __60__NTKGreenfieldHighlightableFaceContainerView_initWithFace___block_invoke;
  v29[3] = &unk_27877FC60;
  v8 = faceCopy;
  v30 = v8;
  v9 = [(NTKFaceViewController *)v7 initWithFace:v6 configuration:v29];
  faceView = [(NTKFaceViewController *)v9 faceView];
  [faceView bounds];
  v28.receiver = self;
  v28.super_class = NTKGreenfieldHighlightableFaceContainerView;
  v11 = [(NTKGreenfieldHighlightableFaceContainerView *)&v28 initWithFrame:?];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_originalFace, face);
    objc_storeStrong(&v12->_faceViewController, v9);
    [(NTKGreenfieldHighlightableFaceContainerView *)v12 addSubview:faceView];
    v13 = objc_alloc(MEMORY[0x277D75D18]);
    [faceView bounds];
    v14 = [v13 initWithFrame:?];
    overlayView = v12->_overlayView;
    v12->_overlayView = v14;

    v16 = v12->_overlayView;
    blackColor = [MEMORY[0x277D75348] blackColor];
    [(UIView *)v16 setBackgroundColor:blackColor];

    [(UIView *)v12->_overlayView setAlpha:0.8];
    [(UIView *)v12->_overlayView setHidden:1];
    [(NTKGreenfieldHighlightableFaceContainerView *)v12 addSubview:v12->_overlayView];
    v18 = objc_alloc(MEMORY[0x277D75D18]);
    [faceView bounds];
    v19 = [v18 initWithFrame:?];
    highlightedDisplaysContainerView = v12->_highlightedDisplaysContainerView;
    v12->_highlightedDisplaysContainerView = v19;

    [(NTKGreenfieldHighlightableFaceContainerView *)v12 addSubview:v12->_highlightedDisplaysContainerView];
    v21 = [MEMORY[0x277CBEB58] set];
    highlightedSlots = v12->_highlightedSlots;
    v12->_highlightedSlots = v21;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    highlightedSlotToDisplayWrapperViewMapping = v12->_highlightedSlotToDisplayWrapperViewMapping;
    v12->_highlightedSlotToDisplayWrapperViewMapping = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    slotToTemplateMapping = v12->_slotToTemplateMapping;
    v12->_slotToTemplateMapping = dictionary2;

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

- (void)setTemplate:(id)template forSlot:(id)slot
{
  slotToTemplateMapping = self->_slotToTemplateMapping;
  slotCopy = slot;
  [(NSMutableDictionary *)slotToTemplateMapping setObject:template forKeyedSubscript:slotCopy];
  [(NTKGreenfieldHighlightableFaceContainerView *)self _updateTemplateForSlot:slotCopy];
}

- (void)setComplicationDisplayViewState:(int64_t)state forSlot:(id)slot
{
  slotCopy = slot;
  face = [(NTKFaceViewController *)self->_faceViewController face];
  v7 = [(NTKFace *)self->_originalFace complicationForSlot:slotCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    complication = [v8 complication];
    if ([complication complicationType] == 31 || objc_msgSend(complication, "complicationType") == 56)
    {
      complication2 = [v8 complication];
      v11 = [NTKGreenfieldPlaceholderComplication placeholderWithComplication:complication2];

      v8 = complication2;
    }

    else
    {
      v11 = complication;
    }

    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [face preferredComplicationFamilyForComplication:v7 withSlot:slotCopy];
    v13 = +[NTKBundleComplicationManager sharedManager];
    device = [face device];
    v15 = [v13 dataSourceClassForBundleComplication:v7 withFamily:v12 andDevice:device factorInMigration:1];

    if (!v15)
    {
      v11 = [NTKGreenfieldPlaceholderComplication placeholderWithComplication:v7];
LABEL_10:

      v7 = v11;
    }
  }

  if (state == 2)
  {
    [(NSMutableSet *)self->_highlightedSlots addObject:slotCopy];
    [face setComplication:v7 forSlot:slotCopy];
    [(NTKGreenfieldHighlightableFaceContainerView *)self _updateTemplateForSlot:slotCopy];
    selfCopy2 = self;
    v17 = 1;
  }

  else
  {
    if (state == 1)
    {
      [(NTKGreenfieldHighlightableFaceContainerView *)self _toggleHighlight:0 forComplicationWrapperViewAtSlot:slotCopy];
      v18 = +[NTKComplication nullComplication];
      [face setComplication:v18 forSlot:slotCopy];

      goto LABEL_18;
    }

    if (state)
    {
      goto LABEL_18;
    }

    [(NSMutableSet *)self->_highlightedSlots removeObject:slotCopy];
    [face setComplication:v7 forSlot:slotCopy];
    [(NTKGreenfieldHighlightableFaceContainerView *)self _updateTemplateForSlot:slotCopy];
    selfCopy2 = self;
    v17 = 0;
  }

  [(NTKGreenfieldHighlightableFaceContainerView *)selfCopy2 _toggleHighlight:v17 forComplicationWrapperViewAtSlot:slotCopy];
LABEL_18:
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = NTKGreenfieldHighlightableFaceContainerView;
  [(NTKGreenfieldHighlightableFaceContainerView *)&v8 layoutSubviews];
  faceView = [(NTKFaceViewController *)self->_faceViewController faceView];
  [faceView layoutComplicationViews];
  highlightedSlotToDisplayWrapperViewMapping = self->_highlightedSlotToDisplayWrapperViewMapping;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__NTKGreenfieldHighlightableFaceContainerView_layoutSubviews__block_invoke;
  v6[3] = &unk_278786F38;
  v7 = faceView;
  v5 = faceView;
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

- (void)_updateTemplateForSlot:(id)slot
{
  slotCopy = slot;
  faceView = [(NTKFaceViewController *)self->_faceViewController faceView];
  v5 = [faceView normalComplicationDisplayWrapperForSlot:slotCopy];
  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_slotToTemplateMapping objectForKeyedSubscript:slotCopy];
    if (v6)
    {
      [v5 setComplicationTemplate:v6 reason:0 animation:0];
    }
  }
}

- (void)_toggleHighlight:(BOOL)highlight forComplicationWrapperViewAtSlot:(id)slot
{
  highlightCopy = highlight;
  slotCopy = slot;
  faceView = [(NTKFaceViewController *)self->_faceViewController faceView];
  [faceView setNeedsLayout];
  [faceView layoutIfNeeded];
  face = [(NTKFaceViewController *)self->_faceViewController face];
  v8 = [faceView normalComplicationDisplayWrapperForSlot:slotCopy];
  v9 = v8;
  if (v8)
  {
    [v8 setHidden:0];
    if (highlightCopy)
    {
      v10 = [face complicationForSlot:slotCopy];
      v11 = [NTKFaceViewController _controllerForComplication:v10 face:face slot:slotCopy];
      v12 = [NTKFaceViewController _createNormalDisplayForComplicationController:v11 slot:slotCopy face:face faceView:faceView];
      [faceView configureComplicationViewDisplayWrapper:v12 forSlot:slotCopy];
      v13 = [(NSMutableDictionary *)self->_slotToTemplateMapping objectForKeyedSubscript:slotCopy];
      [v12 setComplicationTemplate:v13 reason:0 animation:0];

      display = [v12 display];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        display2 = [v12 display];
        whiteColor = [MEMORY[0x277D75348] whiteColor];
        [display2 setBezelTextColor:whiteColor];
      }

      [(NSMutableDictionary *)self->_highlightedSlotToDisplayWrapperViewMapping setObject:v12 forKeyedSubscript:slotCopy];
      [(UIView *)self->_highlightedDisplaysContainerView addSubview:v12];
      [(NTKGreenfieldHighlightableFaceContainerView *)self setNeedsLayout];
    }

    else
    {
      v10 = [(NSMutableDictionary *)self->_highlightedSlotToDisplayWrapperViewMapping objectForKeyedSubscript:slotCopy];
      [v10 removeFromSuperview];
      [(NSMutableDictionary *)self->_highlightedSlotToDisplayWrapperViewMapping setObject:0 forKeyedSubscript:slotCopy];
    }

    v18 = [(NSMutableDictionary *)self->_highlightedSlotToDisplayWrapperViewMapping count]== 0;
    [(UIView *)self->_overlayView setHidden:v18];
    [(UIView *)self->_highlightedDisplaysContainerView setHidden:v18];
  }
}

+ (id)_createFaceForDisplayingFrom:(id)from
{
  deepCopy = [from deepCopy];
  [deepCopy toggleComplicationChangeObservation:0];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __76__NTKGreenfieldHighlightableFaceContainerView__createFaceForDisplayingFrom___block_invoke;
  v6[3] = &unk_278781568;
  v4 = deepCopy;
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