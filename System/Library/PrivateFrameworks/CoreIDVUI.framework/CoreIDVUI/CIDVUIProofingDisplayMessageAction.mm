@interface CIDVUIProofingDisplayMessageAction
- (CIDVUIProofingDisplayMessageAction)init;
- (CIDVUIProofingDisplayMessageAction)initWithTitle:(id)title actionType:(int64_t)type actionURL:(id)l;
- (NSURL)actionURL;
- (id)_actionURL;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CIDVUIProofingDisplayMessageAction

- (id)_actionURL
{
  sub_245778F2C(self + OBJC_IVAR___CIDVUIProofingDisplayMessageAction__actionURL, v9, &unk_27EE292B0);
  v2 = v10;
  if (v10)
  {
    v3 = __swift_project_boxed_opaque_existential_1(v9, v10);
    v4 = *(v2 - 8);
    MEMORY[0x28223BE20](v3);
    v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v6);
    v7 = sub_245911704();
    (*(v4 + 8))(v6, v2);
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSURL)actionURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29470);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  selfCopy = self;
  sub_2458C62D8(v5);

  v7 = sub_24590C094();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_24590C034();
    (*(v8 + 8))(v5, v7);
    v10 = v11;
  }

  return v10;
}

- (CIDVUIProofingDisplayMessageAction)initWithTitle:(id)title actionType:(int64_t)type actionURL:(id)l
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29470);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_245910A04();
  v12 = v11;
  if (l)
  {
    sub_24590C054();
    v13 = sub_24590C094();
    (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
  }

  else
  {
    v14 = sub_24590C094();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  }

  return sub_2458C6400(v10, v12, type, v9);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_2458C6A30(coderCopy);
}

- (CIDVUIProofingDisplayMessageAction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end