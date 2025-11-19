@interface BrowserToolbar
- (BrowserToolbar)initWithPlacement:(int64_t)a3 hideBackground:(BOOL)a4;
- (double)alpha;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation BrowserToolbar

- (BrowserToolbar)initWithPlacement:(int64_t)a3 hideBackground:(BOOL)a4
{
  v8.receiver = self;
  v8.super_class = BrowserToolbar;
  v4 = [(_SFToolbar *)&v8 initWithPlacement:a3 hideBackground:a4];
  if (v4)
  {
    v5 = [MEMORY[0x277D75348] sf_safariAccentColor];
    [(BrowserToolbar *)v4 setTintColor:v5];

    v6 = v4;
  }

  return v4;
}

- (double)alpha
{
  v3 = [(BrowserToolbar *)self delegate];
  if (!self->_isHitTesting || (objc_opt_respondsToSelector() & 1) == 0 || (v4 = 1.0, ([v3 browserToolbarShouldHitTestAsOpaque:self] & 1) == 0))
  {
    v7.receiver = self;
    v7.super_class = BrowserToolbar;
    [(BrowserToolbar *)&v7 alpha];
    v4 = v5;
  }

  return v4;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  self->_isHitTesting = 1;
  v7.receiver = self;
  v7.super_class = BrowserToolbar;
  v5 = [(BrowserToolbar *)&v7 hitTest:a4 withEvent:a3.x, a3.y];
  self->_isHitTesting = 0;

  return v5;
}

@end