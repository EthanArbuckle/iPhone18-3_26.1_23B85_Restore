@interface CKDetailsGroupHeaderCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKDetailsGroupHeaderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier participants:(id)participants;
- (double)_additionalHeightToAccommodateInterTextVerticalSpacing;
- (id)constraintsForAccessibility;
- (id)standardConstraints;
- (id)standardWolfConstraints;
- (void)addConstraints;
- (void)configureCellIconForCollapsedState:(BOOL)state;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation CKDetailsGroupHeaderCell

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = CKDetailsGroupHeaderCell;
  [(CKDetailsCell *)&v4 prepareForReuse];
  avatarView = [(CKDetailsGroupHeaderCell *)self avatarView];
  [avatarView removeFromSuperview];
}

- (CKDetailsGroupHeaderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier participants:(id)participants
{
  v103 = *MEMORY[0x1E69E9840];
  participantsCopy = participants;
  v101.receiver = self;
  v101.super_class = CKDetailsGroupHeaderCell;
  v9 = [(CKDetailsCell *)&v101 initWithStyle:style reuseIdentifier:identifier];
  v10 = v9;
  if (v9)
  {
    [(CKDetailsGroupHeaderCell *)v9 setSelectionStyle:2];
    v11 = objc_alloc(MEMORY[0x1E69DCC10]);
    v12 = *MEMORY[0x1E695F058];
    v13 = *(MEMORY[0x1E695F058] + 8);
    v14 = *(MEMORY[0x1E695F058] + 16);
    v15 = *(MEMORY[0x1E695F058] + 24);
    v16 = [v11 initWithFrame:{*MEMORY[0x1E695F058], v13, v14, v15}];
    [(CKDetailsGroupHeaderCell *)v10 setTitleLabel:v16];

    titleLabel = [(CKDetailsGroupHeaderCell *)v10 titleLabel];
    v18 = +[CKUIBehavior sharedBehaviors];
    detailsGroupHeaderCellTitleFont = [v18 detailsGroupHeaderCellTitleFont];
    [titleLabel setFont:detailsGroupHeaderCellTitleFont];

    titleLabel2 = [(CKDetailsGroupHeaderCell *)v10 titleLabel];
    v21 = +[CKUIBehavior sharedBehaviors];
    theme = [v21 theme];
    detailsContactCellTitleColor = [theme detailsContactCellTitleColor];
    [titleLabel2 setTextColor:detailsContactCellTitleColor];

    titleLabel3 = [(CKDetailsGroupHeaderCell *)v10 titleLabel];
    [titleLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

    titleLabel4 = [(CKDetailsGroupHeaderCell *)v10 titleLabel];
    v26 = MEMORY[0x1E696AEC0];
    v27 = CKFrameworkBundle();
    v28 = [v27 localizedStringForKey:@"GROUP_PEOPLE_COUNT" value:&stru_1F04268F8 table:@"ChatKit"];
    v29 = [v26 localizedStringWithFormat:v28, objc_msgSend(participantsCopy, "count")];

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection == 1)
    {
      v32 = @"\u200F";
    }

    else
    {
      v32 = @"\u200E";
    }

    v33 = [(__CFString *)v32 stringByAppendingString:v29];

    [titleLabel4 setText:v33];
    titleLabel5 = [(CKDetailsGroupHeaderCell *)v10 titleLabel];
    [titleLabel5 setContentMode:4];

    titleLabel6 = [(CKDetailsGroupHeaderCell *)v10 titleLabel];
    [titleLabel6 setNumberOfLines:0];

    titleLabel7 = [(CKDetailsGroupHeaderCell *)v10 titleLabel];
    [titleLabel7 setLineBreakMode:0];

    v37 = objc_alloc(MEMORY[0x1E695DF70]);
    v38 = MEMORY[0x1E695E0F0];
    v39 = [v37 initWithArray:MEMORY[0x1E695E0F0]];
    v40 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v38];
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v96 = participantsCopy;
    v41 = participantsCopy;
    v42 = [v41 countByEnumeratingWithState:&v97 objects:v102 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v98;
      v45 = MEMORY[0x1E695E0F0];
      do
      {
        for (i = 0; i != v43; ++i)
        {
          if (*v98 != v44)
          {
            objc_enumerationMutation(v41);
          }

          v47 = *(*(&v97 + 1) + 8 * i);
          abbreviatedDisplayName = [v47 abbreviatedDisplayName];
          [v39 addObject:abbreviatedDisplayName];

          defaultIMHandle = [v47 defaultIMHandle];
          v50 = [defaultIMHandle cnContactWithKeys:v45];

          v51 = [objc_alloc(MEMORY[0x1E695D0C0]) initWithContact:v50];
          [v40 addObject:v51];
        }

        v43 = [v41 countByEnumeratingWithState:&v97 objects:v102 count:16];
      }

      while (v43);
    }

    v52 = [v40 count];
    if (v52 >= 3)
    {
      v53 = 3;
    }

    else
    {
      v53 = v52;
    }

    v54 = [v40 subarrayWithRange:{0, v53}];
    [(CKDetailsGroupHeaderCell *)v10 setAvatarViews:v54];

    v55 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v12, v13, v14, v15}];
    [(CKDetailsGroupHeaderCell *)v10 setSubTitleLabel:v55];

    subTitleLabel = [(CKDetailsGroupHeaderCell *)v10 subTitleLabel];
    v57 = +[CKUIBehavior sharedBehaviors];
    detailsGroupHeaderCellSubtitleFont = [v57 detailsGroupHeaderCellSubtitleFont];
    [subTitleLabel setFont:detailsGroupHeaderCellSubtitleFont];

    subTitleLabel2 = [(CKDetailsGroupHeaderCell *)v10 subTitleLabel];
    v60 = +[CKUIBehavior sharedBehaviors];
    theme2 = [v60 theme];
    detailsContactCellSubTitleColor = [theme2 detailsContactCellSubTitleColor];
    [subTitleLabel2 setTextColor:detailsContactCellSubTitleColor];

    subTitleLabel3 = [(CKDetailsGroupHeaderCell *)v10 subTitleLabel];
    [subTitleLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

    v64 = [v39 count];
    subTitleLabel4 = [(CKDetailsGroupHeaderCell *)v10 subTitleLabel];
    if (v64)
    {
      v66 = MEMORY[0x1E696AEC0];
      v67 = [v39 valueForKey:@"description"];
      v68 = [v67 componentsJoinedByString:{@", "}];
      v69 = [v66 stringWithFormat:@"%@", v68];
      [subTitleLabel4 setText:v69];
    }

    else
    {
      v67 = CKFrameworkBundle();
      v68 = [v67 localizedStringForKey:@"CONTACT_DETAILS_SUBTITLE" value:&stru_1F04268F8 table:@"ChatKit"];
      [subTitleLabel4 setText:v68];
    }

    subTitleLabel5 = [(CKDetailsGroupHeaderCell *)v10 subTitleLabel];
    [subTitleLabel5 setClipsToBounds:0];

    subTitleLabel6 = [(CKDetailsGroupHeaderCell *)v10 subTitleLabel];
    [subTitleLabel6 setLineBreakMode:4];

    subTitleLabel7 = [(CKDetailsGroupHeaderCell *)v10 subTitleLabel];
    [subTitleLabel7 setNumberOfLines:1];

    [(CKDetailsGroupHeaderCell *)v10 configureCellIconForCollapsedState:1];
    avatarViews = [(CKDetailsGroupHeaderCell *)v10 avatarViews];
    v74 = [avatarViews count];
    v75 = +[CKUIBehavior sharedBehaviors];
    v76 = v75;
    if (v74 == 3)
    {
      [v75 detailsAvatarPancakeViewWidth3Avatars];
    }

    else
    {
      [v75 detailsAvatarPancakeViewWidth2Avatars];
    }

    v78 = v77;
    participantsCopy = v96;

    avatarViews2 = [(CKDetailsGroupHeaderCell *)v10 avatarViews];
    v80 = [avatarViews2 count];

    if (v80)
    {
      v81 = [CKDetailsAvatarPancakeView alloc];
      v82 = +[CKUIBehavior sharedBehaviors];
      [(CKDetailsAvatarPancakeView *)v82 detailsAvatarCutoutDiameter];
      v84 = v83;
      avatarViews3 = [(CKDetailsGroupHeaderCell *)v10 avatarViews];
      v86 = [(CKDetailsAvatarPancakeView *)v81 initWithSize:avatarViews3 avatarViews:v78, v84];
      [(CKDetailsGroupHeaderCell *)v10 setAvatarView:v86];
    }

    else
    {
      v82 = objc_alloc_init(CKDetailsAvatarPancakeView);
      [(CKDetailsGroupHeaderCell *)v10 setAvatarView:v82];
    }

    avatarView = [(CKDetailsGroupHeaderCell *)v10 avatarView];
    [avatarView setTranslatesAutoresizingMaskIntoConstraints:0];

    contentView = [(CKDetailsGroupHeaderCell *)v10 contentView];
    titleLabel8 = [(CKDetailsGroupHeaderCell *)v10 titleLabel];
    [contentView addSubview:titleLabel8];

    contentView2 = [(CKDetailsGroupHeaderCell *)v10 contentView];
    subTitleLabel8 = [(CKDetailsGroupHeaderCell *)v10 subTitleLabel];
    [contentView2 addSubview:subTitleLabel8];

    contentView3 = [(CKDetailsGroupHeaderCell *)v10 contentView];
    avatarView2 = [(CKDetailsGroupHeaderCell *)v10 avatarView];
    [contentView3 addSubview:avatarView2];

    contentView4 = [(CKDetailsGroupHeaderCell *)v10 contentView];
    [contentView4 setBackgroundColor:0];

    [(CKDetailsGroupHeaderCell *)v10 addConstraints];
  }

  return v10;
}

