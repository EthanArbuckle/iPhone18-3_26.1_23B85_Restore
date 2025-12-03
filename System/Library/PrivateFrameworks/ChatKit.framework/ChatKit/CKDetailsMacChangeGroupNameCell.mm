@interface CKDetailsMacChangeGroupNameCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKDetailsMacChangeGroupNameCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
@end

@implementation CKDetailsMacChangeGroupNameCell

- (CKDetailsMacChangeGroupNameCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v49.receiver = self;
  v49.super_class = CKDetailsMacChangeGroupNameCell;
  v4 = [(CKDetailsCell *)&v49 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E69DCC10]);
    v6 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 8);
    v8 = *(MEMORY[0x1E695F058] + 16);
    v9 = *(MEMORY[0x1E695F058] + 24);
    v10 = [v5 initWithFrame:{*MEMORY[0x1E695F058], v7, v8, v9}];
    [(CKDetailsMacChangeGroupNameCell *)v4 setChangeNameLabel:v10];

    changeNameLabel = [(CKDetailsMacChangeGroupNameCell *)v4 changeNameLabel];
    v12 = CKFrameworkBundle();
    v13 = [v12 localizedStringForKey:@"CHANGE_GROUP_NAME_AND_PHOTO" value:&stru_1F04268F8 table:@"ChatKit"];
    [changeNameLabel setText:v13];

    LODWORD(v12) = CKIsRunningInMacCatalyst();
    changeNameLabel2 = [(CKDetailsMacChangeGroupNameCell *)v4 changeNameLabel];
    if (v12)
    {
      tintColor = [(CKDetailsMacChangeGroupNameCell *)v4 tintColor];
      [changeNameLabel2 setTextColor:tintColor];
    }

    else
    {
      tintColor = +[CKUIBehavior sharedBehaviors];
      theme = [tintColor theme];
      appTintColor = [theme appTintColor];
      [changeNameLabel2 setTextColor:appTintColor];
    }

    changeNameLabel3 = [(CKDetailsMacChangeGroupNameCell *)v4 changeNameLabel];
    [changeNameLabel3 setEnabled:1];

    changeNameLabel4 = [(CKDetailsMacChangeGroupNameCell *)v4 changeNameLabel];
    [changeNameLabel4 sizeToFit];

    contentView = [(CKDetailsMacChangeGroupNameCell *)v4 contentView];
    changeNameLabel5 = [(CKDetailsMacChangeGroupNameCell *)v4 changeNameLabel];
    [contentView addSubview:changeNameLabel5];

    v22 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v6, v7, v8, v9}];
    [(CKDetailsMacChangeGroupNameCell *)v4 setCellGlpyh:v22];

    cellGlpyh = [(CKDetailsMacChangeGroupNameCell *)v4 cellGlpyh];
    [cellGlpyh setBackgroundColor:0];

    cellGlpyh2 = [(CKDetailsMacChangeGroupNameCell *)v4 cellGlpyh];
    [cellGlpyh2 setContentMode:4];

    cellGlpyh3 = [(CKDetailsMacChangeGroupNameCell *)v4 cellGlpyh];
    v26 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.2.fill"];
    v27 = MEMORY[0x1E69DCAD8];
    v28 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    v29 = [v27 configurationWithFont:v28];
    v30 = [v26 imageWithConfiguration:v29];
    [cellGlpyh3 setImage:v30];

    cellGlpyh4 = [(CKDetailsMacChangeGroupNameCell *)v4 cellGlpyh];
    tintColor2 = [(CKDetailsMacChangeGroupNameCell *)v4 tintColor];
    [cellGlpyh4 setTintColor:tintColor2];

    cellGlpyh5 = [(CKDetailsMacChangeGroupNameCell *)v4 cellGlpyh];
    v34 = +[CKUIBehavior sharedBehaviors];
    [v34 transcriptDrawerContactImageDiameter];
    v36 = v35;
    v37 = +[CKUIBehavior sharedBehaviors];
    [v37 transcriptDrawerContactImageDiameter];
    [cellGlpyh5 setBounds:{0.0, 0.0, v36, v38}];

    cellGlpyh6 = [(CKDetailsMacChangeGroupNameCell *)v4 cellGlpyh];
    quaternaryLabelColor = [MEMORY[0x1E69DC888] quaternaryLabelColor];
    [cellGlpyh6 setBackgroundColor:quaternaryLabelColor];

    cellGlpyh7 = [(CKDetailsMacChangeGroupNameCell *)v4 cellGlpyh];
    layer = [cellGlpyh7 layer];
    v43 = +[CKUIBehavior sharedBehaviors];
    [v43 transcriptDrawerContactImageDiameter];
    [layer setCornerRadius:v44 * 0.5];

    contentView2 = [(CKDetailsMacChangeGroupNameCell *)v4 contentView];
    cellGlpyh8 = [(CKDetailsMacChangeGroupNameCell *)v4 cellGlpyh];
    [contentView2 addSubview:cellGlpyh8];

    contentView3 = [(CKDetailsMacChangeGroupNameCell *)v4 contentView];
    [contentView3 setBackgroundColor:0];
  }

  return v4;
}

