@interface DNDContact(Sanitization)
- (BOOL)needsSanitization;
@end

@implementation DNDContact(Sanitization)

- (BOOL)needsSanitization
{
  contactIdentifier = [self contactIdentifier];
  if (contactIdentifier)
  {
    phoneNumbers = [self phoneNumbers];
    if ([phoneNumbers count])
    {
      emailAddresses = [self emailAddresses];
      v5 = [emailAddresses count] == 0;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end