- (double)_additionalHeightToAccommodateInterTextVerticalSpacing
{
  v3 = +[CKUIBehavior sharedBehaviors];
  isAccessibilityPreferredContentSizeCategory = [v3 isAccessibilityPreferredContentSizeCategory];

  result = 0.0;
  if ((isAccessibilityPreferredContentSizeCategory & 1) == 0)
  {
    v6 = +[CKUIBehavior sharedBehaviors];
    [v6 detailsGroupHeaderCellInterTextVerticalSpacing];
    v8 = v7;
    titleLabel = [(CKDetailsGroupHeaderCell *)self titleLabel];
    font = [titleLabel font];
    [font pointSize];
    v12 = v8 + v11 * 0.5;

    titleLabel2 = [(CKDetailsGroupHeaderCell *)self titleLabel];
    font2 = [titleLabel2 font];
    [font2 _scaledValueForValue:1 useLanguageAwareScaling:v12];
    v16 = v15;

    v17 = v16 - v12;
    v18 = +[CKUIBehavior sharedBehaviors];
    [v18 detailsGroupHeaderCellInterTextVerticalSpacing];
    v20 = v19;
    subTitleLabel = [(CKDetailsGroupHeaderCell *)self subTitleLabel];
    font3 = [subTitleLabel font];
    [font3 pointSize];
    v24 = v20 + v23 * 0.5;

    subTitleLabel2 = [(CKDetailsGroupHeaderCell *)self subTitleLabel];
    font4 = [subTitleLabel2 font];
    [font4 _scaledValueForValue:1 useLanguageAwareScaling:v24];
    v28 = v27;

    return v17 + v28 - v24;
  }

  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v6 = +[CKUIBehavior sharedBehaviors];
  isAccessibilityPreferredContentSizeCategory = [v6 isAccessibilityPreferredContentSizeCategory];

  v8 = +[CKUIBehavior sharedBehaviors];
  v9 = v8;
  if (isAccessibilityPreferredContentSizeCategory)
  {
    [v8 detailsAvatarCutoutDiameter];
    v11 = v10;

    titleLabel = [(CKDetailsGroupHeaderCell *)self titleLabel];
    [titleLabel sizeThatFits:{width, height}];
    v14 = v13;

    subTitleLabel = [(CKDetailsGroupHeaderCell *)self subTitleLabel];
    [subTitleLabel sizeThatFits:{width, height}];
    v17 = v16;

    [(CKDetailsGroupHeaderCell *)self layoutMargins];
    v19 = v18;
    [(CKDetailsGroupHeaderCell *)self layoutMargins];
    v21 = v11 + v14 + v17 + v19 + v20;
  }

  else
  {
    [v8 detailsContactCellMinimumHeight];
    v21 = v22;
  }

  [(CKDetailsGroupHeaderCell *)self _additionalHeightToAccommodateInterTextVerticalSpacing];
  v24 = v21 + v23;
  v25 = width;
  result.height = v24;
  result.width = v25;
  return result;
}

