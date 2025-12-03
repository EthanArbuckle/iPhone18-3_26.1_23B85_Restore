@interface NSUserDefaults.Secure
- (id)dictionaryRepresentation;
- (id)objectForKey:(id)key;
- (id)objectForKey:(id)key inDomain:(id)domain;
- (void)setObject:(id)object forKey:(id)key;
- (void)setObject:(id)object forKey:(id)key inDomain:(id)domain;
@end

@implementation NSUserDefaults.Secure

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

  NSUserDefaults.Secure.set(_:forKey:)(v10);

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
  NSUserDefaults.Secure.setObject(_:forKey:inDomain:)(v17, v11, v13);

  sub_18E178150(v17, &qword_1EABD0960, &qword_18E1AB550);
}

- (id)objectForKey:(id)key
{
  sub_18E1A7530();
  selfCopy = self;
  NSUserDefaults.Secure.object(forKey:)(v13);

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

- (id)objectForKey:(id)key inDomain:(id)domain
{
  v6 = sub_18E1A7530();
  v8 = v7;
  if (domain)
  {
    sub_18E1A7530();
  }

  selfCopy = self;
  NSUserDefaults.Secure.object(forKey:inDomain:)(v18, v6, v8);

  v10 = v19;
  if (v19)
  {
    v11 = sub_18E158E00(v18, v19);
    v12 = *(v10 - 8);
    v13 = *(v12 + 64);
    MEMORY[0x1EEE9AC00](v11, v11);
    v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v15);
    v16 = sub_18E1A7B80();
    (*(v12 + 8))(v15, v10);
    sub_18E158EC4(v18);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)dictionaryRepresentation
{
  selfCopy = self;
  NSUserDefaults.Secure.dictionaryRepresentation()();

  v3 = sub_18E1A7470();

  return v3;
}

@end