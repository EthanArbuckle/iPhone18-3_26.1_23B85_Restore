@interface HPSSpatialProfileSingleStepPearlEnrollView
- (id)crossHairs;
- (void)layoutSubviews;
- (void)setAlpha:(double)a3;
@end

@implementation HPSSpatialProfileSingleStepPearlEnrollView

- (id)crossHairs
{
  enrollmentCustomCrossHairs = self->_enrollmentCustomCrossHairs;
  if (!enrollmentCustomCrossHairs)
  {
    v4 = [HPSSpatialProfileSingleStepCrossHairs alloc];
    v5 = [(HPSSpatialProfileSingleStepCrossHairs *)v4 initWithView:self view:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    v6 = self->_enrollmentCustomCrossHairs;
    self->_enrollmentCustomCrossHairs = v5;

    enrollmentCustomCrossHairs = self->_enrollmentCustomCrossHairs;
  }

  return enrollmentCustomCrossHairs;
}

- (void)layoutSubviews
{
  if (_os_feature_enabled_impl())
  {
    v3 = [(BKUIPearlEnrollView *)self tutorialMovieView];

    if (!v3)
    {
      v4 = [(BKUIPearlEnrollView *)self tutorialMovieView];
      [v4 removeFromSuperview];

      v5 = [HPSSpatialProfileSingleStepPearlMovieLoopView alloc];
      v6 = [(HPSSpatialProfileSingleStepPearlMovieLoopView *)v5 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
      [(BKUIPearlEnrollView *)self setTutorialMovieView:v6];

      v7 = [(BKUIPearlEnrollView *)self tutorialMovieView];
      [(BKUIPearlEnrollView *)self setTutorialMovieView:v7];

      v8 = [(BKUIPearlEnrollView *)self tutorialMovieView];
      [(HPSSpatialProfileSingleStepPearlEnrollView *)self addSubview:v8];

      v9 = [(BKUIPearlEnrollView *)self tutorialMovieView];
      [v9 load];
    }
  }

  v10 = [(BKUIPearlEnrollView *)self tutorialMovieView];
  v11 = [v10 layer];
  [v11 setMasksToBounds:0];

  v12 = [(BKUIPearlEnrollView *)self tutorialMovieView];
  v13 = [v12 layer];
  [v13 setCornerRadius:0.0];

  v14.receiver = self;
  v14.super_class = HPSSpatialProfileSingleStepPearlEnrollView;
  [(BKUIPearlEnrollView *)&v14 layoutSubviews];
}

- (void)setAlpha:(double)a3
{
  v6.receiver = self;
  v6.super_class = HPSSpatialProfileSingleStepPearlEnrollView;
  [(HPSSpatialProfileSingleStepPearlEnrollView *)&v6 setAlpha:?];
  v5 = [(BKUIPearlEnrollView *)self tutorialMovieView];
  [v5 setAlpha:a3];
}

@end