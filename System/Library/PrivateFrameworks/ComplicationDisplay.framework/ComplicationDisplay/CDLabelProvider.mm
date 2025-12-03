@interface CDLabelProvider
- (CDLabelProvider)initWithCoder:(id)coder;
- (CDLabelProvider)initWithTextProvider:(id)provider imageProvider:(id)imageProvider;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CDLabelProvider

- (CDLabelProvider)initWithTextProvider:(id)provider imageProvider:(id)imageProvider
{
  providerCopy = provider;
  imageProviderCopy = imageProvider;
  v12.receiver = self;
  v12.super_class = CDLabelProvider;
  v9 = [(CDLabelProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_textProvider, provider);
    objc_storeStrong(&v10->_imageProvider, imageProvider);
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  textProvider = self->_textProvider;
  coderCopy = coder;
  [coderCopy encodeObject:textProvider forKey:@"textProvider"];
  [coderCopy encodeObject:self->_imageProvider forKey:@"imageProvider"];
}

- (CDLabelProvider)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CDLabelProvider;
  v5 = [(CDLabelProvider *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"textProvider"];
    textProvider = v5->_textProvider;
    v5->_textProvider = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageProvider"];
    imageProvider = v5->_imageProvider;
    v5->_imageProvider = v8;
  }

  return v5;
}

@end