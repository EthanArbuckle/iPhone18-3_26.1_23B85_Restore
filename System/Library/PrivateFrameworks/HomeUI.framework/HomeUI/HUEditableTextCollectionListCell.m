@interface HUEditableTextCollectionListCell
- (HUEditableTextCollectionListCell)initWithFrame:(CGRect)a3;
- (void)prepareForReuse;
- (void)setContentConfiguration:(id)a3;
- (void)setDisabled:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)updateConstraints;
@end

@implementation HUEditableTextCollectionListCell

- (HUEditableTextCollectionListCell)initWithFrame:(CGRect)a3
{
  v30.receiver = self;
  v30.super_class = HUEditableTextCollectionListCell;
  v3 = [(HUEditableTextCollectionListCell *)&v30 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75BB8]);
    textField = v3->_textField;
    v3->_textField = v4;

    v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    v7 = [(HUEditableTextCollectionListCell *)v3 textField];
    [v7 setFont:v6];

    v8 = [(HUEditableTextCollectionListCell *)v3 textField];
    [v8 setAdjustsFontForContentSizeCategory:1];

    v9 = [(HUEditableTextCollectionListCell *)v3 textField];
    [v9 setReturnKeyType:9];

    v10 = [(HUEditableTextCollectionListCell *)v3 textField];
    [v10 setClearButtonMode:3];

    v11 = [(HUEditableTextCollectionListCell *)v3 contentView];
    v12 = [(HUEditableTextCollectionListCell *)v3 textField];
    [v11 addSubview:v12];

    v13 = objc_alloc(MEMORY[0x277D756E8]);
    v14 = [(HUEditableTextCollectionListCell *)v3 defaultContentConfiguration];
    v15 = [v13 initWithConfiguration:v14];
    [(HUEditableTextCollectionListCell *)v3 setListContentView:v15];

    v16 = [(HUEditableTextCollectionListCell *)v3 listContentView];
    [v16 setHidden:1];

    v17 = [(HUEditableTextCollectionListCell *)v3 contentView];
    v18 = [(HUEditableTextCollectionListCell *)v3 listContentView];
    [v17 addSubview:v18];
  }

  v19 = [MEMORY[0x277D756E0] cellConfiguration];
  [v19 directionalLayoutMargins];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = [(HUEditableTextCollectionListCell *)v3 contentView];
  [v28 setDirectionalLayoutMargins:{v21, v23, v25, v27}];

  return v3;
}

- (void)prepareForReuse
{
  v10.receiver = self;
  v10.super_class = HUEditableTextCollectionListCell;
  [(HUEditableTextCollectionListCell *)&v10 prepareForReuse];
  v3 = [(HUEditableTextCollectionListCell *)self textField];
  [v3 setText:0];

  v4 = [(HUEditableTextCollectionListCell *)self textField];
  [v4 setPlaceholder:0];

  v5 = [(HUEditableTextCollectionListCell *)self textField];
  [v5 setDelegate:0];

  v6 = [(HUEditableTextCollectionListCell *)self textField];
  [v6 setEnabled:1];

  v7 = [(HUEditableTextCollectionListCell *)self textField];
  [v7 endEditing:1];

  v8 = [(HUEditableTextCollectionListCell *)self textField];
  [v8 setHidden:0];

  v9 = [(HUEditableTextCollectionListCell *)self listContentView];
  [v9 setHidden:1];
}

- (void)setContentConfiguration:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v14 = v4;
  if (objc_opt_isKindOfClass())
  {
    v5 = v14;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [(HUEditableTextCollectionListCell *)self listContentView];
  [v7 setConfiguration:v6];

  v8 = [v6 text];
  v9 = [v8 length];
  v10 = v9 == 0;
  v11 = v9 != 0;

  v12 = [(HUEditableTextCollectionListCell *)self textField];
  [v12 setHidden:v11];

  v13 = [(HUEditableTextCollectionListCell *)self listContentView];
  [v13 setHidden:v10];

  [(HUEditableTextCollectionListCell *)self setNeedsUpdateConstraints];
}

- (void)setDisabled:(BOOL)a3
{
  v4 = !a3;
  v5 = [(HUEditableTextCollectionListCell *)self textField];
  [v5 setEnabled:v4];

  if (v4)
  {
    [MEMORY[0x277D75348] labelColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemGrayColor];
  }
  v6 = ;
  v7 = [(HUEditableTextCollectionListCell *)self textField];
  [v7 setTextColor:v6];

  v8 = [(HUEditableTextCollectionListCell *)self textField];
  [v8 setClearButtonMode:v4];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = HUEditableTextCollectionListCell;
  [(HUEditableTextCollectionListCell *)&v8 setSelected:?];
  if (v3)
  {
    v5 = [(HUEditableTextCollectionListCell *)self textField];
    [v5 becomeFirstResponder];
  }

  v6 = [(HUEditableTextCollectionListCell *)self textField];
  [v6 setHidden:v3];

  v7 = [(HUEditableTextCollectionListCell *)self listContentView];
  [v7 setHidden:v3 ^ 1];
}

