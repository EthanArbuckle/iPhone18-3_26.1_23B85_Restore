@interface CKDetailsGroupHeaderCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKDetailsGroupHeaderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 participants:(id)a5;
- (double)_additionalHeightToAccommodateInterTextVerticalSpacing;
- (id)constraintsForAccessibility;
- (id)standardConstraints;
- (id)standardWolfConstraints;
- (void)addConstraints;
- (void)configureCellIconForCollapsedState:(BOOL)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation CKDetailsGroupHeaderCell

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = CKDetailsGroupHeaderCell;
  [(CKDetailsCell *)&v4 prepareForReuse];
  v3 = [(CKDetailsGroupHeaderCell *)self avatarView];
  [v3 removeFromSuperview];
}

- (CKDetailsGroupHeaderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 participants:(id)a5
{
  v103 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v101.receiver = self;
  v101.super_class = CKDetailsGroupHeaderCell;
  v9 = [(CKDetailsCell *)&v101 initWithStyle:a3 reuseIdentifier:a4];
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

    v17 = [(CKDetailsGroupHeaderCell *)v10 titleLabel];
    v18 = +[CKUIBehavior sharedBehaviors];
    v19 = [v18 detailsGroupHeaderCellTitleFont];
    [v17 setFont:v19];

    v20 = [(CKDetailsGroupHeaderCell *)v10 titleLabel];
    v21 = +[CKUIBehavior sharedBehaviors];
    v22 = [v21 theme];
    v23 = [v22 detailsContactCellTitleColor];
    [v20 setTextColor:v23];

    v24 = [(CKDetailsGroupHeaderCell *)v10 titleLabel];
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];

    v25 = [(CKDetailsGroupHeaderCell *)v10 titleLabel];
    v26 = MEMORY[0x1E696AEC0];
    v27 = CKFrameworkBundle();
    v28 = [v27 localizedStringForKey:@"GROUP_PEOPLE_COUNT" value:&stru_1F04268F8 table:@"ChatKit"];
    v29 = [v26 localizedStringWithFormat:v28, objc_msgSend(v8, "count")];

    v30 = [MEMORY[0x1E69DC668] sharedApplication];
    v31 = [v30 userInterfaceLayoutDirection];

    if (v31 == 1)
    {
      v32 = @"\u200F";
    }

    else
    {
      v32 = @"\u200E";
    }

    v33 = [(__CFString *)v32 stringByAppendingString:v29];

    [v25 setText:v33];
    v34 = [(CKDetailsGroupHeaderCell *)v10 titleLabel];
    [v34 setContentMode:4];

    v35 = [(CKDetailsGroupHeaderCell *)v10 titleLabel];
    [v35 setNumberOfLines:0];

    v36 = [(CKDetailsGroupHeaderCell *)v10 titleLabel];
    [v36 setLineBreakMode:0];

    v37 = objc_alloc(MEMORY[0x1E695DF70]);
    v38 = MEMORY[0x1E695E0F0];
    v39 = [v37 initWithArray:MEMORY[0x1E695E0F0]];
    v40 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v38];
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v96 = v8;
    v41 = v8;
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
          v48 = [v47 abbreviatedDisplayName];
          [v39 addObject:v48];

          v49 = [v47 defaultIMHandle];
          v50 = [v49 cnContactWithKeys:v45];

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

    v56 = [(CKDetailsGroupHeaderCell *)v10 subTitleLabel];
    v57 = +[CKUIBehavior sharedBehaviors];
    v58 = [v57 detailsGroupHeaderCellSubtitleFont];
    [v56 setFont:v58];

    v59 = [(CKDetailsGroupHeaderCell *)v10 subTitleLabel];
    v60 = +[CKUIBehavior sharedBehaviors];
    v61 = [v60 theme];
    v62 = [v61 detailsContactCellSubTitleColor];
    [v59 setTextColor:v62];

    v63 = [(CKDetailsGroupHeaderCell *)v10 subTitleLabel];
    [v63 setTranslatesAutoresizingMaskIntoConstraints:0];

    v64 = [v39 count];
    v65 = [(CKDetailsGroupHeaderCell *)v10 subTitleLabel];
    if (v64)
    {
      v66 = MEMORY[0x1E696AEC0];
      v67 = [v39 valueForKey:@"description"];
      v68 = [v67 componentsJoinedByString:{@", "}];
      v69 = [v66 stringWithFormat:@"%@", v68];
      [v65 setText:v69];
    }

    else
    {
      v67 = CKFrameworkBundle();
      v68 = [v67 localizedStringForKey:@"CONTACT_DETAILS_SUBTITLE" value:&stru_1F04268F8 table:@"ChatKit"];
      [v65 setText:v68];
    }

    v70 = [(CKDetailsGroupHeaderCell *)v10 subTitleLabel];
    [v70 setClipsToBounds:0];

    v71 = [(CKDetailsGroupHeaderCell *)v10 subTitleLabel];
    [v71 setLineBreakMode:4];

    v72 = [(CKDetailsGroupHeaderCell *)v10 subTitleLabel];
    [v72 setNumberOfLines:1];

    [(CKDetailsGroupHeaderCell *)v10 configureCellIconForCollapsedState:1];
    v73 = [(CKDetailsGroupHeaderCell *)v10 avatarViews];
    v74 = [v73 count];
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
    v8 = v96;

    v79 = [(CKDetailsGroupHeaderCell *)v10 avatarViews];
    v80 = [v79 count];

    if (v80)
    {
      v81 = [CKDetailsAvatarPancakeView alloc];
      v82 = +[CKUIBehavior sharedBehaviors];
      [(CKDetailsAvatarPancakeView *)v82 detailsAvatarCutoutDiameter];
      v84 = v83;
      v85 = [(CKDetailsGroupHeaderCell *)v10 avatarViews];
      v86 = [(CKDetailsAvatarPancakeView *)v81 initWithSize:v85 avatarViews:v78, v84];
      [(CKDetailsGroupHeaderCell *)v10 setAvatarView:v86];
    }

    else
    {
      v82 = objc_alloc_init(CKDetailsAvatarPancakeView);
      [(CKDetailsGroupHeaderCell *)v10 setAvatarView:v82];
    }

    v87 = [(CKDetailsGroupHeaderCell *)v10 avatarView];
    [v87 setTranslatesAutoresizingMaskIntoConstraints:0];

    v88 = [(CKDetailsGroupHeaderCell *)v10 contentView];
    v89 = [(CKDetailsGroupHeaderCell *)v10 titleLabel];
    [v88 addSubview:v89];

    v90 = [(CKDetailsGroupHeaderCell *)v10 contentView];
    v91 = [(CKDetailsGroupHeaderCell *)v10 subTitleLabel];
    [v90 addSubview:v91];

    v92 = [(CKDetailsGroupHeaderCell *)v10 contentView];
    v93 = [(CKDetailsGroupHeaderCell *)v10 avatarView];
    [v92 addSubview:v93];

    v94 = [(CKDetailsGroupHeaderCell *)v10 contentView];
    [v94 setBackgroundColor:0];

    [(CKDetailsGroupHeaderCell *)v10 addConstraints];
  }

  return v10;
}

