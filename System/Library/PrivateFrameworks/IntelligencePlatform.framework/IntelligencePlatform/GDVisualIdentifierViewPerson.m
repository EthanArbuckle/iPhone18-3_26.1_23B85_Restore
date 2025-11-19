@interface GDVisualIdentifierViewPerson
- (id)description;
- (id)shortArrayDescription:(id)a3;
@end

@implementation GDVisualIdentifierViewPerson

- (id)description
{
  v28 = MEMORY[0x1E696AEC0];
  v26 = [(GDPerson *)self entityIdentifier];
  v37 = [(GDPerson *)self nameComponents];
  v3 = [(GDPerson *)self dateOfBirth];
  v34 = v3;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &stru_1F20A2CD8;
  }

  v24 = v4;
  v5 = [(GDPerson *)self nonGregorianDateOfBirth];
  v33 = v5;
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &stru_1F20A2CD8;
  }

  v23 = v6;
  v7 = [(GDPerson *)self anniversary];
  v32 = v7;
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &stru_1F20A2CD8;
  }

  v22 = v8;
  v31 = [(GDPerson *)self names];
  v36 = [(GDVisualIdentifierViewPerson *)self shortArrayDescription:v31];
  v30 = [(GDPerson *)self relatedPeople];
  v35 = [(GDVisualIdentifierViewPerson *)self shortArrayDescription:v30];
  v27 = [(GDVisualIdentifierViewPerson *)self locations];
  v19 = [(GDVisualIdentifierViewPerson *)self shortArrayDescription:v27];
  v25 = [(GDPerson *)self phoneNumbers];
  v9 = [(GDVisualIdentifierViewPerson *)self shortArrayDescription:v25];
  v21 = [(GDPerson *)self emails];
  v10 = [(GDVisualIdentifierViewPerson *)self shortArrayDescription:v21];
  v20 = [(GDPerson *)self contactIdentifiers];
  v11 = [(GDVisualIdentifierViewPerson *)self shortArrayDescription:v20];
  v12 = [(GDPerson *)self visualIdentifierObjects];
  v13 = [(GDVisualIdentifierViewPerson *)self shortArrayDescription:v12];
  v14 = [(GDVisualIdentifierViewPerson *)self conversationIdentifiers];
  v15 = [(GDVisualIdentifierViewPerson *)self shortArrayDescription:v14];
  v16 = [(GDVisualIdentifierViewPerson *)self bundleIdentifiers];
  v17 = [(GDVisualIdentifierViewPerson *)self shortArrayDescription:v16];
  v29 = [v28 stringWithFormat:@"<GDVisualIdentifierViewPerson %@, %@, dob: %@ ngdob: %@ an: %@ names: %@ related: %@ loc: %@ phone: %@ email: %@ cnid: %@ vido: %@ cnvid: %@ bndl: %@>", v26, v37, v24, v23, v22, v36, v35, v19, v9, v10, v11, v13, v15, v17];

  return v29;
}

- (id)shortArrayDescription:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    if ([v3 count] == 1)
    {
      v4 = [v3 firstObject];
    }

    else
    {
      v4 = v3;
    }

    v5 = v4;
  }

  else
  {
    v5 = &stru_1F20A2CD8;
  }

  return v5;
}

@end