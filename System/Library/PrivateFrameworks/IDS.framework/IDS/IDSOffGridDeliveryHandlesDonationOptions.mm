@interface IDSOffGridDeliveryHandlesDonationOptions
- (IDSOffGridDeliveryHandlesDonationOptions)init;
- (IDSOffGridDeliveryHandlesDonationOptions)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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
  v5 = [(IDSOffGridDeliveryHandlesDonationOptions *)self priority];
  v6 = [(IDSOffGridDeliveryHandlesDonationOptions *)self isInitialDonation];
  v7 = @"NO";
  if (v6)
  {
    v7 = @"YES";
  }

  return [v3 stringWithFormat:@"<%@: %p priority: %ld, isInitialDonation: %@>", v4, self, v5, v7];
}

- (IDSOffGridDeliveryHandlesDonationOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(IDSOffGridDeliveryHandlesDonationOptions);
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"priority"];
  -[IDSOffGridDeliveryHandlesDonationOptions setPriority:](v5, "setPriority:", [v6 intValue]);

  v7 = [v4 decodeBoolForKey:@"isInitialDonation"];
  [(IDSOffGridDeliveryHandlesDonationOptions *)v5 setIsInitialDonation:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  priority = self->_priority;
  v7 = a3;
  v6 = [v4 numberWithInteger:priority];
  [v7 encodeObject:v6 forKey:@"priority"];

  [v7 encodeBool:self->_isInitialDonation forKey:@"isInitialDonation"];
}

@end