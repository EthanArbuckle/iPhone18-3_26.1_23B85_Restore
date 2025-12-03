@interface PKPassLogoImageSet
- (BOOL)isEqual:(id)equal;
- (PKPassLogoImageSet)initWithCoder:(id)coder;
- (PKPassLogoImageSet)initWithDisplayProfile:(id)profile fileURL:(id)l screenScale:(double)scale suffix:(id)suffix;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)preheatImages;
@end

@implementation PKPassLogoImageSet

- (PKPassLogoImageSet)initWithDisplayProfile:(id)profile fileURL:(id)l screenScale:(double)scale suffix:(id)suffix
{
  profileCopy = profile;
  lCopy = l;
  suffixCopy = suffix;
  v32.receiver = self;
  v32.super_class = PKPassLogoImageSet;
  v13 = [(PKImageSet *)&v32 initWithDisplayProfile:profileCopy fileURL:lCopy screenScale:suffixCopy suffix:scale];
  if (!v13)
  {
    goto LABEL_11;
  }

  v14 = [MEMORY[0x1E696AAE8] bundleWithURL:lCopy];
  passStyle = [profileCopy passStyle];
  if ((passStyle - 9) >= 2)
  {
    v31 = [PKImage imageNamed:@"logo" inBundle:v14 screenScale:suffixCopy suffix:scale];
    [(PKPassLogoImageSet *)v13 setLogoImage:?];
  }

  else
  {
    v31 = [PKImage imageNamed:@"primaryLogo" inBundle:v14 screenScale:suffixCopy suffix:scale];
    [(PKPassLogoImageSet *)v13 setLogoImage:?];
    if (passStyle == 9)
    {
      v16 = [PKImage imageNamed:@"artwork" inBundle:v14 screenScale:suffixCopy suffix:scale];
      if (v16)
      {
        goto LABEL_8;
      }
    }
  }

  v16 = [PKImage imageNamed:@"background" inBundle:v14 screenScale:suffixCopy suffix:scale];
LABEL_8:
  v30 = v16;
  [(PKPassLogoImageSet *)v13 setBackgroundImage:v16];
  v29 = [PKImage imageNamed:@"strip" inBundle:v14 screenScale:suffixCopy suffix:scale];
  [(PKPassLogoImageSet *)v13 setStripImage:?];
  v17 = [PKImage imageNamed:@"footer" inBundle:v14 screenScale:suffixCopy suffix:scale];
  [(PKPassLogoImageSet *)v13 setFooterImage:v17];
  v18 = [PKImage imageNamed:@"altImage" inBundle:v14 screenScale:suffixCopy suffix:scale];
  [(PKPassLogoImageSet *)v13 setAltImage:v18];
  v19 = [PKImage imageNamed:@"secondaryLogo" inBundle:v14 screenScale:suffixCopy suffix:scale];
  [(PKPassLogoImageSet *)v13 setSecondaryLogoImage:v19];
  v20 = [PKImage imageNamed:@"cardBackgroundCombined" inBundle:v14 screenScale:suffixCopy suffix:scale];
  [(PKPassLogoImageSet *)v13 setCardBackgroundCombinedImage:v20];

  cardBackgroundCombinedImage = [(PKPassLogoImageSet *)v13 cardBackgroundCombinedImage];

  if (!cardBackgroundCombinedImage)
  {
    v22 = [PKImage imageNamed:@"bankLogo" inBundle:v14 screenScale:suffixCopy suffix:scale];
    [(PKPassLogoImageSet *)v13 setBankLogoImage:v22];

    v23 = [PKImage imageNamed:@"networkLogo" inBundle:v14 screenScale:suffixCopy suffix:scale];
    [(PKPassLogoImageSet *)v13 setNetworkLogoImage:v23];

    v24 = [PKImage imageNamed:@"cobrandLogo" inBundle:v14 screenScale:suffixCopy suffix:scale];
    [(PKPassLogoImageSet *)v13 setCobrandLogoImage:v24];

    v25 = [PKImage imageNamed:@"cardBackground" inBundle:v14 screenScale:suffixCopy suffix:scale];
    [(PKPassLogoImageSet *)v13 setCardBackgroundImage:v25];
  }

  v26 = [PKImage imageNamed:@"compactBankLogoDark" inBundle:v14 screenScale:suffixCopy suffix:scale];
  [(PKPassLogoImageSet *)v13 setCompactBankLogoDarkImage:v26];
  v27 = [PKImage imageNamed:@"compactBankLogoLight" inBundle:v14 screenScale:suffixCopy suffix:scale];
  [(PKPassLogoImageSet *)v13 setCompactBankLogoLightImage:v27];

LABEL_11:
  return v13;
}

