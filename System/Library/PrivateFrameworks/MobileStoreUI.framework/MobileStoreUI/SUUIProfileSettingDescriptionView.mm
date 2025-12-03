@interface SUUIProfileSettingDescriptionView
+ (CGSize)preferredSizeForSettingDescription:(id)description context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width settingDescription:(id)description context:(id)context;
- (void)layoutSubviews;
- (void)reloadWithSettingDescription:(id)description width:(double)width context:(id)context;
@end

@implementation SUUIProfileSettingDescriptionView

+ (CGSize)preferredSizeForSettingDescription:(id)description context:(id)context
{
  v4 = *MEMORY[0x277CBF3A8];
  v5 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGSize)sizeThatFitsWidth:(double)width settingDescription:(id)description context:(id)context
{
  v6 = *MEMORY[0x277D76918];
  v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:{*MEMORY[0x277D76918], context}];
  v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76940]];
  v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:v6];
  [v7 _scaledValueForValue:36.0];
  v11 = v10 + 0.0;
  [v8 _scaledValueForValue:16.0];
  v13 = v11 + v12;
  [v9 _scaledValueForValue:20.0];
  v15 = v13 + v14;

  widthCopy = width;
  v17 = v15;
  result.height = v17;
  result.width = widthCopy;
  return result;
}

- (void)reloadWithSettingDescription:(id)description width:(double)width context:(id)context
{
  descriptionCopy = description;
  viewElement = [descriptionCopy viewElement];
  v7 = [viewElement firstChildForElementType:29];
  self->_hasDisclosureChevron = v7 != 0;

  if (!self->_handleLabel)
  {
    v8 = objc_alloc_init(MEMORY[0x277D756B8]);
    handleLabel = self->_handleLabel;
    self->_handleLabel = v8;

    v10 = self->_handleLabel;
    grayColor = [MEMORY[0x277D75348] grayColor];
    [(UILabel *)v10 setColor:grayColor];

    [(SUUIProfileSettingDescriptionView *)self addSubview:self->_handleLabel];
  }

  handle = [descriptionCopy handle];
  v13 = handle;
  if (handle && [handle length])
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
  v17 = descriptionCopy;
  if (!nameLabel)
  {
    v18 = objc_alloc_init(MEMORY[0x277D756B8]);
    v19 = self->_nameLabel;
    self->_nameLabel = v18;

    v20 = self->_nameLabel;
    blackColor = [MEMORY[0x277D75348] blackColor];
    [(UILabel *)v20 setColor:blackColor];

    [(SUUIProfileSettingDescriptionView *)self addSubview:self->_nameLabel];
    v17 = descriptionCopy;
    nameLabel = self->_nameLabel;
  }

  name = [v17 name];
  [(UILabel *)nameLabel setText:name];

  imageView = self->_imageView;
  if (!imageView)
  {
    v24 = objc_alloc_init(SUUIImageView);
    v25 = self->_imageView;
    self->_imageView = v24;

    [(SUUIProfileSettingDescriptionView *)self addSubview:self->_imageView];
    imageView = self->_imageView;
  }

  photo = [descriptionCopy photo];
  [(SUUIImageView *)imageView setImage:photo];
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