@interface GDVisualIdentifierViewPerson
- (id)description;
- (id)shortArrayDescription:(id)description;
@end

@implementation GDVisualIdentifierViewPerson

- (id)description
{
  v28 = MEMORY[0x1E696AEC0];
  entityIdentifier = [(GDPerson *)self entityIdentifier];
  nameComponents = [(GDPerson *)self nameComponents];
  dateOfBirth = [(GDPerson *)self dateOfBirth];
  v34 = dateOfBirth;
  if (dateOfBirth)
  {
    v4 = dateOfBirth;
  }

  else
  {
    v4 = &stru_1F20A2CD8;
  }

  v24 = v4;
  nonGregorianDateOfBirth = [(GDPerson *)self nonGregorianDateOfBirth];
  v33 = nonGregorianDateOfBirth;
  if (nonGregorianDateOfBirth)
  {
    v6 = nonGregorianDateOfBirth;
  }

  else
  {
    v6 = &stru_1F20A2CD8;
  }

  v23 = v6;
  anniversary = [(GDPerson *)self anniversary];
  v32 = anniversary;
  if (anniversary)
  {
    v8 = anniversary;
  }

  else
  {
    v8 = &stru_1F20A2CD8;
  }

  v22 = v8;
  names = [(GDPerson *)self names];
  v36 = [(GDVisualIdentifierViewPerson *)self shortArrayDescription:names];
  relatedPeople = [(GDPerson *)self relatedPeople];
  v35 = [(GDVisualIdentifierViewPerson *)self shortArrayDescription:relatedPeople];
  locations = [(GDVisualIdentifierViewPerson *)self locations];
  v19 = [(GDVisualIdentifierViewPerson *)self shortArrayDescription:locations];
  phoneNumbers = [(GDPerson *)self phoneNumbers];
  v9 = [(GDVisualIdentifierViewPerson *)self shortArrayDescription:phoneNumbers];
  emails = [(GDPerson *)self emails];
  v10 = [(GDVisualIdentifierViewPerson *)self shortArrayDescription:emails];
  contactIdentifiers = [(GDPerson *)self contactIdentifiers];
  v11 = [(GDVisualIdentifierViewPerson *)self shortArrayDescription:contactIdentifiers];
  visualIdentifierObjects = [(GDPerson *)self visualIdentifierObjects];
  v13 = [(GDVisualIdentifierViewPerson *)self shortArrayDescription:visualIdentifierObjects];
  conversationIdentifiers = [(GDVisualIdentifierViewPerson *)self conversationIdentifiers];
  v15 = [(GDVisualIdentifierViewPerson *)self shortArrayDescription:conversationIdentifiers];
  bundleIdentifiers = [(GDVisualIdentifierViewPerson *)self bundleIdentifiers];
  v17 = [(GDVisualIdentifierViewPerson *)self shortArrayDescription:bundleIdentifiers];
  v29 = [v28 stringWithFormat:@"<GDVisualIdentifierViewPerson %@, %@, dob: %@ ngdob: %@ an: %@ names: %@ related: %@ loc: %@ phone: %@ email: %@ cnid: %@ vido: %@ cnvid: %@ bndl: %@>", entityIdentifier, nameComponents, v24, v23, v22, v36, v35, v19, v9, v10, v11, v13, v15, v17];

  return v29;
}

- (id)shortArrayDescription:(id)description
{
  descriptionCopy = description;
  if ([descriptionCopy count])
  {
    if ([descriptionCopy count] == 1)
    {
      firstObject = [descriptionCopy firstObject];
    }

    else
    {
      firstObject = descriptionCopy;
    }

    v5 = firstObject;
  }

  else
  {
    v5 = &stru_1F20A2CD8;
  }

  return v5;
}

@end