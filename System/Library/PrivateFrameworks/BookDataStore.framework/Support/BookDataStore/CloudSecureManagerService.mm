@interface CloudSecureManagerService
+ (BCCloudSecureManaging)sharedManager;
+ (void)deleteCloudDataWithCompletion:(id)completion;
- (void)dissociateCloudDataFromSyncWithCompletion:(id)completion;
- (void)hasSaltChangedWithCompletion:(id)completion;
@end

@implementation CloudSecureManagerService

+ (BCCloudSecureManaging)sharedManager
{
  if (qword_10026EC00 != -1)
  {
    swift_once();
  }

  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)hasSaltChangedWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_10013C008(sub_1000CACE8, v5);
}

- (void)dissociateCloudDataFromSyncWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_1000CACE8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_10013C274(v7, v6);
  sub_1000044D8(v7);
}

+ (void)deleteCloudDataWithCompletion:(id)completion
{
  v3 = _Block_copy(completion);
  if (v3)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    v3 = sub_1000C99F0;
  }

  else
  {
    v4 = 0;
  }

  sub_10013C548(v3, v4);

  sub_1000044D8(v3);
}

@end