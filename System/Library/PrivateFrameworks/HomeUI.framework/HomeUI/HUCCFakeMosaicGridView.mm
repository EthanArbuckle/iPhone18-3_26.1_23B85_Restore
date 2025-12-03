@interface HUCCFakeMosaicGridView
- (CGRect)contentBounds;
- (HUCCFakeMosaicGridView)initWithFrame:(CGRect)frame;
- (HUProvidesMosaicFrames)frameDelegate;
- (void)layoutSublayersOfLayer:(id)layer;
@end

@implementation HUCCFakeMosaicGridView

- (HUCCFakeMosaicGridView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = HUCCFakeMosaicGridView;
  v3 = [(HUCCFakeMosaicGridView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    fakeCellLayers = v3->_fakeCellLayers;
    v3->_fakeCellLayers = array;

    [(HUCCFakeMosaicGridView *)v3 setNeedsDisplayOnBoundsChange:1];
  }

  return v3;
}

- (void)layoutSublayersOfLayer:(id)layer
{
  v56 = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  [layerCopy bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(HUCCFakeMosaicGridView *)self contentBounds];
  v58.origin.x = v13;
  v58.origin.y = v14;
  v58.size.width = v15;
  v58.size.height = v16;
  v57.origin.x = v6;
  v57.origin.y = v8;
  v57.size.width = v10;
  v57.size.height = v12;
  if (CGRectEqualToRect(v57, v58))
  {
    goto LABEL_23;
  }

  [layerCopy bounds];
  [(HUCCFakeMosaicGridView *)self setContentBounds:?];
  frameDelegate = [(HUCCFakeMosaicGridView *)self frameDelegate];

  if (frameDelegate)
  {
    frameDelegate2 = [(HUCCFakeMosaicGridView *)self frameDelegate];
    currentMosaicFrames = [frameDelegate2 currentMosaicFrames];

    if (currentMosaicFrames)
    {
      v20 = currentMosaicFrames;
      if ([currentMosaicFrames count] > 1)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    currentMosaicFrames = 0;
  }

  mosaicLayoutGeometry = [(HUCCFakeMosaicGridView *)self mosaicLayoutGeometry];
  [(HUCCFakeMosaicGridView *)self contentBounds];
  v20 = [HUMosaicLayoutHelper fakeFramesForGeometry:mosaicLayoutGeometry inBounds:?];

LABEL_8:
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  fakeCellLayers = [(HUCCFakeMosaicGridView *)self fakeCellLayers];
  v23 = [fakeCellLayers countByEnumeratingWithState:&v50 objects:v55 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v51;
    do
    {
      v26 = 0;
      do
      {
        if (*v51 != v25)
        {
          objc_enumerationMutation(fakeCellLayers);
        }

        [*(*(&v50 + 1) + 8 * v26++) removeFromSuperlayer];
      }

      while (v24 != v26);
      v24 = [fakeCellLayers countByEnumeratingWithState:&v50 objects:v55 count:16];
    }

    while (v24);
  }

  fakeCellLayers2 = [(HUCCFakeMosaicGridView *)self fakeCellLayers];
  [fakeCellLayers2 removeAllObjects];

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v28 = v20;
  v29 = [v28 countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v47;
    do
    {
      v32 = 0;
      do
      {
        if (*v47 != v31)
        {
          objc_enumerationMutation(v28);
        }

        [*(*(&v46 + 1) + 8 * v32) CGRectValue];
        v34 = v33;
        v36 = v35;
        v38 = v37;
        v40 = v39;
        layer = [MEMORY[0x277CD9ED0] layer];
        systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
        [layer setBackgroundColor:{objc_msgSend(systemWhiteColor, "CGColor")}];

        CCUICompactModuleContinuousCornerRadius();
        [layer setCornerRadius:?];
        LODWORD(v43) = 1025758986;
        [layer setOpacity:v43];
        [layer setFrame:{v34, v36, v38, v40}];
        layer2 = [(HUCCFakeMosaicGridView *)self layer];
        [layer2 addSublayer:layer];

        fakeCellLayers3 = [(HUCCFakeMosaicGridView *)self fakeCellLayers];
        [fakeCellLayers3 addObject:layer];

        ++v32;
      }

      while (v30 != v32);
      v30 = [v28 countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v30);
  }

LABEL_23:
}

- (HUProvidesMosaicFrames)frameDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_frameDelegate);

  return WeakRetained;
}

- (CGRect)contentBounds
{
  x = self->_contentBounds.origin.x;
  y = self->_contentBounds.origin.y;
  width = self->_contentBounds.size.width;
  height = self->_contentBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end