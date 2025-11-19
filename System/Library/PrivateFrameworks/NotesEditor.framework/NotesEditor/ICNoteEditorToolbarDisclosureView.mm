@interface ICNoteEditorToolbarDisclosureView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGSize)intrinsicContentSize;
- (ICNoteEditorToolbarDisclosureView)initWithFrame:(CGRect)a3;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)setCloseState:(BOOL)a3;
@end

@implementation ICNoteEditorToolbarDisclosureView

- (id)accessibilityLabel
{
  v2 = [(ICNoteEditorToolbarDisclosureView *)self closeState];
  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = v3;
  if (v2)
  {
    v5 = @"Hide toolbar";
  }

  else
  {
    v5 = @"Show toolbar";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_282757698 table:0];

  return v6;
}

- (id)accessibilityHint
{
  v2 = [(ICNoteEditorToolbarDisclosureView *)self closeState];
  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = v3;
  if (v2)
  {
    v5 = @"Double tap to hide the editing toolbar.";
  }

  else
  {
    v5 = @"Double tap to show the editing toolbar.";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_282757698 table:0];

  return v6;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = ICNoteEditorToolbarDisclosureView;
  return *MEMORY[0x277D76548] | [(ICNoteEditorToolbarDisclosureView *)&v3 accessibilityTraits];
}

- (ICNoteEditorToolbarDisclosureView)initWithFrame:(CGRect)a3
{
  v29.receiver = self;
  v29.super_class = ICNoteEditorToolbarDisclosureView;
  v3 = [(ICNoteEditorToolbarDisclosureView *)&v29 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [[ICNoteEditorToolbarPlusView alloc] initWithFrame:0.0, 0.0, 44.0, 44.0];
    [(ICNoteEditorToolbarDisclosureView *)v3 setOpenView:v4];

    v5 = [(ICNoteEditorToolbarDisclosureView *)v3 openView];
    v6 = [v5 layer];
    [v6 setShadowRadius:12.0];

    v7 = [(ICNoteEditorToolbarDisclosureView *)v3 openView];
    v8 = [v7 layer];
    [v8 setShadowOffset:{0.0, 4.0}];

    v9 = [(ICNoteEditorToolbarDisclosureView *)v3 openView];
    v10 = [v9 layer];
    LODWORD(v11) = 1036831949;
    [v10 setShadowOpacity:v11];

    v12 = [MEMORY[0x277D75348] blackColor];
    v13 = [v12 CGColor];
    v14 = [(ICNoteEditorToolbarDisclosureView *)v3 openView];
    v15 = [v14 layer];
    [v15 setShadowColor:v13];

    v16 = [(ICNoteEditorToolbarDisclosureView *)v3 openView];
    [(ICNoteEditorToolbarDisclosureView *)v3 addSubview:v16];

    v17 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{0.0, 0.0, 44.0, 44.0}];
    [(ICNoteEditorToolbarDisclosureView *)v3 setCloseImageView:v17];

    v18 = [MEMORY[0x277D755B8] ic_largeSystemImageNamed:@"xmark"];
    v19 = [(ICNoteEditorToolbarDisclosureView *)v3 closeImageView];
    [v19 setImage:v18];

    v20 = [(ICNoteEditorToolbarDisclosureView *)v3 closeImageView];
    [v20 setContentMode:4];

    v21 = [MEMORY[0x277D75348] tertiaryLabelColor];
    v22 = [(ICNoteEditorToolbarDisclosureView *)v3 closeImageView];
    [v22 setTintColor:v21];

    v23 = [(ICNoteEditorToolbarDisclosureView *)v3 closeImageView];
    [v23 setAlpha:0.0];

    CGAffineTransformMakeRotation(&v28, 0.785398163);
    v24 = [(ICNoteEditorToolbarDisclosureView *)v3 closeImageView];
    v27 = v28;
    [v24 setTransform:&v27];

    v25 = [(ICNoteEditorToolbarDisclosureView *)v3 closeImageView];
    [(ICNoteEditorToolbarDisclosureView *)v3 addSubview:v25];
  }

  return v3;
}

- (void)setCloseState:(BOOL)a3
{
  if (self->_closeState != a3)
  {
    v10[6] = v3;
    v10[7] = v4;
    self->_closeState = a3;
    v5 = MEMORY[0x277D75D18];
    if (a3)
    {
      v6 = v10;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v7 = __51__ICNoteEditorToolbarDisclosureView_setCloseState___block_invoke;
    }

    else
    {
      v6 = &v8;
      v8 = MEMORY[0x277D85DD0];
      v9 = 3221225472;
      v7 = __51__ICNoteEditorToolbarDisclosureView_setCloseState___block_invoke_2;
    }

    v6[2] = v7;
    v6[3] = &unk_2781ACFF8;
    v6[4] = self;
    *(v6 + 40) = a3;
    [v5 animateWithDuration:v6 animations:{0.25, v8, v9}];
  }
}

void __51__ICNoteEditorToolbarDisclosureView_setCloseState___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) openView];
  [v3 setCloseState:v2];

  CGAffineTransformMakeRotation(&v11, -0.785398163);
  v4 = [*(a1 + 32) openView];
  v10 = v11;
  [v4 setTransform:&v10];

  v5 = [*(a1 + 32) openView];
  v6 = [v5 layer];
  [v6 setShadowOpacity:0.0];

  v7 = [*(a1 + 32) closeImageView];
  [v7 setAlpha:1.0];

  CGAffineTransformMakeRotation(&v9, 0.0);
  v8 = [*(a1 + 32) closeImageView];
  v10 = v9;
  [v8 setTransform:&v10];
}

void __51__ICNoteEditorToolbarDisclosureView_setCloseState___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) openView];
  [v3 setCloseState:v2];

  v4 = [*(a1 + 32) openView];
  v5 = [v4 layer];
  LODWORD(v6) = 1036831949;
  [v5 setShadowOpacity:v6];

  v7 = [*(a1 + 32) openView];
  v8 = *(MEMORY[0x277CBF2C0] + 16);
  *&v12.a = *MEMORY[0x277CBF2C0];
  *&v12.c = v8;
  *&v12.tx = *(MEMORY[0x277CBF2C0] + 32);
  [v7 setTransform:&v12];

  v9 = [*(a1 + 32) closeImageView];
  [v9 setAlpha:0.0];

  CGAffineTransformMakeRotation(&v11, 0.785398163);
  v10 = [*(a1 + 32) closeImageView];
  v12 = v11;
  [v10 setTransform:&v12];
}

- (CGSize)intrinsicContentSize
{
  v2 = 44.0;
  v3 = 44.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(ICNoteEditorToolbarDisclosureView *)self bounds];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

@end