@interface MRUContinuousSliderView
- (void)setGlyphScale:(double)a3;
- (void)setImageSymbolConfiguration:(id)a3;
- (void)setOutputDeviceAsset:(id)a3 state:(id)a4 animated:(BOOL)a5;
@end

@implementation MRUContinuousSliderView

- (void)setGlyphScale:(double)a3
{
  v5.receiver = self;
  v5.super_class = MRUContinuousSliderView;
  [(CCUIBaseSliderView *)&v5 setGlyphScale:?];
  [(MRUContinuousSliderView *)self setReferenceGlyphScale:a3];
}

- (void)setImageSymbolConfiguration:(id)a3
{
  v7 = a3;
  if (![(UIImageSymbolConfiguration *)self->_imageSymbolConfiguration isEqualToConfiguration:?])
  {
    objc_storeStrong(&self->_imageSymbolConfiguration, a3);
    v5 = [(MRUOutputDeviceAsset *)self->_outputDeviceAsset icon];
    if (v7 && v5)
    {
      v6 = [v5 imageByApplyingSymbolConfiguration:v7];
      [(CCUIBaseSliderView *)self setGlyphImage:v6];

      [(MRUContinuousSliderView *)self setNeedsLayout];
      [(MRUContinuousSliderView *)self layoutIfNeeded];
    }
  }
}

- (void)setOutputDeviceAsset:(id)a3 state:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v10 = a4;
  if (v5)
  {
    v11 = [v9 isEqual:self->_outputDeviceAsset] ^ 1;
  }

  else
  {
    v11 = 0;
  }

  objc_storeStrong(&self->_outputDeviceAsset, a3);
  v12 = [v9 packageDescription];
  v13 = [v9 icon];
  v14 = v13;
  if (v13 && self->_imageSymbolConfiguration)
  {
    v15 = [v13 imageByApplyingSymbolConfiguration:?];

    v14 = v15;
  }

  if (v11)
  {
    [(MRUContinuousSliderView *)self _removeAllAnimations:1];
    v16 = MEMORY[0x1E69DD250];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __63__MRUContinuousSliderView_setOutputDeviceAsset_state_animated___block_invoke;
    v24[3] = &unk_1E7663CE0;
    v24[4] = self;
    v24[5] = 0x3FE999999999999ALL;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __63__MRUContinuousSliderView_setOutputDeviceAsset_state_animated___block_invoke_2;
    v18[3] = &unk_1E7664358;
    v18[4] = self;
    v19 = v9;
    v20 = v14;
    v21 = v12;
    v22 = v10;
    v23 = 6;
    [v16 _animateUsingSpringWithDuration:6 delay:v24 options:v18 mass:0.3175 stiffness:0.0 damping:1.0 initialVelocity:845.74 animations:58.1632 completion:0.0];
  }

  else
  {
    [(CCUIBaseSliderView *)self setGlyphImage:v14];
    [(CCUIBaseSliderView *)self setGlyphPackageDescription:v12];
    [(CCUIBaseSliderView *)self setGlyphState:v10];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __63__MRUContinuousSliderView_setOutputDeviceAsset_state_animated___block_invoke_4;
    v17[3] = &unk_1E7663898;
    v17[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v17];
  }
}

uint64_t __63__MRUContinuousSliderView_setOutputDeviceAsset_state_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) referenceGlyphScale];
  v3 = v2 * *(a1 + 40);
  v5.receiver = *(a1 + 32);
  v5.super_class = MRUContinuousSliderView;
  objc_msgSendSuper2(&v5, sel_setGlyphScale_, v3);
  return [*(a1 + 32) layoutIfNeeded];
}

uint64_t __63__MRUContinuousSliderView_setOutputDeviceAsset_state_animated___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) outputDeviceAsset];
  v3 = *(a1 + 40);

  if (v2 == v3)
  {
    [*(a1 + 32) setGlyphImage:*(a1 + 48)];
    [*(a1 + 32) setGlyphPackageDescription:*(a1 + 56)];
    [*(a1 + 32) setGlyphState:*(a1 + 64)];
    [*(a1 + 32) layoutIfNeeded];
  }

  v4 = *(a1 + 72);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__MRUContinuousSliderView_setOutputDeviceAsset_state_animated___block_invoke_3;
  v6[3] = &unk_1E7663898;
  v6[4] = *(a1 + 32);
  return [MEMORY[0x1E69DD250] _animateUsingSpringWithDuration:v4 delay:v6 options:0 mass:0.9975 stiffness:0.0 damping:2.0 initialVelocity:300.0 animations:30.0 completion:0.0];
}

uint64_t __63__MRUContinuousSliderView_setOutputDeviceAsset_state_animated___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) referenceGlyphScale];
  v3.receiver = *(a1 + 32);
  v3.super_class = MRUContinuousSliderView;
  objc_msgSendSuper2(&v3, sel_setGlyphScale_);
  return [*(a1 + 32) layoutIfNeeded];
}

uint64_t __63__MRUContinuousSliderView_setOutputDeviceAsset_state_animated___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) referenceGlyphScale];
  v3.receiver = *(a1 + 32);
  v3.super_class = MRUContinuousSliderView;
  objc_msgSendSuper2(&v3, sel_setGlyphScale_);
  return [*(a1 + 32) layoutIfNeeded];
}

@end