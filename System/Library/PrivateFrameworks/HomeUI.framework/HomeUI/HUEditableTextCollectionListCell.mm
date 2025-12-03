@interface HUEditableTextCollectionListCell
- (HUEditableTextCollectionListCell)initWithFrame:(CGRect)frame;
- (void)prepareForReuse;
- (void)setContentConfiguration:(id)configuration;
- (void)setDisabled:(BOOL)disabled;
- (void)setSelected:(BOOL)selected;
- (void)updateConstraints;
@end

@implementation HUEditableTextCollectionListCell

- (HUEditableTextCollectionListCell)initWithFrame:(CGRect)frame
{
  v30.receiver = self;
  v30.super_class = HUEditableTextCollectionListCell;
  v3 = [(HUEditableTextCollectionListCell *)&v30 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75BB8]);
    textField = v3->_textField;
    v3->_textField = v4;

    v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    textField = [(HUEditableTextCollectionListCell *)v3 textField];
    [textField setFont:v6];

    textField2 = [(HUEditableTextCollectionListCell *)v3 textField];
    [textField2 setAdjustsFontForContentSizeCategory:1];

    textField3 = [(HUEditableTextCollectionListCell *)v3 textField];
    [textField3 setReturnKeyType:9];

    textField4 = [(HUEditableTextCollectionListCell *)v3 textField];
    [textField4 setClearButtonMode:3];

    contentView = [(HUEditableTextCollectionListCell *)v3 contentView];
    textField5 = [(HUEditableTextCollectionListCell *)v3 textField];
    [contentView addSubview:textField5];

    v13 = objc_alloc(MEMORY[0x277D756E8]);
    defaultContentConfiguration = [(HUEditableTextCollectionListCell *)v3 defaultContentConfiguration];
    v15 = [v13 initWithConfiguration:defaultContentConfiguration];
    [(HUEditableTextCollectionListCell *)v3 setListContentView:v15];

    listContentView = [(HUEditableTextCollectionListCell *)v3 listContentView];
    [listContentView setHidden:1];

    contentView2 = [(HUEditableTextCollectionListCell *)v3 contentView];
    listContentView2 = [(HUEditableTextCollectionListCell *)v3 listContentView];
    [contentView2 addSubview:listContentView2];
  }

  cellConfiguration = [MEMORY[0x277D756E0] cellConfiguration];
  [cellConfiguration directionalLayoutMargins];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  contentView3 = [(HUEditableTextCollectionListCell *)v3 contentView];
  [contentView3 setDirectionalLayoutMargins:{v21, v23, v25, v27}];

  return v3;
}

- (void)prepareForReuse
{
  v10.receiver = self;
  v10.super_class = HUEditableTextCollectionListCell;
  [(HUEditableTextCollectionListCell *)&v10 prepareForReuse];
  textField = [(HUEditableTextCollectionListCell *)self textField];
  [textField setText:0];

  textField2 = [(HUEditableTextCollectionListCell *)self textField];
  [textField2 setPlaceholder:0];

  textField3 = [(HUEditableTextCollectionListCell *)self textField];
  [textField3 setDelegate:0];

  textField4 = [(HUEditableTextCollectionListCell *)self textField];
  [textField4 setEnabled:1];

  textField5 = [(HUEditableTextCollectionListCell *)self textField];
  [textField5 endEditing:1];

  textField6 = [(HUEditableTextCollectionListCell *)self textField];
  [textField6 setHidden:0];

  listContentView = [(HUEditableTextCollectionListCell *)self listContentView];
  [listContentView setHidden:1];
}

