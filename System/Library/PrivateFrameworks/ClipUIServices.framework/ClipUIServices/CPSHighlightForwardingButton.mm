@interface CPSHighlightForwardingButton
- (CPSHighlightable)highlightForwardingTarget;
- (void)setHighlightForwardingTarget:(id)target;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation CPSHighlightForwardingButton

- (void)setHighlightForwardingTarget:(id)target
{
  obj = target;
  WeakRetained = objc_loadWeakRetained(&self->_highlightForwardingTarget);

  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->_highlightForwardingTarget);
    [v5 setHighlighted:0];

    objc_storeWeak(&self->_highlightForwardingTarget, obj);
    [obj setHighlighted:{-[CPSHighlightForwardingButton isHighlighted](self, "isHighlighted")}];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  v5.receiver = self;
  v5.super_class = CPSHighlightForwardingButton;
  [(CPSHighlightForwardingButton *)&v5 setHighlighted:highlighted];
  WeakRetained = objc_loadWeakRetained(&self->_highlightForwardingTarget);
  [WeakRetained setHighlighted:{-[CPSHighlightForwardingButton isHighlighted](self, "isHighlighted")}];
}

- (CPSHighlightable)highlightForwardingTarget
{
  WeakRetained = objc_loadWeakRetained(&self->_highlightForwardingTarget);

  return WeakRetained;
}

@end