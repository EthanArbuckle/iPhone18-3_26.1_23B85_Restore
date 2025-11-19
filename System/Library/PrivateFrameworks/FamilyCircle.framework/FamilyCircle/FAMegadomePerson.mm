@interface FAMegadomePerson
- (FAMegadomePerson)initWithEmails:(id)a3 phoneNumbers:(id)a4 names:(id)a5 contactIdentifiers:(id)a6;
- (FAMegadomePerson)initWithVisualIdentifierViewPerson:(id)a3;
@end

@implementation FAMegadomePerson

- (FAMegadomePerson)initWithVisualIdentifierViewPerson:(id)a3
{
  v4 = a3;
  v5 = [v4 emails];
  v6 = [v4 phoneNumbers];
  v7 = [v4 names];
  v8 = [v4 contactIdentifiers];

  v9 = [(FAMegadomePerson *)self initWithEmails:v5 phoneNumbers:v6 names:v7 contactIdentifiers:v8];
  return v9;
}

- (FAMegadomePerson)initWithEmails:(id)a3 phoneNumbers:(id)a4 names:(id)a5 contactIdentifiers:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = FAMegadomePerson;
  v15 = [(FAMegadomePerson *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_emails, a3);
    objc_storeStrong(&v16->_phoneNumbers, a4);
    objc_storeStrong(&v16->_names, a5);
    objc_storeStrong(&v16->_contactIdentifiers, a6);
  }

  return v16;
}

@end