- (void)addConstraints
{
  v37[5] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  avatarViews = [(CKDetailsGroupHeaderCell *)self avatarViews];
  v4 = [avatarViews count];
  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = v5;
  if (v4 >= 3)
  {
    [v5 detailsAvatarPancakeViewWidth3Avatars];
  }

  else
  {
    [v5 detailsAvatarPancakeViewWidth2Avatars];
  }

  v8 = v7;

  avatarView = [(CKDetailsGroupHeaderCell *)self avatarView];
  widthAnchor = [avatarView widthAnchor];
  v33 = [widthAnchor constraintEqualToConstant:v8];
  v37[0] = v33;
  avatarView2 = [(CKDetailsGroupHeaderCell *)self avatarView];
  heightAnchor = [avatarView2 heightAnchor];
  v31 = +[CKUIBehavior sharedBehaviors];
  [v31 detailsAvatarCutoutDiameter];
  v29 = [heightAnchor constraintEqualToConstant:?];
  v37[1] = v29;
  titleLabel = [(CKDetailsGroupHeaderCell *)self titleLabel];
  heightAnchor2 = [titleLabel heightAnchor];
  titleLabel2 = [(CKDetailsGroupHeaderCell *)self titleLabel];
  font = [titleLabel2 font];
  [font pointSize];
  v24 = [heightAnchor2 constraintGreaterThanOrEqualToConstant:?];
  v37[2] = v24;
  subTitleLabel = [(CKDetailsGroupHeaderCell *)self subTitleLabel];
  heightAnchor3 = [subTitleLabel heightAnchor];
  subTitleLabel2 = [(CKDetailsGroupHeaderCell *)self subTitleLabel];
  font2 = [subTitleLabel2 font];
  [font2 pointSize];
  v10 = [heightAnchor3 constraintGreaterThanOrEqualToConstant:?];
  v37[3] = v10;
  titleLabel3 = [(CKDetailsGroupHeaderCell *)self titleLabel];
  trailingAnchor = [titleLabel3 trailingAnchor];
  contentView = [(CKDetailsGroupHeaderCell *)self contentView];
  trailingAnchor2 = [contentView trailingAnchor];
  contentView2 = [(CKDetailsGroupHeaderCell *)self contentView];
  [contentView2 layoutMargins];
  v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:v16];
  v37[4] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:5];
  [array addObjectsFromArray:v18];

  v19 = +[CKUIBehavior sharedBehaviors];
  LODWORD(titleLabel3) = [v19 isAccessibilityPreferredContentSizeCategory];

  if (titleLabel3)
  {
    [(CKDetailsGroupHeaderCell *)self constraintsForAccessibility];
  }

  else
  {
    [(CKDetailsGroupHeaderCell *)self standardConstraints];
  }
  v20 = ;
  [array addObjectsFromArray:v20];

  [MEMORY[0x1E696ACD8] activateConstraints:array];
}

