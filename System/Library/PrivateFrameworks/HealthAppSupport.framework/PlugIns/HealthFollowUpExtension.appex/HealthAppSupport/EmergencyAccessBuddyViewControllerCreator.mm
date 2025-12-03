@interface EmergencyAccessBuddyViewControllerCreator
+ (id)makeFollowUpViewControllerFor:(id)for healthStore:(id)store followUpDelegate:(id)delegate;
- (_TtC23HealthFollowUpExtension41EmergencyAccessBuddyViewControllerCreator)init;
@end

@implementation EmergencyAccessBuddyViewControllerCreator

+ (id)makeFollowUpViewControllerFor:(id)for healthStore:(id)store followUpDelegate:(id)delegate
{
  v7 = sub_100002D58();
  v9 = v8;
  swift_getObjCClassMetadata();
  storeCopy = store;
  swift_unknownObjectRetain();
  v11 = static EmergencyAccessBuddyViewControllerCreator.makeFollowUpViewController(for:healthStore:followUpDelegate:)(v7, v9, storeCopy, delegate);

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