- (double)_additionalHeightToAccommodateInterTextVerticalSpacing
{
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 isAccessibilityPreferredContentSizeCategory];

  result = 0.0;
  if ((v4 & 1) == 0)
  {
    v6 = +[CKUIBehavior sharedBehaviors];
    [v6 detailsGroupHeaderCellInterTextVerticalSpacing];
    v8 = v7;
    v9 = [(CKDetailsGroupHeaderCell *)self titleLabel];
    v10 = [v9 font];
    [v10 pointSize];
    v12 = v8 + v11 * 0.5;

    v13 = [(CKDetailsGroupHeaderCell *)self titleLabel];
    v14 = [v13 font];
    [v14 _scaledValueForValue:1 useLanguageAwareScaling:v12];
    v16 = v15;

    v17 = v16 - v12;
    v18 = +[CKUIBehavior sharedBehaviors];
    [v18 detailsGroupHeaderCellInterTextVerticalSpacing];
    v20 = v19;
    v21 = [(CKDetailsGroupHeaderCell *)self subTitleLabel];
    v22 = [v21 font];
    [v22 pointSize];
    v24 = v20 + v23 * 0.5;

    v25 = [(CKDetailsGroupHeaderCell *)self subTitleLabel];
    v26 = [v25 font];
    [v26 _scaledValueForValue:1 useLanguageAwareScaling:v24];
    v28 = v27;

    return v17 + v28 - v24;
  }

  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = +[CKUIBehavior sharedBehaviors];
  v7 = [v6 isAccessibilityPreferredContentSizeCategory];

  v8 = +[CKUIBehavior sharedBehaviors];
  v9 = v8;
  if (v7)
  {
    [v8 detailsAvatarCutoutDiameter];
    v11 = v10;

    v12 = [(CKDetailsGroupHeaderCell *)self titleLabel];
    [v12 sizeThatFits:{width, height}];
    v14 = v13;

    v15 = [(CKDetailsGroupHeaderCell *)self subTitleLabel];
    [v15 sizeThatFits:{width, height}];
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
  v36 = [MEMORY[0x1E695DF70] array];
  v3 = [(CKDetailsGroupHeaderCell *)self avatarViews];
  v4 = [v3 count];
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

  v35 = [(CKDetailsGroupHeaderCell *)self avatarView];
  v34 = [v35 widthAnchor];
  v33 = [v34 constraintEqualToConstant:v8];
  v37[0] = v33;
  v32 = [(CKDetailsGroupHeaderCell *)self avatarView];
  v30 = [v32 heightAnchor];
  v31 = +[CKUIBehavior sharedBehaviors];
  [v31 detailsAvatarCutoutDiameter];
  v29 = [v30 constraintEqualToConstant:?];
  v37[1] = v29;
  v28 = [(CKDetailsGroupHeaderCell *)self titleLabel];
  v26 = [v28 heightAnchor];
  v27 = [(CKDetailsGroupHeaderCell *)self titleLabel];
  v25 = [v27 font];
  [v25 pointSize];
  v24 = [v26 constraintGreaterThanOrEqualToConstant:?];
  v37[2] = v24;
  v23 = [(CKDetailsGroupHeaderCell *)self subTitleLabel];
  v21 = [v23 heightAnchor];
  v22 = [(CKDetailsGroupHeaderCell *)self subTitleLabel];
  v9 = [v22 font];
  [v9 pointSize];
  v10 = [v21 constraintGreaterThanOrEqualToConstant:?];
  v37[3] = v10;
  v11 = [(CKDetailsGroupHeaderCell *)self titleLabel];
  v12 = [v11 trailingAnchor];
  v13 = [(CKDetailsGroupHeaderCell *)self contentView];
  v14 = [v13 trailingAnchor];
  v15 = [(CKDetailsGroupHeaderCell *)self contentView];
  [v15 layoutMargins];
  v17 = [v12 constraintEqualToAnchor:v14 constant:v16];
  v37[4] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:5];
  [v36 addObjectsFromArray:v18];

  v19 = +[CKUIBehavior sharedBehaviors];
  LODWORD(v11) = [v19 isAccessibilityPreferredContentSizeCategory];

  if (v11)
  {
    [(CKDetailsGroupHeaderCell *)self constraintsForAccessibility];
  }

  else
  {
    [(CKDetailsGroupHeaderCell *)self standardConstraints];
  }
  v20 = ;
  [v36 addObjectsFromArray:v20];

  [MEMORY[0x1E696ACD8] activateConstraints:v36];
}

