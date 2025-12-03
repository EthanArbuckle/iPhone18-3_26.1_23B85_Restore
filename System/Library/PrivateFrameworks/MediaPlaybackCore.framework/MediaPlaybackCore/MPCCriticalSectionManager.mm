@interface MPCCriticalSectionManager
+ (MPCCriticalSectionManager)shared;
- (BOOL)inCriticalSection;
- (id)performTaskNamed:(id)named afterCriticalSection:(id)section;
- (id)performTaskNamed:(id)named afterCriticalSection:(id)section onCancel:(id)cancel;
- (id)performUniqueTaskNamed:(id)named afterCriticalSection:(id)section onCancel:(id)cancel;
- (id)takeAssertion:(id)assertion;
@end

@implementation MPCCriticalSectionManager

- (id)takeAssertion:(id)assertion
{
  v4 = sub_1C6016940();
  v6 = v5;
  selfCopy = self;
  v8 = sub_1C5C691BC(v4, v6);

  return v8;
}

+ (MPCCriticalSectionManager)shared
{
  v2 = sub_1C5C6C980();

  return v2;
}

- (id)performUniqueTaskNamed:(id)named afterCriticalSection:(id)section onCancel:(id)cancel
{
  v7 = _Block_copy(section);
  v8 = _Block_copy(cancel);
  v9 = sub_1C6016940();
  v11 = v10;
  if (v8)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v8;
    v8 = sub_1C5E41E94;
  }

  else
  {
    v12 = 0;
  }

  _Block_copy(v7);
  _Block_copy(v7);
  selfCopy = self;
  v14 = sub_1C5C6CAEC(v9, v11, v8, v12, selfCopy, v7);
  sub_1C5C74C18(v8);
  _Block_release(v7);
  _Block_release(v7);

  return v14;
}

- (BOOL)inCriticalSection
{
  selfCopy = self;
  v3 = sub_1C5E3ECC4();

  return v3 & 1;
}

- (id)performTaskNamed:(id)named afterCriticalSection:(id)section
{
  v5 = _Block_copy(section);
  v6 = sub_1C6016940();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  selfCopy = self;
  v11 = sub_1C5E3ED10(v6, v8, sub_1C5E4252C, v9);

  return v11;
}

- (id)performTaskNamed:(id)named afterCriticalSection:(id)section onCancel:(id)cancel
{
  v7 = _Block_copy(section);
  v8 = _Block_copy(cancel);
  v9 = sub_1C6016940();
  v11 = v10;
  if (v8)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v8;
    v8 = sub_1C5E4252C;
  }

  else
  {
    v12 = 0;
  }

  _Block_copy(v7);
  _Block_copy(v7);
  selfCopy = self;
  v14 = sub_1C5E3EEB8(v9, v11, v8, v12, selfCopy, v7);
  sub_1C5C74C18(v8);
  _Block_release(v7);
  _Block_release(v7);

  return v14;
}

@end