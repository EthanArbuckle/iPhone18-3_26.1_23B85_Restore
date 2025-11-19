@interface MUExpandableBlurbView
- (MUExpandableBlurbView)initWithFrame:(CGRect)a3;
- (void)_contentSizeDidChange;
- (void)_expand;
- (void)_setupLabel;
- (void)infoCardThemeChanged;
@end

@implementation MUExpandableBlurbView

- (void)infoCardThemeChanged
{
  v3 = +[MUInfoCardStyle tintColor];
  [(MUExpandingLabel *)self->_expandingLabel setShowMoreTextColor:v3];
}

- (void)_expand
{
  moreAction = self->_moreAction;
  if (moreAction)
  {
    moreAction[2](self->_moreAction);
  }

  else
  {
    [(MUExpandingLabel *)self->_expandingLabel setExpanded:1];
  }
}

- (void)_contentSizeDidChange
{
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [(MUExpandingLabel *)self->_expandingLabel setFont:v3];
}

- (void)_setupLabel
{
  v29[1] = *MEMORY[0x1E69E9840];
  [(MUExpandableBlurbView *)self setInsetsLayoutMarginsFromSafeArea:0];
  [(MUExpandableBlurbView *)self setDirectionalLayoutMargins:*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)];
  v3 = [MUExpandingLabel alloc];
  v4 = [(MUExpandingLabel *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  expandingLabel = self->_expandingLabel;
  self->_expandingLabel = v4;

  [(MUExpandingLabel *)self->_expandingLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [(MUExpandingLabel *)self->_expandingLabel setFont:v6];

  v7 = +[MUInfoCardStyle textColor];
  [(MUExpandingLabel *)self->_expandingLabel setTextColor:v7];

  v8 = _MULocalizedStringFromThisBundle(@"More [See All Blurb View]");
  [(MUExpandingLabel *)self->_expandingLabel setShowMoreText:v8];

  v9 = +[MUInfoCardStyle textColor];
  [(MUExpandingLabel *)self->_expandingLabel setShowMoreTextColor:v9];

  v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  v11 = [v10 _mapkit_fontWithWeight:*MEMORY[0x1E69DB980]];
  [(MUExpandingLabel *)self->_expandingLabel setShowMoreFont:v11];

  v12 = [(MUExpandingLabel *)self->_expandingLabel showMoreText];
  v13 = [v12 localizedUppercaseString];
  [(MUExpandingLabel *)self->_expandingLabel setShowMoreText:v13];

  [(MUExpandingLabel *)self->_expandingLabel setNumberOfLinesWhenCollapsed:5];
  objc_initWeak(&location, self);
  v14 = self->_expandingLabel;
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __36__MUExpandableBlurbView__setupLabel__block_invoke;
  v26 = &unk_1E821BAC8;
  objc_copyWeak(&v27, &location);
  [(MUExpandingLabel *)v14 setLabelResizedBlock:&v23];
  [(MUExpandableBlurbView *)self addSubview:self->_expandingLabel, v23, v24, v25, v26];
  v15 = [MUEdgeLayout alloc];
  v16 = self->_expandingLabel;
  v17 = [(MUExpandableBlurbView *)self layoutMarginsGuide];
  v18 = [(MUEdgeLayout *)v15 initWithItem:v16 container:v17];

  v19 = MEMORY[0x1E696ACD8];
  v29[0] = v18;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
  [v19 _mapsui_activateLayouts:v20];

  [(UIView *)self _mapsui_addSelectGestureRecognizerWithTarget:self action:sel__expand];
  v21 = [MEMORY[0x1E696AD88] defaultCenter];
  [v21 addObserver:self selector:sel__contentSizeDidChange name:*MEMORY[0x1E69DDC48] object:0];

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
  v22 = *MEMORY[0x1E69E9840];
}

uint64_t __36__MUExpandableBlurbView__setupLabel__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = [*(WeakRetained + 408) isExpanded];
    v2 = v7;
    if ((v3 & 1) != 0 || (WeakRetained = [v7[51] isShowingExpanded], v2 = v7, (WeakRetained & 1) == 0))
    {
      v4 = [v2 resizeBlock];

      v2 = v7;
      if (v4)
      {
        v5 = [v7 resizeBlock];
        v5[2]();

        v2 = v7;
      }
    }
  }

  return MEMORY[0x1EEE66BB8](WeakRetained, v2);
}

- (MUExpandableBlurbView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MUExpandableBlurbView;
  v3 = [(MUExpandableBlurbView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MUExpandableBlurbView *)v3 _setupLabel];
    [(MUExpandableBlurbView *)v4 setAccessibilityIdentifier:@"ExpandableBlurb"];
  }

  return v4;
}

@end