- (id)constraintsForAccessibility
{
  v49[7] = *MEMORY[0x1E69E9840];
  avatarView = [(CKDetailsGroupHeaderCell *)self avatarView];
  topAnchor = [avatarView topAnchor];
  contentView = [(CKDetailsGroupHeaderCell *)self contentView];
  topAnchor2 = [contentView topAnchor];
  contentView2 = [(CKDetailsGroupHeaderCell *)self contentView];
  [contentView2 layoutMargins];
  v43 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
  v49[0] = v43;
  avatarView2 = [(CKDetailsGroupHeaderCell *)self avatarView];
  leadingAnchor = [avatarView2 leadingAnchor];
  contentView3 = [(CKDetailsGroupHeaderCell *)self contentView];
  leadingAnchor2 = [contentView3 leadingAnchor];
  contentView4 = [(CKDetailsGroupHeaderCell *)self contentView];
  [contentView4 layoutMargins];
  v37 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v3];
  v49[1] = v37;
  titleLabel = [(CKDetailsGroupHeaderCell *)self titleLabel];
  leadingAnchor3 = [titleLabel leadingAnchor];
  contentView5 = [(CKDetailsGroupHeaderCell *)self contentView];
  leadingAnchor4 = [contentView5 leadingAnchor];
  contentView6 = [(CKDetailsGroupHeaderCell *)self contentView];
  [contentView6 layoutMargins];
  v31 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:v4];
  v49[2] = v31;
  titleLabel2 = [(CKDetailsGroupHeaderCell *)self titleLabel];
  topAnchor3 = [titleLabel2 topAnchor];
  avatarView3 = [(CKDetailsGroupHeaderCell *)self avatarView];
  bottomAnchor = [avatarView3 bottomAnchor];
  v26 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
  v49[3] = v26;
  subTitleLabel = [(CKDetailsGroupHeaderCell *)self subTitleLabel];
  leadingAnchor5 = [subTitleLabel leadingAnchor];
  contentView7 = [(CKDetailsGroupHeaderCell *)self contentView];
  leadingAnchor6 = [contentView7 leadingAnchor];
  contentView8 = [(CKDetailsGroupHeaderCell *)self contentView];
  [contentView8 layoutMargins];
  v20 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:v5];
  v49[4] = v20;
  subTitleLabel2 = [(CKDetailsGroupHeaderCell *)self subTitleLabel];
  topAnchor4 = [subTitleLabel2 topAnchor];
  titleLabel3 = [(CKDetailsGroupHeaderCell *)self titleLabel];
  bottomAnchor2 = [titleLabel3 bottomAnchor];
  v9 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2];
  v49[5] = v9;
  subTitleLabel3 = [(CKDetailsGroupHeaderCell *)self subTitleLabel];
  trailingAnchor = [subTitleLabel3 trailingAnchor];
  contentView9 = [(CKDetailsGroupHeaderCell *)self contentView];
  trailingAnchor2 = [contentView9 trailingAnchor];
  contentView10 = [(CKDetailsGroupHeaderCell *)self contentView];
  [contentView10 layoutMargins];
  v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:v15];
  v49[6] = v16;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:7];

  return v18;
}

