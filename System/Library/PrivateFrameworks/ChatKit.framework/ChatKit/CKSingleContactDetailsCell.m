@interface CKSingleContactDetailsCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKSingleContactDetailsCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)initConstraints;
- (void)layoutSubviews;
@end

@implementation CKSingleContactDetailsCell

- (CKSingleContactDetailsCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v53.receiver = self;
  v53.super_class = CKSingleContactDetailsCell;
  v4 = [(CKDetailsCell *)&v53 initWithStyle:a3 reuseIdentifier:a4];
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
    v13 = [(CKSingleContactDetailsCell *)v5 titleLabel];
    v14 = [MEMORY[0x1E69DB878] fontWithDescriptor:v12 size:0.0];
    [v13 setFont:v14];

    v15 = [(CKSingleContactDetailsCell *)v5 titleLabel];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

    v16 = [(CKSingleContactDetailsCell *)v5 titleLabel];
    v17 = CKFrameworkBundle();
    v18 = [v17 localizedStringForKey:@"CONTACT_DETAILS_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    [v16 setText:v18];

    v19 = [(CKSingleContactDetailsCell *)v5 titleLabel];
    [v19 setContentMode:4];

    v20 = [(CKSingleContactDetailsCell *)v5 titleLabel];
    [v20 setNumberOfLines:0];

    v21 = [(CKSingleContactDetailsCell *)v5 titleLabel];
    [v21 setLineBreakMode:0];

    v22 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v7, v8, v9, v10}];
    [(CKSingleContactDetailsCell *)v5 setSubTitleLabel:v22];

    v23 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80] addingSymbolicTraits:0x8000 options:0];
    v24 = [(CKSingleContactDetailsCell *)v5 subTitleLabel];
    v25 = [MEMORY[0x1E69DB878] fontWithDescriptor:v23 size:0.0];
    [v24 setFont:v25];

    v26 = [(CKSingleContactDetailsCell *)v5 subTitleLabel];
    v27 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v26 setTextColor:v27];

    v28 = [(CKSingleContactDetailsCell *)v5 subTitleLabel];
    [v28 setTranslatesAutoresizingMaskIntoConstraints:0];

    v29 = [(CKSingleContactDetailsCell *)v5 subTitleLabel];
    v30 = CKFrameworkBundle();
    v31 = [v30 localizedStringForKey:@"CONTACT_DETAILS_SUBTITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    [v29 setText:v31];

    v32 = [(CKSingleContactDetailsCell *)v5 subTitleLabel];
    [v32 setContentMode:4];

    v33 = [(CKSingleContactDetailsCell *)v5 subTitleLabel];
    [v33 setNumberOfLines:0];

    v34 = [(CKSingleContactDetailsCell *)v5 subTitleLabel];
    [v34 setLineBreakMode:0];

    v35 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v7, v8, v9, v10}];
    [(CKSingleContactDetailsCell *)v5 setChervonImageView:v35];

    v36 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    v37 = [v36 fontDescriptor];

    v38 = [MEMORY[0x1E69DB878] fontWithDescriptor:v37 size:0.0];
    v39 = [MEMORY[0x1E69DCAD8] configurationWithFont:v38];
    v40 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.forward.circle" withConfiguration:v39];
    v41 = [(CKSingleContactDetailsCell *)v5 chervonImageView];
    [v41 setImage:v40];

    v42 = [(CKSingleContactDetailsCell *)v5 chervonImageView];
    [v42 setTranslatesAutoresizingMaskIntoConstraints:0];

    v43 = [(CKSingleContactDetailsCell *)v5 chervonImageView];
    v44 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    [v43 setTintColor:v44];

    v45 = [(CKSingleContactDetailsCell *)v5 contentView];
    v46 = [(CKSingleContactDetailsCell *)v5 titleLabel];
    [v45 addSubview:v46];

    v47 = [(CKSingleContactDetailsCell *)v5 contentView];
    v48 = [(CKSingleContactDetailsCell *)v5 subTitleLabel];
    [v47 addSubview:v48];

    v49 = [(CKSingleContactDetailsCell *)v5 contentView];
    v50 = [(CKSingleContactDetailsCell *)v5 chervonImageView];
    [v49 addSubview:v50];

    v51 = [(CKSingleContactDetailsCell *)v5 contentView];
    [v51 setBackgroundColor:0];

    [(CKSingleContactDetailsCell *)v5 initConstraints];
  }

  return v5;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(CKSingleContactDetailsCell *)self titleLabel];
  [v6 sizeThatFits:{width, height}];
  v8 = v7 + 10.0 + 2.0;
  v9 = [(CKSingleContactDetailsCell *)self subTitleLabel];
  [v9 sizeThatFits:{width, height}];
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
  v36 = [MEMORY[0x1E695DF70] array];
  v35 = [(CKSingleContactDetailsCell *)self titleLabel];
  v33 = [v35 leadingAnchor];
  v34 = [(CKSingleContactDetailsCell *)self contentView];
  v32 = [v34 layoutMarginsGuide];
  v31 = [v32 leadingAnchor];
  v30 = [v33 constraintEqualToAnchor:v31];
  v37[0] = v30;
  v29 = [(CKSingleContactDetailsCell *)self titleLabel];
  v27 = [v29 topAnchor];
  v28 = [(CKSingleContactDetailsCell *)self contentView];
  v26 = [v28 topAnchor];
  v25 = [v27 constraintEqualToAnchor:v26 constant:10.0];
  v37[1] = v25;
  v24 = [(CKSingleContactDetailsCell *)self subTitleLabel];
  v22 = [v24 leadingAnchor];
  v23 = [(CKSingleContactDetailsCell *)self titleLabel];
  v21 = [v23 leadingAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v37[2] = v20;
  v19 = [(CKSingleContactDetailsCell *)self subTitleLabel];
  v17 = [v19 topAnchor];
  v18 = [(CKSingleContactDetailsCell *)self titleLabel];
  v16 = [v18 bottomAnchor];
  v15 = [v17 constraintEqualToAnchor:v16 constant:2.0];
  v37[3] = v15;
  v14 = [(CKSingleContactDetailsCell *)self chervonImageView];
  v13 = [v14 centerYAnchor];
  v3 = [(CKSingleContactDetailsCell *)self contentView];
  v4 = [v3 centerYAnchor];
  v5 = [v13 constraintEqualToAnchor:v4];
  v37[4] = v5;
  v6 = [(CKSingleContactDetailsCell *)self chervonImageView];
  v7 = [v6 trailingAnchor];
  v8 = [(CKSingleContactDetailsCell *)self contentView];
  v9 = [v8 layoutMarginsGuide];
  v10 = [v9 trailingAnchor];
  v11 = [v7 constraintEqualToAnchor:v10];
  v37[5] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:6];
  [v36 addObjectsFromArray:v12];

  [MEMORY[0x1E696ACD8] activateConstraints:v36];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = CKSingleContactDetailsCell;
  [(CKDetailsCell *)&v5 layoutSubviews];
  v3 = [(CKDetailsCell *)self topSeperator];
  [v3 setHidden:1];

  v4 = [(CKDetailsCell *)self bottomSeperator];
  [v4 setHidden:1];
}

@end