- (void)preheatImages
{
  [(PKImage *)self->_logoImage preheatBitmapData];
  [(PKImage *)self->_backgroundImage preheatBitmapData];
  [(PKImage *)self->_stripImage preheatBitmapData];
  [(PKImage *)self->_footerImage preheatBitmapData];
  [(PKImage *)self->_altImage preheatBitmapData];
  [(PKImage *)self->_bankLogoImage preheatBitmapData];
  [(PKImage *)self->_networkLogoImage preheatBitmapData];
  [(PKImage *)self->_cobrandLogoImage preheatBitmapData];
  [(PKImage *)self->_cardBackgroundImage preheatBitmapData];
  [(PKImage *)self->_cardBackgroundCombinedImage preheatBitmapData];
  [(PKImage *)self->_compactBankLogoDarkImage preheatBitmapData];
  [(PKImage *)self->_compactBankLogoLightImage preheatBitmapData];
  secondaryLogoImage = self->_secondaryLogoImage;

  [(PKImage *)secondaryLogoImage preheatBitmapData];
}

- (PKPassLogoImageSet)initWithCoder:(id)coder
{
  coderCopy = coder;
  v36.receiver = self;
  v36.super_class = PKPassLogoImageSet;
  v5 = [(PKImageSet *)&v36 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"logoImage"];
    logoImage = v5->_logoImage;
    v5->_logoImage = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backgroundImage"];
    backgroundImage = v5->_backgroundImage;
    v5->_backgroundImage = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stripImage"];
    stripImage = v5->_stripImage;
    v5->_stripImage = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"footerImage"];
    footerImage = v5->_footerImage;
    v5->_footerImage = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"altImage"];
    altImage = v5->_altImage;
    v5->_altImage = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bankLogoImage"];
    bankLogoImage = v5->_bankLogoImage;
    v5->_bankLogoImage = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"networkLogoImage"];
    networkLogoImage = v5->_networkLogoImage;
    v5->_networkLogoImage = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cobrandLogoImage"];
    cobrandLogoImage = v5->_cobrandLogoImage;
    v5->_cobrandLogoImage = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cardBackgroundImage"];
    cardBackgroundImage = v5->_cardBackgroundImage;
    v5->_cardBackgroundImage = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cardBackgroundCombinedImage"];
    cardBackgroundCombinedImage = v5->_cardBackgroundCombinedImage;
    v5->_cardBackgroundCombinedImage = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"thumbnailImage"];
    thumbnailImage = v5->_thumbnailImage;
    v5->_thumbnailImage = v27;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"compactBankLogoDarkImage"];
    compactBankLogoDarkImage = v5->_compactBankLogoDarkImage;
    v5->_compactBankLogoDarkImage = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"compactBankLogoLightImage"];
    compactBankLogoLightImage = v5->_compactBankLogoLightImage;
    v5->_compactBankLogoLightImage = v31;

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"secondaryLogoImage"];
    secondaryLogoImage = v5->_secondaryLogoImage;
    v5->_secondaryLogoImage = v33;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = PKPassLogoImageSet;
  [(PKImageSet *)&v6 encodeWithCoder:coderCopy];
  v5 = objc_autoreleasePoolPush();
  [coderCopy encodeObject:self->_logoImage forKey:@"logoImage"];
  [coderCopy encodeObject:self->_backgroundImage forKey:@"backgroundImage"];
  [coderCopy encodeObject:self->_stripImage forKey:@"stripImage"];
  [coderCopy encodeObject:self->_footerImage forKey:@"footerImage"];
  [coderCopy encodeObject:self->_altImage forKey:@"altImage"];
  [coderCopy encodeObject:self->_bankLogoImage forKey:@"bankLogoImage"];
  [coderCopy encodeObject:self->_networkLogoImage forKey:@"networkLogoImage"];
  [coderCopy encodeObject:self->_cobrandLogoImage forKey:@"cobrandLogoImage"];
  [coderCopy encodeObject:self->_cardBackgroundImage forKey:@"cardBackgroundImage"];
  [coderCopy encodeObject:self->_cardBackgroundCombinedImage forKey:@"cardBackgroundCombinedImage"];
  [coderCopy encodeObject:self->_thumbnailImage forKey:@"thumbnailImage"];
  [coderCopy encodeObject:self->_compactBankLogoDarkImage forKey:@"compactBankLogoDarkImage"];
  [coderCopy encodeObject:self->_compactBankLogoLightImage forKey:@"compactBankLogoLightImage"];
  [coderCopy encodeObject:self->_secondaryLogoImage forKey:@"secondaryLogoImage"];
  objc_autoreleasePoolPop(v5);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = [(PKImageSet *)self _isSetImage:self->_logoImage equalToImage:v5[3]]&& [(PKImageSet *)self _isSetImage:self->_secondaryLogoImage equalToImage:v5[16]]&& [(PKImageSet *)self _isSetImage:self->_backgroundImage equalToImage:v5[4]]&& [(PKImageSet *)self _isSetImage:self->_stripImage equalToImage:v5[6]]&& [(PKImageSet *)self _isSetImage:self->_footerImage equalToImage:v5[7]]&& [(PKImageSet *)self _isSetImage:self->_altImage equalToImage:v5[8]]&& [(PKImageSet *)self _isSetImage:self->_bankLogoImage equalToImage:v5[9]]&& [(PKImageSet *)self _isSetImage:self->_networkLogoImage equalToImage:v5[10]]&& [(PKImageSet *)self _isSetImage:self->_cobrandLogoImage equalToImage:v5[11]]&& [(PKImageSet *)self _isSetImage:self->_cardBackgroundImage equalToImage:v5[12]]&& [(PKImageSet *)self _isSetImage:self->_cardBackgroundCombinedImage equalToImage:v5[13]]&& [(PKImageSet *)self _isSetImage:self->_compactBankLogoDarkImage equalToImage:v5[14]]&& [(PKImageSet *)self _isSetImage:self->_compactBankLogoLightImage equalToImage:v5[15]];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  imageHash = [(PKImage *)self->_logoImage imageHash];
  v3 = [imageHash hash];
  imageHash2 = [(PKImage *)self->_secondaryLogoImage imageHash];
  v4 = [imageHash2 hash] + v3;
  imageHash3 = [(PKImage *)self->_backgroundImage imageHash];
  v5 = [imageHash3 hash];
  imageHash4 = [(PKImage *)self->_stripImage imageHash];
  v6 = v4 + v5 + [imageHash4 hash];
  imageHash5 = [(PKImage *)self->_footerImage imageHash];
  v7 = [imageHash5 hash];
  imageHash6 = [(PKImage *)self->_altImage imageHash];
  v9 = v7 + [imageHash6 hash];
  imageHash7 = [(PKImage *)self->_bankLogoImage imageHash];
  v11 = v6 + v9 + [imageHash7 hash];
  imageHash8 = [(PKImage *)self->_networkLogoImage imageHash];
  v13 = [imageHash8 hash];
  imageHash9 = [(PKImage *)self->_cobrandLogoImage imageHash];
  v15 = v13 + [imageHash9 hash];
  imageHash10 = [(PKImage *)self->_cardBackgroundImage imageHash];
  v17 = v15 + [imageHash10 hash];
  imageHash11 = [(PKImage *)self->_cardBackgroundCombinedImage imageHash];
  v24 = v11 + v17 + [imageHash11 hash];
  imageHash12 = [(PKImage *)self->_compactBankLogoDarkImage imageHash];
  v20 = [imageHash12 hash];
  imageHash13 = [(PKImage *)self->_compactBankLogoLightImage imageHash];
  v22 = v20 + [imageHash13 hash];

  return v24 + v22;
}

@end