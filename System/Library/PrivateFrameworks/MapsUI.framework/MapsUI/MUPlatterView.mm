@interface MUPlatterView
- (MUPlatterView)initWithContentView:(id)view includeBackground:(BOOL)background;
- (id)_createVisualStyleProvider;
- (void)_fetchGroupNameIfNeeded;
- (void)_setup;
- (void)didMoveToWindow;
- (void)layoutSubviews;
@end

@implementation MUPlatterView

- (void)_fetchGroupNameIfNeeded
{
  window = [(MUPlatterView *)self window];

  if (window)
  {
    visualEffectView = self->_visualEffectView;
    if (visualEffectView)
    {
      if (([(UIVisualEffectView *)visualEffectView isHidden]& 1) == 0)
      {
        _groupName = [(UIVisualEffectView *)self->_visualEffectView _groupName];
        v6 = [_groupName length];

        if (!v6)
        {
          superview = [(MUPlatterView *)self superview];
          if (superview)
          {
            while (1)
            {
              v10 = superview;
              if (objc_opt_respondsToSelector())
              {
                break;
              }

              superview2 = [v10 superview];

              superview = superview2;
              if (!superview2)
              {
                return;
              }
            }

            vibrancyGroupName = [v10 vibrancyGroupName];
            [(UIVisualEffectView *)self->_visualEffectView _setGroupName:vibrancyGroupName];
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
  _createVisualStyleProvider = [(MUPlatterView *)self _createVisualStyleProvider];
  visualStyleProvider = self->_visualStyleProvider;
  self->_visualStyleProvider = _createVisualStyleProvider;

  fillColor = [(MUPlatterViewStyleProviding *)self->_visualStyleProvider fillColor];
  v6 = self->_visualStyleProvider;
  traitCollection = [(MUPlatterView *)self traitCollection];
  v8 = [(MUPlatterViewStyleProviding *)v6 visualEffectForTraitCollection:traitCollection];

  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v8];
    visualEffectView = self->_visualEffectView;
    self->_visualEffectView = v9;

    contentView = [(UIVisualEffectView *)self->_visualEffectView contentView];
    [contentView setBackgroundColor:fillColor];

    if (self->_includeBackground)
    {
      [(UIVisualEffectView *)self->_visualEffectView _mapsui_setCardCorner];
    }

    [(MUPlatterView *)self addSubview:self->_visualEffectView];
  }

  else if (self->_includeBackground)
  {
    [(MUPlatterView *)self setBackgroundColor:fillColor];
  }

  if (self->_includeBackground)
  {
    [(UIView *)self _mapsui_setCardCorner];
  }

  contentView = self->_contentView;
  if (contentView)
  {
    v29 = v8;
    v30 = fillColor;
    [(UIView *)contentView setTranslatesAutoresizingMaskIntoConstraints:0];
    if (self->_includeBackground)
    {
      [(UIView *)self->_contentView _mapsui_setCardCorner];
    }

    [(MUPlatterView *)self addSubview:self->_contentView];
    v24 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(UIView *)self->_contentView leadingAnchor];
    leadingAnchor2 = [(MUPlatterView *)self leadingAnchor];
    v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v31[0] = v26;
    trailingAnchor = [(UIView *)self->_contentView trailingAnchor];
    trailingAnchor2 = [(MUPlatterView *)self trailingAnchor];
    v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v31[1] = v14;
    topAnchor = [(UIView *)self->_contentView topAnchor];
    topAnchor2 = [(MUPlatterView *)self topAnchor];
    v17 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v31[2] = v17;
    bottomAnchor = [(UIView *)self->_contentView bottomAnchor];
    bottomAnchor2 = [(MUPlatterView *)self bottomAnchor];
    v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v31[3] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:4];
    [v24 activateConstraints:v21];

    v8 = v29;
    fillColor = v30;
  }

  traitOverrides = [(MUPlatterView *)self traitOverrides];
  [traitOverrides setNSIntegerValue:1 forTrait:objc_opt_class()];

  v23 = *MEMORY[0x1E69E9840];
}

- (MUPlatterView)initWithContentView:(id)view includeBackground:(BOOL)background
{
  viewCopy = view;
  v11.receiver = self;
  v11.super_class = MUPlatterView;
  v8 = [(MUPlatterView *)&v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_contentView, view);
    v9->_includeBackground = background;
    [(MUPlatterView *)v9 _setup];
  }

  return v9;
}

@end