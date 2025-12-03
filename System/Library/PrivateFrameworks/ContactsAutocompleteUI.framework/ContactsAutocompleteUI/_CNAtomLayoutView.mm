@interface _CNAtomLayoutView
+ (id)layoutViewWithDelegateView:(id)view;
- (BOOL)respondsToSelector:(SEL)selector;
- (CGRect)boundsForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(unint64_t)index;
- (CGRect)selectionBounds;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIEdgeInsets)atomInsets;
- (_CNAtomLayoutView)initWithDelegateView:(id)view;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)layoutSubviews;
- (void)setMaskBounds:(CGRect)bounds;
@end

@implementation _CNAtomLayoutView

+ (id)layoutViewWithDelegateView:(id)view
{
  viewCopy = view;
  v5 = [[self alloc] initWithDelegateView:viewCopy];

  return v5;
}

- (_CNAtomLayoutView)initWithDelegateView:(id)view
{
  viewCopy = view;
  v10.receiver = self;
  v10.super_class = _CNAtomLayoutView;
  v6 = [(_CNAtomLayoutView *)&v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegateView, view);
    [(CNAtomTextViewAtomLayout *)v7->_delegateView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_CNAtomLayoutView *)v7 setAutoresizesSubviews:0];
    [(_CNAtomLayoutView *)v7 addSubview:v7->_delegateView];
    v8 = v7;
  }

  return v7;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v5.receiver = self;
  v5.super_class = _CNAtomLayoutView;
  if ([(_CNAtomLayoutView *)&v5 respondsToSelector:?])
  {
    v3 = 1;
  }

  else
  {
    v3 = objc_opt_respondsToSelector();
  }

  return v3 & 1;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v7.receiver = self;
  v7.super_class = _CNAtomLayoutView;
  v5 = [(_CNAtomLayoutView *)&v7 methodSignatureForSelector:?];
  if (!v5)
  {
    v5 = [(CNAtomTextViewAtomLayout *)self->_delegateView methodSignatureForSelector:selector];
  }

  return v5;
}

- (void)setMaskBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(_CNAtomLayoutView *)self bounds];
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v8 = CGRectEqualToRect(v16, v17);
  layer = [(_CNAtomLayoutView *)self layer];
  v14 = layer;
  if (v8)
  {
    [layer setMask:0];
    v10 = v14;
  }

  else
  {
    mask = [layer mask];

    if (!mask)
    {
      mask = [MEMORY[0x1E69794A0] layer];
      layer2 = [(_CNAtomLayoutView *)self layer];
      [layer2 setMask:mask];
    }

    v13 = [MEMORY[0x1E69DC728] bezierPathWithRect:{x, y, width, height}];
    [mask setPath:{objc_msgSend(v13, "CGPath")}];

    v10 = mask;
  }
}

- (UIEdgeInsets)atomInsets
{
  [MEMORY[0x1E69DD250] userInterfaceLayoutDirectionForSemanticContentAttribute:{-[_CNAtomLayoutView semanticContentAttribute](self, "semanticContentAttribute")}];
  v2 = 0.0;
  v3 = 2.0;
  v4 = 0.0;
  v5 = 2.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(CNAtomTextViewAtomLayout *)self->_delegateView systemLayoutSizeFittingSize:fits.width, fits.height];
  v5 = v4;
  v7 = v6;
  [(_CNAtomLayoutView *)self atomInsets];
  v10 = v5 + v8 + v9;
  v13 = v7 + v11 + v12;
  v14 = v10;
  result.height = v13;
  result.width = v14;
  return result;
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = _CNAtomLayoutView;
  [(_CNAtomLayoutView *)&v15 layoutSubviews];
  [(_CNAtomLayoutView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(_CNAtomLayoutView *)self atomInsets];
  v12 = v4 + v11;
  [(CNAtomTextViewAtomLayout *)self->_delegateView systemLayoutSizeFittingSize:v8, v10];
  [(CNAtomTextViewAtomLayout *)self->_delegateView setFrame:v12, v6, v13, v14];
}

- (CGRect)selectionBounds
{
  [(CNAtomTextViewAtomLayout *)self->_delegateView bounds];
  delegateView = self->_delegateView;

  [(_CNAtomLayoutView *)self convertRect:delegateView fromView:?];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)boundsForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(unint64_t)index
{
  height = fragment.size.height;
  [(_CNAtomLayoutView *)self layoutIfNeeded:container];
  v7 = *MEMORY[0x1E695F058];
  rect = *(MEMORY[0x1E695F058] + 8);
  [(_CNAtomLayoutView *)self sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  v9 = v8;
  v11 = v10;
  viewForLastBaselineLayout = [(_CNAtomLayoutView *)self viewForLastBaselineLayout];
  [viewForLastBaselineLayout bounds];
  [(_CNAtomLayoutView *)self convertRect:viewForLastBaselineLayout fromView:?];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [viewForLastBaselineLayout _baselineOffsetFromBottom];
  v22 = v21;
  v31.origin.x = v14;
  v31.origin.y = v16;
  v31.size.width = v18;
  v31.size.height = v20;
  MaxY = CGRectGetMaxY(v31);
  v32.origin.x = v7;
  v32.origin.y = rect;
  v32.size.width = v9;
  v32.size.height = v11;
  v24 = MaxY - CGRectGetMaxY(v32) - v22;

  v25 = v7;
  v26 = v24;
  v27 = v9;
  v28 = height;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

@end