@interface MUBrowseCategoryCollectionViewCell
- (CGSize)preferredSize;
- (MUBrowseCategoryCollectionViewCell)initWithFrame:(CGRect)a3;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)prepareForReuse;
- (void)setBrowseItem:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setTitleLabelTextColor:(id)a3;
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

- (void)setHighlighted:(BOOL)a3
{
  v14.receiver = self;
  v14.super_class = MUBrowseCategoryCollectionViewCell;
  [(MUBrowseCategoryCollectionViewCell *)&v14 setHighlighted:?];
  v5 = [(MUBrowseCategoryCollectionViewCell *)self highlightedImageView];
  v6 = [v5 image];

  if (!v6)
  {
    v7 = [(MUBrowseCategoryCollectionViewCell *)self imageView];
    v8 = [v7 image];
    v9 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.150000006];
    v10 = [v8 _flatImageWithColor:v9];
    v11 = [(MUBrowseCategoryCollectionViewCell *)self highlightedImageView];
    [v11 setImage:v10];
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__MUBrowseCategoryCollectionViewCell_setHighlighted___block_invoke;
  v12[3] = &unk_1E8219780;
  v12[4] = self;
  v13 = a3;
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

- (void)setBrowseItem:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_browseItem != v5)
  {
    objc_storeStrong(&self->_browseItem, a3);
    v6 = [(MUBrowseCategoryItem *)v5 image];
    v7 = [(MUBrowseCategoryCollectionViewCell *)self imageView];
    [v7 setImage:v6];

    v8 = [(MUBrowseCategoryCollectionViewCell *)self highlightedImageView];
    [v8 setImage:0];

    v9 = [(MUBrowseCategoryItem *)v5 title];
    if ([v9 length])
    {
      v10 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
      [v10 setAlignment:1];
      v11 = objc_alloc(MEMORY[0x1E696AAB0]);
      v16 = *MEMORY[0x1E69DB688];
      v17[0] = v10;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      v13 = [v11 initWithString:v9 attributes:v12];
    }

    else
    {
      v13 = 0;
    }

    v14 = [(MUBrowseCategoryCollectionViewCell *)self titleLabel];
    [v14 setAttributedText:v13];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v4 = a3;
  [(MUBrowseCategoryCollectionViewCell *)self preferredSize];
  v6 = v5;
  v7 = [(MUBrowseCategoryCollectionViewCell *)self titleLabel];
  [v7 setPreferredMaxLayoutWidth:v6];

  v8 = [(MUBrowseCategoryCollectionViewCell *)self preferredTitleLabelFont];
  v9 = [(MUBrowseCategoryCollectionViewCell *)self titleLabel];
  [v9 setFont:v8];

  v10 = [(MUBrowseCategoryCollectionViewCell *)self titleLabel];
  v11 = [v10 font];
  [v11 _mapkit_scaledValueForValue:16.0];
  v13 = v12;
  v14 = [(MUBrowseCategoryCollectionViewCell *)self titleLabelTopConstraint];
  [v14 setConstant:v13];

  v19.receiver = self;
  v19.super_class = MUBrowseCategoryCollectionViewCell;
  v15 = [(MUBrowseCategoryCollectionViewCell *)&v19 preferredLayoutAttributesFittingAttributes:v4];

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

- (void)setTitleLabelTextColor:(id)a3
{
  v4 = a3;
  v5 = [(MUBrowseCategoryCollectionViewCell *)self titleLabel];
  [v5 setTextColor:v4];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = MUBrowseCategoryCollectionViewCell;
  [(MUBrowseCategoryCollectionViewCell *)&v3 prepareForReuse];
  [(MUBrowseCategoryCollectionViewCell *)self setBrowseItem:0];
}

- (MUBrowseCategoryCollectionViewCell)initWithFrame:(CGRect)a3
{
  v66[4] = *MEMORY[0x1E69E9840];
  v63.receiver = self;
  v63.super_class = MUBrowseCategoryCollectionViewCell;
  v3 = [(MUBrowseCategoryCollectionViewCell *)&v63 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v7 = [(MUBrowseCategoryCollectionViewCell *)v4 contentView];
    [v7 addSubview:v4->_imageView];

    v48 = MEMORY[0x1E696ACD8];
    v57 = [(UIImageView *)v4->_imageView centerXAnchor];
    v60 = [(MUBrowseCategoryCollectionViewCell *)v4 contentView];
    v54 = [v60 centerXAnchor];
    v51 = [v57 constraintEqualToAnchor:v54];
    v66[0] = v51;
    v46 = [(UIImageView *)v4->_imageView topAnchor];
    v8 = [(MUBrowseCategoryCollectionViewCell *)v4 contentView];
    v9 = [v8 topAnchor];
    v10 = [v46 constraintEqualToAnchor:v9];
    v66[1] = v10;
    v11 = [(UIImageView *)v4->_imageView widthAnchor];
    v12 = [v11 constraintEqualToConstant:40.0];
    v66[2] = v12;
    v13 = [(UIImageView *)v4->_imageView heightAnchor];
    v14 = [v13 constraintEqualToConstant:40.0];
    v66[3] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:4];
    [v48 activateConstraints:v15];

    v16 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    highlightedImageView = v4->_highlightedImageView;
    v4->_highlightedImageView = v16;

    [(UIImageView *)v4->_highlightedImageView setContentMode:1];
    [(UIImageView *)v4->_highlightedImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = [(MUBrowseCategoryCollectionViewCell *)v4 imageView];
    [v18 addSubview:v4->_highlightedImageView];

    v47 = MEMORY[0x1E696ACD8];
    v61 = [(UIImageView *)v4->_highlightedImageView topAnchor];
    v58 = [(UIImageView *)v4->_imageView topAnchor];
    v55 = [v61 constraintEqualToAnchor:v58];
    v65[0] = v55;
    v52 = [(UIImageView *)v4->_highlightedImageView bottomAnchor];
    v49 = [(UIImageView *)v4->_imageView bottomAnchor];
    v45 = [v52 constraintEqualToAnchor:v49];
    v65[1] = v45;
    v19 = [(UIImageView *)v4->_highlightedImageView leadingAnchor];
    v20 = [(UIImageView *)v4->_imageView leadingAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    v65[2] = v21;
    v22 = [(UIImageView *)v4->_highlightedImageView trailingAnchor];
    v23 = [(UIImageView *)v4->_imageView trailingAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
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
    v29 = [(MUBrowseCategoryCollectionViewCell *)v4 contentView];
    [v29 addSubview:v4->_titleLabel];

    v30 = [(UILabel *)v4->_titleLabel firstBaselineAnchor];
    v31 = [(UIImageView *)v4->_imageView bottomAnchor];
    v32 = [v30 constraintEqualToAnchor:v31 constant:16.0];
    titleLabelTopConstraint = v4->_titleLabelTopConstraint;
    v4->_titleLabelTopConstraint = v32;

    v50 = MEMORY[0x1E696ACD8];
    v59 = [(UILabel *)v4->_titleLabel leadingAnchor];
    v62 = [(MUBrowseCategoryCollectionViewCell *)v4 contentView];
    v56 = [v62 leadingAnchor];
    v53 = [v59 constraintEqualToAnchor:v56];
    v64[0] = v53;
    v34 = [(UILabel *)v4->_titleLabel trailingAnchor];
    v35 = [(MUBrowseCategoryCollectionViewCell *)v4 contentView];
    v36 = [v35 trailingAnchor];
    v37 = [v34 constraintEqualToAnchor:v36];
    v64[1] = v37;
    v64[2] = v4->_titleLabelTopConstraint;
    v38 = [(UILabel *)v4->_titleLabel lastBaselineAnchor];
    v39 = [(MUBrowseCategoryCollectionViewCell *)v4 contentView];
    v40 = [v39 bottomAnchor];
    v41 = [v38 constraintEqualToAnchor:v40];
    v64[3] = v41;
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:4];
    [v50 activateConstraints:v42];
  }

  v43 = *MEMORY[0x1E69E9840];
  return v4;
}

@end