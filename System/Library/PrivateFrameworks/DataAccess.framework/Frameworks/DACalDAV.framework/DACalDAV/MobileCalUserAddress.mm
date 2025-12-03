@interface MobileCalUserAddress
+ (id)userAddress:(id)address forAccount:(id)account;
+ (id)userAddressFromDictionaryRepresentation:(id)representation forAccount:(id)account;
- (MobileCalDAVAccount)account;
- (MobileCalUserAddress)initWithAddress:(id)address account:(id)account;
- (id)dictionaryRepresentation;
@end

@implementation MobileCalUserAddress

- (MobileCalUserAddress)initWithAddress:(id)address account:(id)account
{
  addressCopy = address;
  accountCopy = account;
  v11.receiver = self;
  v11.super_class = MobileCalUserAddress;
  v8 = [(MobileCalUserAddress *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MobileCalUserAddress *)v8 setAccount:accountCopy];
    [(MobileCalUserAddress *)v9 setAddress:addressCopy];
  }

  return v9;
}

+ (id)userAddress:(id)address forAccount:(id)account
{
  accountCopy = account;
  addressCopy = address;
  v7 = [[MobileCalUserAddress alloc] initWithAddress:addressCopy account:accountCopy];

  return v7;
}

- (id)dictionaryRepresentation
{
  v3 = objc_opt_new();
  address = [(MobileCalUserAddress *)self address];
  absoluteString = [address absoluteString];
  [v3 setValue:absoluteString forKey:@"MobileCalUserAddressAddressURL"];

  return v3;
}

+ (id)userAddressFromDictionaryRepresentation:(id)representation forAccount:(id)account
{
  accountCopy = account;
  if (representation)
  {
    v6 = [representation objectForKeyedSubscript:@"MobileCalUserAddressAddressURL"];
    if (v6)
    {
      v7 = [MEMORY[0x277CBEBC0] URLWithString:v6];
      v8 = [MobileCalUserAddress userAddress:v7 forAccount:accountCopy];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (MobileCalDAVAccount)account
{
  WeakRetained = objc_loadWeakRetained(&self->_account);

  return WeakRetained;
}

@end