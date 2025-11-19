@interface CPSLearnMoreRequest
- (CPSLearnMoreRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPSLearnMoreRequest

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CPSLearnMoreRequest;
  v4 = a3;
  [(CPSAuthenticationRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_URL forKey:{@"URL", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_image forKey:@"image"];
  [v4 encodeObject:self->_titleText forKey:@"titleText"];
  [v4 encodeObject:self->_subtitleText forKey:@"subtitleText"];
}

- (CPSLearnMoreRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CPSLearnMoreRequest;
  v5 = [(CPSAuthenticationRequest *)&v19 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"URL"];
    URL = v5->_URL;
    v5->_URL = v7;

    getUIImageClass();
    v9 = objc_opt_self();
    v10 = [v4 decodeObjectOfClass:v9 forKey:@"image"];
    image = v5->_image;
    v5->_image = v10;

    v12 = objc_opt_self();
    v13 = [v4 decodeObjectOfClass:v12 forKey:@"titleText"];
    titleText = v5->_titleText;
    v5->_titleText = v13;

    v15 = objc_opt_self();
    v16 = [v4 decodeObjectOfClass:v15 forKey:@"subtitleText"];
    subtitleText = v5->_subtitleText;
    v5->_subtitleText = v16;
  }

  return v5;
}

@end