@interface ReminderColorDeserializer
+ (id)deserializeFrom:(id)a3 error:(id *)a4;
- (_TtC21CalendarUIKitInternal25ReminderColorDeserializer)init;
@end

@implementation ReminderColorDeserializer

+ (id)deserializeFrom:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = sub_2429B6E40();
  v7 = v6;

  v8 = sub_2429B71F0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2429A24D4(v5, v7);
  sub_2429B71D0();
  v13 = sub_2429B71B0();
  sub_2429A27AC(v5, v7);
  (*(v9 + 8))(v12, v8);

  return v13;
}

- (_TtC21CalendarUIKitInternal25ReminderColorDeserializer)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ReminderColorDeserializer();
  return [(ReminderColorDeserializer *)&v3 init];
}

@end