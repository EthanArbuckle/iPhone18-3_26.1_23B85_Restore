@interface HFMultiSizeImageIconDescriptor
- (BOOL)isEqual:(id)equal;
- (HFMultiSizeImageIconDescriptor)initWithImageIdentifiersKeyedBySize:(id)size;
- (HFMultiSizeImageIconDescriptor)initWithImageIdentifiersKeyedBySize:(id)size defaultImageIdentifier:(id)identifier;
- (id)imageIdentifierForSize:(id)size;
- (unint64_t)hash;
@end

@implementation HFMultiSizeImageIconDescriptor

- (HFMultiSizeImageIconDescriptor)initWithImageIdentifiersKeyedBySize:(id)size
{
  sizeCopy = size;
  v5 = [sizeCopy objectForKeyedSubscript:@"HFImageIconIdentifierSizeRegular"];
  v6 = [(HFMultiSizeImageIconDescriptor *)self initWithImageIdentifiersKeyedBySize:sizeCopy defaultImageIdentifier:v5];

  return v6;
}

- (HFMultiSizeImageIconDescriptor)initWithImageIdentifiersKeyedBySize:(id)size defaultImageIdentifier:(id)identifier
{
  sizeCopy = size;
  identifierCopy = identifier;
  v9 = identifierCopy;
  if (!identifierCopy)
  {
    NSLog(&cfstr_NoDefaultImage.isa);
    v9 = @"HFImageIconIdentifierSizeRegular";
  }

  v13.receiver = self;
  v13.super_class = HFMultiSizeImageIconDescriptor;
  v10 = [(HFImageIconDescriptor *)&v13 initWithImageIdentifier:v9];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_imageIdentifiersKeyedBySize, size);
  }

  return v11;
}

- (id)imageIdentifierForSize:(id)size
{
  sizeCopy = size;
  imageIdentifiersKeyedBySize = [(HFMultiSizeImageIconDescriptor *)self imageIdentifiersKeyedBySize];
  v6 = [imageIdentifiersKeyedBySize objectForKeyedSubscript:sizeCopy];

  if (!v6)
  {
    imageIdentifiersKeyedBySize2 = [(HFMultiSizeImageIconDescriptor *)self imageIdentifiersKeyedBySize];
    v6 = [imageIdentifiersKeyedBySize2 objectForKeyedSubscript:@"HFImageIconIdentifierSizeRegular"];
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      imageIdentifiersKeyedBySize = [(HFMultiSizeImageIconDescriptor *)v5 imageIdentifiersKeyedBySize];
      imageIdentifiersKeyedBySize2 = [(HFMultiSizeImageIconDescriptor *)self imageIdentifiersKeyedBySize];
      if (imageIdentifiersKeyedBySize == imageIdentifiersKeyedBySize2)
      {
        v10 = 1;
      }

      else
      {
        imageIdentifiersKeyedBySize3 = [(HFMultiSizeImageIconDescriptor *)v5 imageIdentifiersKeyedBySize];
        imageIdentifiersKeyedBySize4 = [(HFMultiSizeImageIconDescriptor *)self imageIdentifiersKeyedBySize];
        v10 = [imageIdentifiersKeyedBySize3 isEqualToDictionary:imageIdentifiersKeyedBySize4];
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  imageIdentifiersKeyedBySize = [(HFMultiSizeImageIconDescriptor *)self imageIdentifiersKeyedBySize];
  v3 = [imageIdentifiersKeyedBySize hash];

  return v3;
}

@end