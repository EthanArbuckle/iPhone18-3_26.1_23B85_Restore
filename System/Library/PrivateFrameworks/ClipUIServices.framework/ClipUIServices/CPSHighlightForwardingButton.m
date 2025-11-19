@interface CPSHighlightForwardingButton
- (CPSHighlightable)highlightForwardingTarget;
- (void)setHighlightForwardingTarget:(id)a3;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation CPSHighlightForwardingButton

- (void)setHighlightForwardingTarget:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_highlightForwardingTarget);

  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->_highlightForwardingTarget);
    [v5 setHighlighted:0];

    objc_storeWeak(&self->_highlightForwardingTarget, obj);
    [obj setHighlighted:{-[CPSHighlightForwardingButton isHighlighted](self, "isHighlighted")}];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CPSHighlightForwardingButton;
  [(CPSHighlightForwardingButton *)&v5 setHighlighted:a3];
  WeakRetained = objc_loadWeakRetained(&self->_highlightForwardingTarget);
  [WeakRetained setHighlighted:{-[CPSHighlightForwardingButton isHighlighted](self, "isHighlighted")}];
}

- (CPSHighlightable)highlightForwardingTarget
{
  WeakRetained = objc_loadWeakRetained(&self->_highlightForwardingTarget);

  return WeakRetained;
}

@end