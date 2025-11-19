@interface PKSetupProductMethodAppClip
- (PKSetupProductMethodAppClip)initWithCoder:(id)a3;
- (PKSetupProductMethodAppClip)initWithDictionary:(id)a3 partnerIdentifier:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_decorateDescription:(id)a3;
- (void)encodeWithCode:(id)a3;
@end

@implementation PKSetupProductMethodAppClip

- (PKSetupProductMethodAppClip)initWithDictionary:(id)a3 partnerIdentifier:(id)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = PKSetupProductMethodAppClip;
  v7 = [(PKSetupProductMethod *)&v14 initWithDictionary:v6 partnerIdentifier:a4];
  if (v7 && (v8 = MEMORY[0x1E695DFF8], [v6 PKStringForKey:@"appClipLaunchURL"], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "URLWithString:", v9), v10 = objc_claimAutoreleasedReturnValue(), appClipLaunchURL = v7->_appClipLaunchURL, v7->_appClipLaunchURL = v10, appClipLaunchURL, v9, !v7->_appClipLaunchURL))
  {
    v12 = 0;
  }

  else
  {
    v12 = v7;
  }

  return v12;
}

- (void)_decorateDescription:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKSetupProductMethodAppClip;
  v4 = a3;
  [(PKSetupProductMethod *)&v5 _decorateDescription:v4];
  [v4 appendFormat:@"appClipLaunchURL: '%@'; ", self->_appClipLaunchURL];
}

- (PKSetupProductMethodAppClip)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKSetupProductMethodAppClip;
  v5 = [(PKSetupProductMethod *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appClipLaunchURL"];
    appClipLaunchURL = v5->_appClipLaunchURL;
    v5->_appClipLaunchURL = v6;
  }

  return v5;
}

- (void)encodeWithCode:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKSetupProductMethodAppClip;
  v4 = a3;
  [(PKSetupProductMethod *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_appClipLaunchURL forKey:{@"appClipLaunchURL", v5.receiver, v5.super_class}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(PKSetupProductMethodAppClip);
  [(PKSetupProductMethod *)self _copyInto:v5];
  v6 = [(NSURL *)self->_appClipLaunchURL copyWithZone:a3];
  appClipLaunchURL = v5->_appClipLaunchURL;
  v5->_appClipLaunchURL = v6;

  return v5;
}

@end