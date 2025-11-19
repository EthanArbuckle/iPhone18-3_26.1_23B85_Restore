@interface DMCManagedBookPayload
- (DMCManagedBookPayload)initWithBook:(id)a3;
- (id)title;
@end

@implementation DMCManagedBookPayload

- (DMCManagedBookPayload)initWithBook:(id)a3
{
  v5 = a3;
  v6 = [(DMCManagedBookPayload *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_book, a3);
  }

  return v7;
}

- (id)title
{
  v2 = [(DMCManagedBookPayload *)self book];
  v3 = [v2 friendlyName];

  return v3;
}

@end