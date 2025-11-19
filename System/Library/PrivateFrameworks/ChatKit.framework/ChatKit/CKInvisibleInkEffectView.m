@interface CKInvisibleInkEffectView
+ (void)initialize;
- (CKInvisibleInkEffectView)initWithFrame:(CGRect)a3;
- (CKInvisibleInkEffectViewDelegate)delegate;
- (void)invisibleInkEffectCoverageTrackerDidUncover:(id)a3;
- (void)layoutSubviews;
- (void)reset;
@end

@implementation CKInvisibleInkEffectView

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [MEMORY[0x1E695E000] standardUserDefaults];
    v4 = [v2 objectForKey:@"DebugInvisibleInkUpdateInterval"];

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

- (CKInvisibleInkEffectView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = CKInvisibleInkEffectView;
  v3 = [(CKInvisibleInkEffectView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [CKInvisibleInkEffectCoverageTracker alloc];
    [(CKInvisibleInkEffectView *)v3 bounds];
    v7 = [(CKInvisibleInkEffectCoverageTracker *)v4 initWithSize:v5 touchLifetime:v6, 3.0];
    [(CKInvisibleInkEffectView *)v3 setCoverageTracker:v7];

    v8 = [(CKInvisibleInkEffectView *)v3 coverageTracker];
    [v8 setDelegate:v3];
  }

  return v3;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = CKInvisibleInkEffectView;
  [(CKInvisibleInkEffectView *)&v6 layoutSubviews];
  v3 = [(CKInvisibleInkEffectView *)self coverageTracker];
  [(CKInvisibleInkEffectView *)self bounds];
  [v3 setSize:{v4, v5}];
}

- (void)reset
{
  v2 = [(CKInvisibleInkEffectView *)self coverageTracker];
  [v2 reset];
}

- (void)invisibleInkEffectCoverageTrackerDidUncover:(id)a3
{
  v4 = [(CKInvisibleInkEffectView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CKInvisibleInkEffectView *)self delegate];
    [v6 invisibleInkEffectViewWasUncovered:self];
  }
}

- (CKInvisibleInkEffectViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end