@interface PKApplicationMessageActionURL
+ (id)createWithSensitiveURL:(id)l;
+ (id)createWithURL:(id)l;
- (PKApplicationMessageActionURL)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKApplicationMessageActionURL

+ (id)createWithURL:(id)l
{
  if (!l)
  {
    return 0;
  }

  lCopy = l;
  v4 = [PKApplicationMessageAction _createForType:?];
  v5 = [lCopy copy];

  v6 = v4[2];
  v4[2] = v5;

  return v4;
}

+ (id)createWithSensitiveURL:(id)l
{
  if (!l)
  {
    return 0;
  }

  lCopy = l;
  v4 = [PKApplicationMessageAction _createForType:?];
  v5 = [lCopy copy];

  v6 = v4[2];
  v4[2] = v5;

  return v4;
}

- (PKApplicationMessageActionURL)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKApplicationMessageActionURL;
  v5 = [(PKApplicationMessageAction *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    url = v5->_url;
    v5->_url = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKApplicationMessageActionURL;
  coderCopy = coder;
  [(PKApplicationMessageAction *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_url forKey:{@"url", v5.receiver, v5.super_class}];
}

@end