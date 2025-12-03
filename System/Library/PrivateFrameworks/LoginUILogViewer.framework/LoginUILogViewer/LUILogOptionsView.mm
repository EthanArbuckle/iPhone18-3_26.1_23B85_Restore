@interface LUILogOptionsView
- (LUILogOptionsView)initWithFrame:(CGRect)frame;
- (id)_createButtonStackView;
- (id)_createButtonWithTitle:(id)title;
- (void)_setup;
- (void)layoutSubviews;
@end

@implementation LUILogOptionsView

- (LUILogOptionsView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = LUILogOptionsView;
  v3 = [(LUILogOptionsView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(LUILogOptionsView *)v3 _setup];
  }

  return v4;
}

- (void)_setup
{
  _createButtonStackView = [(LUILogOptionsView *)self _createButtonStackView];
  buttonStackView = self->_buttonStackView;
  self->_buttonStackView = _createButtonStackView;

  v5 = self->_buttonStackView;

  [(LUILogOptionsView *)self addSubview:v5];
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = LUILogOptionsView;
  [(LUILogOptionsView *)&v14 layoutSubviews];
  buttonStackView = [(LUILogOptionsView *)self buttonStackView];
  widthAnchor = [buttonStackView widthAnchor];
  v5 = [widthAnchor constraintEqualToConstant:200.0];
  [v5 setActive:1];

  buttonStackView2 = [(LUILogOptionsView *)self buttonStackView];
  heightAnchor = [buttonStackView2 heightAnchor];
  [(LUILogOptionsView *)self frame];
  v8 = [heightAnchor constraintEqualToConstant:CGRectGetHeight(v15) + -100.0];
  [v8 setActive:1];

  [(LUILogOptionsView *)self center];
  v10 = v9;
  v12 = v11;
  buttonStackView3 = [(LUILogOptionsView *)self buttonStackView];
  [buttonStackView3 setCenter:{v10, v12}];
}

- (id)_createButtonStackView
{
  v19[5] = *MEMORY[0x277D85DE8];
  v3 = [(LUILogOptionsView *)self _createButtonWithTitle:@"Last 10 minutes' log"];
  tenMinutesLogButton = self->_tenMinutesLogButton;
  self->_tenMinutesLogButton = v3;

  v5 = [(LUILogOptionsView *)self _createButtonWithTitle:@"Last 30 minutes' log"];
  halfHourButton = self->_halfHourButton;
  self->_halfHourButton = v5;

  v7 = [(LUILogOptionsView *)self _createButtonWithTitle:@"Last 60 minutes' log"];
  hourButton = self->_hourButton;
  self->_hourButton = v7;

  v9 = [(LUILogOptionsView *)self _createButtonWithTitle:@"Last days' log"];
  lastDayButton = self->_lastDayButton;
  self->_lastDayButton = v9;

  v11 = [(LUILogOptionsView *)self _createButtonWithTitle:@"Stream log"];
  streamButton = self->_streamButton;
  self->_streamButton = v11;

  v13 = objc_alloc(MEMORY[0x277D75A68]);
  v14 = self->_halfHourButton;
  v19[0] = self->_tenMinutesLogButton;
  v19[1] = v14;
  v15 = self->_lastDayButton;
  v19[2] = self->_hourButton;
  v19[3] = v15;
  v19[4] = self->_streamButton;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:5];
  v17 = [v13 initWithArrangedSubviews:v16];

  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v17 setAxis:1];
  [v17 setDistribution:3];
  [v17 setAlignment:3];

  return v17;
}

- (id)_createButtonWithTitle:(id)title
{
  v3 = MEMORY[0x277D75220];
  titleCopy = title;
  v5 = [[v3 alloc] initWithFrame:{0.0, 0.0, 200.0, 50.0}];
  [v5 setTitle:titleCopy forState:0];

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [v5 setTintColor:whiteColor];

  whiteColor2 = [MEMORY[0x277D75348] whiteColor];
  [v5 setTitleColor:whiteColor2 forState:0];

  grayColor = [MEMORY[0x277D75348] grayColor];
  [v5 setTitleColor:grayColor forState:2];

  layer = [v5 layer];
  [layer setCornerRadius:5.0];

  whiteColor3 = [MEMORY[0x277D75348] whiteColor];
  cGColor = [whiteColor3 CGColor];
  layer2 = [v5 layer];
  [layer2 setBorderColor:cGColor];

  layer3 = [v5 layer];
  [layer3 setBorderWidth:1.5];

  widthAnchor = [v5 widthAnchor];
  v15 = [widthAnchor constraintEqualToConstant:200.0];
  [v15 setActive:1];

  heightAnchor = [v5 heightAnchor];
  v17 = [heightAnchor constraintEqualToConstant:50.0];
  [v17 setActive:1];

  return v5;
}

@end