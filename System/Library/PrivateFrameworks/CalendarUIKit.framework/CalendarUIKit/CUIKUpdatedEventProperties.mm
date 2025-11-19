@interface CUIKUpdatedEventProperties
- (BOOL)titleChanged;
- (NSString)title;
- (void)setAllDay:(BOOL)a3;
- (void)setLocation:(id)a3;
- (void)setParticipants:(id)a3;
- (void)setRecurrenceRule:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation CUIKUpdatedEventProperties

- (void)setTitle:(id)a3
{
  if (a3)
  {
    v4 = sub_1CAD4DF94();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = OBJC_IVAR___CUIKUpdatedEventProperties_updatedEventProperties;
  swift_beginAccess();
  v8 = *(&self->super.isa + v7);
  swift_beginAccess();
  v9 = *(v8 + 16);
  v10 = *(v8 + 24);
  *(v8 + 16) = v4;
  *(v8 + 24) = v6;

  sub_1CAC8C3BC(v9, v10);
}

- (void)setLocation:(id)a3
{
  if (a3)
  {
    v4 = sub_1CAD4DF94();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = OBJC_IVAR___CUIKUpdatedEventProperties_updatedEventProperties;
  swift_beginAccess();
  v8 = *(&self->super.isa + v7);
  swift_beginAccess();
  v9 = *(v8 + 32);
  v10 = *(v8 + 40);
  *(v8 + 32) = v4;
  *(v8 + 40) = v6;

  sub_1CAC8C3BC(v9, v10);
}

- (void)setAllDay:(BOOL)a3
{
  v5 = OBJC_IVAR___CUIKUpdatedEventProperties_updatedEventProperties;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  swift_beginAccess();
  *(v6 + 48) = a3;
}

- (void)setRecurrenceRule:(id)a3
{
  if (a3)
  {
    v4 = sub_1CAD4DF94();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = OBJC_IVAR___CUIKUpdatedEventProperties_updatedEventProperties;
  swift_beginAccess();
  v8 = (*(&self->super.isa + v7) + OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_recurrenceRule);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = v4;
  v8[1] = v6;

  sub_1CAC8C3BC(v9, v10);
}

- (void)setParticipants:(id)a3
{
  if (a3)
  {
    v4 = sub_1CAD4E214();
  }

  else
  {
    v4 = 0;
  }

  v5 = OBJC_IVAR___CUIKUpdatedEventProperties_updatedEventProperties;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  v7 = OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_participants;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v4;

  sub_1CAC8CEA4(v8);
}

- (BOOL)titleChanged
{
  v3 = OBJC_IVAR___CUIKUpdatedEventProperties_updatedEventProperties;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  swift_beginAccess();
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = self;
  sub_1CAC8C358(v5, v6);
  v8 = sub_1CAC8D214(v5, v6, 0, 1);

  sub_1CAC8C3BC(v5, v6);
  return (v8 & 1) == 0;
}

- (NSString)title
{
  v3 = OBJC_IVAR___CUIKUpdatedEventProperties_updatedEventProperties;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  swift_beginAccess();
  v5 = 0;
  v6 = *(v4 + 24);
  if (v6 >= 2)
  {
    v7 = *(v4 + 16);

    v8 = sub_1CAD4DF54();
    sub_1CAC8C3BC(v7, v6);
    v5 = v8;
  }

  return v5;
}

@end