@interface HPSSpatialProfileSingleStepPearlMovieLoopView
- (HPSSpatialProfileSingleStepPearlMovieLoopView)initWithFrame:(CGRect)frame;
@end

@implementation HPSSpatialProfileSingleStepPearlMovieLoopView

- (HPSSpatialProfileSingleStepPearlMovieLoopView)initWithFrame:(CGRect)frame
{
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 URLForResource:@"HRTF_Tutorial_A" withExtension:@"mov"];
  v8.receiver = self;
  v8.super_class = HPSSpatialProfileSingleStepPearlMovieLoopView;
  v6 = [(HPSMovieLoopPlayer *)&v8 initWithFrame:v5 urlForResource:0.0, 0.0, 250.0, 144.0];

  return v6;
}

@end