- (void)layoutSubviews
{
  *&rect.size.width = self;
  *&rect.size.height = CKDetailsMacChangeGroupNameCell;
  [(CGSize *)&rect.size layoutSubviews];
  userInterfaceLayoutDirection = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
  contentView = [(CKDetailsMacChangeGroupNameCell *)self contentView];
  [contentView layoutMargins];
  rect.origin.x = v5;
  v7 = v6;

  cellGlpyh = [(CKDetailsMacChangeGroupNameCell *)self cellGlpyh];
  [cellGlpyh frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  if (userInterfaceLayoutDirection)
  {
    contentView2 = [(CKDetailsMacChangeGroupNameCell *)self contentView];
    [contentView2 bounds];
    v19 = v18 - v7;
    v48.origin.x = v10;
    v48.origin.y = v12;
    v48.size.width = v14;
    v48.size.height = v16;
    rect.origin.x = v19 - CGRectGetWidth(v48);
    [(CKDetailsMacChangeGroupNameCell *)self bounds];
    v21 = v20;
    v49.origin.x = v10;
    v49.origin.y = v12;
    v49.size.width = v14;
    v49.size.height = v16;
    *&v22 = (v21 - CGRectGetHeight(v49)) * 0.5;
    if (CKMainScreenScale_once_102 != -1)
    {
      v46 = v22;
      [CKDetailsMacChangeGroupNameCell layoutSubviews];
      *&v22 = v46;
    }

    v23 = CKMainScreenScale_sMainScreenScale_102;
    v24.f64[0] = rect.origin.x;
    *&v24.f64[1] = v22;
    if (*&CKMainScreenScale_sMainScreenScale_102 == 0.0)
    {
      *&v23 = 1.0;
    }

    rect.origin = vdivq_f64(vrndmq_f64(vmulq_n_f64(v24, *&v23)), vdupq_lane_s64(v23, 0));
  }

  else
  {
    [(CKDetailsMacChangeGroupNameCell *)self bounds];
    v26 = v25;
    v50.origin.x = v10;
    v50.origin.y = v12;
    v50.size.width = v14;
    v50.size.height = v16;
    *&v27 = (v26 - CGRectGetHeight(v50)) * 0.5 + 6.0;
    if (CKMainScreenScale_once_102 != -1)
    {
      v46 = v27;
      [CKDetailsMacChangeGroupNameCell layoutSubviews];
      *&v27 = v46;
    }

    v28 = CKMainScreenScale_sMainScreenScale_102;
    v29.f64[0] = rect.origin.x;
    *&v29.f64[1] = v27;
    if (*&CKMainScreenScale_sMainScreenScale_102 == 0.0)
    {
      *&v28 = 1.0;
    }

    rect.origin = vdivq_f64(vrndmq_f64(vmulq_n_f64(v29, *&v28)), vdupq_lane_s64(v28, 0));
  }

  cellGlpyh2 = [(CKDetailsMacChangeGroupNameCell *)self cellGlpyh];
  [cellGlpyh2 setFrame:?];

  contentView3 = [(CKDetailsMacChangeGroupNameCell *)self contentView];
  [contentView3 bounds];
  v33 = v32;
  v35 = v34;
  v37 = v36;

  x = rect.origin.x;
  y = rect.origin.y;
  v40 = v14;
  v41 = v16;
  if (userInterfaceLayoutDirection)
  {
    v42 = CGRectGetMinX(*&x) + -10.0;
  }

  else
  {
    v33 = CGRectGetMaxX(*&x) + 10.0;
    v35 = v35 + 6.0;
    contentView4 = [(CKDetailsMacChangeGroupNameCell *)self contentView];
    [contentView4 bounds];
    v42 = v44 - v33;
  }

  changeNameLabel = [(CKDetailsMacChangeGroupNameCell *)self changeNameLabel];
  [changeNameLabel setFrame:{v33, v35, v42, v37}];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  if (CKIsRunningInMacCatalyst())
  {
    v6 = 60.0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CKDetailsMacChangeGroupNameCell;
    [(CKDetailsMacChangeGroupNameCell *)&v9 sizeThatFits:width, height];
    width = v7;
  }

  v8 = width;
  result.height = v6;
  result.width = v8;
  return result;
}

@end