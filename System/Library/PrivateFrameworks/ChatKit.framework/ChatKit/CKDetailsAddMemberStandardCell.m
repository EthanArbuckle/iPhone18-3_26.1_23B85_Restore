@interface CKDetailsAddMemberStandardCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKDetailsAddMemberStandardCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)a3;
@end

@implementation CKDetailsAddMemberStandardCell

- (CKDetailsAddMemberStandardCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v36.receiver = self;
  v36.super_class = CKDetailsAddMemberStandardCell;
  v4 = [(CKDetailsAddMemberCell *)&v36 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [(CKDetailsAddMemberStandardCell *)v4 setAddIcon:v6];

    v7 = [(CKDetailsAddMemberStandardCell *)v4 addIcon];
    [v7 setBackgroundColor:0];

    v8 = [(CKDetailsAddMemberStandardCell *)v4 addIcon];
    [v8 setContentMode:4];

    v9 = [(CKDetailsAddMemberStandardCell *)v4 addIcon];
    v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"plus"];
    v11 = MEMORY[0x1E69DCAD8];
    v12 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    v13 = [v11 configurationWithFont:v12];
    v14 = [v10 imageWithConfiguration:v13];
    [v9 setImage:v14];

    v15 = [(CKDetailsAddMemberStandardCell *)v4 addIcon];
    v16 = +[CKUIBehavior sharedBehaviors];
    v17 = [v16 theme];
    v18 = [v17 detailsTextColor];
    [v15 setTintColor:v18];

    v19 = [(CKDetailsAddMemberStandardCell *)v4 addIcon];
    v20 = +[CKUIBehavior sharedBehaviors];
    [v20 detailsAddButtonDiameter];
    v22 = v21;
    v23 = +[CKUIBehavior sharedBehaviors];
    [v23 detailsAddButtonDiameter];
    [v19 setBounds:{0.0, 0.0, v22, v24}];

    v25 = [(CKDetailsAddMemberStandardCell *)v4 addIcon];
    v26 = +[CKUIBehavior sharedBehaviors];
    v27 = [v26 theme];
    v28 = [v27 detailsAddButtonBackgroundColor];
    [v25 setBackgroundColor:v28];

    v29 = [(CKDetailsAddMemberStandardCell *)v4 addIcon];
    v30 = [v29 layer];
    v31 = +[CKUIBehavior sharedBehaviors];
    [v31 detailsAddButtonDiameter];
    [v30 setCornerRadius:v32 * 0.5];

    v33 = [(CKDetailsAddMemberStandardCell *)v4 contentView];
    v34 = [(CKDetailsAddMemberStandardCell *)v4 addIcon];
    [v33 addSubview:v34];
  }

  return v4;
}

- (void)layoutSubviews
{
  *&rect.size.width = self;
  *&rect.size.height = CKDetailsAddMemberStandardCell;
  [(CGSize *)&rect.size layoutSubviews];
  v3 = [(CKDetailsAddMemberStandardCell *)self contentView];
  [v3 layoutMargins];
  v5 = v4;
  v7 = v6;

  v8 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
  v9 = [(CKDetailsAddMemberStandardCell *)self addIcon];
  [v9 sizeToFit];

  v10 = [(CKDetailsAddMemberStandardCell *)self addIcon];
  [v10 frame];
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

  if (v8)
  {
    v24 = [(CKDetailsAddMemberStandardCell *)self contentView];
    [v24 bounds];
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

  v37 = [(CKDetailsAddMemberStandardCell *)self addIcon];
  [v37 setFrame:?];

  v38 = [(CKDetailsAddMemberStandardCell *)self contentView];
  [v38 bounds];
  v40 = v39;
  v42 = v41;
  v44 = v43;

  x = rect.origin.x;
  y = rect.origin.y;
  v47 = v20;
  v48 = v17;
  if (v8)
  {
    v49 = CGRectGetMinX(*&x) - v23;
  }

  else
  {
    v40 = v23 + CGRectGetMaxX(*&x);
    v50 = [(CKDetailsAddMemberStandardCell *)self contentView];
    [v50 bounds];
    v49 = v51 - v40;
  }

  v52 = [(CKDetailsAddMemberCell *)self addLabel];
  [v52 setFrame:{v40, v42, v49, v44}];

  v53 = [(CKDetailsCell *)self topSeperator];
  [v53 frame];
  v55 = v54;
  v57 = v56;
  v59 = v58;

  v60 = [(CKDetailsAddMemberStandardCell *)self contentView];
  [v60 layoutMargins];
  v62 = v61;
  v63 = +[CKUIBehavior sharedBehaviors];
  [v63 detailsContactAvatarLabelSpacing];
  v65 = v62 + v64;
  v66 = +[CKUIBehavior sharedBehaviors];
  [v66 detailsViewContactImageDiameter];
  v68 = v65 + v67;

  v69 = v68;
  if (v8)
  {
    v70 = [(CKDetailsAddMemberStandardCell *)self contentView];
    [v70 layoutMargins];
    v69 = v71;
  }

  v72 = [(CKDetailsCell *)self topSeperator];
  [v72 setFrame:{v69, v55, v57 - v68, v59}];
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v14.receiver = self;
  v14.super_class = CKDetailsAddMemberStandardCell;
  [(CKDetailsAddMemberCell *)&v14 setEnabled:?];
  v5 = [(CKDetailsAddMemberStandardCell *)self addIcon];
  v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"plus"];
  v7 = +[CKUIBehavior sharedBehaviors];
  v8 = [v7 theme];
  v9 = v8;
  if (v3)
  {
    v10 = [v8 detailsTextColor];
    v11 = [v6 _flatImageWithColor:v10];
    [v5 setImage:v11];
  }

  else
  {
    v12 = [v8 lightGrayColor];
    v13 = [v6 _flatImageWithColor:v12];
    [v5 setImage:v13];

    v5 = [(CKDetailsAddMemberStandardCell *)self addIcon];
    v6 = +[CKUIBehavior sharedBehaviors];
    v7 = [v6 theme];
    v9 = [v7 lightGrayColor];
    [v5 setTintColor:v9];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = objc_alloc([CKDetailsContactsTableViewCell cellClass:a3.width]);
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