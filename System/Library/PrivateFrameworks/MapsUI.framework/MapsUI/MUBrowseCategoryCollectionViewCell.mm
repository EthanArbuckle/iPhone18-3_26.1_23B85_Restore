@interface MUBrowseCategoryCollectionViewCell
- (CGSize)preferredSize;
- (MUBrowseCategoryCollectionViewCell)initWithFrame:(CGRect)frame;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)prepareForReuse;
- (void)setBrowseItem:(id)item;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setTitleLabelTextColor:(id)color;
@end

@implementation MUBrowseCategoryCollectionViewCell

- (CGSize)preferredSize
{
  width = self->_preferredSize.width;
  height = self->_preferredSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setHighlighted:(BOOL)highlighted
{
  v14.receiver = self;
  v14.super_class = MUBrowseCategoryCollectionViewCell;
  [(MUBrowseCategoryCollectionViewCell *)&v14 setHighlighted:?];
  highlightedImageView = [(MUBrowseCategoryCollectionViewCell *)self highlightedImageView];
  image = [highlightedImageView image];

  if (!image)
  {
    imageView = [(MUBrowseCategoryCollectionViewCell *)self imageView];
    image2 = [imageView image];
    v9 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.150000006];
    v10 = [image2 _flatImageWithColor:v9];
    highlightedImageView2 = [(MUBrowseCategoryCollectionViewCell *)self highlightedImageView];
    [highlightedImageView2 setImage:v10];
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__MUBrowseCategoryCollectionViewCell_setHighlighted___block_invoke;
  v12[3] = &unk_1E8219780;
  v12[4] = self;
  highlightedCopy = highlighted;
  [MEMORY[0x1E69DD250] animateWithDuration:v12 animations:0.100000001];
}

void __53__MUBrowseCategoryCollectionViewCell_setHighlighted___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  else
  {
    v1 = 0.0;
  }

  v2 = [*(a1 + 32) highlightedImageView];
  [v2 setAlpha:v1];
}