- (id)standardConstraints
{
  v68[7] = *MEMORY[0x1E69E9840];
  titleLabel = [(CKDetailsGroupHeaderCell *)self titleLabel];
  font = [titleLabel font];
  v5 = +[CKUIBehavior sharedBehaviors];
  [v5 detailsGroupHeaderCellInterTextVerticalSpacing];
  v7 = v6;
  titleLabel2 = [(CKDetailsGroupHeaderCell *)self titleLabel];
  font2 = [titleLabel2 font];
  [font2 pointSize];
  [font _scaledValueForValue:1 useLanguageAwareScaling:v7 + v10 * 0.5];
  v12 = v11;

  subTitleLabel = [(CKDetailsGroupHeaderCell *)self subTitleLabel];
  font3 = [subTitleLabel font];
  v15 = +[CKUIBehavior sharedBehaviors];
  [v15 detailsGroupHeaderCellInterTextVerticalSpacing];
  v17 = v16;
  subTitleLabel2 = [(CKDetailsGroupHeaderCell *)self subTitleLabel];
  font4 = [subTitleLabel2 font];
  [font4 pointSize];
  [font3 _scaledValueForValue:1 useLanguageAwareScaling:v17 + v20 * 0.5];
  v22 = v21;

  avatarView = [(CKDetailsGroupHeaderCell *)self avatarView];
  leadingAnchor = [avatarView leadingAnchor];
  contentView = [(CKDetailsGroupHeaderCell *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v62 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v68[0] = v62;
  avatarView2 = [(CKDetailsGroupHeaderCell *)self avatarView];
  centerYAnchor = [avatarView2 centerYAnchor];
  contentView2 = [(CKDetailsGroupHeaderCell *)self contentView];
  layoutMarginsGuide2 = [contentView2 layoutMarginsGuide];
  centerYAnchor2 = [layoutMarginsGuide2 centerYAnchor];
  v56 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v68[1] = v56;
  titleLabel3 = [(CKDetailsGroupHeaderCell *)self titleLabel];
  leadingAnchor3 = [titleLabel3 leadingAnchor];
  avatarView3 = [(CKDetailsGroupHeaderCell *)self avatarView];
  trailingAnchor = [avatarView3 trailingAnchor];
  v52 = +[CKUIBehavior sharedBehaviors];
  [v52 detailsGroupHeaderCellAvatarViewRightMargin];
  v50 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:?];
  v68[2] = v50;
  titleLabel4 = [(CKDetailsGroupHeaderCell *)self titleLabel];
  centerYAnchor3 = [titleLabel4 centerYAnchor];
  contentView3 = [(CKDetailsGroupHeaderCell *)self contentView];
  centerYAnchor4 = [contentView3 centerYAnchor];
  v45 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4 constant:-v12];
  v68[3] = v45;
  subTitleLabel3 = [(CKDetailsGroupHeaderCell *)self subTitleLabel];
  leadingAnchor4 = [subTitleLabel3 leadingAnchor];
  titleLabel5 = [(CKDetailsGroupHeaderCell *)self titleLabel];
  leadingAnchor5 = [titleLabel5 leadingAnchor];
  v40 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
  v68[4] = v40;
  subTitleLabel4 = [(CKDetailsGroupHeaderCell *)self subTitleLabel];
  centerYAnchor5 = [subTitleLabel4 centerYAnchor];
  contentView4 = [(CKDetailsGroupHeaderCell *)self contentView];
  centerYAnchor6 = [contentView4 centerYAnchor];
  v25 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6 constant:v22];
  v68[5] = v25;
  subTitleLabel5 = [(CKDetailsGroupHeaderCell *)self subTitleLabel];
  trailingAnchor2 = [subTitleLabel5 trailingAnchor];
  contentView5 = [(CKDetailsGroupHeaderCell *)self contentView];
  trailingAnchor3 = [contentView5 trailingAnchor];
  contentView6 = [(CKDetailsGroupHeaderCell *)self contentView];
  [contentView6 layoutMargins];
  v32 = v31;
  v33 = +[CKUIBehavior sharedBehaviors];
  [v33 detailsGroupHeaderCellSubtitleViewRightMargin];
  v35 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-(v32 + v34)];
  v68[6] = v35;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:7];

  return v37;
}

