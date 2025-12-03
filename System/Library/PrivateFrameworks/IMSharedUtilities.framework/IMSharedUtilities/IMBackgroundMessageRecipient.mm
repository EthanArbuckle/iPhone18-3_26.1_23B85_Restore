@interface IMBackgroundMessageRecipient
- (BOOL)isEqual:(id)equal;
- (IMBackgroundMessageRecipient)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IMBackgroundMessageRecipient

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  phoneNumber = [(IMBackgroundMessageRecipient *)self phoneNumber];
  [coderCopy encodeObject:phoneNumber forKey:@"kIMBackgroundMessageRecipientPhoneNumber"];

  displayName = [(IMBackgroundMessageRecipient *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"kIMBackgroundMessageRecipientDisplayName"];
}

- (IMBackgroundMessageRecipient)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = IMBackgroundMessageRecipient;
  v5 = [(IMBackgroundMessageRecipient *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kIMBackgroundMessageRecipientPhoneNumber"];
    [(IMBackgroundMessageRecipient *)v5 setPhoneNumber:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kIMBackgroundMessageRecipientDisplayName"];
    [(IMBackgroundMessageRecipient *)v5 setDisplayName:v7];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  phoneNumber = [(IMBackgroundMessageRecipient *)self phoneNumber];
  [v4 setPhoneNumber:phoneNumber];

  displayName = [(IMBackgroundMessageRecipient *)self displayName];
  [v4 setDisplayName:displayName];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  phoneNumber = [(IMBackgroundMessageRecipient *)self phoneNumber];
  phoneNumber2 = [equalCopy phoneNumber];

  LOBYTE(equalCopy) = [phoneNumber isEqualToString:phoneNumber2];
  return equalCopy;
}

- (unint64_t)hash
{
  phoneNumber = [(IMBackgroundMessageRecipient *)self phoneNumber];
  v3 = [phoneNumber hash];

  return v3;
}

@end