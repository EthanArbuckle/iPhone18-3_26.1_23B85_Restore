@interface CloudSecureManagerService
+ (BCCloudSecureManaging)sharedManager;
+ (void)deleteCloudDataWithCompletion:(id)a3;
- (void)dissociateCloudDataFromSyncWithCompletion:(id)a3;
- (void)hasSaltChangedWithCompletion:(id)a3;
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

- (void)hasSaltChangedWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_10013C008(sub_1000CACE8, v5);
}

- (void)dissociateCloudDataFromSyncWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
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

  v8 = self;
  sub_10013C274(v7, v6);
  sub_1000044D8(v7);
}

+ (void)deleteCloudDataWithCompletion:(id)a3
{
  v3 = _Block_copy(a3);
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