@interface GDPersonNameComponents
- (GDPersonNameComponents)initWithNameComponentsBuilder:(id)builder;
- (id)description;
@end

@implementation GDPersonNameComponents

- (GDPersonNameComponents)initWithNameComponentsBuilder:(id)builder
{
  builderCopy = builder;
  v25.receiver = self;
  v25.super_class = GDPersonNameComponents;
  v5 = [(GDPersonNameComponents *)&v25 init];
  if (v5)
  {
    prefixes = [builderCopy prefixes];
    v7 = [prefixes copy];
    prefixes = v5->_prefixes;
    v5->_prefixes = v7;

    givenNames = [builderCopy givenNames];
    v10 = [givenNames copy];
    givenNames = v5->_givenNames;
    v5->_givenNames = v10;

    middleNames = [builderCopy middleNames];
    v13 = [middleNames copy];
    middleNames = v5->_middleNames;
    v5->_middleNames = v13;

    familyNames = [builderCopy familyNames];
    v16 = [familyNames copy];
    familyNames = v5->_familyNames;
    v5->_familyNames = v16;

    suffixes = [builderCopy suffixes];
    v19 = [suffixes copy];
    suffixes = v5->_suffixes;
    v5->_suffixes = v19;

    nicknames = [builderCopy nicknames];
    v22 = [nicknames copy];
    nicknames = v5->_nicknames;
    v5->_nicknames = v22;
  }

  return v5;
}

- (id)description
{
  v21 = MEMORY[0x1E696AEC0];
  prefixes = [(GDPersonNameComponents *)self prefixes];
  if (prefixes)
  {
    prefixes2 = [(GDPersonNameComponents *)self prefixes];
    v25 = [prefixes2 componentsJoinedByString:@"|"];
  }

  else
  {
    v25 = &stru_1F20A2CD8;
  }

  givenNames = [(GDPersonNameComponents *)self givenNames];
  if (givenNames)
  {
    givenNames2 = [(GDPersonNameComponents *)self givenNames];
    v24 = [givenNames2 componentsJoinedByString:@"|"];
  }

  else
  {
    v24 = &stru_1F20A2CD8;
  }

  middleNames = [(GDPersonNameComponents *)self middleNames];
  if (middleNames)
  {
    middleNames2 = [(GDPersonNameComponents *)self middleNames];
    v23 = [middleNames2 componentsJoinedByString:@"|"];
  }

  else
  {
    v23 = &stru_1F20A2CD8;
  }

  familyNames = [(GDPersonNameComponents *)self familyNames];
  if (familyNames)
  {
    familyNames2 = [(GDPersonNameComponents *)self familyNames];
    v7 = [familyNames2 componentsJoinedByString:@"|"];
  }

  else
  {
    v7 = &stru_1F20A2CD8;
  }

  suffixes = [(GDPersonNameComponents *)self suffixes];
  if (suffixes)
  {
    suffixes2 = [(GDPersonNameComponents *)self suffixes];
    v9 = [suffixes2 componentsJoinedByString:@"|"];
  }

  else
  {
    v9 = &stru_1F20A2CD8;
  }

  nicknames = [(GDPersonNameComponents *)self nicknames];
  if (nicknames)
  {
    [(GDPersonNameComponents *)self nicknames];
    v11 = givenNames;
    v13 = v12 = prefixes;
    v14 = [v13 componentsJoinedByString:@"|"];
    v22 = [v21 stringWithFormat:@"<GDPersonNameComponents p:%@ g:%@ m:%@ f:%@ s:%@ n:%@>", v25, v24, v23, v7, v9, v14];

    prefixes = v12;
    givenNames = v11;
  }

  else
  {
    v22 = [v21 stringWithFormat:@"<GDPersonNameComponents p:%@ g:%@ m:%@ f:%@ s:%@ n:%@>", v25, v24, v23, v7, v9, &stru_1F20A2CD8];
  }

  if (suffixes)
  {
  }

  if (familyNames)
  {
  }

  if (middleNames)
  {
  }

  if (givenNames)
  {
  }

  if (prefixes)
  {
  }

  return v22;
}

@end