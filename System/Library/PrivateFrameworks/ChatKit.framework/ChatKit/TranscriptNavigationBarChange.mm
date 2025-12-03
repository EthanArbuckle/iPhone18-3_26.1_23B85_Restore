@interface TranscriptNavigationBarChange
+ (_TtC7ChatKit29TranscriptNavigationBarChange)barButtonsChange;
+ (_TtC7ChatKit29TranscriptNavigationBarChange)conversationChange;
+ (_TtC7ChatKit29TranscriptNavigationBarChange)conversationTitleChange;
+ (_TtC7ChatKit29TranscriptNavigationBarChange)nicknameOracleChange;
+ (_TtC7ChatKit29TranscriptNavigationBarChange)showGroupNameAndPhotoChange;
+ (_TtC7ChatKit29TranscriptNavigationBarChange)titleDisplayModeChange;
+ (_TtC7ChatKit29TranscriptNavigationBarChange)titleViewInteractabilityChange;
+ (_TtC7ChatKit29TranscriptNavigationBarChange)unreadBadgeCountChange;
+ (id)locationChangeWithLocationText:(id)text;
+ (id)sendProgressChange:(double)change color:(id)color;
- (NSString)name;
- (_TtC7ChatKit29TranscriptNavigationBarChange)init;
@end

@implementation TranscriptNavigationBarChange

- (NSString)name
{
  sub_190D52690();
  v2 = sub_190D56ED0();

  return v2;
}

- (_TtC7ChatKit29TranscriptNavigationBarChange)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (_TtC7ChatKit29TranscriptNavigationBarChange)barButtonsChange
{
  v2 = type metadata accessor for TranscriptNavigationBarChange();
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_name];
  *v4 = 0xD000000000000010;
  *(v4 + 1) = 0x8000000190E64620;
  v5 = &v3[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_performMutation];
  *v5 = sub_1908F0D48;
  v5[1] = 0;
  v8.receiver = v3;
  v8.super_class = v2;
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

+ (_TtC7ChatKit29TranscriptNavigationBarChange)conversationChange
{
  v2 = type metadata accessor for TranscriptNavigationBarChange();
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_name];
  *v4 = 0xD000000000000014;
  *(v4 + 1) = 0x8000000190E64640;
  v5 = &v3[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_performMutation];
  *v5 = sub_1908F0F38;
  v5[1] = 0;
  v8.receiver = v3;
  v8.super_class = v2;
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

+ (_TtC7ChatKit29TranscriptNavigationBarChange)titleDisplayModeChange
{
  v2 = type metadata accessor for TranscriptNavigationBarChange();
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_name];
  *v4 = 0xD000000000000010;
  *(v4 + 1) = 0x8000000190E64660;
  v5 = &v3[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_performMutation];
  *v5 = sub_1908F10C0;
  v5[1] = 0;
  v8.receiver = v3;
  v8.super_class = v2;
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

+ (_TtC7ChatKit29TranscriptNavigationBarChange)titleViewInteractabilityChange
{
  v2 = type metadata accessor for TranscriptNavigationBarChange();
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_name];
  *v4 = 0xD00000000000001ELL;
  *(v4 + 1) = 0x8000000190E64680;
  v5 = &v3[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_performMutation];
  *v5 = sub_1908F1234;
  v5[1] = 0;
  v8.receiver = v3;
  v8.super_class = v2;
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

+ (_TtC7ChatKit29TranscriptNavigationBarChange)conversationTitleChange
{
  v2 = type metadata accessor for TranscriptNavigationBarChange();
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_name];
  *v4 = 0xD000000000000017;
  *(v4 + 1) = 0x8000000190E646A0;
  v5 = &v3[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_performMutation];
  *v5 = sub_1908F13BC;
  v5[1] = 0;
  v8.receiver = v3;
  v8.super_class = v2;
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

+ (_TtC7ChatKit29TranscriptNavigationBarChange)unreadBadgeCountChange
{
  v2 = type metadata accessor for TranscriptNavigationBarChange();
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_name];
  *v4 = 0xD000000000000016;
  *(v4 + 1) = 0x8000000190E646C0;
  v5 = &v3[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_performMutation];
  *v5 = sub_1908F1544;
  v5[1] = 0;
  v8.receiver = v3;
  v8.super_class = v2;
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

+ (id)locationChangeWithLocationText:(id)text
{
  if (text)
  {
    v3 = sub_190D56F10();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v5;
  v7 = type metadata accessor for TranscriptNavigationBarChange();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_name];
  strcpy(&v8[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_name], "LocationChange");
  v9[15] = -18;
  v10 = &v8[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_performMutation];
  *v10 = sub_1908F1DE8;
  *(v10 + 1) = v6;
  v13.receiver = v8;
  v13.super_class = v7;
  v11 = objc_msgSendSuper2(&v13, sel_init);

  return v11;
}

+ (id)sendProgressChange:(double)change color:(id)color
{
  v6 = swift_allocObject();
  *(v6 + 16) = change;
  *(v6 + 24) = color;
  v7 = type metadata accessor for TranscriptNavigationBarChange();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_name];
  *v9 = 0xD000000000000012;
  *(v9 + 1) = 0x8000000190E646E0;
  v10 = &v8[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_performMutation];
  *v10 = sub_1908F1DE4;
  v10[1] = v6;
  v14.receiver = v8;
  v14.super_class = v7;
  colorCopy = color;
  v12 = objc_msgSendSuper2(&v14, sel_init);

  return v12;
}

+ (_TtC7ChatKit29TranscriptNavigationBarChange)nicknameOracleChange
{
  v2 = type metadata accessor for TranscriptNavigationBarChange();
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_name];
  *v4 = 0xD000000000000014;
  *(v4 + 1) = 0x8000000190E64700;
  v5 = &v3[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_performMutation];
  *v5 = sub_1908F1AD4;
  v5[1] = 0;
  v8.receiver = v3;
  v8.super_class = v2;
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

+ (_TtC7ChatKit29TranscriptNavigationBarChange)showGroupNameAndPhotoChange
{
  v2 = type metadata accessor for TranscriptNavigationBarChange();
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_name];
  *v4 = 0xD00000000000001BLL;
  *(v4 + 1) = 0x8000000190E64720;
  v5 = &v3[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_performMutation];
  *v5 = sub_1908F1C74;
  v5[1] = 0;
  v8.receiver = v3;
  v8.super_class = v2;
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

@end