- (id)constraintsForAccessibility
{
  v49[7] = *MEMORY[0x1E69E9840];
  v48 = [(CKDetailsGroupHeaderCell *)self avatarView];
  v46 = [v48 topAnchor];
  v47 = [(CKDetailsGroupHeaderCell *)self contentView];
  v44 = [v47 topAnchor];
  v45 = [(CKDetailsGroupHeaderCell *)self contentView];
  [v45 layoutMargins];
  v43 = [v46 constraintEqualToAnchor:v44 constant:?];
  v49[0] = v43;
  v42 = [(CKDetailsGroupHeaderCell *)self avatarView];
  v40 = [v42 leadingAnchor];
  v41 = [(CKDetailsGroupHeaderCell *)self contentView];
  v38 = [v41 leadingAnchor];
  v39 = [(CKDetailsGroupHeaderCell *)self contentView];
  [v39 layoutMargins];
  v37 = [v40 constraintEqualToAnchor:v38 constant:v3];
  v49[1] = v37;
  v36 = [(CKDetailsGroupHeaderCell *)self titleLabel];
  v34 = [v36 leadingAnchor];
  v35 = [(CKDetailsGroupHeaderCell *)self contentView];
  v32 = [v35 leadingAnchor];
  v33 = [(CKDetailsGroupHeaderCell *)self contentView];
  [v33 layoutMargins];
  v31 = [v34 constraintEqualToAnchor:v32 constant:v4];
  v49[2] = v31;
  v30 = [(CKDetailsGroupHeaderCell *)self titleLabel];
  v28 = [v30 topAnchor];
  v29 = [(CKDetailsGroupHeaderCell *)self avatarView];
  v27 = [v29 bottomAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v49[3] = v26;
  v25 = [(CKDetailsGroupHeaderCell *)self subTitleLabel];
  v23 = [v25 leadingAnchor];
  v24 = [(CKDetailsGroupHeaderCell *)self contentView];
  v21 = [v24 leadingAnchor];
  v22 = [(CKDetailsGroupHeaderCell *)self contentView];
  [v22 layoutMargins];
  v20 = [v23 constraintEqualToAnchor:v21 constant:v5];
  v49[4] = v20;
  v19 = [(CKDetailsGroupHeaderCell *)self subTitleLabel];
  v6 = [v19 topAnchor];
  v7 = [(CKDetailsGroupHeaderCell *)self titleLabel];
  v8 = [v7 bottomAnchor];
  v9 = [v6 constraintEqualToAnchor:v8];
  v49[5] = v9;
  v10 = [(CKDetailsGroupHeaderCell *)self subTitleLabel];
  v11 = [v10 trailingAnchor];
  v12 = [(CKDetailsGroupHeaderCell *)self contentView];
  v13 = [v12 trailingAnchor];
  v14 = [(CKDetailsGroupHeaderCell *)self contentView];
  [v14 layoutMargins];
  v16 = [v11 constraintEqualToAnchor:v13 constant:v15];
  v49[6] = v16;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:7];

  return v18;
}

