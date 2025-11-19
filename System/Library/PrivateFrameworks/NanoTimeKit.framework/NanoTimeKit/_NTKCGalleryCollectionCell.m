@interface _NTKCGalleryCollectionCell
+ (id)agaveReuseIdentifier;
+ (id)aloeReuseIdentifier;
+ (id)avoniaReuseIdentifier;
+ (id)begoniaReuseIdentifier;
+ (id)classicReuseIdentifier;
+ (id)luxoReuseIdentifier;
+ (id)reuseIdentifier;
- (_NTKCGalleryCollectionCell)initWithFrame:(CGRect)a3;
- (void)_highlight;
- (void)dealloc;
- (void)prepareForReuse;
- (void)setCalloutName:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation _NTKCGalleryCollectionCell

+ (id)reuseIdentifier
{
  v3 = [MEMORY[0x277CBBAE8] currentDevice];
  v4 = [v3 deviceCategory];

  if (v4 > 3)
  {
    switch(v4)
    {
      case 4:
        v5 = [a1 agaveReuseIdentifier];
        break;
      case 5:
        v5 = [a1 avoniaReuseIdentifier];
        break;
      case 6:
        v5 = [a1 begoniaReuseIdentifier];
        break;
      default:
        goto LABEL_10;
    }
  }

  else
  {
    if (v4 == 1)
    {
LABEL_10:
      v5 = [a1 classicReuseIdentifier];
      goto LABEL_14;
    }

    if (v4 != 2)
    {
      if (v4 == 3)
      {
        v5 = [a1 aloeReuseIdentifier];
        goto LABEL_14;
      }

      goto LABEL_10;
    }

    v5 = [a1 luxoReuseIdentifier];
  }

LABEL_14:

  return v5;
}

+ (id)classicReuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)luxoReuseIdentifier
{
  v2 = [a1 classicReuseIdentifier];
  v3 = [v2 stringByAppendingString:@"-luxo"];

  return v3;
}

+ (id)aloeReuseIdentifier
{
  v2 = [a1 classicReuseIdentifier];
  v3 = [v2 stringByAppendingString:@"-aloe"];

  return v3;
}

+ (id)agaveReuseIdentifier
{
  v2 = [a1 classicReuseIdentifier];
  v3 = [v2 stringByAppendingString:@"-agave"];

  return v3;
}

+ (id)avoniaReuseIdentifier
{
  v2 = [a1 classicReuseIdentifier];
  v3 = [v2 stringByAppendingString:@"-avonia"];

  return v3;
}

+ (id)begoniaReuseIdentifier
{
  v2 = [a1 classicReuseIdentifier];
  v3 = [v2 stringByAppendingString:@"-begonia"];

  return v3;
}

- (_NTKCGalleryCollectionCell)initWithFrame:(CGRect)a3
{
  v30[1] = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = _NTKCGalleryCollectionCell;
  v3 = [(_NTKCGalleryCollectionCell *)&v28 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = FaceSize();
    v6 = [[NTKCFaceContainerView alloc] initWithFaceSize:1 style:v4, v5];
    faceContainerView = v3->_faceContainerView;
    v3->_faceContainerView = v6;

    v8 = objc_alloc(MEMORY[0x277D75A68]);
    v30[0] = v3->_faceContainerView;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
    v10 = [v8 initWithArrangedSubviews:v9];
    contentStack = v3->_contentStack;
    v3->_contentStack = v10;

    [(UIStackView *)v3->_contentStack setAlignment:3];
    [(UIStackView *)v3->_contentStack setAxis:1];
    [(UIStackView *)v3->_contentStack setSpacing:10.0];
    [(UIStackView *)v3->_contentStack setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [(_NTKCGalleryCollectionCell *)v3 contentView];
    [v12 addSubview:v3->_contentStack];

    v23 = MEMORY[0x277CCAAD0];
    v27 = [(_NTKCGalleryCollectionCell *)v3 contentView];
    v26 = [v27 leadingAnchor];
    v25 = [(UIStackView *)v3->_contentStack leadingAnchor];
    v24 = [v26 constraintEqualToAnchor:v25];
    v29[0] = v24;
    v13 = [(_NTKCGalleryCollectionCell *)v3 contentView];
    v14 = [v13 trailingAnchor];
    v15 = [(UIStackView *)v3->_contentStack trailingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v29[1] = v16;
    v17 = [(_NTKCGalleryCollectionCell *)v3 contentView];
    v18 = [v17 topAnchor];
    v19 = [(UIStackView *)v3->_contentStack topAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    v29[2] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
    [v23 activateConstraints:v21];
  }

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = _NTKCGalleryCollectionCell;
  [(_NTKCGalleryCollectionCell *)&v4 dealloc];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = _NTKCGalleryCollectionCell;
  [(_NTKCGalleryCollectionCell *)&v3 prepareForReuse];
  [(_NTKCGalleryCollectionCell *)self setCalloutName:0];
  [(NTKCFaceContainerView *)self->_faceContainerView setFaceView:0];
}

- (void)setCalloutName:(id)a3
{
  v15 = a3;
  v4 = [v15 isEqualToString:self->_calloutName];
  v5 = v15;
  if ((v4 & 1) == 0)
  {
    v6 = [v15 copy];
    calloutName = self->_calloutName;
    self->_calloutName = v6;

    v8 = [(NSString *)self->_calloutName length];
    nameLabel = self->_nameLabel;
    if (v8)
    {
      if (nameLabel)
      {
        [(UILabel *)nameLabel setHidden:0];
      }

      else
      {
        v10 = objc_opt_new();
        v11 = self->_nameLabel;
        self->_nameLabel = v10;

        v12 = BPSTextColor();
        [(UILabel *)self->_nameLabel setTextColor:v12];

        v13 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769C0]];
        [(UILabel *)self->_nameLabel setFont:v13];

        [(UILabel *)self->_nameLabel setAdjustsFontForContentSizeCategory:1];
        [(UILabel *)self->_nameLabel setAllowsDefaultTighteningForTruncation:1];
        [(UILabel *)self->_nameLabel setMinimumScaleFactor:0.8];
        LODWORD(v14) = 0.5;
        [(UILabel *)self->_nameLabel _setHyphenationFactor:v14];
        [(UILabel *)self->_nameLabel setTextAlignment:1];
        [(UILabel *)self->_nameLabel setNumberOfLines:0];
        [(UIStackView *)self->_contentStack addArrangedSubview:self->_nameLabel];
      }

      [(UILabel *)self->_nameLabel setText:self->_calloutName];
    }

    else
    {
      [(UILabel *)nameLabel setHidden:1];
    }

    v5 = v15;
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = _NTKCGalleryCollectionCell;
  [(_NTKCGalleryCollectionCell *)&v4 setHighlighted:a3];
  [(_NTKCGalleryCollectionCell *)self _highlight];
}

- (void)setSelected:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = _NTKCGalleryCollectionCell;
  [(_NTKCGalleryCollectionCell *)&v4 setSelected:a3];
  [(_NTKCGalleryCollectionCell *)self _highlight];
}

- (void)_highlight
{
  if (([(_NTKCGalleryCollectionCell *)self isSelected]& 1) != 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = [(_NTKCGalleryCollectionCell *)self isHighlighted];
  }

  faceContainerView = self->_faceContainerView;

  [(NTKCFaceContainerView *)faceContainerView setHighlighted:v3];
}

@end