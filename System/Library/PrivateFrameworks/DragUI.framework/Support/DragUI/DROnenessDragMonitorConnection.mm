@interface DROnenessDragMonitorConnection
- (BOOL)_shouldNotifyForSession:(id)session;
@end

@implementation DROnenessDragMonitorConnection

- (BOOL)_shouldNotifyForSession:(id)session
{
  sessionCopy = session;
  v7.receiver = self;
  v7.super_class = DROnenessDragMonitorConnection;
  if (![(DRDragMonitorConnection *)&v7 _shouldNotifyForSession:sessionCopy])
  {
LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  if (([sessionCopy originatedFromContinuityDisplay] & 1) == 0)
  {
    if (qword_1000634B8 != -1)
    {
      sub_10002F868();
    }

    if (byte_1000634C0 == 1)
    {
      v5 = sub_100005678();
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v5 = 1;
LABEL_8:

  return v5;
}

@end