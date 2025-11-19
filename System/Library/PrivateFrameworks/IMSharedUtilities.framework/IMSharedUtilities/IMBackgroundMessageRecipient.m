@interface IMBackgroundMessageRecipient
- (BOOL)isEqual:(id)a3;
- (IMBackgroundMessageRecipient)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IMBackgroundMessageRecipient

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IMBackgroundMessageRecipient *)self phoneNumber];
  [v4 encodeObject:v5 forKey:@"kIMBackgroundMessageRecipientPhoneNumber"];

  v6 = [(IMBackgroundMessageRecipient *)self displayName];
  [v4 encodeObject:v6 forKey:@"kIMBackgroundMessageRecipientDisplayName"];
}

- (IMBackgroundMessageRecipient)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = IMBackgroundMessageRecipient;
  v5 = [(IMBackgroundMessageRecipient *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kIMBackgroundMessageRecipientPhoneNumber"];
    [(IMBackgroundMessageRecipient *)v5 setPhoneNumber:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kIMBackgroundMessageRecipientDisplayName"];
    [(IMBackgroundMessageRecipient *)v5 setDisplayName:v7];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(IMBackgroundMessageRecipient *)self phoneNumber];
  [v4 setPhoneNumber:v5];

  v6 = [(IMBackgroundMessageRecipient *)self displayName];
  [v4 setDisplayName:v6];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(IMBackgroundMessageRecipient *)self phoneNumber];
  v6 = [v4 phoneNumber];

  LOBYTE(v4) = [v5 isEqualToString:v6];
  return v4;
}

- (unint64_t)hash
{
  v2 = [(IMBackgroundMessageRecipient *)self phoneNumber];
  v3 = [v2 hash];

  return v3;
}

@end