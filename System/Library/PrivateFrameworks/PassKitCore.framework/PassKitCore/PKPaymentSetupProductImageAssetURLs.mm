@interface PKPaymentSetupProductImageAssetURLs
- (PKPaymentSetupProductImageAssetURLs)initWithCoder:(id)coder;
- (PKPaymentSetupProductImageAssetURLs)initWithImageAssetsDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentSetupProductImageAssetURLs

- (PKPaymentSetupProductImageAssetURLs)initWithImageAssetsDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v25.receiver = self;
  v25.super_class = PKPaymentSetupProductImageAssetURLs;
  v5 = [(PKPaymentSetupProductImageAssetURLs *)&v25 init];
  if (v5)
  {
    v6 = PKScreenScale();
    v7 = @"2x";
    if (v6 > 2.0)
    {
      v7 = @"3x";
    }

    v8 = MEMORY[0x1E695DFF8];
    v9 = v7;
    v10 = [dictionaryCopy PKDictionaryForKey:@"digitalCardImage"];
    v11 = [v10 objectForKeyedSubscript:v9];
    v12 = [v8 URLWithString:v11];
    digitalCardImageUrl = v5->_digitalCardImageUrl;
    v5->_digitalCardImageUrl = v12;

    v14 = MEMORY[0x1E695DFF8];
    v15 = [dictionaryCopy PKDictionaryForKey:@"thumbnailImage"];
    v16 = [v15 objectForKeyedSubscript:v9];
    v17 = [v14 URLWithString:v16];
    thumbnailImageUrl = v5->_thumbnailImageUrl;
    v5->_thumbnailImageUrl = v17;

    v19 = MEMORY[0x1E695DFF8];
    v20 = [dictionaryCopy PKDictionaryForKey:@"logoImage"];
    v21 = [v20 objectForKeyedSubscript:v9];

    v22 = [v19 URLWithString:v21];
    logoImageUrl = v5->_logoImageUrl;
    v5->_logoImageUrl = v22;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKPaymentSetupProductImageAssetURLs allocWithZone:](PKPaymentSetupProductImageAssetURLs init];
  v6 = [(NSURL *)self->_digitalCardImageUrl copyWithZone:zone];
  digitalCardImageUrl = v5->_digitalCardImageUrl;
  v5->_digitalCardImageUrl = v6;

  v8 = [(NSURL *)self->_thumbnailImageUrl copyWithZone:zone];
  thumbnailImageUrl = v5->_thumbnailImageUrl;
  v5->_thumbnailImageUrl = v8;

  v10 = [(NSURL *)self->_logoImageUrl copyWithZone:zone];
  logoImageUrl = v5->_logoImageUrl;
  v5->_logoImageUrl = v10;

  return v5;
}

- (PKPaymentSetupProductImageAssetURLs)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PKPaymentSetupProductImageAssetURLs;
  v5 = [(PKPaymentSetupProductImageAssetURLs *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"digitalCardImage"];
    digitalCardImageUrl = v5->_digitalCardImageUrl;
    v5->_digitalCardImageUrl = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"thumbnailImage"];
    thumbnailImageUrl = v5->_thumbnailImageUrl;
    v5->_thumbnailImageUrl = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"logoImage"];
    logoImageUrl = v5->_logoImageUrl;
    v5->_logoImageUrl = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  digitalCardImageUrl = self->_digitalCardImageUrl;
  coderCopy = coder;
  [coderCopy encodeObject:digitalCardImageUrl forKey:@"digitalCardImage"];
  [coderCopy encodeObject:self->_thumbnailImageUrl forKey:@"thumbnailImage"];
  [coderCopy encodeObject:self->_logoImageUrl forKey:@"logoImage"];
}

@end