- (id)standardConstraints
{
  v68[7] = *MEMORY[0x1E69E9840];
  v3 = [(CKDetailsGroupHeaderCell *)self titleLabel];
  v4 = [v3 font];
  v5 = +[CKUIBehavior sharedBehaviors];
  [v5 detailsGroupHeaderCellInterTextVerticalSpacing];
  v7 = v6;
  v8 = [(CKDetailsGroupHeaderCell *)self titleLabel];
  v9 = [v8 font];
  [v9 pointSize];
  [v4 _scaledValueForValue:1 useLanguageAwareScaling:v7 + v10 * 0.5];
  v12 = v11;

  v13 = [(CKDetailsGroupHeaderCell *)self subTitleLabel];
  v14 = [v13 font];
  v15 = +[CKUIBehavior sharedBehaviors];
  [v15 detailsGroupHeaderCellInterTextVerticalSpacing];
  v17 = v16;
  v18 = [(CKDetailsGroupHeaderCell *)self subTitleLabel];
  v19 = [v18 font];
  [v19 pointSize];
  [v14 _scaledValueForValue:1 useLanguageAwareScaling:v17 + v20 * 0.5];
  v22 = v21;

  v67 = [(CKDetailsGroupHeaderCell *)self avatarView];
  v65 = [v67 leadingAnchor];
  v66 = [(CKDetailsGroupHeaderCell *)self contentView];
  v64 = [v66 layoutMarginsGuide];
  v63 = [v64 leadingAnchor];
  v62 = [v65 constraintEqualToAnchor:v63];
  v68[0] = v62;
  v61 = [(CKDetailsGroupHeaderCell *)self avatarView];
  v59 = [v61 centerYAnchor];
  v60 = [(CKDetailsGroupHeaderCell *)self contentView];
  v58 = [v60 layoutMarginsGuide];
  v57 = [v58 centerYAnchor];
  v56 = [v59 constraintEqualToAnchor:v57];
  v68[1] = v56;
  v55 = [(CKDetailsGroupHeaderCell *)self titleLabel];
  v53 = [v55 leadingAnchor];
  v54 = [(CKDetailsGroupHeaderCell *)self avatarView];
  v51 = [v54 trailingAnchor];
  v52 = +[CKUIBehavior sharedBehaviors];
  [v52 detailsGroupHeaderCellAvatarViewRightMargin];
  v50 = [v53 constraintEqualToAnchor:v51 constant:?];
  v68[2] = v50;
  v49 = [(CKDetailsGroupHeaderCell *)self titleLabel];
  v47 = [v49 centerYAnchor];
  v48 = [(CKDetailsGroupHeaderCell *)self contentView];
  v46 = [v48 centerYAnchor];
  v45 = [v47 constraintEqualToAnchor:v46 constant:-v12];
  v68[3] = v45;
  v44 = [(CKDetailsGroupHeaderCell *)self subTitleLabel];
  v42 = [v44 leadingAnchor];
  v43 = [(CKDetailsGroupHeaderCell *)self titleLabel];
  v41 = [v43 leadingAnchor];
  v40 = [v42 constraintEqualToAnchor:v41];
  v68[4] = v40;
  v39 = [(CKDetailsGroupHeaderCell *)self subTitleLabel];
  v38 = [v39 centerYAnchor];
  v23 = [(CKDetailsGroupHeaderCell *)self contentView];
  v24 = [v23 centerYAnchor];
  v25 = [v38 constraintEqualToAnchor:v24 constant:v22];
  v68[5] = v25;
  v26 = [(CKDetailsGroupHeaderCell *)self subTitleLabel];
  v27 = [v26 trailingAnchor];
  v28 = [(CKDetailsGroupHeaderCell *)self contentView];
  v29 = [v28 trailingAnchor];
  v30 = [(CKDetailsGroupHeaderCell *)self contentView];
  [v30 layoutMargins];
  v32 = v31;
  v33 = +[CKUIBehavior sharedBehaviors];
  [v33 detailsGroupHeaderCellSubtitleViewRightMargin];
  v35 = [v27 constraintEqualToAnchor:v29 constant:-(v32 + v34)];
  v68[6] = v35;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:7];

  return v37;
}

