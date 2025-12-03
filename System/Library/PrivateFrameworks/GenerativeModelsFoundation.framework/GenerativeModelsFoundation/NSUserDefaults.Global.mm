@interface NSUserDefaults.Global
- (id)dictionaryRepresentation;
- (id)objectForKey:(id)key;
- (id)objectForKey:(id)key inDomain:(id)domain;
- (void)setObject:(id)object forKey:(id)key;
- (void)setObject:(id)object forKey:(id)key inDomain:(id)domain;
@end

@implementation NSUserDefaults.Global

- (id)objectForKey:(id)key
{
  sub_18E1A7530();
  selfCopy = self;
  NSUserDefaults.Global.object(forKey:)(v13);

  v5 = v14;
  if (v14)
  {
    v6 = sub_18E158E00(v13, v14);
    v7 = *(v5 - 8);
    v8 = *(v7 + 64);
    MEMORY[0x1EEE9AC00](v6, v6);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10);
    v11 = sub_18E1A7B80();
    (*(v7 + 8))(v10, v5);
    sub_18E158EC4(v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)setObject:(id)object forKey:(id)key
{
  if (object)
  {
    keyCopy = key;
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_18E1A77D0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    keyCopy2 = key;
    selfCopy2 = self;
  }

  sub_18E1A7530();

  NSUserDefaults.Global.set(_:forKey:)(v10);

  sub_18E178150(v10, &qword_1EABD0960, &qword_18E1AB550);
}

- (void)setObject:(id)object forKey:(id)key inDomain:(id)domain
{
  if (object)
  {
    keyCopy = key;
    domainCopy = domain;
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_18E1A77D0();
    swift_unknownObjectRelease();
    if (key)
    {
      goto LABEL_3;
    }

LABEL_6:
    v11 = 0;
    v13 = 0;
    if (!domain)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  memset(v17, 0, sizeof(v17));
  keyCopy2 = key;
  domainCopy2 = domain;
  selfCopy2 = self;
  if (!key)
  {
    goto LABEL_6;
  }

LABEL_3:
  v11 = sub_18E1A7530();
  v13 = v12;

  if (domain)
  {
LABEL_4:
    sub_18E1A7530();
  }

LABEL_7:
  NSUserDefaults.Global.setObject(_:forKey:inDomain:)(v17, v11, v13);

  sub_18E178150(v17, &qword_1EABD0960, &qword_18E1AB550);
}

- (id)objectForKey:(id)key inDomain:(id)domain
{
  sub_18E1A7530();
  if (domain)
  {
    sub_18E1A7530();
  }

  selfCopy = self;
  NSUserDefaults.Global.object(forKey:inDomain:)(v15);

  v7 = v16;
  if (v16)
  {
    v8 = sub_18E158E00(v15, v16);
    v9 = *(v7 - 8);
    v10 = *(v9 + 64);
    MEMORY[0x1EEE9AC00](v8, v8);
    v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12);
    v13 = sub_18E1A7B80();
    (*(v9 + 8))(v12, v7);
    sub_18E158EC4(v15);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)dictionaryRepresentation
{
  selfCopy = self;
  NSUserDefaults.Global.dictionaryRepresentation()();

  v3 = sub_18E1A7470();

  return v3;
}

@end