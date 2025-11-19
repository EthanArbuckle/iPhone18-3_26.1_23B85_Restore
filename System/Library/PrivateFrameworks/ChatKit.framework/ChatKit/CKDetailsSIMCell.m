@interface CKDetailsSIMCell
+ (double)preferredHeight;
- (CKDetailsSIMCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (CKDetailsSIMCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 simLabelText:(id)a5 badgeText:(id)a6;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setMenu:(id)a3;
- (void)setSIMLabelText:(id)a3 badgeText:(id)a4;
@end

@implementation CKDetailsSIMCell

+ (double)preferredHeight
{
  HasMultipleActiveSubscriptions = IMSharedHelperDeviceHasMultipleActiveSubscriptions();
  result = 44.0;
  if (!HasMultipleActiveSubscriptions)
  {
    return 0.0;
  }

  return result;
}

- (CKDetailsSIMCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 simLabelText:(id)a5 badgeText:(id)a6
{
  v82[8] = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a6;
  v80.receiver = self;
  v80.super_class = CKDetailsSIMCell;
  v12 = [(CKDetailsCell *)&v80 initWithStyle:a3 reuseIdentifier:a4];
  v13 = v12;
  if (v12)
  {
    [(CKDetailsSIMCell *)v12 setSelectionStyle:0];
    v14 = [(CKDetailsSIMCell *)v13 textLabel];
    v15 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [v14 setFont:v15];

    v16 = [(CKDetailsSIMCell *)v13 textLabel];
    [v16 setNumberOfLines:0];

    v17 = [(CKDetailsSIMCell *)v13 textLabel];
    [v17 setLineBreakMode:4];

    v18 = [(CKDetailsSIMCell *)v13 textLabel];
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];

    v19 = [(CKDetailsSIMCell *)v13 contentView];
    [v19 setBackgroundColor:0];

    v20 = objc_alloc_init(CKComposeSubscriptionSelectorButton);
    [(CKDetailsSIMCell *)v13 setButton:v20];

    v21 = [(CKDetailsSIMCell *)v13 button];
    [v21 setBackgroundColor:0];

    v22 = [(CKDetailsSIMCell *)v13 button];
    v78 = v11;
    v79 = v10;
    [v22 updateContentsWithTitle:v10 badgeText:v11 theme:1];

    v23 = [(CKDetailsSIMCell *)v13 button];
    [(CKDetailsSIMCell *)v13 addSubview:v23];

    v24 = [MEMORY[0x1E69DC668] sharedApplication];
    v25 = [v24 userInterfaceLayoutDirection];

    v69 = MEMORY[0x1E696ACD8];
    v26 = [(CKDetailsSIMCell *)v13 textLabel];
    v77 = v26;
    if (v25 == 1)
    {
      v27 = [v26 rightAnchor];
      v75 = [(CKDetailsSIMCell *)v13 rightAnchor];
      v76 = v27;
      v74 = [v27 constraintEqualToAnchor:-18.0 constant:?];
      v81[0] = v74;
      v73 = [(CKDetailsSIMCell *)v13 textLabel];
      v28 = [v73 topAnchor];
      v71 = [(CKDetailsSIMCell *)v13 topAnchor];
      v72 = v28;
      v70 = [v28 constraintEqualToAnchor:?];
      v81[1] = v70;
      v68 = [(CKDetailsSIMCell *)v13 textLabel];
      v29 = [v68 bottomAnchor];
      v66 = [(CKDetailsSIMCell *)v13 bottomAnchor];
      v67 = v29;
      v65 = [v29 constraintEqualToAnchor:?];
      v81[2] = v65;
      v64 = [(CKDetailsSIMCell *)v13 button];
      v30 = [v64 centerXAnchor];
      v31 = [(CKDetailsSIMCell *)v13 leftAnchor];
      [(CKDetailsSIMCell *)v13 bounds];
      v62 = v31;
      v63 = v30;
      v61 = [v30 constraintEqualToAnchor:v31 constant:v32 * 0.25];
      v81[3] = v61;
      v60 = [(CKDetailsSIMCell *)v13 button];
      v33 = [v60 leftAnchor];
      v58 = [(CKDetailsSIMCell *)v13 leftAnchor];
      v59 = v33;
      v57 = [v33 constraintEqualToAnchor:18.0 constant:?];
      v81[4] = v57;
      v56 = [(CKDetailsSIMCell *)v13 button];
      v34 = [v56 topAnchor];
      v54 = [(CKDetailsSIMCell *)v13 topAnchor];
      v55 = v34;
      v53 = [v34 constraintEqualToAnchor:5.0 constant:?];
      v81[5] = v53;
      v52 = [(CKDetailsSIMCell *)v13 button];
      v35 = [v52 bottomAnchor];
      v36 = [(CKDetailsSIMCell *)v13 bottomAnchor];
      v37 = [v35 constraintEqualToAnchor:v36 constant:-5.0];
      v81[6] = v37;
      v38 = [(CKDetailsSIMCell *)v13 textLabel];
      v39 = [v38 leftAnchor];
      v40 = [(CKDetailsSIMCell *)v13 button];
      v41 = [v40 rightAnchor];
      v42 = [v39 constraintEqualToAnchor:v41 constant:5.0];
      v81[7] = v42;
      v43 = v81;
    }

    else
    {
      v44 = [v26 leftAnchor];
      v75 = [(CKDetailsSIMCell *)v13 leftAnchor];
      v76 = v44;
      v74 = [v44 constraintEqualToAnchor:18.0 constant:?];
      v82[0] = v74;
      v73 = [(CKDetailsSIMCell *)v13 textLabel];
      v45 = [v73 topAnchor];
      v71 = [(CKDetailsSIMCell *)v13 topAnchor];
      v72 = v45;
      v70 = [v45 constraintEqualToAnchor:?];
      v82[1] = v70;
      v68 = [(CKDetailsSIMCell *)v13 textLabel];
      v46 = [v68 bottomAnchor];
      v66 = [(CKDetailsSIMCell *)v13 bottomAnchor];
      v67 = v46;
      v65 = [v46 constraintEqualToAnchor:?];
      v82[2] = v65;
      v64 = [(CKDetailsSIMCell *)v13 textLabel];
      v47 = [v64 rightAnchor];
      v62 = [(CKDetailsSIMCell *)v13 button];
      [v62 leftAnchor];
      v61 = v63 = v47;
      v60 = [v47 constraintEqualToAnchor:-5.0 constant:?];
      v82[3] = v60;
      v59 = [(CKDetailsSIMCell *)v13 button];
      v48 = [v59 centerYAnchor];
      v57 = [(CKDetailsSIMCell *)v13 centerYAnchor];
      v58 = v48;
      v56 = [v48 constraintEqualToAnchor:?];
      v82[4] = v56;
      v55 = [(CKDetailsSIMCell *)v13 button];
      v49 = [v55 rightAnchor];
      v53 = [(CKDetailsSIMCell *)v13 rightAnchor];
      v54 = v49;
      v52 = [v49 constraintEqualToAnchor:-18.0 constant:?];
      v82[5] = v52;
      v35 = [(CKDetailsSIMCell *)v13 button];
      v36 = [v35 topAnchor];
      v37 = [(CKDetailsSIMCell *)v13 topAnchor];
      v38 = [v36 constraintEqualToAnchor:v37 constant:5.0];
      v82[6] = v38;
      v39 = [(CKDetailsSIMCell *)v13 button];
      v40 = [v39 bottomAnchor];
      v41 = [(CKDetailsSIMCell *)v13 bottomAnchor];
      v42 = [v40 constraintEqualToAnchor:v41 constant:-5.0];
      v82[7] = v42;
      v43 = v82;
    }

    v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:8];
    [v69 activateConstraints:v50];

    v11 = v78;
    v10 = v79;
  }

  return v13;
}

- (CKDetailsSIMCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v32[4] = *MEMORY[0x1E69E9840];
  v31.receiver = self;
  v31.super_class = CKDetailsSIMCell;
  v4 = [(CKDetailsCell *)&v31 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(CKDetailsSIMCell *)v4 setSelectionStyle:0];
    v6 = [(CKDetailsSIMCell *)v5 textLabel];
    v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [v6 setFont:v7];

    v8 = [(CKDetailsSIMCell *)v5 textLabel];
    [v8 setNumberOfLines:0];

    v9 = [(CKDetailsSIMCell *)v5 textLabel];
    [v9 setLineBreakMode:4];

    v10 = [(CKDetailsSIMCell *)v5 textLabel];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:1];

    v11 = [(CKDetailsSIMCell *)v5 contentView];
    [v11 setBackgroundColor:0];

    v23 = MEMORY[0x1E696ACD8];
    v30 = [(CKDetailsSIMCell *)v5 textLabel];
    v29 = [v30 rightAnchor];
    v28 = [(CKDetailsSIMCell *)v5 rightAnchor];
    v27 = [v29 constraintEqualToAnchor:v28];
    v32[0] = v27;
    v26 = [(CKDetailsSIMCell *)v5 textLabel];
    v25 = [v26 leftAnchor];
    v24 = [(CKDetailsSIMCell *)v5 leftAnchor];
    v22 = [v25 constraintEqualToAnchor:v24];
    v32[1] = v22;
    v12 = [(CKDetailsSIMCell *)v5 textLabel];
    v13 = [v12 topAnchor];
    v14 = [(CKDetailsSIMCell *)v5 topAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v32[2] = v15;
    v16 = [(CKDetailsSIMCell *)v5 textLabel];
    v17 = [v16 bottomAnchor];
    v18 = [(CKDetailsSIMCell *)v5 bottomAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    v32[3] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:4];
    [v23 activateConstraints:v20];
  }

  return v5;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = CKDetailsSIMCell;
  [(CKDetailsCell *)&v5 layoutSubviews];
  v3 = [(CKDetailsCell *)self topSeperator];
  [v3 setHidden:1];

  v4 = [(CKDetailsCell *)self bottomSeperator];
  [v4 setHidden:1];
}

- (void)prepareForReuse
{
  v6.receiver = self;
  v6.super_class = CKDetailsSIMCell;
  [(CKDetailsCell *)&v6 prepareForReuse];
  v3 = [(CKDetailsSIMCell *)self textLabel];
  [v3 setText:&stru_1F04268F8];

  [(CKDetailsSIMCell *)self setMenu:0];
  v4 = [(CKDetailsSIMCell *)self menu];
  v5 = [(CKDetailsSIMCell *)self button];
  [v5 setHidden:v4 == 0];
}

- (void)setMenu:(id)a3
{
  v5 = a3;
  if (self->_menu != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_menu, a3);
    v6 = [(CKDetailsSIMCell *)self button];
    [v6 setMenu:v8];

    v7 = [(CKDetailsSIMCell *)self button];
    [v7 setHidden:v8 == 0];

    v5 = v8;
  }
}

- (void)setSIMLabelText:(id)a3 badgeText:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CKDetailsSIMCell *)self button];
  [v8 updateContentsWithTitle:v7 badgeText:v6 theme:1];
}

@end