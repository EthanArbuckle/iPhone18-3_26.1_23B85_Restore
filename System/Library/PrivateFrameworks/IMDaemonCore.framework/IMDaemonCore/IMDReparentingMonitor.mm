@interface IMDReparentingMonitor
+ (IMDReparentingMonitor)sharedMonitor;
- (void)cloudkitStateEnabledReturnedWithNotification:(id)a3;
@end

@implementation IMDReparentingMonitor

+ (IMDReparentingMonitor)sharedMonitor
{
  if (qword_28141F170 != -1)
  {
    swift_once();
  }

  v3 = qword_2814225E0;

  return v3;
}

- (void)cloudkitStateEnabledReturnedWithNotification:(id)a3
{
  v4 = sub_22B7DA688();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B7DA658();
  v9 = self;
  sub_22B706E74();

  (*(v5 + 8))(v8, v4);
}

@end