- (id)standardWolfConstraints
{
  v43[7] = *MEMORY[0x1E69E9840];
  avatarView = [(CKDetailsGroupHeaderCell *)self avatarView];
  leadingAnchor = [avatarView leadingAnchor];
  contentView = [(CKDetailsGroupHeaderCell *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v37 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v43[0] = v37;
  avatarView2 = [(CKDetailsGroupHeaderCell *)self avatarView];
  centerYAnchor = [avatarView2 centerYAnchor];
  contentView2 = [(CKDetailsGroupHeaderCell *)self contentView];
  layoutMarginsGuide2 = [contentView2 layoutMarginsGuide];
  centerYAnchor2 = [layoutMarginsGuide2 centerYAnchor];
  v31 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v43[1] = v31;
  titleLabel = [(CKDetailsGroupHeaderCell *)self titleLabel];
  leadingAnchor3 = [titleLabel leadingAnchor];
  avatarView3 = [(CKDetailsGroupHeaderCell *)self avatarView];
  trailingAnchor = [avatarView3 trailingAnchor];
  v27 = +[CKUIBehavior sharedBehaviors];
  [v27 detailsGroupHeaderCellAvatarViewRightMargin];
  v25 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:?];
  v43[2] = v25;
  titleLabel2 = [(CKDetailsGroupHeaderCell *)self titleLabel];
  bottomAnchor = [titleLabel2 bottomAnchor];
  contentView3 = [(CKDetailsGroupHeaderCell *)self contentView];
  centerYAnchor3 = [contentView3 centerYAnchor];
  v20 = [bottomAnchor constraintEqualToAnchor:centerYAnchor3];
  v43[3] = v20;
  subTitleLabel = [(CKDetailsGroupHeaderCell *)self subTitleLabel];
  leadingAnchor4 = [subTitleLabel leadingAnchor];
  titleLabel3 = [(CKDetailsGroupHeaderCell *)self titleLabel];
  leadingAnchor5 = [titleLabel3 leadingAnchor];
  v15 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
  v43[4] = v15;
  subTitleLabel2 = [(CKDetailsGroupHeaderCell *)self subTitleLabel];
  topAnchor = [subTitleLabel2 topAnchor];
  titleLabel4 = [(CKDetailsGroupHeaderCell *)self titleLabel];
  bottomAnchor2 = [titleLabel4 bottomAnchor];
  v7 = [topAnchor constraintEqualToAnchor:bottomAnchor2];
  v43[5] = v7;
  subTitleLabel3 = [(CKDetailsGroupHeaderCell *)self subTitleLabel];
  trailingAnchor2 = [subTitleLabel3 trailingAnchor];
  contentView4 = [(CKDetailsGroupHeaderCell *)self contentView];
  trailingAnchor3 = [contentView4 trailingAnchor];
  v12 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
  v43[6] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:7];

  return v14;
}

