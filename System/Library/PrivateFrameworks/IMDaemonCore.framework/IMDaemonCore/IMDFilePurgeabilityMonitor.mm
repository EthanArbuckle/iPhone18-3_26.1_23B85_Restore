@interface IMDFilePurgeabilityMonitor
+ (id)sharedInstance;
- (void)dealloc;
- (void)observeFileEvents:(id)a3;
- (void)userNotificationDidFinish:(id)a3;
@end

@implementation IMDFilePurgeabilityMonitor

- (void)observeFileEvents:(id)a3
{
  v4 = sub_22B7DA688();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B7DA658();
  v9 = self;
  sub_22B4D9E98();

  (*(v5 + 8))(v8, v4);
}

+ (id)sharedInstance
{
  if (qword_28141F110 != -1)
  {
    swift_once();
  }

  v3 = qword_28141F118;

  return v3;
}

- (void)userNotificationDidFinish:(id)a3
{
  v5 = a3;
  v6 = self;
  IMDFilePurgeabilityMonitor.userNotificationDidFinish(_:)(a3);
}

- (void)dealloc
{
  sub_22B4D01A0(0, &qword_27D8CF050, 0x277D192D8);
  v3 = self;
  v4 = sub_22B72276C();
  if (v4)
  {
    v5 = v4;
    [v4 removeListener_];
  }

  v6 = [objc_opt_self() defaultCenter];
  [v6 removeObserver_];

  v7.receiver = v3;
  v7.super_class = IMDFilePurgeabilityMonitor;
  [(IMDFilePurgeabilityMonitor *)&v7 dealloc];
}

@end