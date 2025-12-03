@interface CPSLearnMoreRequest
- (CPSLearnMoreRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPSLearnMoreRequest

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CPSLearnMoreRequest;
  coderCopy = coder;
  [(CPSAuthenticationRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_URL forKey:{@"URL", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_image forKey:@"image"];
  [coderCopy encodeObject:self->_titleText forKey:@"titleText"];
  [coderCopy encodeObject:self->_subtitleText forKey:@"subtitleText"];
}

- (CPSLearnMoreRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = CPSLearnMoreRequest;
  v5 = [(CPSAuthenticationRequest *)&v19 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"URL"];
    URL = v5->_URL;
    v5->_URL = v7;

    getUIImageClass();
    v9 = objc_opt_self();
    v10 = [coderCopy decodeObjectOfClass:v9 forKey:@"image"];
    image = v5->_image;
    v5->_image = v10;

    v12 = objc_opt_self();
    v13 = [coderCopy decodeObjectOfClass:v12 forKey:@"titleText"];
    titleText = v5->_titleText;
    v5->_titleText = v13;

    v15 = objc_opt_self();
    v16 = [coderCopy decodeObjectOfClass:v15 forKey:@"subtitleText"];
    subtitleText = v5->_subtitleText;
    v5->_subtitleText = v16;
  }

  return v5;
}

@end