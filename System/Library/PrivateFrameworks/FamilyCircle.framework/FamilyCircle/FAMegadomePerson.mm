@interface FAMegadomePerson
- (FAMegadomePerson)initWithEmails:(id)emails phoneNumbers:(id)numbers names:(id)names contactIdentifiers:(id)identifiers;
- (FAMegadomePerson)initWithVisualIdentifierViewPerson:(id)person;
@end

@implementation FAMegadomePerson

- (FAMegadomePerson)initWithVisualIdentifierViewPerson:(id)person
{
  personCopy = person;
  emails = [personCopy emails];
  phoneNumbers = [personCopy phoneNumbers];
  names = [personCopy names];
  contactIdentifiers = [personCopy contactIdentifiers];

  v9 = [(FAMegadomePerson *)self initWithEmails:emails phoneNumbers:phoneNumbers names:names contactIdentifiers:contactIdentifiers];
  return v9;
}

- (FAMegadomePerson)initWithEmails:(id)emails phoneNumbers:(id)numbers names:(id)names contactIdentifiers:(id)identifiers
{
  emailsCopy = emails;
  numbersCopy = numbers;
  namesCopy = names;
  identifiersCopy = identifiers;
  v18.receiver = self;
  v18.super_class = FAMegadomePerson;
  v15 = [(FAMegadomePerson *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_emails, emails);
    objc_storeStrong(&v16->_phoneNumbers, numbers);
    objc_storeStrong(&v16->_names, names);
    objc_storeStrong(&v16->_contactIdentifiers, identifiers);
  }

  return v16;
}

@end