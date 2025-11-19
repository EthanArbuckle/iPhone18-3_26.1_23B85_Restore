@interface CNAutocompleteSuggestionsCell
- (BOOL)useAccessibleLayout;
- (CNAutocompleteSuggestionsCell)initWithFrame:(CGRect)a3;
- (UIImage)image;
- (void)setImage:(id)a3;
- (void)setSelected:(BOOL)a3;
- (void)setupConstraints;
@end

@implementation CNAutocompleteSuggestionsCell

- (CNAutocompleteSuggestionsCell)initWithFrame:(CGRect)a3
{
  v23.receiver = self;
  v23.super_class = CNAutocompleteSuggestionsCell;
  v3 = [(CNAutocompleteSuggestionsCell *)&v23 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] clearColor];
    [(CNAutocompleteSuggestionsCell *)v3 setBackgroundColor:v4];

    v5 = [CNAutocompleteSuggestionsImageView alloc];
    v6 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 8);
    v8 = *(MEMORY[0x1E695F058] + 16);
    v9 = *(MEMORY[0x1E695F058] + 24);
    v10 = [(CNAutocompleteSuggestionsImageView *)v5 initWithFrame:*MEMORY[0x1E695F058], v7, v8, v9];
    [(CNAutocompleteSuggestionsImageView *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [(CNAutocompleteSuggestionsCell *)v3 contentView];
    [v11 addSubview:v10];

    [(CNAutocompleteSuggestionsCell *)v3 setAvatarView:v10];
    v12 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v6, v7, v8, v9}];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v12 setNumberOfLines:2];
    v13 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD08]];
    [v12 setFont:v13];

    v14 = [MEMORY[0x1E69DC888] labelColor];
    [v12 setTextColor:v14];

    v15 = [(CNAutocompleteSuggestionsCell *)v3 traitCollection];
    v16 = [v15 layoutDirection] == 1;

    if ([(CNAutocompleteSuggestionsCell *)v3 useAccessibleLayout])
    {
      v17 = 2 * v16;
    }

    else
    {
      v17 = 1;
    }

    [v12 setTextAlignment:v17];
    [v12 setAdjustsFontSizeToFitWidth:1];
    [v12 setMinimumScaleFactor:0.949999988];
    [v12 setAllowsDefaultTighteningForTruncation:0];
    v18 = [(CNAutocompleteSuggestionsCell *)v3 contentView];
    [v18 addSubview:v12];

    [(CNAutocompleteSuggestionsCell *)v3 setNameLabel:v12];
    v19 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    v20 = [(CNAutocompleteSuggestionsCell *)v3 contentView];
    [v20 addLayoutGuide:v19];

    [(CNAutocompleteSuggestionsCell *)v3 setClipsToBounds:1];
    [(CNAutocompleteSuggestionsCell *)v3 setupConstraints];
    v21 = v3;
  }

  return v3;
}

- (BOOL)useAccessibleLayout
{
  v2 = [(CNAutocompleteSuggestionsCell *)self traitCollection];
  v3 = isTraitCollectionAccessible(v2);

  return v3;
}

