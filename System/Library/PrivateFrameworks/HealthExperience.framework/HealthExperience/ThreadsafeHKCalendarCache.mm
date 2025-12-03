@interface ThreadsafeHKCalendarCache
- (_TtC16HealthExperience25ThreadsafeHKCalendarCache)init;
- (id)calendarForTimeZone:(id)zone;
- (id)currentCalendar;
@end

@implementation ThreadsafeHKCalendarCache

- (id)calendarForTimeZone:(id)zone
{
  v18 = sub_1D0FF44B8();
  v4 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D0FF4478();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FF4498();
  selfCopy = self;
  sub_1D0FF47F8();
  v12 = sub_1D0FF4488();
  v13 = type metadata accessor for ThreadsafeHKCalendarCache();
  v19.receiver = selfCopy;
  v19.super_class = v13;
  v14 = [(HKCalendarCache *)&v19 calendarForTimeZone:v12];

  sub_1D0FF43F8();
  sub_1D0FF4808();
  (*(v4 + 8))(v6, v18);

  v15 = sub_1D0FF43E8();
  (*(v8 + 8))(v10, v7);

  return v15;
}

- (id)currentCalendar
{
  v3 = sub_1D0FF4478();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_1D0FF47F8();
  v8 = type metadata accessor for ThreadsafeHKCalendarCache();
  v12.receiver = selfCopy;
  v12.super_class = v8;
  currentCalendar = [(HKCalendarCache *)&v12 currentCalendar];
  sub_1D0FF43F8();

  sub_1D0FF4808();
  v10 = sub_1D0FF43E8();
  (*(v4 + 8))(v6, v3);

  return v10;
}

- (_TtC16HealthExperience25ThreadsafeHKCalendarCache)init
{
  v3 = OBJC_IVAR____TtC16HealthExperience25ThreadsafeHKCalendarCache_lock;
  sub_1D0FF4828();
  swift_allocObject();
  *(&self->super.super.isa + v3) = sub_1D0FF4818();
  v5.receiver = self;
  v5.super_class = type metadata accessor for ThreadsafeHKCalendarCache();
  return [(HKCalendarCache *)&v5 init];
}

@end