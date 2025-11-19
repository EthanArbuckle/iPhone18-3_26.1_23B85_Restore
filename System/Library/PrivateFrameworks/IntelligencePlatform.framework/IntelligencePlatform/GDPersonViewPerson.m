@interface GDPersonViewPerson
- (id)description;
@end

@implementation GDPersonViewPerson

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(GDPerson *)self entityIdentifier];
  v5 = [(GDPerson *)self nameComponents];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_1F20A2CD8;
  }

  v8 = [(GDPerson *)self dateOfBirth];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_1F20A2CD8;
  }

  v11 = [(GDPerson *)self names];
  v12 = [v11 componentsJoinedByString:@"|"];
  v13 = [v3 stringWithFormat:@"<GDPersonViewPerson %@, %@, dob:%@, ns:%@, f:%d, t:%td>", v4, v7, v10, v12, -[GDPerson isFavorite](self, "isFavorite"), -[GDPerson type](self, "type")];

  return v13;
}

@end