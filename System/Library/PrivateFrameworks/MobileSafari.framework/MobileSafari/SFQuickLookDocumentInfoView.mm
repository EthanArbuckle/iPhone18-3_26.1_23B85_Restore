@interface SFQuickLookDocumentInfoView
- (SFQuickLookDocumentInfoView)initWithFrame:(CGRect)frame;
- (void)_updateDocumentSizeLabel;
- (void)_updateOrientationBasedConstraints;
- (void)_updatePropertiesDefinedByContentSizeCategory;
- (void)setFileName:(id)name;
- (void)setFileSize:(id)size;
- (void)setFileType:(id)type;
@end

@implementation SFQuickLookDocumentInfoView

- (SFQuickLookDocumentInfoView)initWithFrame:(CGRect)frame
{
  v48[7] = *MEMORY[0x1E69E9840];
  v46.receiver = self;
  v46.super_class = SFQuickLookDocumentInfoView;
  v3 = [(SFQuickLookDocumentInfoView *)&v46 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCF90]);
    stackView = v3->_stackView;
    v3->_stackView = v4;

    [(UIStackView *)v3->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v3->_stackView setAxis:1];
    [(UIStackView *)v3->_stackView setSpacing:3.0];
    [(UIStackView *)v3->_stackView setAlignment:3];
    [(UIStackView *)v3->_stackView setSpacing:24.0];
    [(UIStackView *)v3->_stackView setBaselineRelativeArrangement:1];
    [(UIStackView *)v3->_stackView setDistribution:0];
    [(SFQuickLookDocumentInfoView *)v3 addSubview:v3->_stackView];
    v6 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    iconImageView = v3->_iconImageView;
    v3->_iconImageView = v6;

    [(UIImageView *)v3->_iconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v3->_iconImageView setContentMode:1];
    [(UIImageView *)v3->_iconImageView setAccessibilityIgnoresInvertColors:1];
    [(UIStackView *)v3->_stackView addArrangedSubview:v3->_iconImageView];
    v8 = objc_alloc_init(MEMORY[0x1E69DD250]);
    spacingView = v3->_spacingView;
    v3->_spacingView = v8;

    [(UIView *)v3->_spacingView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v3->_stackView addArrangedSubview:v3->_spacingView];
    v10 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    fileNameLabel = v3->_fileNameLabel;
    v3->_fileNameLabel = v10;

    [(UILabel *)v3->_fileNameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_fileNameLabel setLineBreakMode:5];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v3->_fileNameLabel setTextColor:labelColor];

    [(UIStackView *)v3->_stackView addArrangedSubview:v3->_fileNameLabel];
    v13 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    fileSizeLabel = v3->_fileSizeLabel;
    v3->_fileSizeLabel = v13;

    [(UILabel *)v3->_fileSizeLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v3->_fileSizeLabel setTextColor:secondaryLabelColor];

    [(UIStackView *)v3->_stackView addArrangedSubview:v3->_fileSizeLabel];
    heightAnchor = [(UIImageView *)v3->_iconImageView heightAnchor];
    v17 = [heightAnchor constraintEqualToConstant:0.0];
    iconHeightConstraint = v3->_iconHeightConstraint;
    v3->_iconHeightConstraint = v17;

    widthAnchor = [(UIImageView *)v3->_iconImageView widthAnchor];
    v20 = [widthAnchor constraintEqualToConstant:0.0];
    iconWidthConstraint = v3->_iconWidthConstraint;
    v3->_iconWidthConstraint = v20;

    heightAnchor2 = [(UIView *)v3->_spacingView heightAnchor];
    v23 = [heightAnchor2 constraintEqualToConstant:0.0];
    lineHeightBetweenIconAndFileNameLabelConstraint = v3->_lineHeightBetweenIconAndFileNameLabelConstraint;
    v3->_lineHeightBetweenIconAndFileNameLabelConstraint = v23;

    v40 = MEMORY[0x1E696ACD8];
    widthAnchor2 = [(UIStackView *)v3->_stackView widthAnchor];
    widthAnchor3 = [(SFQuickLookDocumentInfoView *)v3 widthAnchor];
    v43 = [widthAnchor2 constraintEqualToAnchor:widthAnchor3];
    v48[0] = v43;
    heightAnchor3 = [(UIStackView *)v3->_stackView heightAnchor];
    heightAnchor4 = [(SFQuickLookDocumentInfoView *)v3 heightAnchor];
    v25 = [heightAnchor3 constraintEqualToAnchor:heightAnchor4];
    v48[1] = v25;
    centerXAnchor = [(UIStackView *)v3->_stackView centerXAnchor];
    centerXAnchor2 = [(SFQuickLookDocumentInfoView *)v3 centerXAnchor];
    v28 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v48[2] = v28;
    centerYAnchor = [(UIStackView *)v3->_stackView centerYAnchor];
    centerYAnchor2 = [(SFQuickLookDocumentInfoView *)v3 centerYAnchor];
    v31 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v48[3] = v31;
    v48[4] = v3->_iconHeightConstraint;
    v48[5] = v3->_iconWidthConstraint;
    v48[6] = v3->_lineHeightBetweenIconAndFileNameLabelConstraint;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:7];
    [v40 activateConstraints:v32];

    [(SFQuickLookDocumentInfoView *)v3 _updateOrientationBasedConstraints];
    LODWORD(v33) = 1148846080;
    [(UILabel *)v3->_fileNameLabel setContentCompressionResistancePriority:0 forAxis:v33];
    LODWORD(v34) = 1148846080;
    [(UILabel *)v3->_fileNameLabel setContentHuggingPriority:0 forAxis:v34];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__updatePropertiesDefinedByContentSizeCategory name:*MEMORY[0x1E69DDC48] object:0];

    [(SFQuickLookDocumentInfoView *)v3 _updatePropertiesDefinedByContentSizeCategory];
    v47 = objc_opt_class();
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
    v37 = [(SFQuickLookDocumentInfoView *)v3 registerForTraitChanges:v36 withTarget:v3 action:sel__updateOrientationBasedConstraints];

    v38 = v3;
  }

  return v3;
}

