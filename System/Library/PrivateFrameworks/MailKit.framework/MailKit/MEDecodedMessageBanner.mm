@interface MEDecodedMessageBanner
- (BOOL)isEqual:(id)equal;
- (MEDecodedMessageBanner)initWithCoder:(id)coder;
- (MEDecodedMessageBanner)initWithTitle:(NSString *)title primaryActionTitle:(NSString *)primaryActionTitle dismissable:(BOOL)dismissable;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (MEDecodedMessageBanner)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_title"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_primaryActionTitle"];
  v7 = -[MEDecodedMessageBanner initWithTitle:primaryActionTitle:dismissable:](self, "initWithTitle:primaryActionTitle:dismissable:", v5, v6, [coderCopy decodeBoolForKey:@"EFPropertyKey_dismissable"]);

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  title = [(MEDecodedMessageBanner *)self title];
  [coderCopy encodeObject:title forKey:@"EFPropertyKey_title"];

  primaryActionTitle = [(MEDecodedMessageBanner *)self primaryActionTitle];
  [coderCopy encodeObject:primaryActionTitle forKey:@"EFPropertyKey_primaryActionTitle"];

  [coderCopy encodeBool:-[MEDecodedMessageBanner isDismissable](self forKey:{"isDismissable"), @"EFPropertyKey_dismissable"}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if ([v5 isEqual:objc_opt_class()])
  {
    v6 = equalCopy;
    title = [(MEDecodedMessageBanner *)self title];
    title2 = [v6 title];
    if ([title isEqual:title2])
    {
      primaryActionTitle = [(MEDecodedMessageBanner *)self primaryActionTitle];
      primaryActionTitle2 = [v6 primaryActionTitle];
      v11 = [primaryActionTitle isEqual:primaryActionTitle2];
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
  title = [(MEDecodedMessageBanner *)self title];
  v4 = [title hash];

  return 33 * v4 + [(MEDecodedMessageBanner *)self isDismissable]+ 5859909;
}

@end