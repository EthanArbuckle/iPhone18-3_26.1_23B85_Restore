@interface MobileCalUserAddress
+ (id)userAddress:(id)a3 forAccount:(id)a4;
+ (id)userAddressFromDictionaryRepresentation:(id)a3 forAccount:(id)a4;
- (MobileCalDAVAccount)account;
- (MobileCalUserAddress)initWithAddress:(id)a3 account:(id)a4;
- (id)dictionaryRepresentation;
@end

@implementation MobileCalUserAddress

- (MobileCalUserAddress)initWithAddress:(id)a3 account:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MobileCalUserAddress;
  v8 = [(MobileCalUserAddress *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MobileCalUserAddress *)v8 setAccount:v7];
    [(MobileCalUserAddress *)v9 setAddress:v6];
  }

  return v9;
}

+ (id)userAddress:(id)a3 forAccount:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[MobileCalUserAddress alloc] initWithAddress:v6 account:v5];

  return v7;
}

- (id)dictionaryRepresentation
{
  v3 = objc_opt_new();
  v4 = [(MobileCalUserAddress *)self address];
  v5 = [v4 absoluteString];
  [v3 setValue:v5 forKey:@"MobileCalUserAddressAddressURL"];

  return v3;
}

+ (id)userAddressFromDictionaryRepresentation:(id)a3 forAccount:(id)a4
{
  v5 = a4;
  if (a3)
  {
    v6 = [a3 objectForKeyedSubscript:@"MobileCalUserAddressAddressURL"];
    if (v6)
    {
      v7 = [MEMORY[0x277CBEBC0] URLWithString:v6];
      v8 = [MobileCalUserAddress userAddress:v7 forAccount:v5];
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