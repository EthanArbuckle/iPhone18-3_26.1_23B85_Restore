@interface HUGridSectionHeaderView
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (HUGridSectionHeaderView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_didRecognizeLongPressGesture:(id)a3;
- (void)_didRecognizeTapGesture:(id)a3;
- (void)_installGestureRecognizers;
- (void)_uninstallGestureRecognizers;
- (void)dealloc;
- (void)prepareForReuse;
- (void)setActionHandler:(id)a3;
- (void)setContentConfiguration:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setShowsDisclosureIndicator:(BOOL)a3;
- (void)updateConstraints;
@end

@implementation HUGridSectionHeaderView

- (HUGridSectionHeaderView)initWithFrame:(CGRect)a3
{
  v21.receiver = self;
  v21.super_class = HUGridSectionHeaderView;
  v3 = [(HUGridSectionHeaderView *)&v21 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D756E0] groupedHeaderConfiguration];
    [v4 setText:&stru_2823E0EE8];
    v5 = [objc_alloc(MEMORY[0x277D756E8]) initWithConfiguration:v4];
    listContentView = v3->_listContentView;
    v3->_listContentView = v5;

    [(UIListContentView *)v3->_listContentView setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [(HUGridSectionHeaderView *)v3 contentView];
    [v7 addSubview:v3->_listContentView];

    v8 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76918]];
    v9 = [MEMORY[0x277D755D0] configurationWithWeight:6];
    v10 = [v8 configurationByApplyingConfiguration:v9];
    v11 = objc_alloc(MEMORY[0x277D755E8]);
    v12 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.forward" withConfiguration:v10];
    v13 = [v11 initWithImage:v12];
    chevronView = v3->_chevronView;
    v3->_chevronView = v13;

    [(UIImageView *)v3->_chevronView setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.35];
    [(UIImageView *)v3->_chevronView setTintColor:v15];

    v16 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5E8]];
    v17 = [(UIImageView *)v3->_chevronView layer];
    [v17 setCompositingFilter:v16];

    [(UIImageView *)v3->_chevronView setHidden:[(HUGridSectionHeaderView *)v3 showsDisclosureIndicator]^ 1];
    LODWORD(v18) = 1148846080;
    [(UIImageView *)v3->_chevronView setContentCompressionResistancePriority:0 forAxis:v18];
    v19 = [(HUGridSectionHeaderView *)v3 contentView];
    [v19 addSubview:v3->_chevronView];
  }

  return v3;
}

