@interface HPSSpatialProfileSingleStepPearlEnrollView
- (id)crossHairs;
- (void)layoutSubviews;
- (void)setAlpha:(double)alpha;
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
    tutorialMovieView = [(BKUIPearlEnrollView *)self tutorialMovieView];

    if (!tutorialMovieView)
    {
      tutorialMovieView2 = [(BKUIPearlEnrollView *)self tutorialMovieView];
      [tutorialMovieView2 removeFromSuperview];

      v5 = [HPSSpatialProfileSingleStepPearlMovieLoopView alloc];
      v6 = [(HPSSpatialProfileSingleStepPearlMovieLoopView *)v5 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
      [(BKUIPearlEnrollView *)self setTutorialMovieView:v6];

      tutorialMovieView3 = [(BKUIPearlEnrollView *)self tutorialMovieView];
      [(BKUIPearlEnrollView *)self setTutorialMovieView:tutorialMovieView3];

      tutorialMovieView4 = [(BKUIPearlEnrollView *)self tutorialMovieView];
      [(HPSSpatialProfileSingleStepPearlEnrollView *)self addSubview:tutorialMovieView4];

      tutorialMovieView5 = [(BKUIPearlEnrollView *)self tutorialMovieView];
      [tutorialMovieView5 load];
    }
  }

  tutorialMovieView6 = [(BKUIPearlEnrollView *)self tutorialMovieView];
  layer = [tutorialMovieView6 layer];
  [layer setMasksToBounds:0];

  tutorialMovieView7 = [(BKUIPearlEnrollView *)self tutorialMovieView];
  layer2 = [tutorialMovieView7 layer];
  [layer2 setCornerRadius:0.0];

  v14.receiver = self;
  v14.super_class = HPSSpatialProfileSingleStepPearlEnrollView;
  [(BKUIPearlEnrollView *)&v14 layoutSubviews];
}

- (void)setAlpha:(double)alpha
{
  v6.receiver = self;
  v6.super_class = HPSSpatialProfileSingleStepPearlEnrollView;
  [(HPSSpatialProfileSingleStepPearlEnrollView *)&v6 setAlpha:?];
  tutorialMovieView = [(BKUIPearlEnrollView *)self tutorialMovieView];
  [tutorialMovieView setAlpha:alpha];
}

@end