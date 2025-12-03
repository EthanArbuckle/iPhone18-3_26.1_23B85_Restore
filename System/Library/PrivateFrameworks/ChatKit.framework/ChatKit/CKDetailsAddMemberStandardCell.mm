@interface CKDetailsAddMemberStandardCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKDetailsAddMemberStandardCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation CKDetailsAddMemberStandardCell

- (CKDetailsAddMemberStandardCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v36.receiver = self;
  v36.super_class = CKDetailsAddMemberStandardCell;
  v4 = [(CKDetailsAddMemberCell *)&v36 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [(CKDetailsAddMemberStandardCell *)v4 setAddIcon:v6];

    addIcon = [(CKDetailsAddMemberStandardCell *)v4 addIcon];
    [addIcon setBackgroundColor:0];

    addIcon2 = [(CKDetailsAddMemberStandardCell *)v4 addIcon];
    [addIcon2 setContentMode:4];

    addIcon3 = [(CKDetailsAddMemberStandardCell *)v4 addIcon];
    v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"plus"];
    v11 = MEMORY[0x1E69DCAD8];
    v12 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    v13 = [v11 configurationWithFont:v12];
    v14 = [v10 imageWithConfiguration:v13];
    [addIcon3 setImage:v14];

    addIcon4 = [(CKDetailsAddMemberStandardCell *)v4 addIcon];
    v16 = +[CKUIBehavior sharedBehaviors];
    theme = [v16 theme];
    detailsTextColor = [theme detailsTextColor];
    [addIcon4 setTintColor:detailsTextColor];

    addIcon5 = [(CKDetailsAddMemberStandardCell *)v4 addIcon];
    v20 = +[CKUIBehavior sharedBehaviors];
    [v20 detailsAddButtonDiameter];
    v22 = v21;
    v23 = +[CKUIBehavior sharedBehaviors];
    [v23 detailsAddButtonDiameter];
    [addIcon5 setBounds:{0.0, 0.0, v22, v24}];

    addIcon6 = [(CKDetailsAddMemberStandardCell *)v4 addIcon];
    v26 = +[CKUIBehavior sharedBehaviors];
    theme2 = [v26 theme];
    detailsAddButtonBackgroundColor = [theme2 detailsAddButtonBackgroundColor];
    [addIcon6 setBackgroundColor:detailsAddButtonBackgroundColor];

    addIcon7 = [(CKDetailsAddMemberStandardCell *)v4 addIcon];
    layer = [addIcon7 layer];
    v31 = +[CKUIBehavior sharedBehaviors];
    [v31 detailsAddButtonDiameter];
    [layer setCornerRadius:v32 * 0.5];

    contentView = [(CKDetailsAddMemberStandardCell *)v4 contentView];
    addIcon8 = [(CKDetailsAddMemberStandardCell *)v4 addIcon];
    [contentView addSubview:addIcon8];
  }

  return v4;
}