- (void)dealloc
{
  [(HUGridSectionHeaderView *)self _uninstallGestureRecognizers];
  v3.receiver = self;
  v3.super_class = HUGridSectionHeaderView;
  [(HUGridSectionHeaderView *)&v3 dealloc];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = HUGridSectionHeaderView;
  [(HUGridSectionHeaderView *)&v3 prepareForReuse];
  [(HUGridSectionHeaderView *)self setActionHandler:0];
  [(HUGridSectionHeaderView *)self setShowsDisclosureIndicator:0];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = HUGridSectionHeaderView;
  v5 = [(HUGridSectionHeaderView *)&v9 hitTest:a4 withEvent:a3.x, a3.y];
  if ([v5 isDescendantOfView:self])
  {
    v6 = [(HUGridSectionHeaderView *)self actionHandler];
    if (v6)
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (void)updateConstraints
{
  v39[6] = *MEMORY[0x277D85DE8];
  v3 = [(HUGridSectionHeaderView *)self layoutConstraints];
  if (v3)
  {
  }

  else
  {
    v4 = [(HUGridSectionHeaderView *)self listContentView];
    v5 = [v4 textLayoutGuide];

    if (v5)
    {
      v6 = [(HUGridSectionHeaderView *)self contentView];
      v37 = [(HUGridSectionHeaderView *)self listContentView];
      v36 = [v37 topAnchor];
      v35 = [v6 topAnchor];
      v34 = [v36 constraintEqualToAnchor:v35];
      v39[0] = v34;
      v33 = [(HUGridSectionHeaderView *)self listContentView];
      v32 = [v33 bottomAnchor];
      v31 = [v6 bottomAnchor];
      v30 = [v32 constraintEqualToAnchor:v31];
      v39[1] = v30;
      v29 = [(HUGridSectionHeaderView *)self listContentView];
      v27 = [v29 leadingAnchor];
      v28 = v6;
      v26 = [v6 leadingAnchor];
      v25 = [v27 constraintEqualToAnchor:v26];
      v39[2] = v25;
      v24 = [(HUGridSectionHeaderView *)self chevronView];
      v22 = [v24 leadingAnchor];
      v23 = [(HUGridSectionHeaderView *)self listContentView];
      v21 = [v23 trailingAnchor];
      v20 = [v22 constraintEqualToAnchor:v21 constant:6.0];
      v39[3] = v20;
      v19 = [(HUGridSectionHeaderView *)self chevronView];
      v18 = [v19 trailingAnchor];
      v7 = [v6 trailingAnchor];
      v8 = [v18 constraintLessThanOrEqualToAnchor:v7];
      v39[4] = v8;
      v9 = [(HUGridSectionHeaderView *)self chevronView];
      v10 = [v9 centerYAnchor];
      v11 = [(HUGridSectionHeaderView *)self listContentView];
      v12 = [v11 textLayoutGuide];
      v13 = [v12 centerYAnchor];
      v14 = [v10 constraintEqualToAnchor:v13];
      v39[5] = v14;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:6];
      [(HUGridSectionHeaderView *)self setLayoutConstraints:v15];

      v16 = MEMORY[0x277CCAAD0];
      v17 = [(HUGridSectionHeaderView *)self layoutConstraints];
      [v16 activateConstraints:v17];
    }
  }

  v38.receiver = self;
  v38.super_class = HUGridSectionHeaderView;
  [(HUGridSectionHeaderView *)&v38 updateConstraints];
}

- (void)setActionHandler:(id)a3
{
  v4 = a3;
  if (self->_actionHandler != v4)
  {
    v7 = v4;
    v5 = _Block_copy(v4);
    actionHandler = self->_actionHandler;
    self->_actionHandler = v5;

    if (v7)
    {
      [(HUGridSectionHeaderView *)self _installGestureRecognizers];
    }

    else
    {
      [(HUGridSectionHeaderView *)self _uninstallGestureRecognizers];
    }

    v4 = v7;
  }
}

- (void)setContentConfiguration:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v9 = v4;
  if (objc_opt_isKindOfClass())
  {
    v5 = v9;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [v6 image];

    if (!v7)
    {
      [v6 setImageToTextPadding:0.0];
    }

    [v6 setAxesPreservingSuperviewLayoutMargins:0];
    v8 = [(HUGridSectionHeaderView *)self listContentView];
    [v8 setConfiguration:v6];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = HUGridSectionHeaderView;
  [(HUGridSectionHeaderView *)&v7 setHighlighted:?];
  if (v3)
  {
    v5 = 0.5;
  }

  else
  {
    v5 = 1.0;
  }

  v6 = [(HUGridSectionHeaderView *)self contentView];
  [v6 setAlpha:v5];
}

- (void)setShowsDisclosureIndicator:(BOOL)a3
{
  if (self->_showsDisclosureIndicator != a3)
  {
    v4 = a3;
    self->_showsDisclosureIndicator = a3;
    v5 = [(HUGridSectionHeaderView *)self chevronView];
    [v5 setHidden:!v4];
  }
}

- (void)_installGestureRecognizers
{
  v3 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__didRecognizeTapGesture_];
  [(HUGridSectionHeaderView *)self setTapGestureRecognizer:v3];

  v4 = [(HUGridSectionHeaderView *)self contentView];
  v5 = [(HUGridSectionHeaderView *)self tapGestureRecognizer];
  [v4 addGestureRecognizer:v5];

  v6 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel__didRecognizeLongPressGesture_];
  [(HUGridSectionHeaderView *)self setLongPressGestureRecognizer:v6];

  v7 = [(HUGridSectionHeaderView *)self longPressGestureRecognizer];
  [v7 setMinimumPressDuration:0.0];

  v8 = [(HUGridSectionHeaderView *)self longPressGestureRecognizer];
  [v8 setDelegate:self];

  v10 = [(HUGridSectionHeaderView *)self contentView];
  v9 = [(HUGridSectionHeaderView *)self longPressGestureRecognizer];
  [v10 addGestureRecognizer:v9];
}

- (void)_uninstallGestureRecognizers
{
  v3 = [(HUGridSectionHeaderView *)self tapGestureRecognizer];

  if (v3)
  {
    v4 = [(HUGridSectionHeaderView *)self contentView];
    v5 = [(HUGridSectionHeaderView *)self tapGestureRecognizer];
    [v4 removeGestureRecognizer:v5];
  }

  v6 = [(HUGridSectionHeaderView *)self longPressGestureRecognizer];

  if (v6)
  {
    v8 = [(HUGridSectionHeaderView *)self contentView];
    v7 = [(HUGridSectionHeaderView *)self longPressGestureRecognizer];
    [v8 removeGestureRecognizer:v7];
  }
}

- (void)_didRecognizeTapGesture:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  if ([a3 state] == 3)
  {
    v4 = [(HUGridSectionHeaderView *)self actionHandler];

    if (v4)
    {
      v5 = [(HUGridSectionHeaderView *)self actionHandler];
      (*(v5 + 16))();
    }

    else
    {
      v5 = HFLogForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = 138412290;
        v7 = self;
        _os_log_error_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_ERROR, "%@ Section header view tapped with no tap action set", &v6, 0xCu);
      }
    }
  }

  [(HUGridSectionHeaderView *)self setHighlighted:0];
}

- (void)_didRecognizeLongPressGesture:(id)a3
{
  v4 = [a3 state] - 1;
  if (v4 <= 4)
  {

    [(HUGridSectionHeaderView *)self setHighlighted:1u >> v4];
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HUGridSectionHeaderView *)self longPressGestureRecognizer];

  if (v8 == v7)
  {
    v10 = 1;
  }

  else
  {
    v9 = [(HUGridSectionHeaderView *)self longPressGestureRecognizer];
    v10 = v9 == v6;
  }

  return v10;
}

@end