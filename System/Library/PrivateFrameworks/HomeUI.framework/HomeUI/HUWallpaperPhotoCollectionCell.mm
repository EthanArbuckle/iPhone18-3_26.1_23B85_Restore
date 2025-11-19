@interface HUWallpaperPhotoCollectionCell
- (CGSize)imageSize;
- (HUWallpaperPhotoCollectionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (NSString)descriptionText;
- (NSString)titleText;
- (UIImage)image;
- (void)prepareForReuse;
- (void)setDescriptionText:(id)a3;
- (void)setImage:(id)a3;
- (void)setImageSize:(CGSize)a3;
- (void)setTitleText:(id)a3;
- (void)updateConstraints;
@end

@implementation HUWallpaperPhotoCollectionCell

- (HUWallpaperPhotoCollectionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v101.receiver = self;
  v101.super_class = HUWallpaperPhotoCollectionCell;
  v4 = [(HUWallpaperPhotoCollectionCell *)&v101 initWithStyle:0 reuseIdentifier:a4];
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
    v13 = [(UIImageView *)v5->_imageThumbnailView layer];
    [v13 setCornerRadius:4.0];

    v14 = [(HUWallpaperPhotoCollectionCell *)v5 contentView];
    [v14 addSubview:v5->_imageThumbnailView];

    LODWORD(v15) = 1132134400;
    [(UIImageView *)v5->_imageThumbnailView setContentHuggingPriority:0 forAxis:v15];
    v16 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v7, v8, v9, v10}];
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = [(HUWallpaperPhotoCollectionCell *)v5 contentView];
    [v17 addSubview:v16];

    v18 = [(HUWallpaperPhotoCollectionCell *)v5 traitCollection];
    v19 = [v18 preferredContentSizeCategory];
    LODWORD(v17) = UIContentSizeCategoryIsAccessibilityCategory(v19);

    v20 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v7, v8, v9, v10}];
    titleLabel = v5->_titleLabel;
    v5->_titleLabel = v20;

    [(UILabel *)v5->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v22 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v5->_titleLabel setFont:v22];

    [(UILabel *)v5->_titleLabel setAdjustsFontForContentSizeCategory:1];
    v23 = v17 ^ 1;
    [(UILabel *)v5->_titleLabel setNumberOfLines:v23];
    [v16 addSubview:v5->_titleLabel];
    v24 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v7, v8, v9, v10}];
    descriptionLabel = v5->_descriptionLabel;
    v5->_descriptionLabel = v24;

    [(UILabel *)v5->_descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v26 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [(UILabel *)v5->_descriptionLabel setFont:v26];

    v27 = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)v5->_descriptionLabel setTextColor:v27];

    [(UILabel *)v5->_descriptionLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v5->_descriptionLabel setNumberOfLines:v23];
    [v16 addSubview:v5->_descriptionLabel];
    v28 = [(UIImageView *)v5->_imageThumbnailView leadingAnchor];
    v29 = [(HUWallpaperPhotoCollectionCell *)v5 contentView];
    v30 = [v29 layoutMarginsGuide];
    v31 = [v30 leadingAnchor];
    v32 = [v28 constraintEqualToAnchor:v31];
    [v32 setActive:1];

    v33 = [(UIImageView *)v5->_imageThumbnailView trailingAnchor];
    v34 = [v16 leadingAnchor];
    v35 = [v33 constraintEqualToAnchor:v34 constant:-16.0];
    [v35 setActive:1];

    v36 = [v16 trailingAnchor];
    v37 = [(HUWallpaperPhotoCollectionCell *)v5 contentView];
    v38 = [v37 layoutMarginsGuide];
    v39 = [v38 trailingAnchor];
    v40 = [v36 constraintEqualToAnchor:v39];
    [v40 setActive:1];

    v41 = [(UILabel *)v5->_titleLabel leadingAnchor];
    v42 = [v16 leadingAnchor];
    v43 = [v41 constraintEqualToAnchor:v42];
    [v43 setActive:1];

    v44 = [(UILabel *)v5->_titleLabel trailingAnchor];
    v45 = [v16 trailingAnchor];
    v46 = [v44 constraintEqualToAnchor:v45];
    [v46 setActive:1];

    v47 = [(UILabel *)v5->_descriptionLabel leadingAnchor];
    v48 = [v16 leadingAnchor];
    v49 = [v47 constraintEqualToAnchor:v48];
    [v49 setActive:1];

    v50 = [(UILabel *)v5->_descriptionLabel trailingAnchor];
    v51 = [v16 trailingAnchor];
    v52 = [v50 constraintEqualToAnchor:v51];
    [v52 setActive:1];

    v53 = [(UIImageView *)v5->_imageThumbnailView heightAnchor];
    v54 = [v53 constraintEqualToConstant:p_width[1]];
    imageHeightConstraint = v5->_imageHeightConstraint;
    v5->_imageHeightConstraint = v54;

    LODWORD(v56) = 1144750080;
    [(NSLayoutConstraint *)v5->_imageHeightConstraint setPriority:v56];
    [(NSLayoutConstraint *)v5->_imageHeightConstraint setActive:1];
    v57 = [(UIImageView *)v5->_imageThumbnailView widthAnchor];
    v58 = [v57 constraintEqualToConstant:*p_width];
    imageWidthConstraint = v5->_imageWidthConstraint;
    v5->_imageWidthConstraint = v58;

    [(NSLayoutConstraint *)v5->_imageWidthConstraint setActive:1];
    v60 = [(UIImageView *)v5->_imageThumbnailView centerYAnchor];
    v61 = [(HUWallpaperPhotoCollectionCell *)v5 contentView];
    v62 = [v61 layoutMarginsGuide];
    v63 = [v62 centerYAnchor];
    v64 = [v60 constraintEqualToAnchor:v63];
    [v64 setActive:1];

    v65 = [(UIImageView *)v5->_imageThumbnailView topAnchor];
    v66 = [(HUWallpaperPhotoCollectionCell *)v5 contentView];
    v67 = [v66 layoutMarginsGuide];
    v68 = [v67 topAnchor];
    v69 = [v65 constraintGreaterThanOrEqualToAnchor:v68];
    [v69 setActive:1];

    v70 = [(UIImageView *)v5->_imageThumbnailView bottomAnchor];
    v71 = [(HUWallpaperPhotoCollectionCell *)v5 contentView];
    v72 = [v71 layoutMarginsGuide];
    v73 = [v72 bottomAnchor];
    v74 = [v70 constraintLessThanOrEqualToAnchor:v73];
    [v74 setActive:1];

    v75 = [v16 centerYAnchor];
    v76 = [(HUWallpaperPhotoCollectionCell *)v5 contentView];
    v77 = [v76 layoutMarginsGuide];
    v78 = [v77 centerYAnchor];
    v79 = [v75 constraintEqualToAnchor:v78];
    [v79 setActive:1];

    v80 = [v16 topAnchor];
    v81 = [(HUWallpaperPhotoCollectionCell *)v5 contentView];
    v82 = [v81 layoutMarginsGuide];
    v83 = [v82 topAnchor];
    v84 = [v80 constraintGreaterThanOrEqualToAnchor:v83];
    [v84 setActive:1];

    v85 = [v16 bottomAnchor];
    v86 = [(HUWallpaperPhotoCollectionCell *)v5 contentView];
    v87 = [v86 layoutMarginsGuide];
    v88 = [v87 bottomAnchor];
    v89 = [v85 constraintLessThanOrEqualToAnchor:v88];
    [v89 setActive:1];

    v90 = [(UILabel *)v5->_titleLabel topAnchor];
    v91 = [v16 topAnchor];
    v92 = [v90 constraintEqualToAnchor:v91];
    [v92 setActive:1];

    v93 = [(UILabel *)v5->_titleLabel bottomAnchor];
    v94 = [(UILabel *)v5->_descriptionLabel topAnchor];
    v95 = [v93 constraintEqualToAnchor:v94 constant:-8.0];
    [v95 setActive:1];

    v96 = [(UILabel *)v5->_descriptionLabel bottomAnchor];
    v97 = [v16 bottomAnchor];
    v98 = [v96 constraintEqualToAnchor:v97];
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
  v3 = [(HUWallpaperPhotoCollectionCell *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v4);

  [(UILabel *)self->_titleLabel setNumberOfLines:!IsAccessibilityCategory];
  [(UILabel *)self->_descriptionLabel setNumberOfLines:!IsAccessibilityCategory];
  v6.receiver = self;
  v6.super_class = HUWallpaperPhotoCollectionCell;
  [(HUWallpaperPhotoCollectionCell *)&v6 updateConstraints];
}

