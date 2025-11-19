@interface EmergencyAccessBuddyViewControllerCreator
+ (id)makeFollowUpViewControllerFor:(id)a3 healthStore:(id)a4 followUpDelegate:(id)a5;
- (_TtC23HealthFollowUpExtension41EmergencyAccessBuddyViewControllerCreator)init;
@end

@implementation EmergencyAccessBuddyViewControllerCreator

+ (id)makeFollowUpViewControllerFor:(id)a3 healthStore:(id)a4 followUpDelegate:(id)a5
{
  v7 = sub_100002D58();
  v9 = v8;
  swift_getObjCClassMetadata();
  v10 = a4;
  swift_unknownObjectRetain();
  v11 = static EmergencyAccessBuddyViewControllerCreator.makeFollowUpViewController(for:healthStore:followUpDelegate:)(v7, v9, v10, a5);

  swift_unknownObjectRelease();

  return v11;
}

- (_TtC23HealthFollowUpExtension41EmergencyAccessBuddyViewControllerCreator)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for EmergencyAccessBuddyViewControllerCreator();
  return [(EmergencyAccessBuddyViewControllerCreator *)&v3 init];
}

@end