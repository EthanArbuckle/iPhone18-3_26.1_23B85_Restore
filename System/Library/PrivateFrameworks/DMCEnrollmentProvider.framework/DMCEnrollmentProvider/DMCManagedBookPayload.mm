@interface DMCManagedBookPayload
- (DMCManagedBookPayload)initWithBook:(id)book;
- (id)title;
@end

@implementation DMCManagedBookPayload

- (DMCManagedBookPayload)initWithBook:(id)book
{
  bookCopy = book;
  v6 = [(DMCManagedBookPayload *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_book, book);
  }

  return v7;
}

- (id)title
{
  book = [(DMCManagedBookPayload *)self book];
  friendlyName = [book friendlyName];

  return friendlyName;
}

@end