- (void)setBrowseItem:(id)item
{
  v17[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if (self->_browseItem != itemCopy)
  {
    objc_storeStrong(&self->_browseItem, item);
    image = [(MUBrowseCategoryItem *)itemCopy image];
    imageView = [(MUBrowseCategoryCollectionViewCell *)self imageView];
    [imageView setImage:image];

    highlightedImageView = [(MUBrowseCategoryCollectionViewCell *)self highlightedImageView];
    [highlightedImageView setImage:0];

    title = [(MUBrowseCategoryItem *)itemCopy title];
    if ([title length])
    {
      v10 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
      [v10 setAlignment:1];
      v11 = objc_alloc(MEMORY[0x1E696AAB0]);
      v16 = *MEMORY[0x1E69DB688];
      v17[0] = v10;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      v13 = [v11 initWithString:title attributes:v12];
    }

    else
    {
      v13 = 0;
    }

    titleLabel = [(MUBrowseCategoryCollectionViewCell *)self titleLabel];
    [titleLabel setAttributedText:v13];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  attributesCopy = attributes;
  [(MUBrowseCategoryCollectionViewCell *)self preferredSize];
  v6 = v5;
  titleLabel = [(MUBrowseCategoryCollectionViewCell *)self titleLabel];
  [titleLabel setPreferredMaxLayoutWidth:v6];

  preferredTitleLabelFont = [(MUBrowseCategoryCollectionViewCell *)self preferredTitleLabelFont];
  titleLabel2 = [(MUBrowseCategoryCollectionViewCell *)self titleLabel];
  [titleLabel2 setFont:preferredTitleLabelFont];

  titleLabel3 = [(MUBrowseCategoryCollectionViewCell *)self titleLabel];
  font = [titleLabel3 font];
  [font _mapkit_scaledValueForValue:16.0];
  v13 = v12;
  titleLabelTopConstraint = [(MUBrowseCategoryCollectionViewCell *)self titleLabelTopConstraint];
  [titleLabelTopConstraint setConstant:v13];

  v19.receiver = self;
  v19.super_class = MUBrowseCategoryCollectionViewCell;
  v15 = [(MUBrowseCategoryCollectionViewCell *)&v19 preferredLayoutAttributesFittingAttributes:attributesCopy];

  [v15 frame];
  CGRectGetWidth(v21);
  [(MUBrowseCategoryCollectionViewCell *)self preferredSize];
  [v15 frame];
  CGRectGetHeight(v22);
  [(MUBrowseCategoryCollectionViewCell *)self preferredSize];
  [v15 frame];
  v17 = v16;
  [v15 frame];
  [v15 setFrame:v17];

  return v15;
}

- (void)setTitleLabelTextColor:(id)color
{
  colorCopy = color;
  titleLabel = [(MUBrowseCategoryCollectionViewCell *)self titleLabel];
  [titleLabel setTextColor:colorCopy];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = MUBrowseCategoryCollectionViewCell;
  [(MUBrowseCategoryCollectionViewCell *)&v3 prepareForReuse];
  [(MUBrowseCategoryCollectionViewCell *)self setBrowseItem:0];
}

- (MUBrowseCategoryCollectionViewCell)initWithFrame:(CGRect)frame
{
  v66[4] = *MEMORY[0x1E69E9840];
  v63.receiver = self;
  v63.super_class = MUBrowseCategoryCollectionViewCell;
  v3 = [(MUBrowseCategoryCollectionViewCell *)&v63 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MUBrowseCategoryCollectionViewCell *)v3 setAccessibilityIdentifier:@"VenuesBrowseCategoryCollectionViewCell"];
    v5 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = v4->_imageView;
    v4->_imageView = v5;

    [(UIImageView *)v4->_imageView setContentMode:1];
    [(UIImageView *)v4->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v4->_imageView setAccessibilityIdentifier:@"VenuesBrowseCategoryImage"];
    contentView = [(MUBrowseCategoryCollectionViewCell *)v4 contentView];
    [contentView addSubview:v4->_imageView];

    v48 = MEMORY[0x1E696ACD8];
    centerXAnchor = [(UIImageView *)v4->_imageView centerXAnchor];
    contentView2 = [(MUBrowseCategoryCollectionViewCell *)v4 contentView];
    centerXAnchor2 = [contentView2 centerXAnchor];
    v51 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v66[0] = v51;
    topAnchor = [(UIImageView *)v4->_imageView topAnchor];
    contentView3 = [(MUBrowseCategoryCollectionViewCell *)v4 contentView];
    topAnchor2 = [contentView3 topAnchor];
    v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v66[1] = v10;
    widthAnchor = [(UIImageView *)v4->_imageView widthAnchor];
    v12 = [widthAnchor constraintEqualToConstant:40.0];
    v66[2] = v12;
    heightAnchor = [(UIImageView *)v4->_imageView heightAnchor];
    v14 = [heightAnchor constraintEqualToConstant:40.0];
    v66[3] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:4];
    [v48 activateConstraints:v15];

    v16 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    highlightedImageView = v4->_highlightedImageView;
    v4->_highlightedImageView = v16;

    [(UIImageView *)v4->_highlightedImageView setContentMode:1];
    [(UIImageView *)v4->_highlightedImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    imageView = [(MUBrowseCategoryCollectionViewCell *)v4 imageView];
    [imageView addSubview:v4->_highlightedImageView];

    v47 = MEMORY[0x1E696ACD8];
    topAnchor3 = [(UIImageView *)v4->_highlightedImageView topAnchor];
    topAnchor4 = [(UIImageView *)v4->_imageView topAnchor];
    v55 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v65[0] = v55;
    bottomAnchor = [(UIImageView *)v4->_highlightedImageView bottomAnchor];
    bottomAnchor2 = [(UIImageView *)v4->_imageView bottomAnchor];
    v45 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v65[1] = v45;
    leadingAnchor = [(UIImageView *)v4->_highlightedImageView leadingAnchor];
    leadingAnchor2 = [(UIImageView *)v4->_imageView leadingAnchor];
    v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v65[2] = v21;
    trailingAnchor = [(UIImageView *)v4->_highlightedImageView trailingAnchor];
    trailingAnchor2 = [(UIImageView *)v4->_imageView trailingAnchor];
    v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v65[3] = v24;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:4];
    [v47 activateConstraints:v25];

    [(UIImageView *)v4->_highlightedImageView setAlpha:0.0];
    v26 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v26;

    [(UILabel *)v4->_titleLabel setNumberOfLines:0];
    [(UILabel *)v4->_titleLabel setLineBreakMode:4];
    LODWORD(v28) = 1144750080;
    [(UILabel *)v4->_titleLabel setContentHuggingPriority:1 forAxis:v28];
    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_titleLabel setAccessibilityIdentifier:@"VenuesBrowseCategoryTitle"];
    contentView4 = [(MUBrowseCategoryCollectionViewCell *)v4 contentView];
    [contentView4 addSubview:v4->_titleLabel];

    firstBaselineAnchor = [(UILabel *)v4->_titleLabel firstBaselineAnchor];
    bottomAnchor3 = [(UIImageView *)v4->_imageView bottomAnchor];
    v32 = [firstBaselineAnchor constraintEqualToAnchor:bottomAnchor3 constant:16.0];
    titleLabelTopConstraint = v4->_titleLabelTopConstraint;
    v4->_titleLabelTopConstraint = v32;

    v50 = MEMORY[0x1E696ACD8];
    leadingAnchor3 = [(UILabel *)v4->_titleLabel leadingAnchor];
    contentView5 = [(MUBrowseCategoryCollectionViewCell *)v4 contentView];
    leadingAnchor4 = [contentView5 leadingAnchor];
    v53 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v64[0] = v53;
    trailingAnchor3 = [(UILabel *)v4->_titleLabel trailingAnchor];
    contentView6 = [(MUBrowseCategoryCollectionViewCell *)v4 contentView];
    trailingAnchor4 = [contentView6 trailingAnchor];
    v37 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v64[1] = v37;
    v64[2] = v4->_titleLabelTopConstraint;
    lastBaselineAnchor = [(UILabel *)v4->_titleLabel lastBaselineAnchor];
    contentView7 = [(MUBrowseCategoryCollectionViewCell *)v4 contentView];
    bottomAnchor4 = [contentView7 bottomAnchor];
    v41 = [lastBaselineAnchor constraintEqualToAnchor:bottomAnchor4];
    v64[3] = v41;
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:4];
    [v50 activateConstraints:v42];
  }

  v43 = *MEMORY[0x1E69E9840];
  return v4;
}

@end