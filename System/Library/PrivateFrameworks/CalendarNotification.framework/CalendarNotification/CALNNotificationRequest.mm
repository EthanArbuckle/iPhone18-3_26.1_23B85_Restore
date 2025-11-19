@interface CALNNotificationRequest
+ (id)requestWithIdentifier:(id)a3 content:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRequest:(id)a3;
- (CALNNotificationRequest)initWithCoder:(id)a3;
- (id)_initWithIdentifier:(id)a3 content:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CALNNotificationRequest

+ (id)requestWithIdentifier:(id)a3 content:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[CALNNotificationRequest alloc] _initWithIdentifier:v6 content:v5];

  return v7;
}

- (id)_initWithIdentifier:(id)a3 content:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = CALNNotificationRequest;
  v8 = [(CALNNotificationRequest *)&v14 init];
  if (v8)
  {
    v9 = [v7 copy];
    content = v8->_content;
    v8->_content = v9;

    v11 = [v6 copy];
    identifier = v8->_identifier;
    v8->_identifier = v11;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(CALNNotificationRequest *)self content];
  v4 = [v3 hash];
  v5 = [(CALNNotificationRequest *)self identifier];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CALNNotificationRequest *)self isEqualToRequest:v4];

  return v5;
}

- (BOOL)isEqualToRequest:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    v5 = [(CALNNotificationRequest *)self identifier];
    v6 = [(CALNNotificationRequest *)v4 identifier];
    v7 = CalEqualStrings();

    if (v7)
    {
      v8 = [(CALNNotificationRequest *)self content];
      v9 = [(CALNNotificationRequest *)v4 content];
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
  v5 = [(CALNNotificationRequest *)self identifier];
  v6 = [(CALNNotificationRequest *)self content];
  v7 = [v3 stringWithFormat:@"<%@: %p>(identifier = %@, content = %@)", v4, self, v5, v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CALNNotificationRequest *)self content];
  [v4 encodeObject:v5 forKey:@"content"];

  v6 = [(CALNNotificationRequest *)self identifier];
  [v4 encodeObject:v6 forKey:@"identifier"];
}

- (CALNNotificationRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"content"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];

  v7 = [(CALNNotificationRequest *)self _initWithIdentifier:v6 content:v5];
  return v7;
}

@end