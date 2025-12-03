@interface PKSetupProductMethodAppClip
- (PKSetupProductMethodAppClip)initWithCoder:(id)coder;
- (PKSetupProductMethodAppClip)initWithDictionary:(id)dictionary partnerIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_decorateDescription:(id)description;
- (void)encodeWithCode:(id)code;
@end

@implementation PKSetupProductMethodAppClip

- (PKSetupProductMethodAppClip)initWithDictionary:(id)dictionary partnerIdentifier:(id)identifier
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = PKSetupProductMethodAppClip;
  v7 = [(PKSetupProductMethod *)&v14 initWithDictionary:dictionaryCopy partnerIdentifier:identifier];
  if (v7 && (v8 = MEMORY[0x1E695DFF8], [dictionaryCopy PKStringForKey:@"appClipLaunchURL"], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "URLWithString:", v9), v10 = objc_claimAutoreleasedReturnValue(), appClipLaunchURL = v7->_appClipLaunchURL, v7->_appClipLaunchURL = v10, appClipLaunchURL, v9, !v7->_appClipLaunchURL))
  {
    v12 = 0;
  }

  else
  {
    v12 = v7;
  }

  return v12;
}

- (void)_decorateDescription:(id)description
{
  v5.receiver = self;
  v5.super_class = PKSetupProductMethodAppClip;
  descriptionCopy = description;
  [(PKSetupProductMethod *)&v5 _decorateDescription:descriptionCopy];
  [descriptionCopy appendFormat:@"appClipLaunchURL: '%@'; ", self->_appClipLaunchURL];
}

- (PKSetupProductMethodAppClip)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKSetupProductMethodAppClip;
  v5 = [(PKSetupProductMethod *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appClipLaunchURL"];
    appClipLaunchURL = v5->_appClipLaunchURL;
    v5->_appClipLaunchURL = v6;
  }

  return v5;
}

- (void)encodeWithCode:(id)code
{
  v5.receiver = self;
  v5.super_class = PKSetupProductMethodAppClip;
  codeCopy = code;
  [(PKSetupProductMethod *)&v5 encodeWithCoder:codeCopy];
  [codeCopy encodeObject:self->_appClipLaunchURL forKey:{@"appClipLaunchURL", v5.receiver, v5.super_class}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(PKSetupProductMethodAppClip);
  [(PKSetupProductMethod *)self _copyInto:v5];
  v6 = [(NSURL *)self->_appClipLaunchURL copyWithZone:zone];
  appClipLaunchURL = v5->_appClipLaunchURL;
  v5->_appClipLaunchURL = v6;

  return v5;
}

@end