- (void)layoutSubviews
{
  *&rect.size.width = self;
  *&rect.size.height = CKDetailsAddMemberStandardCell;
  [(CGSize *)&rect.size layoutSubviews];
  contentView = [(CKDetailsAddMemberStandardCell *)self contentView];
  [contentView layoutMargins];
  v5 = v4;
  v7 = v6;

  userInterfaceLayoutDirection = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
  addIcon = [(CKDetailsAddMemberStandardCell *)self addIcon];
  [addIcon sizeToFit];

  addIcon2 = [(CKDetailsAddMemberStandardCell *)self addIcon];
  [addIcon2 frame];
  v12 = v11;
  v14 = v13;

  v15 = +[CKUIBehavior sharedBehaviors];
  [v15 detailsAddButtonDiameter];
  v17 = v16;

  v18 = +[CKUIBehavior sharedBehaviors];
  [v18 detailsAddButtonDiameter];
  v20 = v19;

  v21 = +[CKUIBehavior sharedBehaviors];
  [v21 detailsContactAvatarLabelSpacing];
  v23 = v22;

  if (userInterfaceLayoutDirection)
  {
    contentView2 = [(CKDetailsAddMemberStandardCell *)self contentView];
    [contentView2 bounds];
    v26 = v25 - v7;
    v75.origin.x = v12;
    v75.origin.y = v14;
    v75.size.width = v20;
    v75.size.height = v17;
    rect.origin.x = v26 - CGRectGetWidth(v75);
    [(CKDetailsAddMemberStandardCell *)self bounds];
    v28 = v27;
    v76.origin.x = v12;
    v76.origin.y = v14;
    v76.size.width = v20;
    v76.size.height = v17;
    *&v29 = (v28 - CGRectGetHeight(v76)) * 0.5;
    if (CKMainScreenScale_once_6 != -1)
    {
      v73 = v29;
      [CKDetailsAddMemberStandardCell layoutSubviews];
      *&v29 = v73;
    }

    v30 = CKMainScreenScale_sMainScreenScale_6;
    v31.f64[0] = rect.origin.x;
    *&v31.f64[1] = v29;
    if (*&CKMainScreenScale_sMainScreenScale_6 == 0.0)
    {
      *&v30 = 1.0;
    }

    rect.origin = vdivq_f64(vrndmq_f64(vmulq_n_f64(v31, *&v30)), vdupq_lane_s64(v30, 0));
  }

  else
  {
    [(CKDetailsAddMemberStandardCell *)self bounds];
    v33 = v32;
    v77.origin.x = v12;
    v77.origin.y = v14;
    v77.size.width = v20;
    v77.size.height = v17;
    *&v34 = (v33 - CGRectGetHeight(v77)) * 0.5;
    if (CKMainScreenScale_once_6 != -1)
    {
      v73 = v34;
      [CKDetailsAddMemberStandardCell layoutSubviews];
      *&v34 = v73;
    }

    v35 = CKMainScreenScale_sMainScreenScale_6;
    v36.f64[0] = v5 + 0.0;
    *&v36.f64[1] = v34;
    if (*&CKMainScreenScale_sMainScreenScale_6 == 0.0)
    {
      *&v35 = 1.0;
    }

    rect.origin = vdivq_f64(vrndmq_f64(vmulq_n_f64(v36, *&v35)), vdupq_lane_s64(v35, 0));
  }

  addIcon3 = [(CKDetailsAddMemberStandardCell *)self addIcon];
  [addIcon3 setFrame:?];

  contentView3 = [(CKDetailsAddMemberStandardCell *)self contentView];
  [contentView3 bounds];
  v40 = v39;
  v42 = v41;
  v44 = v43;

  x = rect.origin.x;
  y = rect.origin.y;
  v47 = v20;
  v48 = v17;
  if (userInterfaceLayoutDirection)
  {
    v49 = CGRectGetMinX(*&x) - v23;
  }

  else
  {
    v40 = v23 + CGRectGetMaxX(*&x);
    contentView4 = [(CKDetailsAddMemberStandardCell *)self contentView];
    [contentView4 bounds];
    v49 = v51 - v40;
  }

  addLabel = [(CKDetailsAddMemberCell *)self addLabel];
  [addLabel setFrame:{v40, v42, v49, v44}];

  topSeperator = [(CKDetailsCell *)self topSeperator];
  [topSeperator frame];
  v55 = v54;
  v57 = v56;
  v59 = v58;

  contentView5 = [(CKDetailsAddMemberStandardCell *)self contentView];
  [contentView5 layoutMargins];
  v62 = v61;
  v63 = +[CKUIBehavior sharedBehaviors];
  [v63 detailsContactAvatarLabelSpacing];
  v65 = v62 + v64;
  v66 = +[CKUIBehavior sharedBehaviors];
  [v66 detailsViewContactImageDiameter];
  v68 = v65 + v67;

  v69 = v68;
  if (userInterfaceLayoutDirection)
  {
    contentView6 = [(CKDetailsAddMemberStandardCell *)self contentView];
    [contentView6 layoutMargins];
    v69 = v71;
  }

  topSeperator2 = [(CKDetailsCell *)self topSeperator];
  [topSeperator2 setFrame:{v69, v55, v57 - v68, v59}];
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v14.receiver = self;
  v14.super_class = CKDetailsAddMemberStandardCell;
  [(CKDetailsAddMemberCell *)&v14 setEnabled:?];
  addIcon = [(CKDetailsAddMemberStandardCell *)self addIcon];
  v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"plus"];
  theme2 = +[CKUIBehavior sharedBehaviors];
  theme = [theme2 theme];
  lightGrayColor2 = theme;
  if (enabledCopy)
  {
    detailsTextColor = [theme detailsTextColor];
    v11 = [v6 _flatImageWithColor:detailsTextColor];
    [addIcon setImage:v11];
  }

  else
  {
    lightGrayColor = [theme lightGrayColor];
    v13 = [v6 _flatImageWithColor:lightGrayColor];
    [addIcon setImage:v13];

    addIcon = [(CKDetailsAddMemberStandardCell *)self addIcon];
    v6 = +[CKUIBehavior sharedBehaviors];
    theme2 = [v6 theme];
    lightGrayColor2 = [theme2 lightGrayColor];
    [addIcon setTintColor:lightGrayColor2];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v4 = objc_alloc([CKDetailsContactsTableViewCell cellClass:fits.width]);
  v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v5 sizeThatFits:{width, 3.40282347e38}];
  v7 = v6;

  v8 = width;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

@end