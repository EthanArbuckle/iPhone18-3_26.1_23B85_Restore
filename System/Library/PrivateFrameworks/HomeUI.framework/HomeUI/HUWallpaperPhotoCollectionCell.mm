@interface HUWallpaperPhotoCollectionCell
- (CGSize)imageSize;
- (HUWallpaperPhotoCollectionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (NSString)descriptionText;
- (NSString)titleText;
- (UIImage)image;
- (void)prepareForReuse;
- (void)setDescriptionText:(id)text;
- (void)setImage:(id)image;
- (void)setImageSize:(CGSize)size;
- (void)setTitleText:(id)text;
- (void)updateConstraints;
@end

@implementation HUWallpaperPhotoCollectionCell

- (HUWallpaperPhotoCollectionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v101.receiver = self;
  v101.super_class = HUWallpaperPhotoCollectionCell;
  v4 = [(HUWallpaperPhotoCollectionCell *)&v101 initWithStyle:0 reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    p_width = &v4->_imageSize.width;
    v4->_imageSize = vdupq_n_s64(0x4049000000000000uLL);
    v6 = objc_alloc(MEMORY[0x277D755E8]);
    v7 = *MEMORY[0x277CBF3A0];
    v8 = *(MEMORY[0x277CBF3A0] + 8);
    v9 = *(MEMORY[0x277CBF3A0] + 16);
    v10 = *(MEMORY[0x277CBF3A0] + 24);
    v11 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], v8, v9, v10}];
    imageThumbnailView = v5->_imageThumbnailView;
    v5->_imageThumbnailView = v11;

    [(UIImageView *)v5->_imageThumbnailView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v5->_imageThumbnailView setContentMode:2];
    [(UIImageView *)v5->_imageThumbnailView setClipsToBounds:1];
    layer = [(UIImageView *)v5->_imageThumbnailView layer];
    [layer setCornerRadius:4.0];

    contentView = [(HUWallpaperPhotoCollectionCell *)v5 contentView];
    [contentView addSubview:v5->_imageThumbnailView];

    LODWORD(v15) = 1132134400;
    [(UIImageView *)v5->_imageThumbnailView setContentHuggingPriority:0 forAxis:v15];
    v16 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v7, v8, v9, v10}];
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView2 = [(HUWallpaperPhotoCollectionCell *)v5 contentView];
    [contentView2 addSubview:v16];

    traitCollection = [(HUWallpaperPhotoCollectionCell *)v5 traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    LODWORD(contentView2) = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    v20 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v7, v8, v9, v10}];
    titleLabel = v5->_titleLabel;
    v5->_titleLabel = v20;

    [(UILabel *)v5->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v22 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v5->_titleLabel setFont:v22];

    [(UILabel *)v5->_titleLabel setAdjustsFontForContentSizeCategory:1];
    v23 = contentView2 ^ 1;
    [(UILabel *)v5->_titleLabel setNumberOfLines:v23];
    [v16 addSubview:v5->_titleLabel];
    v24 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v7, v8, v9, v10}];
    descriptionLabel = v5->_descriptionLabel;
    v5->_descriptionLabel = v24;

    [(UILabel *)v5->_descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v26 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [(UILabel *)v5->_descriptionLabel setFont:v26];

    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)v5->_descriptionLabel setTextColor:systemGrayColor];

    [(UILabel *)v5->_descriptionLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v5->_descriptionLabel setNumberOfLines:v23];
    [v16 addSubview:v5->_descriptionLabel];
    leadingAnchor = [(UIImageView *)v5->_imageThumbnailView leadingAnchor];
    contentView3 = [(HUWallpaperPhotoCollectionCell *)v5 contentView];
    layoutMarginsGuide = [contentView3 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v32 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v32 setActive:1];

    trailingAnchor = [(UIImageView *)v5->_imageThumbnailView trailingAnchor];
    leadingAnchor3 = [v16 leadingAnchor];
    v35 = [trailingAnchor constraintEqualToAnchor:leadingAnchor3 constant:-16.0];
    [v35 setActive:1];

    trailingAnchor2 = [v16 trailingAnchor];
    contentView4 = [(HUWallpaperPhotoCollectionCell *)v5 contentView];
    layoutMarginsGuide2 = [contentView4 layoutMarginsGuide];
    trailingAnchor3 = [layoutMarginsGuide2 trailingAnchor];
    v40 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    [v40 setActive:1];

    leadingAnchor4 = [(UILabel *)v5->_titleLabel leadingAnchor];
    leadingAnchor5 = [v16 leadingAnchor];
    v43 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
    [v43 setActive:1];

    trailingAnchor4 = [(UILabel *)v5->_titleLabel trailingAnchor];
    trailingAnchor5 = [v16 trailingAnchor];
    v46 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
    [v46 setActive:1];

    leadingAnchor6 = [(UILabel *)v5->_descriptionLabel leadingAnchor];
    leadingAnchor7 = [v16 leadingAnchor];
    v49 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
    [v49 setActive:1];

    trailingAnchor6 = [(UILabel *)v5->_descriptionLabel trailingAnchor];
    trailingAnchor7 = [v16 trailingAnchor];
    v52 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
    [v52 setActive:1];

    heightAnchor = [(UIImageView *)v5->_imageThumbnailView heightAnchor];
    v54 = [heightAnchor constraintEqualToConstant:p_width[1]];
    imageHeightConstraint = v5->_imageHeightConstraint;
    v5->_imageHeightConstraint = v54;

    LODWORD(v56) = 1144750080;
    [(NSLayoutConstraint *)v5->_imageHeightConstraint setPriority:v56];
    [(NSLayoutConstraint *)v5->_imageHeightConstraint setActive:1];
    widthAnchor = [(UIImageView *)v5->_imageThumbnailView widthAnchor];
    v58 = [widthAnchor constraintEqualToConstant:*p_width];
    imageWidthConstraint = v5->_imageWidthConstraint;
    v5->_imageWidthConstraint = v58;

    [(NSLayoutConstraint *)v5->_imageWidthConstraint setActive:1];
    centerYAnchor = [(UIImageView *)v5->_imageThumbnailView centerYAnchor];
    contentView5 = [(HUWallpaperPhotoCollectionCell *)v5 contentView];
    layoutMarginsGuide3 = [contentView5 layoutMarginsGuide];
    centerYAnchor2 = [layoutMarginsGuide3 centerYAnchor];
    v64 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v64 setActive:1];

    topAnchor = [(UIImageView *)v5->_imageThumbnailView topAnchor];
    contentView6 = [(HUWallpaperPhotoCollectionCell *)v5 contentView];
    layoutMarginsGuide4 = [contentView6 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide4 topAnchor];
    v69 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
    [v69 setActive:1];

    bottomAnchor = [(UIImageView *)v5->_imageThumbnailView bottomAnchor];
    contentView7 = [(HUWallpaperPhotoCollectionCell *)v5 contentView];
    layoutMarginsGuide5 = [contentView7 layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide5 bottomAnchor];
    v74 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
    [v74 setActive:1];

    centerYAnchor3 = [v16 centerYAnchor];
    contentView8 = [(HUWallpaperPhotoCollectionCell *)v5 contentView];
    layoutMarginsGuide6 = [contentView8 layoutMarginsGuide];
    centerYAnchor4 = [layoutMarginsGuide6 centerYAnchor];
    v79 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    [v79 setActive:1];

    topAnchor3 = [v16 topAnchor];
    contentView9 = [(HUWallpaperPhotoCollectionCell *)v5 contentView];
    layoutMarginsGuide7 = [contentView9 layoutMarginsGuide];
    topAnchor4 = [layoutMarginsGuide7 topAnchor];
    v84 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4];
    [v84 setActive:1];

    bottomAnchor3 = [v16 bottomAnchor];
    contentView10 = [(HUWallpaperPhotoCollectionCell *)v5 contentView];
    layoutMarginsGuide8 = [contentView10 layoutMarginsGuide];
    bottomAnchor4 = [layoutMarginsGuide8 bottomAnchor];
    v89 = [bottomAnchor3 constraintLessThanOrEqualToAnchor:bottomAnchor4];
    [v89 setActive:1];

    topAnchor5 = [(UILabel *)v5->_titleLabel topAnchor];
    topAnchor6 = [v16 topAnchor];
    v92 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    [v92 setActive:1];

    bottomAnchor5 = [(UILabel *)v5->_titleLabel bottomAnchor];
    topAnchor7 = [(UILabel *)v5->_descriptionLabel topAnchor];
    v95 = [bottomAnchor5 constraintEqualToAnchor:topAnchor7 constant:-8.0];
    [v95 setActive:1];

    bottomAnchor6 = [(UILabel *)v5->_descriptionLabel bottomAnchor];
    bottomAnchor7 = [v16 bottomAnchor];
    v98 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
    [v98 setActive:1];
  }

  return v5;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = HUWallpaperPhotoCollectionCell;
  [(HUWallpaperPhotoCollectionCell *)&v3 prepareForReuse];
  [(HUWallpaperPhotoCollectionCell *)self setImage:0];
  [(HUWallpaperPhotoCollectionCell *)self setTitleText:0];
  [(HUWallpaperPhotoCollectionCell *)self setDescriptionText:0];
  [(HUWallpaperPhotoCollectionCell *)self setImageSize:50.0, 50.0];
}