- (void)_updateOrientationBasedConstraints
{
  traitCollection = [(SFQuickLookDocumentInfoView *)self traitCollection];
  verticalSizeClass = [traitCollection verticalSizeClass];

  if (verticalSizeClass == 1)
  {
    v5 = 96.0;
  }

  else
  {
    v5 = 128.0;
  }

  if (verticalSizeClass == 1)
  {
    v6 = 16.0;
  }

  else
  {
    v6 = 56.0;
  }

  [(NSLayoutConstraint *)self->_iconHeightConstraint setConstant:v5];
  [(NSLayoutConstraint *)self->_iconWidthConstraint setConstant:v5];
  lineHeightBetweenIconAndFileNameLabelConstraint = self->_lineHeightBetweenIconAndFileNameLabelConstraint;

  [(NSLayoutConstraint *)lineHeightBetweenIconAndFileNameLabelConstraint setConstant:v6];
}

- (void)_updatePropertiesDefinedByContentSizeCategory
{
  v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDC0]];
  [(UILabel *)self->_fileNameLabel setFont:v3];

  [(UILabel *)self->_fileSizeLabel setFont:v4];
  [v4 _scaledValueForValue:24.0];
  [(UIStackView *)self->_stackView setSpacing:?];
}

- (void)_updateDocumentSizeLabel
{
  fileType = self->_fileType;
  fileSize = self->_fileSize;
  if (fileType && fileSize)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = _WBSLocalizedString();
    v8 = [v5 stringWithFormat:v6, self->_fileType, self->_fileSize];

    v7 = v8;
  }

  else
  {
    if (fileSize)
    {
      fileType = self->_fileSize;
    }

    v7 = fileType;
  }

  v9 = v7;
  [(UILabel *)self->_fileSizeLabel setText:v7];
}

- (void)setFileName:(id)name
{
  nameCopy = name;
  if (([nameCopy isEqualToString:self->_fileName] & 1) == 0)
  {
    objc_storeStrong(&self->_fileName, name);
    [(UILabel *)self->_fileNameLabel setText:self->_fileName];
  }
}

- (void)setFileSize:(id)size
{
  sizeCopy = size;
  if (([sizeCopy isEqualToString:self->_fileSize] & 1) == 0)
  {
    objc_storeStrong(&self->_fileSize, size);
    [(SFQuickLookDocumentInfoView *)self _updateDocumentSizeLabel];
  }
}

- (void)setFileType:(id)type
{
  typeCopy = type;
  if (([typeCopy isEqualToString:self->_fileType] & 1) == 0)
  {
    objc_storeStrong(&self->_fileType, type);
    [(SFQuickLookDocumentInfoView *)self _updateDocumentSizeLabel];
  }
}

@end