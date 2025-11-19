@interface SUUIProfileSettingDescriptionView
+ (CGSize)preferredSizeForSettingDescription:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 settingDescription:(id)a4 context:(id)a5;
- (void)layoutSubviews;
- (void)reloadWithSettingDescription:(id)a3 width:(double)a4 context:(id)a5;
@end

@implementation SUUIProfileSettingDescriptionView

+ (CGSize)preferredSizeForSettingDescription:(id)a3 context:(id)a4
{
  v4 = *MEMORY[0x277CBF3A8];
  v5 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGSize)sizeThatFitsWidth:(double)a3 settingDescription:(id)a4 context:(id)a5
{
  v6 = *MEMORY[0x277D76918];
  v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:{*MEMORY[0x277D76918], a5}];
  v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76940]];
  v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:v6];
  [v7 _scaledValueForValue:36.0];
  v11 = v10 + 0.0;
  [v8 _scaledValueForValue:16.0];
  v13 = v11 + v12;
  [v9 _scaledValueForValue:20.0];
  v15 = v13 + v14;

  v16 = a3;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (void)reloadWithSettingDescription:(id)a3 width:(double)a4 context:(id)a5
{
  v27 = a3;
  v6 = [v27 viewElement];
  v7 = [v6 firstChildForElementType:29];
  self->_hasDisclosureChevron = v7 != 0;

  if (!self->_handleLabel)
  {
    v8 = objc_alloc_init(MEMORY[0x277D756B8]);
    handleLabel = self->_handleLabel;
    self->_handleLabel = v8;

    v10 = self->_handleLabel;
    v11 = [MEMORY[0x277D75348] grayColor];
    [(UILabel *)v10 setColor:v11];

    [(SUUIProfileSettingDescriptionView *)self addSubview:self->_handleLabel];
  }

  v12 = [v27 handle];
  v13 = v12;
  if (v12 && [v12 length])
  {
    [(UILabel *)self->_handleLabel setHidden:0];
    v14 = self->_handleLabel;
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"@%@", v13];
    [(UILabel *)v14 setText:v15];
  }

  else
  {
    [(UILabel *)self->_handleLabel setHidden:1];
  }

  nameLabel = self->_nameLabel;
  v17 = v27;
  if (!nameLabel)
  {
    v18 = objc_alloc_init(MEMORY[0x277D756B8]);
    v19 = self->_nameLabel;
    self->_nameLabel = v18;

    v20 = self->_nameLabel;
    v21 = [MEMORY[0x277D75348] blackColor];
    [(UILabel *)v20 setColor:v21];

    [(SUUIProfileSettingDescriptionView *)self addSubview:self->_nameLabel];
    v17 = v27;
    nameLabel = self->_nameLabel;
  }

  v22 = [v17 name];
  [(UILabel *)nameLabel setText:v22];

  imageView = self->_imageView;
  if (!imageView)
  {
    v24 = objc_alloc_init(SUUIImageView);
    v25 = self->_imageView;
    self->_imageView = v24;

    [(SUUIProfileSettingDescriptionView *)self addSubview:self->_imageView];
    imageView = self->_imageView;
  }

  v26 = [v27 photo];
  [(SUUIImageView *)imageView setImage:v26];
}

- (void)layoutSubviews
{
  v29.receiver = self;
  v29.super_class = SUUIProfileSettingDescriptionView;
  [(SUUIProfileSettingDescriptionView *)&v29 layoutSubviews];
  [(SUUISettingDescriptionView *)self layoutMargins];
  v4 = v3;
  v6 = v5;
  [(SUUIProfileSettingDescriptionView *)self bounds];
  x = v30.origin.x;
  y = v30.origin.y;
  width = v30.size.width;
  height = v30.size.height;
  v11 = floor((CGRectGetHeight(v30) + -56.0) * 0.5);
  [(SUUIImageView *)self->_imageView setFrame:SUUIRectByApplyingUserInterfaceLayoutDirectionInRect(v4, v11, 56.0, 56.0, x, y, width, height)];
  v31.origin.x = v4;
  v31.origin.y = v11;
  v31.size.width = 56.0;
  v31.size.height = 56.0;
  v12 = CGRectGetMaxX(v31) + 8.0;
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  v13 = CGRectGetWidth(v32) - v12 - v6;
  v14 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [(UILabel *)self->_nameLabel setFont:v14];
  [(UILabel *)self->_nameLabel sizeThatFits:v13, 1.0];
  v16 = v15;
  if ([(UILabel *)self->_handleLabel isHidden])
  {
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    v17 = CGRectGetHeight(v33);
    [(UILabel *)self->_nameLabel setFrame:SUUIRectByApplyingUserInterfaceLayoutDirectionInRect(v12, floor((v17 - v16) * 0.5), v13, v16, x, y, width, height)];
  }

  else
  {
    [v14 _scaledValueForValue:36.0];
    v19 = v18;
    [(UILabel *)self->_nameLabel _firstBaselineOffsetFromTop];
    [(UILabel *)self->_nameLabel setFrame:SUUIRectByApplyingUserInterfaceLayoutDirectionInRect(v12, v19 - v20, v13, v16, x, y, width, height)];
    v21 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76940]];
    [(UILabel *)self->_handleLabel setFont:v21];
    [(UILabel *)self->_handleLabel sizeThatFits:v13, 1.0];
    v23 = v22;
    [v21 _scaledValueForValue:16.0];
    v25 = v24;
    [(UILabel *)self->_nameLabel _lastLineBaselineFrameOriginY];
    v27 = v25 + v26;
    [(UILabel *)self->_handleLabel _firstBaselineOffsetFromTop];
    [(UILabel *)self->_handleLabel setFrame:SUUIRectByApplyingUserInterfaceLayoutDirectionInRect(v12, v27 - v28, v13, v23, x, y, width, height)];
  }
}

@end