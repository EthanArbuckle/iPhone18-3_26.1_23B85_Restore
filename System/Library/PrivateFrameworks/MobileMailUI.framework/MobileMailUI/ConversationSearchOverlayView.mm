@interface ConversationSearchOverlayView
- (ConversationSearchOverlayView)initWithFrame:(CGRect)frame;
- (void)hide;
- (void)show;
@end

@implementation ConversationSearchOverlayView

- (ConversationSearchOverlayView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = ConversationSearchOverlayView;
  v3 = [(ConversationSearchOverlayView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(ConversationSearchOverlayView *)v3 setBackgroundColor:clearColor];
  }

  return v3;
}

- (void)show
{
  objc_initWeak(&location, self);
  v2 = objc_alloc(MEMORY[0x277D75D40]);
  v4 = MEMORY[0x277D85DD0];
  v5 = 3221225472;
  v6 = __37__ConversationSearchOverlayView_show__block_invoke;
  v7 = &unk_278181470;
  objc_copyWeak(&v8, &location);
  v3 = [v2 initWithDuration:&v4 controlPoint1:0.2 controlPoint2:0.445 animations:{0.05, 0.55, 0.95}];
  [v3 startAnimation];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __37__ConversationSearchOverlayView_show__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [MEMORY[0x277D75348] mailConversationViewFindOverlayColor];
  [WeakRetained setBackgroundColor:v1];
}

- (void)hide
{
  objc_initWeak(&location, self);
  v2 = objc_alloc(MEMORY[0x277D75D40]);
  v4 = MEMORY[0x277D85DD0];
  v5 = 3221225472;
  v6 = __37__ConversationSearchOverlayView_hide__block_invoke;
  v7 = &unk_278181470;
  objc_copyWeak(&v8, &location);
  v3 = [v2 initWithDuration:&v4 controlPoint1:0.2 controlPoint2:0.445 animations:{0.05, 0.55, 0.95}];
  [v3 startAnimation];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __37__ConversationSearchOverlayView_hide__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [MEMORY[0x277D75348] clearColor];
  [WeakRetained setBackgroundColor:v1];
}

@end