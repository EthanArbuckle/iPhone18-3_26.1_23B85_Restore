@interface GDPersonNameComponents
- (GDPersonNameComponents)initWithNameComponentsBuilder:(id)a3;
- (id)description;
@end

@implementation GDPersonNameComponents

- (GDPersonNameComponents)initWithNameComponentsBuilder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = GDPersonNameComponents;
  v5 = [(GDPersonNameComponents *)&v25 init];
  if (v5)
  {
    v6 = [v4 prefixes];
    v7 = [v6 copy];
    prefixes = v5->_prefixes;
    v5->_prefixes = v7;

    v9 = [v4 givenNames];
    v10 = [v9 copy];
    givenNames = v5->_givenNames;
    v5->_givenNames = v10;

    v12 = [v4 middleNames];
    v13 = [v12 copy];
    middleNames = v5->_middleNames;
    v5->_middleNames = v13;

    v15 = [v4 familyNames];
    v16 = [v15 copy];
    familyNames = v5->_familyNames;
    v5->_familyNames = v16;

    v18 = [v4 suffixes];
    v19 = [v18 copy];
    suffixes = v5->_suffixes;
    v5->_suffixes = v19;

    v21 = [v4 nicknames];
    v22 = [v21 copy];
    nicknames = v5->_nicknames;
    v5->_nicknames = v22;
  }

  return v5;
}

- (id)description
{
  v21 = MEMORY[0x1E696AEC0];
  v3 = [(GDPersonNameComponents *)self prefixes];
  if (v3)
  {
    v20 = [(GDPersonNameComponents *)self prefixes];
    v25 = [v20 componentsJoinedByString:@"|"];
  }

  else
  {
    v25 = &stru_1F20A2CD8;
  }

  v4 = [(GDPersonNameComponents *)self givenNames];
  if (v4)
  {
    v19 = [(GDPersonNameComponents *)self givenNames];
    v24 = [v19 componentsJoinedByString:@"|"];
  }

  else
  {
    v24 = &stru_1F20A2CD8;
  }

  v5 = [(GDPersonNameComponents *)self middleNames];
  if (v5)
  {
    v18 = [(GDPersonNameComponents *)self middleNames];
    v23 = [v18 componentsJoinedByString:@"|"];
  }

  else
  {
    v23 = &stru_1F20A2CD8;
  }

  v6 = [(GDPersonNameComponents *)self familyNames];
  if (v6)
  {
    v17 = [(GDPersonNameComponents *)self familyNames];
    v7 = [v17 componentsJoinedByString:@"|"];
  }

  else
  {
    v7 = &stru_1F20A2CD8;
  }

  v8 = [(GDPersonNameComponents *)self suffixes];
  if (v8)
  {
    v16 = [(GDPersonNameComponents *)self suffixes];
    v9 = [v16 componentsJoinedByString:@"|"];
  }

  else
  {
    v9 = &stru_1F20A2CD8;
  }

  v10 = [(GDPersonNameComponents *)self nicknames];
  if (v10)
  {
    [(GDPersonNameComponents *)self nicknames];
    v11 = v4;
    v13 = v12 = v3;
    v14 = [v13 componentsJoinedByString:@"|"];
    v22 = [v21 stringWithFormat:@"<GDPersonNameComponents p:%@ g:%@ m:%@ f:%@ s:%@ n:%@>", v25, v24, v23, v7, v9, v14];

    v3 = v12;
    v4 = v11;
  }

  else
  {
    v22 = [v21 stringWithFormat:@"<GDPersonNameComponents p:%@ g:%@ m:%@ f:%@ s:%@ n:%@>", v25, v24, v23, v7, v9, &stru_1F20A2CD8];
  }

  if (v8)
  {
  }

  if (v6)
  {
  }

  if (v5)
  {
  }

  if (v4)
  {
  }

  if (v3)
  {
  }

  return v22;
}

@end