- (void)setImageSize:(CGSize)a3
{
  height = a3.height;
  p_imageSize = &self->_imageSize;
  self->_imageSize = a3;
  v6 = [(HUWallpaperPhotoCollectionCell *)self imageHeightConstraint];
  [v6 setConstant:height];

  width = p_imageSize->width;
  v8 = [(HUWallpaperPhotoCollectionCell *)self imageWidthConstraint];
  [v8 setConstant:width];
}

- (UIImage)image
{
  v2 = [(HUWallpaperPhotoCollectionCell *)self imageThumbnailView];
  v3 = [v2 image];

  return v3;
}

- (void)setImage:(id)a3
{
  v4 = a3;
  v5 = [(HUWallpaperPhotoCollectionCell *)self imageThumbnailView];
  [v5 setImage:v4];
}

- (NSString)titleText
{
  v2 = [(HUWallpaperPhotoCollectionCell *)self titleLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setTitleText:(id)a3
{
  v4 = a3;
  v5 = [(HUWallpaperPhotoCollectionCell *)self titleLabel];
  [v5 setText:v4];
}

- (NSString)descriptionText
{
  v2 = [(HUWallpaperPhotoCollectionCell *)self descriptionLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setDescriptionText:(id)a3
{
  v4 = a3;
  v5 = [(HUWallpaperPhotoCollectionCell *)self descriptionLabel];
  [v5 setText:v4];
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