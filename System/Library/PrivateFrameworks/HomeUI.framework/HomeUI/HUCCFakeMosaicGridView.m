@interface HUCCFakeMosaicGridView
- (CGRect)contentBounds;
- (HUCCFakeMosaicGridView)initWithFrame:(CGRect)a3;
- (HUProvidesMosaicFrames)frameDelegate;
- (void)layoutSublayersOfLayer:(id)a3;
@end

@implementation HUCCFakeMosaicGridView

- (HUCCFakeMosaicGridView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = HUCCFakeMosaicGridView;
  v3 = [(HUCCFakeMosaicGridView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    fakeCellLayers = v3->_fakeCellLayers;
    v3->_fakeCellLayers = v4;

    [(HUCCFakeMosaicGridView *)v3 setNeedsDisplayOnBoundsChange:1];
  }

  return v3;
}

- (void)layoutSublayersOfLayer:(id)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 bounds];
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

  [v4 bounds];
  [(HUCCFakeMosaicGridView *)self setContentBounds:?];
  v17 = [(HUCCFakeMosaicGridView *)self frameDelegate];

  if (v17)
  {
    v18 = [(HUCCFakeMosaicGridView *)self frameDelegate];
    v19 = [v18 currentMosaicFrames];

    if (v19)
    {
      v20 = v19;
      if ([v19 count] > 1)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    v19 = 0;
  }

  v21 = [(HUCCFakeMosaicGridView *)self mosaicLayoutGeometry];
  [(HUCCFakeMosaicGridView *)self contentBounds];
  v20 = [HUMosaicLayoutHelper fakeFramesForGeometry:v21 inBounds:?];

LABEL_8:
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v22 = [(HUCCFakeMosaicGridView *)self fakeCellLayers];
  v23 = [v22 countByEnumeratingWithState:&v50 objects:v55 count:16];
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
          objc_enumerationMutation(v22);
        }

        [*(*(&v50 + 1) + 8 * v26++) removeFromSuperlayer];
      }

      while (v24 != v26);
      v24 = [v22 countByEnumeratingWithState:&v50 objects:v55 count:16];
    }

    while (v24);
  }

  v27 = [(HUCCFakeMosaicGridView *)self fakeCellLayers];
  [v27 removeAllObjects];

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
        v41 = [MEMORY[0x277CD9ED0] layer];
        v42 = [MEMORY[0x277D75348] systemWhiteColor];
        [v41 setBackgroundColor:{objc_msgSend(v42, "CGColor")}];

        CCUICompactModuleContinuousCornerRadius();
        [v41 setCornerRadius:?];
        LODWORD(v43) = 1025758986;
        [v41 setOpacity:v43];
        [v41 setFrame:{v34, v36, v38, v40}];
        v44 = [(HUCCFakeMosaicGridView *)self layer];
        [v44 addSublayer:v41];

        v45 = [(HUCCFakeMosaicGridView *)self fakeCellLayers];
        [v45 addObject:v41];

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