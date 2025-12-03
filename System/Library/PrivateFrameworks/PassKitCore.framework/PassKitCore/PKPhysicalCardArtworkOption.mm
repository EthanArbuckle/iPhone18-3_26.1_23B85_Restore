@interface PKPhysicalCardArtworkOption
- (BOOL)isEqual:(id)equal;
- (PKPhysicalCardArtworkOption)initWithCoder:(id)coder;
- (PKPhysicalCardArtworkOption)initWithDictionary:(id)dictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setFrontFaceImage:(id)image;
@end

@implementation PKPhysicalCardArtworkOption

- (PKPhysicalCardArtworkOption)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = PKPhysicalCardArtworkOption;
  v5 = [(PKPhysicalCardArtworkOption *)&v22 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [dictionaryCopy PKURLForKey:@"frontFaceImageURL"];
    frontFaceImageURL = v5->_frontFaceImageURL;
    v5->_frontFaceImageURL = v8;

    v5->_minimumEstimatedShippingTime = [dictionaryCopy PKIntegerForKey:@"minimumEstimatedShippingTime"];
    v5->_maximumEstimatedShippingTime = [dictionaryCopy PKIntegerForKey:@"maximumEstimatedShippingTime"];
    v10 = [dictionaryCopy PKStringForKey:@"deliveryUnit"];
    lowercaseString = [v10 lowercaseString];
    v12 = lowercaseString;
    v13 = 0;
    if (lowercaseString == @"days" || !lowercaseString)
    {
      goto LABEL_12;
    }

    v14 = [(__CFString *)lowercaseString isEqualToString:@"days"];

    if ((v14 & 1) == 0)
    {
      v15 = v12;
      if (v15 == @"weeks" || (v16 = v15, v17 = [(__CFString *)v15 isEqualToString:@"weeks"], v16, (v17 & 1) != 0))
      {
        v13 = 1;
        goto LABEL_12;
      }

      v18 = v16;
      if (v18 == @"months" || (v19 = v18, v20 = [(__CFString *)v18 isEqualToString:@"months"], v19, v20))
      {
        v13 = 2;
        goto LABEL_12;
      }
    }

    v13 = 0;
LABEL_12:

    v5->_shippingTimeUnit = v13;
    v5->_optionUnavailable = [dictionaryCopy PKBoolForKey:@"notAvailable"];
  }

  return v5;
}

- (void)setFrontFaceImage:(id)image
{
  imageCopy = image;
  frontFaceImage = self->_frontFaceImage;
  p_frontFaceImage = &self->_frontFaceImage;
  if (frontFaceImage != imageCopy)
  {
    v8 = imageCopy;
    objc_storeStrong(p_frontFaceImage, image);
    imageCopy = v8;
  }
}

- (PKPhysicalCardArtworkOption)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKPhysicalCardArtworkOption;
  v5 = [(PKPhysicalCardArtworkOption *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"frontFaceImageURL"];
    frontFaceImageURL = v5->_frontFaceImageURL;
    v5->_frontFaceImageURL = v8;

    v5->_minimumEstimatedShippingTime = [coderCopy decodeIntegerForKey:@"minimumEstimatedShippingTime"];
    v5->_maximumEstimatedShippingTime = [coderCopy decodeIntegerForKey:@"maximumEstimatedShippingTime"];
    v5->_shippingTimeUnit = [coderCopy decodeIntegerForKey:@"deliveryUnit"];
    v5->_optionUnavailable = [coderCopy decodeBoolForKey:@"notAvailable"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_frontFaceImageURL forKey:@"frontFaceImageURL"];
  [coderCopy encodeInteger:self->_minimumEstimatedShippingTime forKey:@"minimumEstimatedShippingTime"];
  [coderCopy encodeInteger:self->_maximumEstimatedShippingTime forKey:@"maximumEstimatedShippingTime"];
  [coderCopy encodeInteger:self->_shippingTimeUnit forKey:@"deliveryUnit"];
  [coderCopy encodeBool:self->_optionUnavailable forKey:@"notAvailable"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_16;
  }

  identifier = self->_identifier;
  v6 = equalCopy[2];
  if (identifier && v6)
  {
    if (([(NSString *)identifier isEqual:?]& 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (identifier != v6)
  {
    goto LABEL_16;
  }

  frontFaceImageURL = self->_frontFaceImageURL;
  v8 = equalCopy[3];
  if (!frontFaceImageURL || !v8)
  {
    if (frontFaceImageURL == v8)
    {
      goto LABEL_12;
    }

LABEL_16:
    v9 = 0;
    goto LABEL_17;
  }

  if (([(NSURL *)frontFaceImageURL isEqual:?]& 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  if (self->_minimumEstimatedShippingTime != equalCopy[4] || self->_maximumEstimatedShippingTime != equalCopy[5] || self->_shippingTimeUnit != equalCopy[6])
  {
    goto LABEL_16;
  }

  v9 = self->_optionUnavailable == *(equalCopy + 8);
LABEL_17:

  return v9;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_identifier];
  [array safelyAddObject:self->_frontFaceImageURL];
  v4 = PKCombinedHash(17, array);
  v5 = self->_minimumEstimatedShippingTime - v4 + 32 * v4;
  v6 = self->_maximumEstimatedShippingTime - v5 + 32 * v5;
  v7 = self->_shippingTimeUnit - v6 + 32 * v6;
  v8 = self->_optionUnavailable - v7 + 32 * v7;

  return v8;
}

@end