- (void)updateConstraints
{
  traitCollection = [(HUWallpaperPhotoCollectionCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  [(UILabel *)self->_titleLabel setNumberOfLines:!IsAccessibilityCategory];
  [(UILabel *)self->_descriptionLabel setNumberOfLines:!IsAccessibilityCategory];
  v6.receiver = self;
  v6.super_class = HUWallpaperPhotoCollectionCell;
  [(HUWallpaperPhotoCollectionCell *)&v6 updateConstraints];
}

- (void)setImageSize:(CGSize)size
{
  height = size.height;
  p_imageSize = &self->_imageSize;
  self->_imageSize = size;
  imageHeightConstraint = [(HUWallpaperPhotoCollectionCell *)self imageHeightConstraint];
  [imageHeightConstraint setConstant:height];

  width = p_imageSize->width;
  imageWidthConstraint = [(HUWallpaperPhotoCollectionCell *)self imageWidthConstraint];
  [imageWidthConstraint setConstant:width];
}

- (UIImage)image
{
  imageThumbnailView = [(HUWallpaperPhotoCollectionCell *)self imageThumbnailView];
  image = [imageThumbnailView image];

  return image;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  imageThumbnailView = [(HUWallpaperPhotoCollectionCell *)self imageThumbnailView];
  [imageThumbnailView setImage:imageCopy];
}

- (NSString)titleText
{
  titleLabel = [(HUWallpaperPhotoCollectionCell *)self titleLabel];
  text = [titleLabel text];

  return text;
}

- (void)setTitleText:(id)text
{
  textCopy = text;
  titleLabel = [(HUWallpaperPhotoCollectionCell *)self titleLabel];
  [titleLabel setText:textCopy];
}

- (NSString)descriptionText
{
  descriptionLabel = [(HUWallpaperPhotoCollectionCell *)self descriptionLabel];
  text = [descriptionLabel text];

  return text;
}

- (void)setDescriptionText:(id)text
{
  textCopy = text;
  descriptionLabel = [(HUWallpaperPhotoCollectionCell *)self descriptionLabel];
  [descriptionLabel setText:textCopy];
}

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end