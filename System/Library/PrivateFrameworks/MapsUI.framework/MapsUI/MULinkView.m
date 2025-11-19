@interface MULinkView
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (MULinkView)initWithLabelColor:(id)a3 linkColor:(id)a4;
- (unint64_t)numberOfLines;
- (void)_setupLinkView;
- (void)_updateForButtonShapeStatusChange;
- (void)setNumberOfLines:(unint64_t)a3;
@end

@implementation MULinkView

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v9 = a3;
  v10 = a4;
  if (!a6)
  {
    selectionBlock = self->_selectionBlock;
    if (selectionBlock)
    {
      selectionBlock[2](selectionBlock, self);
    }
  }

  return 0;
}

- (void)_updateForButtonShapeStatusChange
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (UIAccessibilityButtonShapesEnabled())
  {
    v7 = *MEMORY[0x1E69DB758];
    v8[0] = &unk_1F450DEE0;
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [(UITextView *)self->_textView setLinkTextAttributes:v3];

    v4 = *MEMORY[0x1E69E9840];
  }

  else
  {
    textView = self->_textView;
    v6 = *MEMORY[0x1E69E9840];

    [(UITextView *)textView setLinkTextAttributes:0];
  }
}

- (unint64_t)numberOfLines
{
  v2 = [(UITextView *)self->_textView textContainer];
  v3 = [v2 maximumNumberOfLines];

  return v3;
}

- (void)setNumberOfLines:(unint64_t)a3
{
  v4 = [(UITextView *)self->_textView textContainer];
  [v4 setMaximumNumberOfLines:a3];
}

- (void)_setupLinkView
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DD168] _mapsui_defaultTextView];
  textView = self->_textView;
  self->_textView = v3;

  [(UITextView *)self->_textView setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [MEMORY[0x1E69DC888] clearColor];
  [(UITextView *)self->_textView setBackgroundColor:v5];

  [(UITextView *)self->_textView setTextColor:self->_labelColor];
  [(UITextView *)self->_textView setDelegate:self];
  [(UITextView *)self->_textView setAccessibilityIdentifier:@"LinkViewTextView"];
  v6 = [(UITextView *)self->_textView textContainer];
  [v6 setLineBreakMode:4];

  [(MULinkView *)self setDirectionalLayoutMargins:*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)];
  [(UITextView *)self->_textView setInsetsLayoutMarginsFromSafeArea:0];
  [(UITextView *)self->_textView setAdjustsFontForContentSizeCategory:1];
  [(MULinkView *)self _updateForButtonShapeStatusChange];
  [(MULinkView *)self _updateTintColor];
  MURegisterForButtonShapeEnablementChanges(self, sel__updateForButtonShapeStatusChange);
  [(MULinkView *)self addSubview:self->_textView];
  v7 = MEMORY[0x1E696ACD8];
  v8 = [MUEdgeLayout alloc];
  v9 = self->_textView;
  v10 = [(MULinkView *)self layoutMarginsGuide];
  v11 = [(MUEdgeLayout *)v8 initWithItem:v9 container:v10];
  v18[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  [v7 _mapsui_activateLayouts:v12];

  v13 = objc_opt_self();
  v17 = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
  v15 = [(MULinkView *)self registerForTraitChanges:v14 withAction:sel__updateTintColor];

  v16 = *MEMORY[0x1E69E9840];
}

- (MULinkView)initWithLabelColor:(id)a3 linkColor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = MULinkView;
  v8 = [(MULinkView *)&v16 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v8)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [(MULinkView *)v8 setAccessibilityIdentifier:v10];

    v11 = v6;
    if (!v6)
    {
      v11 = [MEMORY[0x1E69DC888] labelColor];
    }

    objc_storeStrong(&v8->_labelColor, v11);
    if (!v6)
    {
    }

    v12 = v7;
    if (!v7)
    {
      v12 = +[MUInfoCardStyle tintColor];
    }

    objc_storeStrong(&v8->_linkColor, v12);
    if (!v7)
    {
    }

    [(MULinkView *)v8 _setupLinkView];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [(MULinkView *)v8 setAccessibilityIdentifier:v14];
  }

  return v8;
}

@end