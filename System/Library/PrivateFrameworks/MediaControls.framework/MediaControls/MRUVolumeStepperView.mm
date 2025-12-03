@interface MRUVolumeStepperView
- (MRUVolumeStepperView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setContinuousButtonCornerRadius:(double)radius;
@end

@implementation MRUVolumeStepperView

- (MRUVolumeStepperView)initWithFrame:(CGRect)frame
{
  v23.receiver = self;
  v23.super_class = MRUVolumeStepperView;
  v3 = [(MRUVolumeStepperView *)&v23 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    controlCenterModuleBackgroundMaterial = [MEMORY[0x1E6997268] controlCenterModuleBackgroundMaterial];
    increaseMaterialView = v3->_increaseMaterialView;
    v3->_increaseMaterialView = controlCenterModuleBackgroundMaterial;

    [(UIView *)v3->_increaseMaterialView setUserInteractionEnabled:1];
    [(UIView *)v3->_increaseMaterialView setClipsToBounds:1];
    [(MRUVolumeStepperView *)v3 addSubview:v3->_increaseMaterialView];
    controlCenterModuleBackgroundMaterial2 = [MEMORY[0x1E6997268] controlCenterModuleBackgroundMaterial];
    decreaseMaterialView = v3->_decreaseMaterialView;
    v3->_decreaseMaterialView = controlCenterModuleBackgroundMaterial2;

    [(UIView *)v3->_decreaseMaterialView setUserInteractionEnabled:1];
    [(UIView *)v3->_decreaseMaterialView setClipsToBounds:1];
    [(MRUVolumeStepperView *)v3 addSubview:v3->_decreaseMaterialView];
    v8 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:2 scale:24.0];
    v9 = objc_alloc(MEMORY[0x1E6997240]);
    v10 = *MEMORY[0x1E695F058];
    v11 = *(MEMORY[0x1E695F058] + 8);
    v12 = *(MEMORY[0x1E695F058] + 16);
    v13 = *(MEMORY[0x1E695F058] + 24);
    v14 = [v9 initWithFrame:{*MEMORY[0x1E695F058], v11, v12, v13}];
    increaseButton = v3->_increaseButton;
    v3->_increaseButton = v14;

    v16 = +[MRUAssetsProvider volumeRelativePlus];
    v17 = [v16 imageWithSymbolConfiguration:v8];
    [(CCUIButtonModuleView *)v3->_increaseButton setGlyphImage:v17];

    [(UIView *)v3->_increaseMaterialView addSubview:v3->_increaseButton];
    v18 = [objc_alloc(MEMORY[0x1E6997240]) initWithFrame:{v10, v11, v12, v13}];
    decreaseButton = v3->_decreaseButton;
    v3->_decreaseButton = v18;

    v20 = +[MRUAssetsProvider volumeRelativeMinus];
    v21 = [v20 imageWithSymbolConfiguration:v8];
    [(CCUIButtonModuleView *)v3->_decreaseButton setGlyphImage:v21];

    [(UIView *)v3->_decreaseMaterialView addSubview:v3->_decreaseButton];
  }

  return v3;
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = MRUVolumeStepperView;
  [(MRUVolumeStepperView *)&v9 layoutSubviews];
  [(MRUVolumeStepperView *)self bounds];
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  v7 = CGRectGetWidth(v10);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  v8 = CGRectGetHeight(v11);
  [(UIView *)self->_increaseMaterialView setFrame:0.0, 0.0, v7, v7];
  [(UIView *)self->_increaseMaterialView bounds];
  [(CCUIButtonModuleView *)self->_increaseButton setFrame:?];
  [(UIView *)self->_decreaseMaterialView setFrame:0.0, v8 - v7, v7, v7];
  [(UIView *)self->_decreaseMaterialView bounds];
  [(CCUIButtonModuleView *)self->_decreaseButton setFrame:?];
}

- (void)setContinuousButtonCornerRadius:(double)radius
{
  [(UIView *)self->_increaseMaterialView _setContinuousCornerRadius:?];
  decreaseMaterialView = self->_decreaseMaterialView;

  [(UIView *)decreaseMaterialView _setContinuousCornerRadius:radius];
}

@end