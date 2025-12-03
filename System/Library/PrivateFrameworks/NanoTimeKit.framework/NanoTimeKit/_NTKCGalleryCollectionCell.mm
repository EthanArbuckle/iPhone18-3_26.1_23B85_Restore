@interface _NTKCGalleryCollectionCell
+ (id)agaveReuseIdentifier;
+ (id)aloeReuseIdentifier;
+ (id)avoniaReuseIdentifier;
+ (id)begoniaReuseIdentifier;
+ (id)classicReuseIdentifier;
+ (id)luxoReuseIdentifier;
+ (id)reuseIdentifier;
- (_NTKCGalleryCollectionCell)initWithFrame:(CGRect)frame;
- (void)_highlight;
- (void)dealloc;
- (void)prepareForReuse;
- (void)setCalloutName:(id)name;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
@end

@implementation _NTKCGalleryCollectionCell

+ (id)reuseIdentifier
{
  currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
  deviceCategory = [currentDevice deviceCategory];

  if (deviceCategory > 3)
  {
    switch(deviceCategory)
    {
      case 4:
        agaveReuseIdentifier = [self agaveReuseIdentifier];
        break;
      case 5:
        agaveReuseIdentifier = [self avoniaReuseIdentifier];
        break;
      case 6:
        agaveReuseIdentifier = [self begoniaReuseIdentifier];
        break;
      default:
        goto LABEL_10;
    }
  }

  else
  {
    if (deviceCategory == 1)
    {
LABEL_10:
      agaveReuseIdentifier = [self classicReuseIdentifier];
      goto LABEL_14;
    }

    if (deviceCategory != 2)
    {
      if (deviceCategory == 3)
      {
        agaveReuseIdentifier = [self aloeReuseIdentifier];
        goto LABEL_14;
      }

      goto LABEL_10;
    }

    agaveReuseIdentifier = [self luxoReuseIdentifier];
  }

LABEL_14:

  return agaveReuseIdentifier;
}

+ (id)classicReuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)luxoReuseIdentifier
{
  classicReuseIdentifier = [self classicReuseIdentifier];
  v3 = [classicReuseIdentifier stringByAppendingString:@"-luxo"];

  return v3;
}

+ (id)aloeReuseIdentifier
{
  classicReuseIdentifier = [self classicReuseIdentifier];
  v3 = [classicReuseIdentifier stringByAppendingString:@"-aloe"];

  return v3;
}

+ (id)agaveReuseIdentifier
{
  classicReuseIdentifier = [self classicReuseIdentifier];
  v3 = [classicReuseIdentifier stringByAppendingString:@"-agave"];

  return v3;
}

+ (id)avoniaReuseIdentifier
{
  classicReuseIdentifier = [self classicReuseIdentifier];
  v3 = [classicReuseIdentifier stringByAppendingString:@"-avonia"];

  return v3;
}

+ (id)begoniaReuseIdentifier
{
  classicReuseIdentifier = [self classicReuseIdentifier];
  v3 = [classicReuseIdentifier stringByAppendingString:@"-begonia"];

  return v3;
}

- (_NTKCGalleryCollectionCell)initWithFrame:(CGRect)frame
{
  v30[1] = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = _NTKCGalleryCollectionCell;
  v3 = [(_NTKCGalleryCollectionCell *)&v28 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    contentView = [(_NTKCGalleryCollectionCell *)v3 contentView];
    [contentView addSubview:v3->_contentStack];

    v23 = MEMORY[0x277CCAAD0];
    contentView2 = [(_NTKCGalleryCollectionCell *)v3 contentView];
    leadingAnchor = [contentView2 leadingAnchor];
    leadingAnchor2 = [(UIStackView *)v3->_contentStack leadingAnchor];
    v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v29[0] = v24;
    contentView3 = [(_NTKCGalleryCollectionCell *)v3 contentView];
    trailingAnchor = [contentView3 trailingAnchor];
    trailingAnchor2 = [(UIStackView *)v3->_contentStack trailingAnchor];
    v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v29[1] = v16;
    contentView4 = [(_NTKCGalleryCollectionCell *)v3 contentView];
    topAnchor = [contentView4 topAnchor];
    topAnchor2 = [(UIStackView *)v3->_contentStack topAnchor];
    v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v29[2] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
    [v23 activateConstraints:v21];
  }

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

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

- (void)setCalloutName:(id)name
{
  nameCopy = name;
  v4 = [nameCopy isEqualToString:self->_calloutName];
  v5 = nameCopy;
  if ((v4 & 1) == 0)
  {
    v6 = [nameCopy copy];
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

    v5 = nameCopy;
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  v4.receiver = self;
  v4.super_class = _NTKCGalleryCollectionCell;
  [(_NTKCGalleryCollectionCell *)&v4 setHighlighted:highlighted];
  [(_NTKCGalleryCollectionCell *)self _highlight];
}

- (void)setSelected:(BOOL)selected
{
  v4.receiver = self;
  v4.super_class = _NTKCGalleryCollectionCell;
  [(_NTKCGalleryCollectionCell *)&v4 setSelected:selected];
  [(_NTKCGalleryCollectionCell *)self _highlight];
}

- (void)_highlight
{
  if (([(_NTKCGalleryCollectionCell *)self isSelected]& 1) != 0)
  {
    isHighlighted = 1;
  }

  else
  {
    isHighlighted = [(_NTKCGalleryCollectionCell *)self isHighlighted];
  }

  faceContainerView = self->_faceContainerView;

  [(NTKCFaceContainerView *)faceContainerView setHighlighted:isHighlighted];
}

@end