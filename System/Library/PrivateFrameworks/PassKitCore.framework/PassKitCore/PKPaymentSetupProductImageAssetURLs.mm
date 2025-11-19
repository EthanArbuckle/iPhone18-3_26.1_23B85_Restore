@interface PKPaymentSetupProductImageAssetURLs
- (PKPaymentSetupProductImageAssetURLs)initWithCoder:(id)a3;
- (PKPaymentSetupProductImageAssetURLs)initWithImageAssetsDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentSetupProductImageAssetURLs

- (PKPaymentSetupProductImageAssetURLs)initWithImageAssetsDictionary:(id)a3
{
  v4 = a3;
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
    v10 = [v4 PKDictionaryForKey:@"digitalCardImage"];
    v11 = [v10 objectForKeyedSubscript:v9];
    v12 = [v8 URLWithString:v11];
    digitalCardImageUrl = v5->_digitalCardImageUrl;
    v5->_digitalCardImageUrl = v12;

    v14 = MEMORY[0x1E695DFF8];
    v15 = [v4 PKDictionaryForKey:@"thumbnailImage"];
    v16 = [v15 objectForKeyedSubscript:v9];
    v17 = [v14 URLWithString:v16];
    thumbnailImageUrl = v5->_thumbnailImageUrl;
    v5->_thumbnailImageUrl = v17;

    v19 = MEMORY[0x1E695DFF8];
    v20 = [v4 PKDictionaryForKey:@"logoImage"];
    v21 = [v20 objectForKeyedSubscript:v9];

    v22 = [v19 URLWithString:v21];
    logoImageUrl = v5->_logoImageUrl;
    v5->_logoImageUrl = v22;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKPaymentSetupProductImageAssetURLs allocWithZone:](PKPaymentSetupProductImageAssetURLs init];
  v6 = [(NSURL *)self->_digitalCardImageUrl copyWithZone:a3];
  digitalCardImageUrl = v5->_digitalCardImageUrl;
  v5->_digitalCardImageUrl = v6;

  v8 = [(NSURL *)self->_thumbnailImageUrl copyWithZone:a3];
  thumbnailImageUrl = v5->_thumbnailImageUrl;
  v5->_thumbnailImageUrl = v8;

  v10 = [(NSURL *)self->_logoImageUrl copyWithZone:a3];
  logoImageUrl = v5->_logoImageUrl;
  v5->_logoImageUrl = v10;

  return v5;
}

- (PKPaymentSetupProductImageAssetURLs)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKPaymentSetupProductImageAssetURLs;
  v5 = [(PKPaymentSetupProductImageAssetURLs *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"digitalCardImage"];
    digitalCardImageUrl = v5->_digitalCardImageUrl;
    v5->_digitalCardImageUrl = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"thumbnailImage"];
    thumbnailImageUrl = v5->_thumbnailImageUrl;
    v5->_thumbnailImageUrl = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"logoImage"];
    logoImageUrl = v5->_logoImageUrl;
    v5->_logoImageUrl = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  digitalCardImageUrl = self->_digitalCardImageUrl;
  v5 = a3;
  [v5 encodeObject:digitalCardImageUrl forKey:@"digitalCardImage"];
  [v5 encodeObject:self->_thumbnailImageUrl forKey:@"thumbnailImage"];
  [v5 encodeObject:self->_logoImageUrl forKey:@"logoImage"];
}

@end