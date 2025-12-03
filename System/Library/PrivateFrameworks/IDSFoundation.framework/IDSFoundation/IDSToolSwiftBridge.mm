@interface IDSToolSwiftBridge
+ (IDSToolSwiftBridge)shared;
+ (NSDictionary)commandAbstractsByName;
- (IDSCLIToolDelegate)delegate;
- (IDSToolSwiftBridge)init;
- (id)help:(id)help;
- (void)run:(NSArray *)run completionHandler:(id)handler;
@end

@implementation IDSToolSwiftBridge

+ (IDSToolSwiftBridge)shared
{
  v2 = qword_1EB2DC2F0;
  if (qword_1EB2DC2F0)
  {
    v3 = qword_1EB2DC2F0;
  }

  else
  {
    v4 = [objc_allocWithZone(IDSToolSwiftBridge) init];
    v5 = qword_1EB2DC2F0;
    qword_1EB2DC2F0 = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;

  return v3;
}

- (IDSCLIToolDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

+ (NSDictionary)commandAbstractsByName
{
  sub_1A7D582C4();
  v2 = sub_1A7E22160();

  return v2;
}

- (void)run:(NSArray *)run completionHandler:(id)handler
{
  v7 = sub_1A7CC7FFC(&unk_1EB2B61C0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = run;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1A7E226D0();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1A7E4A870;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1A7E48E60;
  v15[5] = v14;
  runCopy = run;
  selfCopy = self;
  sub_1A7DE5274(0, 0, v10, &unk_1A7E45700, v15);
}

- (id)help:(id)help
{
  v4 = sub_1A7E22290();
  v6 = v5;
  selfCopy = self;
  sub_1A7D58B30(v4, v6);
  v9 = v8;

  if (v9)
  {
    v10 = sub_1A7E22260();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (IDSToolSwiftBridge)init
{
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = IDSToolSwiftBridge;
  return [(IDSToolSwiftBridge *)&v4 init];
}

@end