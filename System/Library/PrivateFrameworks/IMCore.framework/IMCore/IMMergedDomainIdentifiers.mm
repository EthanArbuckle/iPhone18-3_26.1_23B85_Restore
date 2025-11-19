@interface IMMergedDomainIdentifiers
- (BOOL)isEmpty;
- (IMMergedDomainIdentifiers)init;
- (IMMergedDomainIdentifiers)initWithDomainIdentifiers:(id)a3 chatGUID:(id)a4;
- (IMMergedDomainIdentifiers)initWithMergedDomainIdentifiers:(id)a3;
- (IMMergedDomainIdentifiers)mergedDomainIdentifiersWithLatestChatGUID:(id)a3;
- (NSArray)allChatGUIDs;
- (NSArray)allIdentifiers;
- (NSString)description;
- (id)allDomainsForChatGUID:(id)a3;
- (id)dictionaryRepresentation;
- (id)domainIdentifiersForChatGUID:(id)a3;
- (id)identifiersForChatGUID:(id)a3 domain:(id)a4;
- (void)setDomainIdentifiers:(id)a3 forChatGUID:(id)a4;
@end

@implementation IMMergedDomainIdentifiers

- (IMMergedDomainIdentifiers)initWithMergedDomainIdentifiers:(id)a3
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

- (IMMergedDomainIdentifiers)initWithDomainIdentifiers:(id)a3 chatGUID:(id)a4
{
  v5 = a3;
  if (a3)
  {
    sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
    v5 = sub_1A84E5D3C();
  }

  if (a4)
  {
    v6 = sub_1A84E5DBC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return sub_1A84D6C74(v5, v6, v8);
}

- (void)setDomainIdentifiers:(id)a3 forChatGUID:(id)a4
{
  if (a3)
  {
    sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
    v6 = sub_1A84E5D3C();
    if (a4)
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
          v12 = self;
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

  else if (a4)
  {
    sub_1A84E5DBC();
  }
}

- (id)domainIdentifiersForChatGUID:(id)a3
{
  if (a3)
  {
    v4 = sub_1A84E5DBC();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
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

- (id)identifiersForChatGUID:(id)a3 domain:(id)a4
{
  v4 = a4;
  if (a3)
  {
    v6 = sub_1A84E5DBC();
    v8 = v7;
    if (v4)
    {
LABEL_3:
      v9 = sub_1A84E5DBC();
      v4 = v10;
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  v11 = self;
  v12 = sub_1A84D70BC(v6, v8, v9, v4);

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

- (id)allDomainsForChatGUID:(id)a3
{
  if (a3)
  {
    sub_1A84E5DBC();
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = self;
  v7 = sub_1A84D7290(v6, v5);

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
  v5 = self;

  sub_1A83EA2FC(&qword_1EB2E88E8, &qword_1A8509AD8);
  sub_1A84E5D4C();

  v6 = sub_1A84E5D8C();

  return v6;
}

- (IMMergedDomainIdentifiers)mergedDomainIdentifiersWithLatestChatGUID:(id)a3
{
  if (a3)
  {
    v4 = sub_1A84E5DBC();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
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
  v5 = self;

  sub_1A84A5B50(v6);

  v7 = sub_1A84E5D2C();

  return v7;
}

- (NSArray)allIdentifiers
{
  v2 = self;
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