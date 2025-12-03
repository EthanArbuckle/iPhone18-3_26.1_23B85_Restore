@interface IMDEmergencyContactsManager
+ (id)sharedManager;
- (NSArray)emergencyContactHandles;
@end

@implementation IMDEmergencyContactsManager

- (NSArray)emergencyContactHandles
{
  v2 = *(&self->super.isa + OBJC_IVAR___IMDEmergencyContactsManager_processingQueue);
  selfCopy = self;
  sub_22B6F0AD4(&unk_27D8CE9E0, &qword_22B7F99B0);
  sub_22B7DAF38();

  v4 = sub_22B7DB8F8();

  return v4;
}

+ (id)sharedManager
{
  if (qword_28141F0E0 != -1)
  {
    swift_once();
  }

  v3 = qword_28141F0E8;

  return v3;
}

@end