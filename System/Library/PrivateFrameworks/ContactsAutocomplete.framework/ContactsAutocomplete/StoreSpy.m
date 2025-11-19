@interface StoreSpy
- (_TtC20ContactsAutocompleteP33_EBE34D4C21093596BE6E4DA9F1A7E5D28StoreSpy)init;
- (void)autocompleteFetch:(id)a3 didFailWithError:(id)a4;
- (void)autocompleteFetch:(id)a3 didReceiveResults:(id)a4;
- (void)autocompleteFetchDidFinish:(id)a3;
@end

@implementation StoreSpy

- (void)autocompleteFetch:(id)a3 didReceiveResults:(id)a4
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68720, &qword_21565F4F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68728, &qword_21565F4F8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  sub_215654720();
  v14 = sub_215656EDC();
  v15 = OBJC_IVAR____TtC20ContactsAutocompleteP33_EBE34D4C21093596BE6E4DA9F1A7E5D28StoreSpy_streamContinuation;
  swift_beginAccess();
  sub_21565456C(self + v15, v8, &qword_27CA68720, &qword_21565F4F0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68718, &qword_21565F4D0);
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v8, 1, v16) == 1)
  {
    __break(1u);
  }

  else
  {
    v19 = v14;
    v18 = self;
    sub_215656F1C();

    (*(v10 + 8))(v13, v9);
    (*(v17 + 8))(v8, v16);
  }
}

- (void)autocompleteFetch:(id)a3 didFailWithError:(id)a4
{
  swift_unknownObjectRetain();
  v7 = a4;
  v6 = self;
  sub_2156545D4(v7);
  swift_unknownObjectRelease();
}

- (void)autocompleteFetchDidFinish:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68720, &qword_21565F4F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = OBJC_IVAR____TtC20ContactsAutocompleteP33_EBE34D4C21093596BE6E4DA9F1A7E5D28StoreSpy_streamContinuation;
  swift_beginAccess();
  sub_21565456C(self + v8, v7, &qword_27CA68720, &qword_21565F4F0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68718, &qword_21565F4D0);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    __break(1u);
  }

  else
  {
    v12 = 0;
    v11 = self;
    sub_215656F2C();

    (*(v10 + 8))(v7, v9);
  }
}

- (_TtC20ContactsAutocompleteP33_EBE34D4C21093596BE6E4DA9F1A7E5D28StoreSpy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end