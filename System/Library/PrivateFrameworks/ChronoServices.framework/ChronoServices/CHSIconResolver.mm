@interface CHSIconResolver
- (CHSIconResolver)init;
- (id)resolveIconVersionForExtensionIdentity:(id)identity;
- (void)resolveIconForContainerIdentity:(id)identity completion:(id)completion;
@end

@implementation CHSIconResolver

- (CHSIconResolver)init
{
  v3 = sub_195FA0478();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ConcreteFileManagerFactory();
  v8 = swift_allocObject();
  type metadata accessor for ConcreteImageIOPrimitives();
  v9 = swift_allocObject();
  if (qword_1EAEEC4F8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v3, qword_1EAEEC4D8);
  swift_beginAccess();
  (*(v4 + 16))(v7, v10, v3);
  v11 = type metadata accessor for IconStore(0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  *(&self->super.isa + OBJC_IVAR___CHSIconResolver_iconStore) = sub_195EB8E20(v8, v9, v7, v14);
  v17.receiver = self;
  v17.super_class = CHSIconResolver;
  return [(CHSIconResolver *)&v17 init];
}

- (void)resolveIconForContainerIdentity:(id)identity completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = sub_195FA08B8();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  selfCopy = self;
  sub_195F9DBD0(v6, v8, sub_195F9E0E8, v9);
}

- (id)resolveIconVersionForExtensionIdentity:(id)identity
{
  identityCopy = identity;
  selfCopy = self;
  sub_195F9DEE4(identityCopy);
  v7 = v6;

  if (v7)
  {
    v8 = sub_195FA0888();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end