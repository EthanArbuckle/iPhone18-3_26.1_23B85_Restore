@interface CNAutocompleteSuggestionsCell
- (BOOL)useAccessibleLayout;
- (CNAutocompleteSuggestionsCell)initWithFrame:(CGRect)frame;
- (UIImage)image;
- (void)setImage:(id)image;
- (void)setSelected:(BOOL)selected;
- (void)setupConstraints;
@end

@implementation CNAutocompleteSuggestionsCell

- (CNAutocompleteSuggestionsCell)initWithFrame:(CGRect)frame
{
  v23.receiver = self;
  v23.super_class = CNAutocompleteSuggestionsCell;
  v3 = [(CNAutocompleteSuggestionsCell *)&v23 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(CNAutocompleteSuggestionsCell *)v3 setBackgroundColor:clearColor];

    v5 = [CNAutocompleteSuggestionsImageView alloc];
    v6 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 8);
    v8 = *(MEMORY[0x1E695F058] + 16);
    v9 = *(MEMORY[0x1E695F058] + 24);
    v10 = [(CNAutocompleteSuggestionsImageView *)v5 initWithFrame:*MEMORY[0x1E695F058], v7, v8, v9];
    [(CNAutocompleteSuggestionsImageView *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(CNAutocompleteSuggestionsCell *)v3 contentView];
    [contentView addSubview:v10];

    [(CNAutocompleteSuggestionsCell *)v3 setAvatarView:v10];
    v12 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v6, v7, v8, v9}];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v12 setNumberOfLines:2];
    v13 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD08]];
    [v12 setFont:v13];

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [v12 setTextColor:labelColor];

    traitCollection = [(CNAutocompleteSuggestionsCell *)v3 traitCollection];
    v16 = [traitCollection layoutDirection] == 1;

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
    contentView2 = [(CNAutocompleteSuggestionsCell *)v3 contentView];
    [contentView2 addSubview:v12];

    [(CNAutocompleteSuggestionsCell *)v3 setNameLabel:v12];
    v19 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    contentView3 = [(CNAutocompleteSuggestionsCell *)v3 contentView];
    [contentView3 addLayoutGuide:v19];

    [(CNAutocompleteSuggestionsCell *)v3 setClipsToBounds:1];
    [(CNAutocompleteSuggestionsCell *)v3 setupConstraints];
    v21 = v3;
  }

  return v3;
}

- (BOOL)useAccessibleLayout
{
  traitCollection = [(CNAutocompleteSuggestionsCell *)self traitCollection];
  v3 = isTraitCollectionAccessible(traitCollection);

  return v3;
}

