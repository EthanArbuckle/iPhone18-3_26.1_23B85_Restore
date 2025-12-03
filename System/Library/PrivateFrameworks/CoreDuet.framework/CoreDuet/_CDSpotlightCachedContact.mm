@interface _CDSpotlightCachedContact
- (_CDSpotlightCachedContact)initWithExpirationDate:(id)date contact:(id)contact;
@end

@implementation _CDSpotlightCachedContact

- (_CDSpotlightCachedContact)initWithExpirationDate:(id)date contact:(id)contact
{
  dateCopy = date;
  contactCopy = contact;
  v12.receiver = self;
  v12.super_class = _CDSpotlightCachedContact;
  v9 = [(_CDSpotlightCachedContact *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_expirationDate, date);
    objc_storeStrong(&v10->_contact, contact);
  }

  return v10;
}

@end