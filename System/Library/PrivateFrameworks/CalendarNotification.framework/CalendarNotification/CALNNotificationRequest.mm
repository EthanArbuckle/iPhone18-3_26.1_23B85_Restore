@interface CALNNotificationRequest
+ (id)requestWithIdentifier:(id)identifier content:(id)content;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRequest:(id)request;
- (CALNNotificationRequest)initWithCoder:(id)coder;
- (id)_initWithIdentifier:(id)identifier content:(id)content;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CALNNotificationRequest

+ (id)requestWithIdentifier:(id)identifier content:(id)content
{
  contentCopy = content;
  identifierCopy = identifier;
  v7 = [[CALNNotificationRequest alloc] _initWithIdentifier:identifierCopy content:contentCopy];

  return v7;
}

- (id)_initWithIdentifier:(id)identifier content:(id)content
{
  identifierCopy = identifier;
  contentCopy = content;
  v14.receiver = self;
  v14.super_class = CALNNotificationRequest;
  v8 = [(CALNNotificationRequest *)&v14 init];
  if (v8)
  {
    v9 = [contentCopy copy];
    content = v8->_content;
    v8->_content = v9;

    v11 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v11;
  }

  return v8;
}

- (unint64_t)hash
{
  content = [(CALNNotificationRequest *)self content];
  v4 = [content hash];
  identifier = [(CALNNotificationRequest *)self identifier];
  v6 = [identifier hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CALNNotificationRequest *)self isEqualToRequest:equalCopy];

  return v5;
}

- (BOOL)isEqualToRequest:(id)request
{
  requestCopy = request;
  if (self == requestCopy)
  {
    v10 = 1;
  }

  else
  {
    identifier = [(CALNNotificationRequest *)self identifier];
    identifier2 = [(CALNNotificationRequest *)requestCopy identifier];
    v7 = CalEqualStrings();

    if (v7)
    {
      content = [(CALNNotificationRequest *)self content];
      content2 = [(CALNNotificationRequest *)requestCopy content];
      v10 = CalEqualObjects();
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  identifier = [(CALNNotificationRequest *)self identifier];
  content = [(CALNNotificationRequest *)self content];
  v7 = [v3 stringWithFormat:@"<%@: %p>(identifier = %@, content = %@)", v4, self, identifier, content];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  content = [(CALNNotificationRequest *)self content];
  [coderCopy encodeObject:content forKey:@"content"];

  identifier = [(CALNNotificationRequest *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];
}

- (CALNNotificationRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"content"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];

  v7 = [(CALNNotificationRequest *)self _initWithIdentifier:v6 content:v5];
  return v7;
}

@end