- (void)setupConstraints
{
  v64[7] = *MEMORY[0x1E69E9840];
  useAccessibleLayout = [(CNAutocompleteSuggestionsCell *)self useAccessibleLayout];
  avatarView = [(CNAutocompleteSuggestionsCell *)self avatarView];
  widthAnchor = [avatarView widthAnchor];
  avatarView2 = [(CNAutocompleteSuggestionsCell *)self avatarView];
  [avatarView2 heightAnchor];
  v54 = v56 = widthAnchor;
  v62 = [widthAnchor constraintEqualToAnchor:?];
  if (useAccessibleLayout)
  {
    v64[0] = v62;
    avatarView3 = [(CNAutocompleteSuggestionsCell *)self avatarView];
    topAnchor = [avatarView3 topAnchor];
    contentView = [(CNAutocompleteSuggestionsCell *)self contentView];
    topAnchor2 = [contentView topAnchor];
    topAnchor3 = topAnchor;
    v61 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:22.0];
    v64[1] = v61;
    avatarView4 = [(CNAutocompleteSuggestionsCell *)self avatarView];
    bottomAnchor = [avatarView4 bottomAnchor];
    contentView2 = [(CNAutocompleteSuggestionsCell *)self contentView];
    [contentView2 bottomAnchor];
    bottomAnchor2 = v58 = bottomAnchor;
    v44 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-22.0];
    v64[2] = v44;
    nameLabel = [(CNAutocompleteSuggestionsCell *)self nameLabel];
    centerYAnchor = [nameLabel centerYAnchor];
    avatarView5 = [(CNAutocompleteSuggestionsCell *)self avatarView];
    centerYAnchor2 = [avatarView5 centerYAnchor];
    v51 = [centerYAnchor constraintEqualToAnchor:?];
    v64[3] = v51;
    avatarView6 = [(CNAutocompleteSuggestionsCell *)self avatarView];
    leadingAnchor = [avatarView6 leadingAnchor];
    contentView3 = [(CNAutocompleteSuggestionsCell *)self contentView];
    leadingAnchor2 = [contentView3 leadingAnchor];
    v48 = leadingAnchor;
    v12 = leadingAnchor;
    v13 = leadingAnchor2;
    v14 = [v12 constraintEqualToAnchor:leadingAnchor2];
    v64[4] = v14;
    nameLabel2 = [(CNAutocompleteSuggestionsCell *)self nameLabel];
    leadingAnchor3 = [nameLabel2 leadingAnchor];
    avatarView7 = [(CNAutocompleteSuggestionsCell *)self avatarView];
    trailingAnchor = [avatarView7 trailingAnchor];
    v41 = [leadingAnchor3 constraintEqualToAnchor:10.0 constant:?];
    v64[5] = v41;
    nameLabel3 = [(CNAutocompleteSuggestionsCell *)self nameLabel];
    trailingAnchor2 = [nameLabel3 trailingAnchor];
    contentView4 = [(CNAutocompleteSuggestionsCell *)self contentView];
    trailingAnchor3 = [contentView4 trailingAnchor];
    v39 = trailingAnchor2;
    v20 = trailingAnchor2;
    contentView6 = contentView4;
    v37 = [v20 constraintEqualToAnchor:?];
    v64[6] = v37;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:7];
  }

  else
  {
    v63[0] = v62;
    avatarView3 = [(CNAutocompleteSuggestionsCell *)self avatarView];
    topAnchor3 = [avatarView3 topAnchor];
    contentView5 = [(CNAutocompleteSuggestionsCell *)self contentView];
    topAnchor4 = [contentView5 topAnchor];
    v61 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:0.0];
    v63[1] = v61;
    avatarView4 = [(CNAutocompleteSuggestionsCell *)self nameLabel];
    topAnchor5 = [avatarView4 topAnchor];
    contentView2 = [(CNAutocompleteSuggestionsCell *)self avatarView];
    bottomAnchor2 = [contentView2 bottomAnchor];
    v58 = topAnchor5;
    v44 = [topAnchor5 constraintEqualToAnchor:bottomAnchor2 constant:10.0];
    v63[2] = v44;
    nameLabel = [(CNAutocompleteSuggestionsCell *)self avatarView];
    centerXAnchor = [nameLabel centerXAnchor];
    avatarView5 = [(CNAutocompleteSuggestionsCell *)self contentView];
    centerYAnchor2 = [avatarView5 centerXAnchor];
    v51 = [centerXAnchor constraintEqualToAnchor:?];
    v63[3] = v51;
    avatarView6 = [(CNAutocompleteSuggestionsCell *)self nameLabel];
    leadingAnchor4 = [avatarView6 leadingAnchor];
    contentView3 = [(CNAutocompleteSuggestionsCell *)self contentView];
    leadingAnchor5 = [contentView3 leadingAnchor];
    v48 = leadingAnchor4;
    v32 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5 constant:1.0];
    v63[4] = v32;
    nameLabel2 = [(CNAutocompleteSuggestionsCell *)self nameLabel];
    leadingAnchor3 = [nameLabel2 trailingAnchor];
    avatarView7 = [(CNAutocompleteSuggestionsCell *)self contentView];
    trailingAnchor = [avatarView7 trailingAnchor];
    v41 = [leadingAnchor3 constraintEqualToAnchor:-1.0 constant:?];
    v63[5] = v41;
    nameLabel3 = [(CNAutocompleteSuggestionsCell *)self avatarView];
    leadingAnchor6 = [nameLabel3 leadingAnchor];
    contentView6 = [(CNAutocompleteSuggestionsCell *)self contentView];
    trailingAnchor3 = [contentView6 leadingAnchor];
    v39 = leadingAnchor6;
    v37 = [leadingAnchor6 constraintGreaterThanOrEqualToAnchor:0.0 constant:?];
    v63[6] = v37;
    avatarView8 = [(CNAutocompleteSuggestionsCell *)self avatarView];
    trailingAnchor4 = [avatarView8 trailingAnchor];
    contentView7 = [(CNAutocompleteSuggestionsCell *)self contentView];
    trailingAnchor5 = [contentView7 trailingAnchor];
    v30 = [trailingAnchor4 constraintLessThanOrEqualToAnchor:trailingAnchor5 constant:-0.0];
    v63[7] = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:8];

    v22 = v31;
    centerYAnchor = centerXAnchor;

    v14 = v32;
    v13 = leadingAnchor5;

    topAnchor2 = topAnchor4;
    contentView = contentView5;
  }

  [MEMORY[0x1E696ACD8] activateConstraints:v22];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v8.receiver = self;
  v8.super_class = CNAutocompleteSuggestionsCell;
  [(CNAutocompleteSuggestionsCell *)&v8 setSelected:?];
  if (selectedCopy)
  {
    v5 = 0.5;
  }

  else
  {
    v5 = 1.0;
  }

  avatarView = [(CNAutocompleteSuggestionsCell *)self avatarView];
  [avatarView setAlpha:v5];

  nameLabel = [(CNAutocompleteSuggestionsCell *)self nameLabel];
  [nameLabel setAlpha:v5];
}

- (UIImage)image
{
  avatarView = [(CNAutocompleteSuggestionsCell *)self avatarView];
  image = [avatarView image];

  return image;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  avatarView = [(CNAutocompleteSuggestionsCell *)self avatarView];
  [avatarView setImage:imageCopy];
}

@end