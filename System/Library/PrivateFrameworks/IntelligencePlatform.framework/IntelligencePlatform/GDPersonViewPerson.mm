@interface GDPersonViewPerson
- (id)description;
@end

@implementation GDPersonViewPerson

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  entityIdentifier = [(GDPerson *)self entityIdentifier];
  nameComponents = [(GDPerson *)self nameComponents];
  v6 = nameComponents;
  if (nameComponents)
  {
    v7 = nameComponents;
  }

  else
  {
    v7 = &stru_1F20A2CD8;
  }

  dateOfBirth = [(GDPerson *)self dateOfBirth];
  v9 = dateOfBirth;
  if (dateOfBirth)
  {
    v10 = dateOfBirth;
  }

  else
  {
    v10 = &stru_1F20A2CD8;
  }

  names = [(GDPerson *)self names];
  v12 = [names componentsJoinedByString:@"|"];
  v13 = [v3 stringWithFormat:@"<GDPersonViewPerson %@, %@, dob:%@, ns:%@, f:%d, t:%td>", entityIdentifier, v7, v10, v12, -[GDPerson isFavorite](self, "isFavorite"), -[GDPerson type](self, "type")];

  return v13;
}

@end