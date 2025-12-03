@interface CKDetailsShowMoreContactsStandardCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
@end

@implementation CKDetailsShowMoreContactsStandardCell

- (void)layoutSubviews
{
  v44.receiver = self;
  v44.super_class = CKDetailsShowMoreContactsStandardCell;
  [(CKDetailsCell *)&v44 layoutSubviews];
  bottomSeperator = [(CKDetailsCell *)self bottomSeperator];
  [bottomSeperator setHidden:1];

  topSeperator = [(CKDetailsCell *)self topSeperator];
  [topSeperator frame];
  v40 = v6;
  v42 = v5;
  v8 = v7;

  contentView = [(CKDetailsShowMoreContactsStandardCell *)self contentView];
  [contentView layoutMargins];
  v11 = v10;
  v12 = +[CKUIBehavior sharedBehaviors];
  [v12 detailsContactAvatarLabelSpacing];
  v14 = v11 + v13;
  v15 = +[CKUIBehavior sharedBehaviors];
  [v15 detailsViewContactImageDiameter];
  v17 = v14 + v16;

  userInterfaceLayoutDirection = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
  textLabel = [(CKDetailsShowMoreContactsStandardCell *)self textLabel];
  [textLabel frame];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  textLabel2 = [(CKDetailsShowMoreContactsStandardCell *)self textLabel];
  [textLabel2 setFrame:{v21, v23, v25, v27}];

  v29 = v17;
  v30 = v17;
  if (userInterfaceLayoutDirection)
  {
    contentView2 = [(CKDetailsShowMoreContactsStandardCell *)self contentView];
    [contentView2 layoutMargins];
    v30 = v32;

    v33 = +[CKUIBehavior sharedBehaviors];
    [v33 detailsContactAvatarLabelSpacing];
    v35 = v34;
    v36 = +[CKUIBehavior sharedBehaviors];
    [v36 detailsViewContactImageDiameter];
    v29 = v21 - (v35 + v37);
  }

  v38 = [(CKDetailsShowMoreContactsStandardCell *)self textLabel:v40];
  [v38 setFrame:{v29, v23, v25, v27}];

  topSeperator2 = [(CKDetailsCell *)self topSeperator];
  [topSeperator2 setFrame:{v30, v43, v8 - v17, v41}];
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