- (void)updateConstraints
{
  v59.receiver = self;
  v59.super_class = HUEditableTextCollectionListCell;
  [(HUEditableTextCollectionListCell *)&v59 updateConstraints];
  v3 = [(HUEditableTextCollectionListCell *)self textFieldConstraints];

  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = [(HUEditableTextCollectionListCell *)self textField];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

    v6 = [(HUEditableTextCollectionListCell *)self textField];
    v7 = [v6 topAnchor];
    v8 = [(HUEditableTextCollectionListCell *)self contentView];
    v9 = [v8 layoutMarginsGuide];
    v10 = [v9 topAnchor];
    v11 = [v7 constraintEqualToAnchor:v10];
    [v4 addObject:v11];

    v12 = [(HUEditableTextCollectionListCell *)self textField];
    v13 = [v12 bottomAnchor];
    v14 = [(HUEditableTextCollectionListCell *)self contentView];
    v15 = [v14 layoutMarginsGuide];
    v16 = [v15 bottomAnchor];
    v17 = [v13 constraintEqualToAnchor:v16];
    [v4 addObject:v17];

    v18 = [(HUEditableTextCollectionListCell *)self textField];
    v19 = [v18 leadingAnchor];
    v20 = [(HUEditableTextCollectionListCell *)self contentView];
    v21 = [v20 layoutMarginsGuide];
    v22 = [v21 leadingAnchor];
    v23 = [v19 constraintEqualToAnchor:v22];
    [v4 addObject:v23];

    v24 = [(HUEditableTextCollectionListCell *)self textField];
    v25 = [v24 trailingAnchor];
    v26 = [(HUEditableTextCollectionListCell *)self contentView];
    v27 = [v26 layoutMarginsGuide];
    v28 = [v27 trailingAnchor];
    v29 = [v25 constraintEqualToAnchor:v28];
    [v4 addObject:v29];

    [(HUEditableTextCollectionListCell *)self setTextFieldConstraints:v4];
  }

  v30 = [(HUEditableTextCollectionListCell *)self listContentViewConstraints];

  if (!v30)
  {
    v31 = [MEMORY[0x277CBEB18] array];
    v32 = [(HUEditableTextCollectionListCell *)self listContentView];
    [v32 setTranslatesAutoresizingMaskIntoConstraints:0];

    v33 = [(HUEditableTextCollectionListCell *)self listContentView];
    v34 = [v33 leadingAnchor];
    v35 = [(HUEditableTextCollectionListCell *)self leadingAnchor];
    v36 = [v34 constraintEqualToAnchor:v35];
    [v31 addObject:v36];

    v37 = [(HUEditableTextCollectionListCell *)self listContentView];
    v38 = [v37 trailingAnchor];
    v39 = [(HUEditableTextCollectionListCell *)self layoutMarginsGuide];
    v40 = [v39 trailingAnchor];
    v41 = [v38 constraintEqualToAnchor:v40];
    [v31 addObject:v41];

    v42 = [(HUEditableTextCollectionListCell *)self listContentView];
    v43 = [v42 topAnchor];
    v44 = [(HUEditableTextCollectionListCell *)self layoutMarginsGuide];
    v45 = [v44 topAnchor];
    v46 = [v43 constraintEqualToAnchor:v45];
    [v31 addObject:v46];

    v47 = [(HUEditableTextCollectionListCell *)self listContentView];
    v48 = [v47 bottomAnchor];
    v49 = [(HUEditableTextCollectionListCell *)self layoutMarginsGuide];
    v50 = [v49 bottomAnchor];
    v51 = [v48 constraintEqualToAnchor:v50];
    [v31 addObject:v51];

    [(HUEditableTextCollectionListCell *)self setListContentViewConstraints:v31];
  }

  v52 = [(HUEditableTextCollectionListCell *)self textField];
  v53 = [v52 isHidden];

  v54 = MEMORY[0x277CCAAD0];
  v55 = [(HUEditableTextCollectionListCell *)self textFieldConstraints];
  if (v53)
  {
    [v54 deactivateConstraints:v55];

    v56 = MEMORY[0x277CCAAD0];
    v57 = [(HUEditableTextCollectionListCell *)self listContentViewConstraints];
    [v56 activateConstraints:v57];
  }

  else
  {
    [v54 activateConstraints:v55];

    v58 = MEMORY[0x277CCAAD0];
    v57 = [(HUEditableTextCollectionListCell *)self listContentViewConstraints];
    [v58 deactivateConstraints:v57];
  }
}

@end