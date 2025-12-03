@interface IMMergedDomainIdentifiers
- (BOOL)isEmpty;
- (IMMergedDomainIdentifiers)init;
- (IMMergedDomainIdentifiers)initWithDomainIdentifiers:(id)identifiers chatGUID:(id)d;
- (IMMergedDomainIdentifiers)initWithMergedDomainIdentifiers:(id)identifiers;
- (IMMergedDomainIdentifiers)mergedDomainIdentifiersWithLatestChatGUID:(id)d;
- (NSArray)allChatGUIDs;
- (NSArray)allIdentifiers;
- (NSString)description;
- (id)allDomainsForChatGUID:(id)d;
- (id)dictionaryRepresentation;
- (id)domainIdentifiersForChatGUID:(id)d;
- (id)identifiersForChatGUID:(id)d domain:(id)domain;
- (void)setDomainIdentifiers:(id)identifiers forChatGUID:(id)d;
@end

@implementation IMMergedDomainIdentifiers

- (IMMergedDomainIdentifiers)initWithMergedDomainIdentifiers:(id)identifiers
{
  sub_1A83EA2FC(&qword_1EB2E88E8, &qword_1A8509AD8);
  v4 = sub_1A84E5D3C();
  v5 = OBJC_IVAR___IMMergedDomainIdentifiers_mergedDomainIdentifiers;
  *(&self->super.isa + v5) = sub_1A83EC7A4(MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  *(&self->super.isa + v5) = v4;

  v7.receiver = self;
  v7.super_class = IMMergedDomainIdentifiers;
  return [(IMMergedDomainIdentifiers *)&v7 init];
}

- (IMMergedDomainIdentifiers)initWithDomainIdentifiers:(id)identifiers chatGUID:(id)d
{
  identifiersCopy = identifiers;
  if (identifiers)
  {
    sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
    identifiersCopy = sub_1A84E5D3C();
  }

  if (d)
  {
    v6 = sub_1A84E5DBC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return sub_1A84D6C74(identifiersCopy, v6, v8);
}

- (void)setDomainIdentifiers:(id)identifiers forChatGUID:(id)d
{
  if (identifiers)
  {
    sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
    v6 = sub_1A84E5D3C();
    if (d)
    {
      v7 = sub_1A84E5DBC();
      if (v6)
      {
        if (v8)
        {
          v9 = v7;
          v10 = OBJC_IVAR___IMMergedDomainIdentifiers_mergedDomainIdentifiers;
          v11 = v8;
          swift_beginAccess();
          selfCopy = self;
          v13 = *(&self->super.isa + v10);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v15 = *(&self->super.isa + v10);
          *(&self->super.isa + v10) = 0x8000000000000000;
          sub_1A848E25C(v6, v9, v11, isUniquelyReferenced_nonNull_native);

          *(&self->super.isa + v10) = v15;
          swift_endAccess();

          return;
        }
      }
    }
  }

  else if (d)
  {
    sub_1A84E5DBC();
  }
}

- (id)domainIdentifiersForChatGUID:(id)d
{
  if (d)
  {
    v4 = sub_1A84E5DBC();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  v8 = sub_1A84D6F54(v4, v6);

  if (v8)
  {
    sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
    v9 = sub_1A84E5D2C();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)identifiersForChatGUID:(id)d domain:(id)domain
{
  domainCopy = domain;
  if (d)
  {
    v6 = sub_1A84E5DBC();
    v8 = v7;
    if (domainCopy)
    {
LABEL_3:
      v9 = sub_1A84E5DBC();
      domainCopy = v10;
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
    if (domain)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  selfCopy = self;
  v12 = sub_1A84D70BC(v6, v8, v9, domainCopy);

  if (v12)
  {
    v13 = sub_1A84E5FEC();
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)allDomainsForChatGUID:(id)d
{
  if (d)
  {
    sub_1A84E5DBC();
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  v7 = sub_1A84D7290(selfCopy, v5);

  if (v7)
  {
    v8 = sub_1A84E5FEC();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSArray)allChatGUIDs
{
  v3 = OBJC_IVAR___IMMergedDomainIdentifiers_mergedDomainIdentifiers;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);

  sub_1A84D6B24(v5);
  v6 = sub_1A84E5FEC();

  return v6;
}

- (BOOL)isEmpty
{
  v3 = OBJC_IVAR___IMMergedDomainIdentifiers_mergedDomainIdentifiers;
  swift_beginAccess();
  return (*(&self->super.isa + v3))[2] == 0;
}

- (NSString)description
{
  v3 = OBJC_IVAR___IMMergedDomainIdentifiers_mergedDomainIdentifiers;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  selfCopy = self;

  sub_1A83EA2FC(&qword_1EB2E88E8, &qword_1A8509AD8);
  sub_1A84E5D4C();

  v6 = sub_1A84E5D8C();

  return v6;
}

- (IMMergedDomainIdentifiers)mergedDomainIdentifiersWithLatestChatGUID:(id)d
{
  if (d)
  {
    v4 = sub_1A84E5DBC();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_1A84D7710(v4, v6);

  sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
  v8 = sub_1A84E5D2C();

  return v8;
}

- (id)dictionaryRepresentation
{
  v3 = OBJC_IVAR___IMMergedDomainIdentifiers_mergedDomainIdentifiers;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  selfCopy = self;

  sub_1A84A5B50(v6);

  v7 = sub_1A84E5D2C();

  return v7;
}

- (NSArray)allIdentifiers
{
  selfCopy = self;
  sub_1A84D7F98();

  v3 = sub_1A84E5FEC();

  return v3;
}

- (IMMergedDomainIdentifiers)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end