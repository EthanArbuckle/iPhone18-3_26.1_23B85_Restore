@interface IDSOffGridDeliveryHandlesDonationOptions
- (IDSOffGridDeliveryHandlesDonationOptions)init;
- (IDSOffGridDeliveryHandlesDonationOptions)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSOffGridDeliveryHandlesDonationOptions

- (IDSOffGridDeliveryHandlesDonationOptions)init
{
  v3.receiver = self;
  v3.super_class = IDSOffGridDeliveryHandlesDonationOptions;
  return [(IDSOffGridDeliveryHandlesDonationOptions *)&v3 init];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  priority = [(IDSOffGridDeliveryHandlesDonationOptions *)self priority];
  isInitialDonation = [(IDSOffGridDeliveryHandlesDonationOptions *)self isInitialDonation];
  v7 = @"NO";
  if (isInitialDonation)
  {
    v7 = @"YES";
  }

  return [v3 stringWithFormat:@"<%@: %p priority: %ld, isInitialDonation: %@>", v4, self, priority, v7];
}

- (IDSOffGridDeliveryHandlesDonationOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_alloc_init(IDSOffGridDeliveryHandlesDonationOptions);
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"priority"];
  -[IDSOffGridDeliveryHandlesDonationOptions setPriority:](v5, "setPriority:", [v6 intValue]);

  v7 = [coderCopy decodeBoolForKey:@"isInitialDonation"];
  [(IDSOffGridDeliveryHandlesDonationOptions *)v5 setIsInitialDonation:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  priority = self->_priority;
  coderCopy = coder;
  v6 = [v4 numberWithInteger:priority];
  [coderCopy encodeObject:v6 forKey:@"priority"];

  [coderCopy encodeBool:self->_isInitialDonation forKey:@"isInitialDonation"];
}

@end