- (void)setContentConfiguration:(id)configuration
{
  configurationCopy = configuration;
  objc_opt_class();
  v14 = configurationCopy;
  if (objc_opt_isKindOfClass())
  {
    v5 = v14;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  listContentView = [(HUEditableTextCollectionListCell *)self listContentView];
  [listContentView setConfiguration:v6];

  text = [v6 text];
  v9 = [text length];
  v10 = v9 == 0;
  v11 = v9 != 0;

  textField = [(HUEditableTextCollectionListCell *)self textField];
  [textField setHidden:v11];

  listContentView2 = [(HUEditableTextCollectionListCell *)self listContentView];
  [listContentView2 setHidden:v10];

  [(HUEditableTextCollectionListCell *)self setNeedsUpdateConstraints];
}

- (void)setDisabled:(BOOL)disabled
{
  v4 = !disabled;
  textField = [(HUEditableTextCollectionListCell *)self textField];
  [textField setEnabled:v4];

  if (v4)
  {
    [MEMORY[0x277D75348] labelColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemGrayColor];
  }
  v6 = ;
  textField2 = [(HUEditableTextCollectionListCell *)self textField];
  [textField2 setTextColor:v6];

  textField3 = [(HUEditableTextCollectionListCell *)self textField];
  [textField3 setClearButtonMode:v4];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v8.receiver = self;
  v8.super_class = HUEditableTextCollectionListCell;
  [(HUEditableTextCollectionListCell *)&v8 setSelected:?];
  if (selectedCopy)
  {
    textField = [(HUEditableTextCollectionListCell *)self textField];
    [textField becomeFirstResponder];
  }

  textField2 = [(HUEditableTextCollectionListCell *)self textField];
  [textField2 setHidden:selectedCopy];

  listContentView = [(HUEditableTextCollectionListCell *)self listContentView];
  [listContentView setHidden:selectedCopy ^ 1];
}

- (void)updateConstraints
{
  v59.receiver = self;
  v59.super_class = HUEditableTextCollectionListCell;
  [(HUEditableTextCollectionListCell *)&v59 updateConstraints];
  textFieldConstraints = [(HUEditableTextCollectionListCell *)self textFieldConstraints];

  if (!textFieldConstraints)
  {
    array = [MEMORY[0x277CBEB18] array];
    textField = [(HUEditableTextCollectionListCell *)self textField];
    [textField setTranslatesAutoresizingMaskIntoConstraints:0];

    textField2 = [(HUEditableTextCollectionListCell *)self textField];
    topAnchor = [textField2 topAnchor];
    contentView = [(HUEditableTextCollectionListCell *)self contentView];
    layoutMarginsGuide = [contentView layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [array addObject:v11];

    textField3 = [(HUEditableTextCollectionListCell *)self textField];
    bottomAnchor = [textField3 bottomAnchor];
    contentView2 = [(HUEditableTextCollectionListCell *)self contentView];
    layoutMarginsGuide2 = [contentView2 layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide2 bottomAnchor];
    v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [array addObject:v17];

    textField4 = [(HUEditableTextCollectionListCell *)self textField];
    leadingAnchor = [textField4 leadingAnchor];
    contentView3 = [(HUEditableTextCollectionListCell *)self contentView];
    layoutMarginsGuide3 = [contentView3 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide3 leadingAnchor];
    v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [array addObject:v23];

    textField5 = [(HUEditableTextCollectionListCell *)self textField];
    trailingAnchor = [textField5 trailingAnchor];
    contentView4 = [(HUEditableTextCollectionListCell *)self contentView];
    layoutMarginsGuide4 = [contentView4 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide4 trailingAnchor];
    v29 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [array addObject:v29];

    [(HUEditableTextCollectionListCell *)self setTextFieldConstraints:array];
  }

  listContentViewConstraints = [(HUEditableTextCollectionListCell *)self listContentViewConstraints];

  if (!listContentViewConstraints)
  {
    array2 = [MEMORY[0x277CBEB18] array];
    listContentView = [(HUEditableTextCollectionListCell *)self listContentView];
    [listContentView setTranslatesAutoresizingMaskIntoConstraints:0];

    listContentView2 = [(HUEditableTextCollectionListCell *)self listContentView];
    leadingAnchor3 = [listContentView2 leadingAnchor];
    leadingAnchor4 = [(HUEditableTextCollectionListCell *)self leadingAnchor];
    v36 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    [array2 addObject:v36];

    listContentView3 = [(HUEditableTextCollectionListCell *)self listContentView];
    trailingAnchor3 = [listContentView3 trailingAnchor];
    layoutMarginsGuide5 = [(HUEditableTextCollectionListCell *)self layoutMarginsGuide];
    trailingAnchor4 = [layoutMarginsGuide5 trailingAnchor];
    v41 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    [array2 addObject:v41];

    listContentView4 = [(HUEditableTextCollectionListCell *)self listContentView];
    topAnchor3 = [listContentView4 topAnchor];
    layoutMarginsGuide6 = [(HUEditableTextCollectionListCell *)self layoutMarginsGuide];
    topAnchor4 = [layoutMarginsGuide6 topAnchor];
    v46 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    [array2 addObject:v46];

    listContentView5 = [(HUEditableTextCollectionListCell *)self listContentView];
    bottomAnchor3 = [listContentView5 bottomAnchor];
    layoutMarginsGuide7 = [(HUEditableTextCollectionListCell *)self layoutMarginsGuide];
    bottomAnchor4 = [layoutMarginsGuide7 bottomAnchor];
    v51 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    [array2 addObject:v51];

    [(HUEditableTextCollectionListCell *)self setListContentViewConstraints:array2];
  }

  textField6 = [(HUEditableTextCollectionListCell *)self textField];
  isHidden = [textField6 isHidden];

  v54 = MEMORY[0x277CCAAD0];
  textFieldConstraints2 = [(HUEditableTextCollectionListCell *)self textFieldConstraints];
  if (isHidden)
  {
    [v54 deactivateConstraints:textFieldConstraints2];

    v56 = MEMORY[0x277CCAAD0];
    listContentViewConstraints2 = [(HUEditableTextCollectionListCell *)self listContentViewConstraints];
    [v56 activateConstraints:listContentViewConstraints2];
  }

  else
  {
    [v54 activateConstraints:textFieldConstraints2];

    v58 = MEMORY[0x277CCAAD0];
    listContentViewConstraints2 = [(HUEditableTextCollectionListCell *)self listContentViewConstraints];
    [v58 deactivateConstraints:listContentViewConstraints2];
  }
}

@end