- (void)setupConstraints
{
  v64[7] = *MEMORY[0x1E69E9840];
  v3 = [(CNAutocompleteSuggestionsCell *)self useAccessibleLayout];
  v59 = [(CNAutocompleteSuggestionsCell *)self avatarView];
  v4 = [v59 widthAnchor];
  v55 = [(CNAutocompleteSuggestionsCell *)self avatarView];
  [v55 heightAnchor];
  v54 = v56 = v4;
  v62 = [v4 constraintEqualToAnchor:?];
  if (v3)
  {
    v64[0] = v62;
    v49 = [(CNAutocompleteSuggestionsCell *)self avatarView];
    v5 = [v49 topAnchor];
    v6 = [(CNAutocompleteSuggestionsCell *)self contentView];
    v7 = [v6 topAnchor];
    v46 = v5;
    v61 = [v5 constraintEqualToAnchor:v7 constant:22.0];
    v64[1] = v61;
    v60 = [(CNAutocompleteSuggestionsCell *)self avatarView];
    v8 = [v60 bottomAnchor];
    v57 = [(CNAutocompleteSuggestionsCell *)self contentView];
    [v57 bottomAnchor];
    v45 = v58 = v8;
    v44 = [v8 constraintEqualToAnchor:v45 constant:-22.0];
    v64[2] = v44;
    v43 = [(CNAutocompleteSuggestionsCell *)self nameLabel];
    v9 = [v43 centerYAnchor];
    v53 = [(CNAutocompleteSuggestionsCell *)self avatarView];
    v52 = [v53 centerYAnchor];
    v51 = [v9 constraintEqualToAnchor:?];
    v64[3] = v51;
    v50 = [(CNAutocompleteSuggestionsCell *)self avatarView];
    v10 = [v50 leadingAnchor];
    v47 = [(CNAutocompleteSuggestionsCell *)self contentView];
    v11 = [v47 leadingAnchor];
    v48 = v10;
    v12 = v10;
    v13 = v11;
    v14 = [v12 constraintEqualToAnchor:v11];
    v64[4] = v14;
    v15 = [(CNAutocompleteSuggestionsCell *)self nameLabel];
    v16 = [v15 leadingAnchor];
    v17 = [(CNAutocompleteSuggestionsCell *)self avatarView];
    v42 = [v17 trailingAnchor];
    v41 = [v16 constraintEqualToAnchor:10.0 constant:?];
    v64[5] = v41;
    v40 = [(CNAutocompleteSuggestionsCell *)self nameLabel];
    v18 = [v40 trailingAnchor];
    v19 = [(CNAutocompleteSuggestionsCell *)self contentView];
    v38 = [v19 trailingAnchor];
    v39 = v18;
    v20 = v18;
    v21 = v19;
    v37 = [v20 constraintEqualToAnchor:?];
    v64[6] = v37;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:7];
  }

  else
  {
    v63[0] = v62;
    v49 = [(CNAutocompleteSuggestionsCell *)self avatarView];
    v46 = [v49 topAnchor];
    v36 = [(CNAutocompleteSuggestionsCell *)self contentView];
    v35 = [v36 topAnchor];
    v61 = [v46 constraintEqualToAnchor:v35 constant:0.0];
    v63[1] = v61;
    v60 = [(CNAutocompleteSuggestionsCell *)self nameLabel];
    v23 = [v60 topAnchor];
    v57 = [(CNAutocompleteSuggestionsCell *)self avatarView];
    v45 = [v57 bottomAnchor];
    v58 = v23;
    v44 = [v23 constraintEqualToAnchor:v45 constant:10.0];
    v63[2] = v44;
    v43 = [(CNAutocompleteSuggestionsCell *)self avatarView];
    v34 = [v43 centerXAnchor];
    v53 = [(CNAutocompleteSuggestionsCell *)self contentView];
    v52 = [v53 centerXAnchor];
    v51 = [v34 constraintEqualToAnchor:?];
    v63[3] = v51;
    v50 = [(CNAutocompleteSuggestionsCell *)self nameLabel];
    v24 = [v50 leadingAnchor];
    v47 = [(CNAutocompleteSuggestionsCell *)self contentView];
    v33 = [v47 leadingAnchor];
    v48 = v24;
    v32 = [v24 constraintEqualToAnchor:v33 constant:1.0];
    v63[4] = v32;
    v15 = [(CNAutocompleteSuggestionsCell *)self nameLabel];
    v16 = [v15 trailingAnchor];
    v17 = [(CNAutocompleteSuggestionsCell *)self contentView];
    v42 = [v17 trailingAnchor];
    v41 = [v16 constraintEqualToAnchor:-1.0 constant:?];
    v63[5] = v41;
    v40 = [(CNAutocompleteSuggestionsCell *)self avatarView];
    v25 = [v40 leadingAnchor];
    v21 = [(CNAutocompleteSuggestionsCell *)self contentView];
    v38 = [v21 leadingAnchor];
    v39 = v25;
    v37 = [v25 constraintGreaterThanOrEqualToAnchor:0.0 constant:?];
    v63[6] = v37;
    v26 = [(CNAutocompleteSuggestionsCell *)self avatarView];
    v27 = [v26 trailingAnchor];
    v28 = [(CNAutocompleteSuggestionsCell *)self contentView];
    v29 = [v28 trailingAnchor];
    v30 = [v27 constraintLessThanOrEqualToAnchor:v29 constant:-0.0];
    v63[7] = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:8];

    v22 = v31;
    v9 = v34;

    v14 = v32;
    v13 = v33;

    v7 = v35;
    v6 = v36;
  }

  [MEMORY[0x1E696ACD8] activateConstraints:v22];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = CNAutocompleteSuggestionsCell;
  [(CNAutocompleteSuggestionsCell *)&v8 setSelected:?];
  if (v3)
  {
    v5 = 0.5;
  }

  else
  {
    v5 = 1.0;
  }

  v6 = [(CNAutocompleteSuggestionsCell *)self avatarView];
  [v6 setAlpha:v5];

  v7 = [(CNAutocompleteSuggestionsCell *)self nameLabel];
  [v7 setAlpha:v5];
}

- (UIImage)image
{
  v2 = [(CNAutocompleteSuggestionsCell *)self avatarView];
  v3 = [v2 image];

  return v3;
}

- (void)setImage:(id)a3
{
  v4 = a3;
  v5 = [(CNAutocompleteSuggestionsCell *)self avatarView];
  [v5 setImage:v4];
}

@end