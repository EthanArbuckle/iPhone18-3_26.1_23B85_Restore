@interface PKPeerPaymentProfileAppearanceData
- (BOOL)isEqual:(id)equal;
- (PKPeerPaymentProfileAppearanceData)initWithCoder:(id)coder;
- (PKPeerPaymentProfileAppearanceData)initWithDisplayName:(id)name imageData:(id)data;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPeerPaymentProfileAppearanceData

- (PKPeerPaymentProfileAppearanceData)initWithDisplayName:(id)name imageData:(id)data
{
  nameCopy = name;
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = PKPeerPaymentProfileAppearanceData;
  v9 = [(PKPeerPaymentProfileAppearanceData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_displayName, name);
    objc_storeStrong(&v10->_imageData, data);
  }

  return v10;
}

- (PKPeerPaymentProfileAppearanceData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKPeerPaymentProfileAppearanceData;
  v5 = [(PKPeerPaymentProfileAppearanceData *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageData"];
    imageData = v5->_imageData;
    v5->_imageData = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  displayName = self->_displayName;
  coderCopy = coder;
  [coderCopy encodeObject:displayName forKey:@"displayName"];
  [coderCopy encodeObject:self->_imageData forKey:@"imageData"];
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_displayName];
  [array safelyAddObject:self->_imageData];
  v4 = PKCombinedHash(17, array);

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  displayName = self->_displayName;
  v6 = equalCopy[1];
  if (!displayName || !v6)
  {
    if (displayName == v6)
    {
      goto LABEL_5;
    }

LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  if (([(NSString *)displayName isEqual:?]& 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  imageData = self->_imageData;
  v8 = equalCopy[2];
  if (imageData && v8)
  {
    v9 = [(NSData *)imageData isEqual:?];
  }

  else
  {
    v9 = imageData == v8;
  }

LABEL_10:

  return v9;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"displayName: '%@'; ", self->_displayName];
  [v3 appendFormat:@"imageData: '%@'; ", self->_imageData];

  return v3;
}

@end