- (id)standardWolfConstraints
{
  v43[7] = *MEMORY[0x1E69E9840];
  v42 = [(CKDetailsGroupHeaderCell *)self avatarView];
  v40 = [v42 leadingAnchor];
  v41 = [(CKDetailsGroupHeaderCell *)self contentView];
  v39 = [v41 layoutMarginsGuide];
  v38 = [v39 leadingAnchor];
  v37 = [v40 constraintEqualToAnchor:v38];
  v43[0] = v37;
  v36 = [(CKDetailsGroupHeaderCell *)self avatarView];
  v34 = [v36 centerYAnchor];
  v35 = [(CKDetailsGroupHeaderCell *)self contentView];
  v33 = [v35 layoutMarginsGuide];
  v32 = [v33 centerYAnchor];
  v31 = [v34 constraintEqualToAnchor:v32];
  v43[1] = v31;
  v30 = [(CKDetailsGroupHeaderCell *)self titleLabel];
  v28 = [v30 leadingAnchor];
  v29 = [(CKDetailsGroupHeaderCell *)self avatarView];
  v26 = [v29 trailingAnchor];
  v27 = +[CKUIBehavior sharedBehaviors];
  [v27 detailsGroupHeaderCellAvatarViewRightMargin];
  v25 = [v28 constraintEqualToAnchor:v26 constant:?];
  v43[2] = v25;
  v24 = [(CKDetailsGroupHeaderCell *)self titleLabel];
  v22 = [v24 bottomAnchor];
  v23 = [(CKDetailsGroupHeaderCell *)self contentView];
  v21 = [v23 centerYAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v43[3] = v20;
  v19 = [(CKDetailsGroupHeaderCell *)self subTitleLabel];
  v17 = [v19 leadingAnchor];
  v18 = [(CKDetailsGroupHeaderCell *)self titleLabel];
  v16 = [v18 leadingAnchor];
  v15 = [v17 constraintEqualToAnchor:v16];
  v43[4] = v15;
  v3 = [(CKDetailsGroupHeaderCell *)self subTitleLabel];
  v4 = [v3 topAnchor];
  v5 = [(CKDetailsGroupHeaderCell *)self titleLabel];
  v6 = [v5 bottomAnchor];
  v7 = [v4 constraintEqualToAnchor:v6];
  v43[5] = v7;
  v8 = [(CKDetailsGroupHeaderCell *)self subTitleLabel];
  v9 = [v8 trailingAnchor];
  v10 = [(CKDetailsGroupHeaderCell *)self contentView];
  v11 = [v10 trailingAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  v43[6] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:7];

  return v14;
}

- (void)configureCellIconForCollapsedState:(BOOL)a3
{
  v23[1] = *MEMORY[0x1E69E9840];
  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = v5;
  if (a3)
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
  v10 = [v9 detailsGroupHeaderCellChevronFont];
  v11 = +[CKUIBehavior sharedBehaviors];
  v12 = [v8 configurationWithFont:v10 scale:{objc_msgSend(v11, "detailsGroupChevronImageScale")}];

  v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:v7];
  v14 = [v13 imageWithConfiguration:v12];

  v15 = MEMORY[0x1E69DCAD8];
  v16 = +[CKUIBehavior sharedBehaviors];
  v17 = [v16 theme];
  v18 = [v17 detailsGroupHeaderCellChevronColor];
  v23[0] = v18;
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
  v3 = [(CKDetailsCell *)self topSeperator];
  [v3 setHidden:1];
}

@end