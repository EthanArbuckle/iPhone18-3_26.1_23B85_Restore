@interface CKSingleContactDetailsCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKSingleContactDetailsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)initConstraints;
- (void)layoutSubviews;
@end

@implementation CKSingleContactDetailsCell

- (CKSingleContactDetailsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v53.receiver = self;
  v53.super_class = CKSingleContactDetailsCell;
  v4 = [(CKDetailsCell *)&v53 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(CKSingleContactDetailsCell *)v4 setSelectionStyle:0];
    v6 = objc_alloc(MEMORY[0x1E69DCC10]);
    v7 = *MEMORY[0x1E695F058];
    v8 = *(MEMORY[0x1E695F058] + 8);
    v9 = *(MEMORY[0x1E695F058] + 16);
    v10 = *(MEMORY[0x1E695F058] + 24);
    v11 = [v6 initWithFrame:{*MEMORY[0x1E695F058], v8, v9, v10}];
    [(CKSingleContactDetailsCell *)v5 setTitleLabel:v11];

    v12 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD40] addingSymbolicTraits:0x8000 options:0];
    titleLabel = [(CKSingleContactDetailsCell *)v5 titleLabel];
    v14 = [MEMORY[0x1E69DB878] fontWithDescriptor:v12 size:0.0];
    [titleLabel setFont:v14];

    titleLabel2 = [(CKSingleContactDetailsCell *)v5 titleLabel];
    [titleLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];

    titleLabel3 = [(CKSingleContactDetailsCell *)v5 titleLabel];
    v17 = CKFrameworkBundle();
    v18 = [v17 localizedStringForKey:@"CONTACT_DETAILS_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    [titleLabel3 setText:v18];

    titleLabel4 = [(CKSingleContactDetailsCell *)v5 titleLabel];
    [titleLabel4 setContentMode:4];

    titleLabel5 = [(CKSingleContactDetailsCell *)v5 titleLabel];
    [titleLabel5 setNumberOfLines:0];

    titleLabel6 = [(CKSingleContactDetailsCell *)v5 titleLabel];
    [titleLabel6 setLineBreakMode:0];

    v22 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v7, v8, v9, v10}];
    [(CKSingleContactDetailsCell *)v5 setSubTitleLabel:v22];

    v23 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80] addingSymbolicTraits:0x8000 options:0];
    subTitleLabel = [(CKSingleContactDetailsCell *)v5 subTitleLabel];
    v25 = [MEMORY[0x1E69DB878] fontWithDescriptor:v23 size:0.0];
    [subTitleLabel setFont:v25];

    subTitleLabel2 = [(CKSingleContactDetailsCell *)v5 subTitleLabel];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [subTitleLabel2 setTextColor:secondaryLabelColor];

    subTitleLabel3 = [(CKSingleContactDetailsCell *)v5 subTitleLabel];
    [subTitleLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

    subTitleLabel4 = [(CKSingleContactDetailsCell *)v5 subTitleLabel];
    v30 = CKFrameworkBundle();
    v31 = [v30 localizedStringForKey:@"CONTACT_DETAILS_SUBTITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    [subTitleLabel4 setText:v31];

    subTitleLabel5 = [(CKSingleContactDetailsCell *)v5 subTitleLabel];
    [subTitleLabel5 setContentMode:4];

    subTitleLabel6 = [(CKSingleContactDetailsCell *)v5 subTitleLabel];
    [subTitleLabel6 setNumberOfLines:0];

    subTitleLabel7 = [(CKSingleContactDetailsCell *)v5 subTitleLabel];
    [subTitleLabel7 setLineBreakMode:0];

    v35 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v7, v8, v9, v10}];
    [(CKSingleContactDetailsCell *)v5 setChervonImageView:v35];

    v36 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    fontDescriptor = [v36 fontDescriptor];

    v38 = [MEMORY[0x1E69DB878] fontWithDescriptor:fontDescriptor size:0.0];
    v39 = [MEMORY[0x1E69DCAD8] configurationWithFont:v38];
    v40 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.forward.circle" withConfiguration:v39];
    chervonImageView = [(CKSingleContactDetailsCell *)v5 chervonImageView];
    [chervonImageView setImage:v40];

    chervonImageView2 = [(CKSingleContactDetailsCell *)v5 chervonImageView];
    [chervonImageView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    chervonImageView3 = [(CKSingleContactDetailsCell *)v5 chervonImageView];
    tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    [chervonImageView3 setTintColor:tertiaryLabelColor];

    contentView = [(CKSingleContactDetailsCell *)v5 contentView];
    titleLabel7 = [(CKSingleContactDetailsCell *)v5 titleLabel];
    [contentView addSubview:titleLabel7];

    contentView2 = [(CKSingleContactDetailsCell *)v5 contentView];
    subTitleLabel8 = [(CKSingleContactDetailsCell *)v5 subTitleLabel];
    [contentView2 addSubview:subTitleLabel8];

    contentView3 = [(CKSingleContactDetailsCell *)v5 contentView];
    chervonImageView4 = [(CKSingleContactDetailsCell *)v5 chervonImageView];
    [contentView3 addSubview:chervonImageView4];

    contentView4 = [(CKSingleContactDetailsCell *)v5 contentView];
    [contentView4 setBackgroundColor:0];

    [(CKSingleContactDetailsCell *)v5 initConstraints];
  }

  return v5;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  titleLabel = [(CKSingleContactDetailsCell *)self titleLabel];
  [titleLabel sizeThatFits:{width, height}];
  v8 = v7 + 10.0 + 2.0;
  subTitleLabel = [(CKSingleContactDetailsCell *)self subTitleLabel];
  [subTitleLabel sizeThatFits:{width, height}];
  v11 = v8 + v10 + 10.0;

  v12 = width;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)initConstraints
{
  v37[6] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  titleLabel = [(CKSingleContactDetailsCell *)self titleLabel];
  leadingAnchor = [titleLabel leadingAnchor];
  contentView = [(CKSingleContactDetailsCell *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v30 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v37[0] = v30;
  titleLabel2 = [(CKSingleContactDetailsCell *)self titleLabel];
  topAnchor = [titleLabel2 topAnchor];
  contentView2 = [(CKSingleContactDetailsCell *)self contentView];
  topAnchor2 = [contentView2 topAnchor];
  v25 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
  v37[1] = v25;
  subTitleLabel = [(CKSingleContactDetailsCell *)self subTitleLabel];
  leadingAnchor3 = [subTitleLabel leadingAnchor];
  titleLabel3 = [(CKSingleContactDetailsCell *)self titleLabel];
  leadingAnchor4 = [titleLabel3 leadingAnchor];
  v20 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v37[2] = v20;
  subTitleLabel2 = [(CKSingleContactDetailsCell *)self subTitleLabel];
  topAnchor3 = [subTitleLabel2 topAnchor];
  titleLabel4 = [(CKSingleContactDetailsCell *)self titleLabel];
  bottomAnchor = [titleLabel4 bottomAnchor];
  v15 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:2.0];
  v37[3] = v15;
  chervonImageView = [(CKSingleContactDetailsCell *)self chervonImageView];
  centerYAnchor = [chervonImageView centerYAnchor];
  contentView3 = [(CKSingleContactDetailsCell *)self contentView];
  centerYAnchor2 = [contentView3 centerYAnchor];
  v5 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v37[4] = v5;
  chervonImageView2 = [(CKSingleContactDetailsCell *)self chervonImageView];
  trailingAnchor = [chervonImageView2 trailingAnchor];
  contentView4 = [(CKSingleContactDetailsCell *)self contentView];
  layoutMarginsGuide2 = [contentView4 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v37[5] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:6];
  [array addObjectsFromArray:v12];

  [MEMORY[0x1E696ACD8] activateConstraints:array];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = CKSingleContactDetailsCell;
  [(CKDetailsCell *)&v5 layoutSubviews];
  topSeperator = [(CKDetailsCell *)self topSeperator];
  [topSeperator setHidden:1];

  bottomSeperator = [(CKDetailsCell *)self bottomSeperator];
  [bottomSeperator setHidden:1];
}

@end