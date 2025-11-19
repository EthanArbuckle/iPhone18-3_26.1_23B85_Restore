@interface MUPlatterView
- (MUPlatterView)initWithContentView:(id)a3 includeBackground:(BOOL)a4;
- (id)_createVisualStyleProvider;
- (void)_fetchGroupNameIfNeeded;
- (void)_setup;
- (void)didMoveToWindow;
- (void)layoutSubviews;
@end

@implementation MUPlatterView

- (void)_fetchGroupNameIfNeeded
{
  v3 = [(MUPlatterView *)self window];

  if (v3)
  {
    visualEffectView = self->_visualEffectView;
    if (visualEffectView)
    {
      if (([(UIVisualEffectView *)visualEffectView isHidden]& 1) == 0)
      {
        v5 = [(UIVisualEffectView *)self->_visualEffectView _groupName];
        v6 = [v5 length];

        if (!v6)
        {
          v7 = [(MUPlatterView *)self superview];
          if (v7)
          {
            while (1)
            {
              v10 = v7;
              if (objc_opt_respondsToSelector())
              {
                break;
              }

              v8 = [v10 superview];

              v7 = v8;
              if (!v8)
              {
                return;
              }
            }

            v9 = [v10 vibrancyGroupName];
            [(UIVisualEffectView *)self->_visualEffectView _setGroupName:v9];
          }
        }
      }
    }
  }
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = MUPlatterView;
  [(MUPlatterView *)&v3 didMoveToWindow];
  [(MUPlatterView *)self _fetchGroupNameIfNeeded];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MUPlatterView;
  [(MUPlatterView *)&v3 layoutSubviews];
  [(MUPlatterView *)self bounds];
  [(UIVisualEffectView *)self->_visualEffectView setFrame:?];
}

- (id)_createVisualStyleProvider
{
  v2 = objc_opt_new();

  return v2;
}

- (void)_setup
{
  v31[4] = *MEMORY[0x1E69E9840];
  v3 = [(MUPlatterView *)self _createVisualStyleProvider];
  visualStyleProvider = self->_visualStyleProvider;
  self->_visualStyleProvider = v3;

  v5 = [(MUPlatterViewStyleProviding *)self->_visualStyleProvider fillColor];
  v6 = self->_visualStyleProvider;
  v7 = [(MUPlatterView *)self traitCollection];
  v8 = [(MUPlatterViewStyleProviding *)v6 visualEffectForTraitCollection:v7];

  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v8];
    visualEffectView = self->_visualEffectView;
    self->_visualEffectView = v9;

    v11 = [(UIVisualEffectView *)self->_visualEffectView contentView];
    [v11 setBackgroundColor:v5];

    if (self->_includeBackground)
    {
      [(UIVisualEffectView *)self->_visualEffectView _mapsui_setCardCorner];
    }

    [(MUPlatterView *)self addSubview:self->_visualEffectView];
  }

  else if (self->_includeBackground)
  {
    [(MUPlatterView *)self setBackgroundColor:v5];
  }

  if (self->_includeBackground)
  {
    [(UIView *)self _mapsui_setCardCorner];
  }

  contentView = self->_contentView;
  if (contentView)
  {
    v29 = v8;
    v30 = v5;
    [(UIView *)contentView setTranslatesAutoresizingMaskIntoConstraints:0];
    if (self->_includeBackground)
    {
      [(UIView *)self->_contentView _mapsui_setCardCorner];
    }

    [(MUPlatterView *)self addSubview:self->_contentView];
    v24 = MEMORY[0x1E696ACD8];
    v28 = [(UIView *)self->_contentView leadingAnchor];
    v27 = [(MUPlatterView *)self leadingAnchor];
    v26 = [v28 constraintEqualToAnchor:v27];
    v31[0] = v26;
    v25 = [(UIView *)self->_contentView trailingAnchor];
    v13 = [(MUPlatterView *)self trailingAnchor];
    v14 = [v25 constraintEqualToAnchor:v13];
    v31[1] = v14;
    v15 = [(UIView *)self->_contentView topAnchor];
    v16 = [(MUPlatterView *)self topAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];
    v31[2] = v17;
    v18 = [(UIView *)self->_contentView bottomAnchor];
    v19 = [(MUPlatterView *)self bottomAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    v31[3] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:4];
    [v24 activateConstraints:v21];

    v8 = v29;
    v5 = v30;
  }

  v22 = [(MUPlatterView *)self traitOverrides];
  [v22 setNSIntegerValue:1 forTrait:objc_opt_class()];

  v23 = *MEMORY[0x1E69E9840];
}

- (MUPlatterView)initWithContentView:(id)a3 includeBackground:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = MUPlatterView;
  v8 = [(MUPlatterView *)&v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_contentView, a3);
    v9->_includeBackground = a4;
    [(MUPlatterView *)v9 _setup];
  }

  return v9;
}

@end