- (void)configureCellIconForCollapsedState:(BOOL)state
{
  v23[1] = *MEMORY[0x1E69E9840];
  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = v5;
  if (state)
  {
    [v5 detailsGroupHeaderCellChevronForwardName];
  }

  else
  {
    [v5 detailsGroupHeaderCellChevronDownName];
  }
  v7 = ;

  v8 = MEMORY[0x1E69DCAD8];
  v9 = +[CKUIBehavior sharedBehaviors];
  detailsGroupHeaderCellChevronFont = [v9 detailsGroupHeaderCellChevronFont];
  v11 = +[CKUIBehavior sharedBehaviors];
  v12 = [v8 configurationWithFont:detailsGroupHeaderCellChevronFont scale:{objc_msgSend(v11, "detailsGroupChevronImageScale")}];

  v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:v7];
  v14 = [v13 imageWithConfiguration:v12];

  v15 = MEMORY[0x1E69DCAD8];
  v16 = +[CKUIBehavior sharedBehaviors];
  theme = [v16 theme];
  detailsGroupHeaderCellChevronColor = [theme detailsGroupHeaderCellChevronColor];
  v23[0] = detailsGroupHeaderCellChevronColor;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v20 = [v15 configurationWithPaletteColors:v19];
  v21 = [v14 imageByApplyingSymbolConfiguration:v20];

  v22 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v21];
  [(CKDetailsGroupHeaderCell *)self setAccessoryView:v22];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = CKDetailsGroupHeaderCell;
  [(CKDetailsCell *)&v4 layoutSubviews];
  topSeperator = [(CKDetailsCell *)self topSeperator];
  [topSeperator setHidden:1];
}

@end