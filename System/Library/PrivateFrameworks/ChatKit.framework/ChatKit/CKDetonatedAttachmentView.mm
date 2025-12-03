@interface CKDetonatedAttachmentView
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKDetonatedAttachmentView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation CKDetonatedAttachmentView

- (CKDetonatedAttachmentView)initWithFrame:(CGRect)frame
{
  v29.receiver = self;
  v29.super_class = CKDetonatedAttachmentView;
  v3 = [(CKDetonatedAttachmentView *)&v29 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
    v9 = [v4 initWithFrame:{*MEMORY[0x1E695F058], v6, v7, v8}];
    iconImageView = v3->_iconImageView;
    v3->_iconImageView = v9;

    v11 = +[CKUIBehavior sharedBehaviors];
    genericDocumentIcon = [v11 genericDocumentIcon];
    [(UIImageView *)v3->_iconImageView setImage:genericDocumentIcon];

    image = [(UIImageView *)v3->_iconImageView image];

    if (!image)
    {
      v14 = IMLogHandleForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [CKDetonatedAttachmentView initWithFrame:v14];
      }
    }

    layer = [(UIImageView *)v3->_iconImageView layer];
    [layer setBorderColor:0];
    [layer setBorderWidth:0.0];
    [layer setCornerRadius:0.0];
    [(CKDetonatedAttachmentView *)v3 addSubview:v3->_iconImageView];
    v16 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v5, v6, v7, v8}];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v16;

    [(UILabel *)v3->_titleLabel setTextAlignment:1];
    [(UILabel *)v3->_titleLabel setOpaque:0];
    v18 = v3->_titleLabel;
    v19 = +[CKUIBehavior sharedBehaviors];
    attachmentTextFont = [v19 attachmentTextFont];
    [(UILabel *)v18 setFont:attachmentTextFont];

    v21 = v3->_titleLabel;
    v22 = +[CKUIBehavior sharedBehaviors];
    theme = [v22 theme];
    attachmentBalloonTitleTextColor = [theme attachmentBalloonTitleTextColor];
    [(UILabel *)v21 setTextColor:attachmentBalloonTitleTextColor];

    v25 = v3->_titleLabel;
    v26 = IMSharedUtilitiesFrameworkBundle();
    v27 = [v26 localizedStringForKey:@"LOCKDOWN_ATTACHMENT_BALLOON_ONE_ATTACHMENT" value:&stru_1F04268F8 table:@"IMSharedUtilities-Offramp"];
    [(UILabel *)v25 setText:v27];

    [(CKDetonatedAttachmentView *)v3 addSubview:v3->_titleLabel];
    [(CKDetonatedAttachmentView *)v3 setUserInteractionEnabled:0];
    [(CKDetonatedAttachmentView *)v3 setOpaque:0];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = [CKUIBehavior sharedBehaviors:fits.width];
  [v3 detonatedItemBalloonViewSize];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)layoutSubviews
{
  v28.receiver = self;
  v28.super_class = CKDetonatedAttachmentView;
  [(CKDetonatedAttachmentView *)&v28 layoutSubviews];
  [(CKDetonatedAttachmentView *)self bounds];
  v4 = v3;
  v26 = v5;
  v7 = v6;
  v9 = v8;
  [(UILabel *)self->_titleLabel sizeThatFits:v6, v8];
  v11 = v10;
  v27 = v12;
  if (CKMainScreenScale_once_32 != -1)
  {
    [CKDetonatedAttachmentView layoutSubviews];
  }

  v13 = *&CKMainScreenScale_sMainScreenScale_32;
  v14 = +[CKUIBehavior sharedBehaviors];
  [v14 detonatedItemDocumentIconSize];
  v16 = v15;
  v18 = v17;

  if (CKMainScreenScale_once_32 != -1)
  {
    [CKDetonatedAttachmentView layoutSubviews];
  }

  if (v13 == 0.0)
  {
    v19 = 1.0;
  }

  else
  {
    v19 = v13;
  }

  v20 = floor((v4 + (v7 - v11) * 0.5) * v19) / v19;
  v21 = *&CKMainScreenScale_sMainScreenScale_32;
  if (*&CKMainScreenScale_sMainScreenScale_32 == 0.0)
  {
    v21 = 1.0;
  }

  v22 = floor((v4 + (v7 - v16) * 0.5) * v21) / v21;
  v23 = floor((v26 + (v9 - v18) * 0.5) * v21) / v21;
  [(UILabel *)self->_titleLabel frame];
  v25 = v23 - v24 * 0.5;
  [(UIImageView *)self->_iconImageView setFrame:v22, v25, v16, v18];
  v29.origin.x = v22;
  v29.origin.y = v25;
  v29.size.width = v16;
  v29.size.height = v18;
  [(UILabel *)self->_titleLabel setFrame:v20, CGRectGetMaxY(v29), v11, v27];
}

@end