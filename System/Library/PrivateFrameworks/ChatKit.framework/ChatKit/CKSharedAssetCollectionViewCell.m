@interface CKSharedAssetCollectionViewCell
- (CKSharedAssetCollectionViewCell)initWithFrame:(CGRect)a3;
- (UILabel)previewTitleLabel;
- (UIView)previewTitleContainerView;
- (UIView)previewView;
- (id)formattedTitleFromPreviewTitle:(id)a3;
- (void)layoutSubviews;
@end

@implementation CKSharedAssetCollectionViewCell

- (CKSharedAssetCollectionViewCell)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = CKSharedAssetCollectionViewCell;
  v3 = [(CKSharedAssetCollectionViewCell *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CKSharedAssetCollectionViewCell *)v3 cornerRadius];
    v6 = v5;
    v7 = [(CKSharedAssetCollectionViewCell *)v4 layer];
    [v7 setCornerRadius:v6];

    [(CKSharedAssetCollectionViewCell *)v4 setClipsToBounds:1];
    v8 = [MEMORY[0x1E69DC888] clearColor];
    v9 = [(CKSharedAssetCollectionViewCell *)v4 contentView];
    [v9 setBackgroundColor:v8];
  }

  return v4;
}

- (UIView)previewView
{
  previewView = self->_previewView;
  if (!previewView)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v5 = self->_previewView;
    self->_previewView = v4;

    v6 = self->_previewView;
    v7 = +[CKUIBehavior sharedBehaviors];
    v8 = [v7 theme];
    v9 = [v8 sharedContentsCellBackgroundColor];
    [(UIView *)v6 setBackgroundColor:v9];

    v10 = [(CKSharedAssetCollectionViewCell *)self contentView];
    [v10 addSubview:self->_previewView];

    previewView = self->_previewView;
  }

  return previewView;
}

- (UILabel)previewTitleLabel
{
  previewTitleLabel = self->_previewTitleLabel;
  if (!previewTitleLabel)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v5 = self->_previewTitleLabel;
    self->_previewTitleLabel = v4;

    v6 = self->_previewTitleLabel;
    v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
    [(UILabel *)v6 setFont:v7];

    [(UILabel *)self->_previewTitleLabel setTextAlignment:1];
    v8 = self->_previewTitleLabel;
    v9 = +[CKUIBehavior sharedBehaviors];
    v10 = [v9 theme];
    v11 = [v10 sharedContentsCellTextColor];
    [(UILabel *)v8 setTextColor:v11];

    [(UILabel *)self->_previewTitleLabel setNumberOfLines:2];
    v12 = self->_previewTitleLabel;
    v13 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v12 setBackgroundColor:v13];

    v14 = [(CKSharedAssetCollectionViewCell *)self previewTitleContainerView];
    [v14 addSubview:self->_previewTitleLabel];

    previewTitleLabel = self->_previewTitleLabel;
  }

  return previewTitleLabel;
}

- (UIView)previewTitleContainerView
{
  previewTitleContainerView = self->_previewTitleContainerView;
  if (!previewTitleContainerView)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v5 = self->_previewTitleContainerView;
    self->_previewTitleContainerView = v4;

    v6 = self->_previewTitleContainerView;
    v7 = +[CKUIBehavior sharedBehaviors];
    v8 = [v7 theme];
    v9 = [v8 sharedContentsCellBackgroundColor];
    [(UIView *)v6 setBackgroundColor:v9];

    v10 = [(CKSharedAssetCollectionViewCell *)self contentView];
    [v10 addSubview:self->_previewTitleContainerView];

    previewTitleContainerView = self->_previewTitleContainerView;
  }

  return previewTitleContainerView;
}

- (id)formattedTitleFromPreviewTitle:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @" ";
  }

  v5 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v4];
  v6 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v6 setLineHeightMultiple:0.7];
  [v6 setLineBreakMode:0];
  [v6 setAlignment:1];
  [v5 addAttribute:*MEMORY[0x1E69DB688] value:v6 range:{0, -[__CFString length](v4, "length")}];
  [v5 addAttribute:*MEMORY[0x1E69DB610] value:&unk_1F04E88F8 range:{0, -[__CFString length](v4, "length")}];

  return v5;
}

- (void)layoutSubviews
{
  v37.receiver = self;
  v37.super_class = CKSharedAssetCollectionViewCell;
  [(CKSharedAssetCollectionViewCell *)&v37 layoutSubviews];
  v3 = [(CKSharedAssetCollectionViewCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(CKSharedAssetCollectionViewCell *)self previewView];
  v38.origin.x = v5;
  v38.origin.y = v7;
  v38.size.width = v9;
  v38.size.height = v11;
  Width = CGRectGetWidth(v38);
  v39.origin.x = v5;
  v39.origin.y = v7;
  v39.size.width = v9;
  v39.size.height = v11;
  v14 = CGRectGetWidth(v39);
  [v12 setFrame:{v5, v7, Width, v14}];
  v15 = [(CKSharedAssetCollectionViewCell *)self previewTitleContainerView];
  v40.origin.x = v5;
  v40.origin.y = v7;
  v40.size.width = v9;
  v40.size.height = v11;
  v16 = CGRectGetWidth(v40);
  v41.origin.x = v5;
  v41.origin.y = v7;
  v41.size.width = v9;
  v41.size.height = v11;
  Height = CGRectGetHeight(v41);
  v42.origin.x = v5;
  v42.origin.y = v7;
  v42.size.width = Width;
  v42.size.height = v14;
  v18 = Height - CGRectGetHeight(v42) + -1.0;
  v43.origin.x = v5;
  v43.origin.y = v7;
  v43.size.width = Width;
  v43.size.height = v14;
  [v15 setFrame:{0.0, CGRectGetMaxY(v43) + 1.0, v16, v18}];
  v19 = [(CKSharedAssetCollectionViewCell *)self previewTitleContainerView];
  [v19 bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = [(CKSharedAssetCollectionViewCell *)self previewTitleLabel];
  v44.origin.x = v21;
  v44.origin.y = v23;
  v44.size.width = v25;
  v44.size.height = v27;
  v29 = CGRectGetWidth(v44) + -10.0;
  v45.origin.x = v21;
  v45.origin.y = v23;
  v45.size.width = v25;
  v45.size.height = v27;
  v30 = CGRectGetHeight(v45);
  v31 = [(CKSharedAssetCollectionViewCell *)self previewTitleLabel];
  [v31 sizeThatFits:{v29, v30}];
  v33 = v32;
  v35 = v34;

  v46.origin.x = v21;
  v46.origin.y = v23;
  v46.size.width = v25;
  v46.size.height = v27;
  v36 = CGRectGetWidth(v46) * 0.5 - v33 * 0.5;
  v47.origin.x = v21;
  v47.origin.y = v23;
  v47.size.width = v25;
  v47.size.height = v27;
  [v28 setFrame:{v36, CGRectGetHeight(v47) * 0.5 - v35 * 0.5, v33, v35 + 2.0}];
}

@end