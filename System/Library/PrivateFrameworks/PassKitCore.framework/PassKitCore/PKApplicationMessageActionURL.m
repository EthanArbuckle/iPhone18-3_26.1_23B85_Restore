@interface PKApplicationMessageActionURL
+ (id)createWithSensitiveURL:(id)a3;
+ (id)createWithURL:(id)a3;
- (PKApplicationMessageActionURL)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKApplicationMessageActionURL

+ (id)createWithURL:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  v4 = [PKApplicationMessageAction _createForType:?];
  v5 = [v3 copy];

  v6 = v4[2];
  v4[2] = v5;

  return v4;
}

+ (id)createWithSensitiveURL:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  v4 = [PKApplicationMessageAction _createForType:?];
  v5 = [v3 copy];

  v6 = v4[2];
  v4[2] = v5;

  return v4;
}

- (PKApplicationMessageActionURL)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKApplicationMessageActionURL;
  v5 = [(PKApplicationMessageAction *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    url = v5->_url;
    v5->_url = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKApplicationMessageActionURL;
  v4 = a3;
  [(PKApplicationMessageAction *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_url forKey:{@"url", v5.receiver, v5.super_class}];
}

@end