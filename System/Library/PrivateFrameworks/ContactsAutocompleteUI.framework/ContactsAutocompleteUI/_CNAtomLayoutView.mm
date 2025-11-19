@interface _CNAtomLayoutView
+ (id)layoutViewWithDelegateView:(id)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (CGRect)boundsForTextContainer:(id)a3 proposedLineFragment:(CGRect)a4 glyphPosition:(CGPoint)a5 characterIndex:(unint64_t)a6;
- (CGRect)selectionBounds;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIEdgeInsets)atomInsets;
- (_CNAtomLayoutView)initWithDelegateView:(id)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)layoutSubviews;
- (void)setMaskBounds:(CGRect)a3;
@end

@implementation _CNAtomLayoutView

+ (id)layoutViewWithDelegateView:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithDelegateView:v4];

  return v5;
}

- (_CNAtomLayoutView)initWithDelegateView:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = _CNAtomLayoutView;
  v6 = [(_CNAtomLayoutView *)&v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegateView, a3);
    [(CNAtomTextViewAtomLayout *)v7->_delegateView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_CNAtomLayoutView *)v7 setAutoresizesSubviews:0];
    [(_CNAtomLayoutView *)v7 addSubview:v7->_delegateView];
    v8 = v7;
  }

  return v7;
}

- (BOOL)respondsToSelector:(SEL)a3
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

- (id)methodSignatureForSelector:(SEL)a3
{
  v7.receiver = self;
  v7.super_class = _CNAtomLayoutView;
  v5 = [(_CNAtomLayoutView *)&v7 methodSignatureForSelector:?];
  if (!v5)
  {
    v5 = [(CNAtomTextViewAtomLayout *)self->_delegateView methodSignatureForSelector:a3];
  }

  return v5;
}

- (void)setMaskBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(_CNAtomLayoutView *)self bounds];
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v8 = CGRectEqualToRect(v16, v17);
  v9 = [(_CNAtomLayoutView *)self layer];
  v14 = v9;
  if (v8)
  {
    [v9 setMask:0];
    v10 = v14;
  }

  else
  {
    v11 = [v9 mask];

    if (!v11)
    {
      v11 = [MEMORY[0x1E69794A0] layer];
      v12 = [(_CNAtomLayoutView *)self layer];
      [v12 setMask:v11];
    }

    v13 = [MEMORY[0x1E69DC728] bezierPathWithRect:{x, y, width, height}];
    [v11 setPath:{objc_msgSend(v13, "CGPath")}];

    v10 = v11;
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(CNAtomTextViewAtomLayout *)self->_delegateView systemLayoutSizeFittingSize:a3.width, a3.height];
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

- (CGRect)boundsForTextContainer:(id)a3 proposedLineFragment:(CGRect)a4 glyphPosition:(CGPoint)a5 characterIndex:(unint64_t)a6
{
  height = a4.size.height;
  [(_CNAtomLayoutView *)self layoutIfNeeded:a3];
  v7 = *MEMORY[0x1E695F058];
  rect = *(MEMORY[0x1E695F058] + 8);
  [(_CNAtomLayoutView *)self sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  v9 = v8;
  v11 = v10;
  v12 = [(_CNAtomLayoutView *)self viewForLastBaselineLayout];
  [v12 bounds];
  [(_CNAtomLayoutView *)self convertRect:v12 fromView:?];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [v12 _baselineOffsetFromBottom];
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