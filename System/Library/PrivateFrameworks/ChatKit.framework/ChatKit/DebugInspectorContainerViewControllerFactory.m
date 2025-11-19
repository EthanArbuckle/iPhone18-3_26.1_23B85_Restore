@interface DebugInspectorContainerViewControllerFactory
+ (id)debugMenuViewController;
+ (id)inspectorViewControllerForChatItems:(id)a3 parallelIndexes:(id)a4;
+ (id)inspectorViewControllerForConversations:(id)a3;
+ (id)inspectorViewControllerForMessage:(id)a3;
- (_TtC7ChatKit44DebugInspectorContainerViewControllerFactory)init;
@end

@implementation DebugInspectorContainerViewControllerFactory

+ (id)inspectorViewControllerForConversations:(id)a3
{
  sub_1902188FC(0, &qword_1EAD466B0);
  sub_190D57180();
  v3 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B8E8));
  v4 = sub_190D54B60();

  return v4;
}

+ (id)inspectorViewControllerForMessage:(id)a3
{
  v3 = a3;
  v4 = sub_190A8644C(v3);

  return v4;
}

+ (id)inspectorViewControllerForChatItems:(id)a3 parallelIndexes:(id)a4
{
  sub_1902188FC(0, &qword_1EAD450F0);
  v4 = sub_190D57180();
  sub_1902188FC(0, &qword_1EAD46510);
  v5 = sub_190D57180();
  sub_190A84350(v4, v5);
  v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B8F0));
  v7 = sub_190D54B60();

  return v7;
}

+ (id)debugMenuViewController
{
  v2 = type metadata accessor for DebugMenuView();
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0);
  swift_storeEnumTagMultiPayload();
  v6 = v5 + *(v3 + 28);
  *v6 = sub_19096D200;
  *(v6 + 1) = 0;
  v6[16] = 0;
  v7 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B8F8));
  v8 = sub_190D54B60();

  return v8;
}

- (_TtC7ChatKit44DebugInspectorContainerViewControllerFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DebugInspectorContainerViewControllerFactory();
  return [(DebugInspectorContainerViewControllerFactory *)&v3 init];
}

@end