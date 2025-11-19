@interface IDSStewieProvisioningEventTracing
+ (IDSStewieProvisioningEventTracing)sharedInstance;
- (void)trackProvisioningChangesWithEventType:(int64_t)a3;
- (void)trackProvisioningEnd;
- (void)trackProvisioningStart;
@end

@implementation IDSStewieProvisioningEventTracing

+ (IDSStewieProvisioningEventTracing)sharedInstance
{
  sub_100936D98();
  sub_100936D88();
  sub_100936D68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_100CCE1C0 != -1)
  {
    swift_once();
  }

  v2 = qword_100CD40B8;

  return v2;
}

- (void)trackProvisioningStart
{
  v2 = *((swift_isaMask & self->super.isa) + 0x68);
  v8 = self;
  v3 = v2();
  if (v3)
  {
    sub_10086D3CC(v3);
  }

  else
  {
    v4 = objc_allocWithZone(sub_100936268());
    v5 = sub_100936228();
    v6 = *((swift_isaMask & v8->super.isa) + 0x70);
    v7 = v5;
    v6(v5);
  }
}

- (void)trackProvisioningChangesWithEventType:(int64_t)a3
{
  v4 = self;
  sub_10086D844(a3);
}

- (void)trackProvisioningEnd
{
  v2 = self;
  sub_10086DA28();
}

@end