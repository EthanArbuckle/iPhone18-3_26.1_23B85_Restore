@interface ReminderDragProvider
+ (id)itemProviderWriterFor:(id)a3;
- (_TtC21CalendarUIKitInternal20ReminderDragProvider)init;
@end

@implementation ReminderDragProvider

+ (id)itemProviderWriterFor:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_2429B7000();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECD7010, &unk_2429B8350) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v16 - v10;
  v12 = a3;
  sub_2429A1DB0(v12, v11);
  if ((*(v5 + 48))(v11, 1, v4) == 1)
  {

    sub_2429A234C(v11, &unk_27ECD7010, &unk_2429B8350);
    v13 = 0;
  }

  else
  {
    (*(v5 + 32))(v8, v11, v4);
    v14 = sub_2429B7020();

    (*(v5 + 8))(v8, v4);
    v13 = v14;
  }

  return v13;
}

- (_TtC21CalendarUIKitInternal20ReminderDragProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ReminderDragProvider();
  return [(ReminderDragProvider *)&v3 init];
}

@end