@interface BrowserToolbar
- (BrowserToolbar)initWithPlacement:(int64_t)placement hideBackground:(BOOL)background;
- (double)alpha;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation BrowserToolbar

- (BrowserToolbar)initWithPlacement:(int64_t)placement hideBackground:(BOOL)background
{
  v8.receiver = self;
  v8.super_class = BrowserToolbar;
  v4 = [(_SFToolbar *)&v8 initWithPlacement:placement hideBackground:background];
  if (v4)
  {
    sf_safariAccentColor = [MEMORY[0x277D75348] sf_safariAccentColor];
    [(BrowserToolbar *)v4 setTintColor:sf_safariAccentColor];

    v6 = v4;
  }

  return v4;
}

- (double)alpha
{
  delegate = [(BrowserToolbar *)self delegate];
  if (!self->_isHitTesting || (objc_opt_respondsToSelector() & 1) == 0 || (v4 = 1.0, ([delegate browserToolbarShouldHitTestAsOpaque:self] & 1) == 0))
  {
    v7.receiver = self;
    v7.super_class = BrowserToolbar;
    [(BrowserToolbar *)&v7 alpha];
    v4 = v5;
  }

  return v4;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  self->_isHitTesting = 1;
  v7.receiver = self;
  v7.super_class = BrowserToolbar;
  v5 = [(BrowserToolbar *)&v7 hitTest:event withEvent:test.x, test.y];
  self->_isHitTesting = 0;

  return v5;
}

@end