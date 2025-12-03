@interface CAMPreviewAlignmentGuide
- (CAMPreviewAlignmentGuide)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)previewAlignmentModelDidChangeOpacity:(id)opacity;
@end

@implementation CAMPreviewAlignmentGuide

- (CAMPreviewAlignmentGuide)initWithFrame:(CGRect)frame
{
  v22.receiver = self;
  v22.super_class = CAMPreviewAlignmentGuide;
  v3 = [(CAMPreviewAlignmentGuide *)&v22 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CAMPreviewAlignmentGuide *)v3 setUserInteractionEnabled:0];
    v5 = objc_alloc_init(CAMPreviewAlignmentModel);
    alignmentModel = v4->_alignmentModel;
    v4->_alignmentModel = v5;

    [(CAMPreviewAlignmentModel *)v4->_alignmentModel setObserver:v4];
    v7 = objc_alloc_init(CAMLevelCrosshair);
    guidanceCrosshair = v4->__guidanceCrosshair;
    v4->__guidanceCrosshair = v7;

    [(CAMLevelCrosshair *)v4->__guidanceCrosshair setHighlighted:1];
    [(CAMPreviewAlignmentGuide *)v4 addSubview:v4->__guidanceCrosshair];
    v9 = objc_alloc_init(CAMLevelCrosshair);
    targetCrosshair = v4->__targetCrosshair;
    v4->__targetCrosshair = v9;

    [(CAMPreviewAlignmentGuide *)v4 addSubview:v4->__targetCrosshair];
    layer = [(CAMLevelCrosshair *)v4->__targetCrosshair layer];
    v12 = *(MEMORY[0x1E69792E8] + 48);
    v17[2] = *(MEMORY[0x1E69792E8] + 32);
    v17[3] = v12;
    v17[4] = *(MEMORY[0x1E69792E8] + 64);
    v13 = *(MEMORY[0x1E69792E8] + 80);
    v14 = *(MEMORY[0x1E69792E8] + 16);
    v17[0] = *MEMORY[0x1E69792E8];
    v17[1] = v14;
    v18 = v13;
    v19 = 0xBF7B4E81B4E81B4FLL;
    v15 = *(MEMORY[0x1E69792E8] + 112);
    v20 = *(MEMORY[0x1E69792E8] + 96);
    v21 = v15;
    [layer setSublayerTransform:v17];
  }

  return v4;
}

- (void)layoutSubviews
{
  [(CAMPreviewAlignmentGuide *)self bounds];
  alignmentModel = [(CAMPreviewAlignmentGuide *)self alignmentModel];
  v4 = alignmentModel;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  if (alignmentModel)
  {
    [alignmentModel alignmentTransform];
  }

  isAligned = [v4 isAligned];
  UIRectCenteredIntegralRectScale();
  UIRectGetCenter();
  v7 = v6;
  v9 = v8;
  _guidanceCrosshair = [(CAMPreviewAlignmentGuide *)self _guidanceCrosshair];
  layer = [_guidanceCrosshair layer];

  [layer setBounds:{0.0, 0.0, 60.0, 60.0}];
  [layer setPosition:{v7, v9}];
  v13[4] = v18;
  v13[5] = v19;
  v13[6] = v20;
  v13[7] = v21;
  v13[0] = v14;
  v13[1] = v15;
  v13[2] = v16;
  v13[3] = v17;
  [layer setTransform:v13];
  _targetCrosshair = [(CAMPreviewAlignmentGuide *)self _targetCrosshair];
  [_targetCrosshair setBounds:{0.0, 0.0, 60.0, 60.0}];
  [_targetCrosshair setCenter:{v7, v9}];
  [_targetCrosshair setHighlighted:isAligned];
}

- (void)previewAlignmentModelDidChangeOpacity:(id)opacity
{
  opacityCopy = opacity;
  [opacityCopy opacity];
  v6 = v5;
  _guidanceCrosshair = [(CAMPreviewAlignmentGuide *)self _guidanceCrosshair];
  [_guidanceCrosshair setAlpha:v6];

  [opacityCopy opacity];
  v9 = v8;

  _targetCrosshair = [(CAMPreviewAlignmentGuide *)self _targetCrosshair];
  [_targetCrosshair setAlpha:v9];
}

@end