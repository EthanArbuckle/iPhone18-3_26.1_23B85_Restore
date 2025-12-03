@interface MRDMediaWidgetUpdater
+ (MRDMediaWidgetUpdater)shared;
+ (void)setShared:(id)shared;
- (MRDMediaWidgetUpdater)init;
@end

@implementation MRDMediaWidgetUpdater

+ (MRDMediaWidgetUpdater)shared
{
  if (qword_1005376A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return qword_1005385C8;
}

+ (void)setShared:(id)shared
{
  v3 = qword_1005376A0;
  sharedCopy = shared;
  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_1005385C8;
  qword_1005385C8 = sharedCopy;
}

- (MRDMediaWidgetUpdater)init
{
  *(&self->super.isa + OBJC_IVAR___MRDMediaWidgetUpdater_scheduledReloadWidgets) = &_swiftEmptyDictionarySingleton;
  v3 = OBJC_IVAR___MRDMediaWidgetUpdater_lock;
  sub_1001BC5A8(&qword_100528660, &qword_100450550);
  v4 = swift_allocObject();
  *(v4 + 4) = 0;
  *(&self->super.isa + v3) = v4;
  v6.receiver = self;
  v6.super_class = type metadata accessor for MediaWidgetUpdater();
  return [(MRDMediaWidgetUpdater *)&v6 init];
}

@end