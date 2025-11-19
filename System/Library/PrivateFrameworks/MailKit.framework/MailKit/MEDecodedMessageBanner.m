@interface MEDecodedMessageBanner
- (BOOL)isEqual:(id)a3;
- (MEDecodedMessageBanner)initWithCoder:(id)a3;
- (MEDecodedMessageBanner)initWithTitle:(NSString *)title primaryActionTitle:(NSString *)primaryActionTitle dismissable:(BOOL)dismissable;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MEDecodedMessageBanner

- (MEDecodedMessageBanner)initWithTitle:(NSString *)title primaryActionTitle:(NSString *)primaryActionTitle dismissable:(BOOL)dismissable
{
  v9 = title;
  v10 = primaryActionTitle;
  v14.receiver = self;
  v14.super_class = MEDecodedMessageBanner;
  v11 = [(MEDecodedMessageBanner *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_title, title);
    objc_storeStrong(&v12->_primaryActionTitle, primaryActionTitle);
    v12->_dismissable = dismissable;
  }

  return v12;
}

- (MEDecodedMessageBanner)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_title"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_primaryActionTitle"];
  v7 = -[MEDecodedMessageBanner initWithTitle:primaryActionTitle:dismissable:](self, "initWithTitle:primaryActionTitle:dismissable:", v5, v6, [v4 decodeBoolForKey:@"EFPropertyKey_dismissable"]);

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(MEDecodedMessageBanner *)self title];
  [v6 encodeObject:v4 forKey:@"EFPropertyKey_title"];

  v5 = [(MEDecodedMessageBanner *)self primaryActionTitle];
  [v6 encodeObject:v5 forKey:@"EFPropertyKey_primaryActionTitle"];

  [v6 encodeBool:-[MEDecodedMessageBanner isDismissable](self forKey:{"isDismissable"), @"EFPropertyKey_dismissable"}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if ([v5 isEqual:objc_opt_class()])
  {
    v6 = v4;
    v7 = [(MEDecodedMessageBanner *)self title];
    v8 = [v6 title];
    if ([v7 isEqual:v8])
    {
      v9 = [(MEDecodedMessageBanner *)self primaryActionTitle];
      v10 = [v6 primaryActionTitle];
      v11 = [v9 isEqual:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(MEDecodedMessageBanner *)self title];
  v4 = [v3 hash];

  return 33 * v4 + [(MEDecodedMessageBanner *)self isDismissable]+ 5859909;
}

@end