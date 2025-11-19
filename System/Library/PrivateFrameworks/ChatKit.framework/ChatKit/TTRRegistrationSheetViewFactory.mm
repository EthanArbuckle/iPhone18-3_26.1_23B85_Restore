@interface TTRRegistrationSheetViewFactory
+ (id)ttrRegistrationSheetView;
- (_TtC7ChatKit31TTRRegistrationSheetViewFactory)init;
@end

@implementation TTRRegistrationSheetViewFactory

+ (id)ttrRegistrationSheetView
{
  v2 = type metadata accessor for TTRRegistrationSheetView();
  MEMORY[0x1EEE9AC00](v2 - 8);
  *(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0)) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0);
  swift_storeEnumTagMultiPayload();
  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61050));
  v5 = sub_190D54B60();
  [v5 setModalPresentationStyle_];
  [v5 setModalTransitionStyle_];

  return v5;
}

- (_TtC7ChatKit31TTRRegistrationSheetViewFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TTRRegistrationSheetViewFactory();
  return [(TTRRegistrationSheetViewFactory *)&v3 init];
}

@end