@interface CKInvisibleInkEffectView
+ (void)initialize;
- (CKInvisibleInkEffectView)initWithFrame:(CGRect)frame;
- (CKInvisibleInkEffectViewDelegate)delegate;
- (void)invisibleInkEffectCoverageTrackerDidUncover:(id)uncover;
- (void)layoutSubviews;
- (void)reset;
@end

@implementation CKInvisibleInkEffectView

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v4 = [standardUserDefaults objectForKey:@"DebugInvisibleInkUpdateInterval"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 doubleValue];
    }

    else
    {
      v3 = 0x3FA0842108421084;
    }

    updateInterval = v3;
  }
}

- (CKInvisibleInkEffectView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = CKInvisibleInkEffectView;
  v3 = [(CKInvisibleInkEffectView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [CKInvisibleInkEffectCoverageTracker alloc];
    [(CKInvisibleInkEffectView *)v3 bounds];
    v7 = [(CKInvisibleInkEffectCoverageTracker *)v4 initWithSize:v5 touchLifetime:v6, 3.0];
    [(CKInvisibleInkEffectView *)v3 setCoverageTracker:v7];

    coverageTracker = [(CKInvisibleInkEffectView *)v3 coverageTracker];
    [coverageTracker setDelegate:v3];
  }

  return v3;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = CKInvisibleInkEffectView;
  [(CKInvisibleInkEffectView *)&v6 layoutSubviews];
  coverageTracker = [(CKInvisibleInkEffectView *)self coverageTracker];
  [(CKInvisibleInkEffectView *)self bounds];
  [coverageTracker setSize:{v4, v5}];
}

- (void)reset
{
  coverageTracker = [(CKInvisibleInkEffectView *)self coverageTracker];
  [coverageTracker reset];
}

- (void)invisibleInkEffectCoverageTrackerDidUncover:(id)uncover
{
  delegate = [(CKInvisibleInkEffectView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CKInvisibleInkEffectView *)self delegate];
    [delegate2 invisibleInkEffectViewWasUncovered:self];
  }
}

- (CKInvisibleInkEffectViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end