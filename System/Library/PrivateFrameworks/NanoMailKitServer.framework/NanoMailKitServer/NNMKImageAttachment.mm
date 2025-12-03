@interface NNMKImageAttachment
- (CGSize)imageSize;
- (NNMKImageAttachment)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NNMKImageAttachment

- (NNMKImageAttachment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = NNMKImageAttachment;
  v5 = [(NNMKAttachment *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyRenderOnClient"];
    v5->_renderOnClient = [v6 BOOLValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyImageSize"];
    [v7 CGSizeValue];
    v5->_imageSize.width = v8;
    v5->_imageSize.height = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = NNMKImageAttachment;
  coderCopy = coder;
  [(NNMKAttachment *)&v7 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{self->_renderOnClient, v7.receiver, v7.super_class}];
  [coderCopy encodeObject:v5 forKey:@"kNSCodingKeyRenderOnClient"];

  v6 = [MEMORY[0x277CCAE60] valueWithCGSize:{self->_imageSize.width, self->_imageSize.height}];
  [coderCopy encodeObject:v6 forKey:@"kNSCodingKeyImageSize"];
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = NNMKImageAttachment;
  v3 = [(NNMKAttachment *)&v8 description];
  v4 = [v3 mutableCopy];

  renderOnClient = self->_renderOnClient;
  v6 = NSStringFromCGSize(self->_imageSize);
  [v4 appendFormat:@", Render On Client: %d, Size: %@", renderOnClient, v6];

  return v4;
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