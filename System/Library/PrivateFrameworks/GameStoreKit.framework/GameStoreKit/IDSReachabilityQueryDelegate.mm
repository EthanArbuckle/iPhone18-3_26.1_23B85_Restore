@interface IDSReachabilityQueryDelegate
- (_TtC12GameStoreKitP33_07FFAB5A3332DEA17BF1A4D00188D36128IDSReachabilityQueryDelegate)init;
- (void)batchQueryController:(id)a3 updatedDestinationsStatus:(id)a4 onService:(id)a5 error:(id)a6;
@end

@implementation IDSReachabilityQueryDelegate

- (_TtC12GameStoreKitP33_07FFAB5A3332DEA17BF1A4D00188D36128IDSReachabilityQueryDelegate)init
{
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227B28);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - v5;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227B10);
  v7 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v9 = &v15 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F227B00);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v15 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227AC0);
  (*(v4 + 104))(v6, *MEMORY[0x277D85778], v3);
  sub_24F92B868();
  (*(v4 + 8))(v6, v3);
  (*(v11 + 32))(self + OBJC_IVAR____TtC12GameStoreKitP33_07FFAB5A3332DEA17BF1A4D00188D36128IDSReachabilityQueryDelegate_updates, v13, v10);
  (*(v7 + 32))(self + OBJC_IVAR____TtC12GameStoreKitP33_07FFAB5A3332DEA17BF1A4D00188D36128IDSReachabilityQueryDelegate_updatesContinuation, v9, v15);
  v17.receiver = self;
  v17.super_class = ObjectType;
  return [(IDSReachabilityQueryDelegate *)&v17 init];
}

- (void)batchQueryController:(id)a3 updatedDestinationsStatus:(id)a4 onService:(id)a5 error:(id)a6
{
  v8 = a4;
  if (a4)
  {
    sub_24E69A5C4(0, &qword_27F22BD50);
    v8 = sub_24F92AE38();
  }

  if (a5)
  {
    sub_24F92B0D8();
  }

  v11 = a3;
  v12 = self;
  v13 = a6;
  sub_24EAD76F8(v8, a6);
}

@end