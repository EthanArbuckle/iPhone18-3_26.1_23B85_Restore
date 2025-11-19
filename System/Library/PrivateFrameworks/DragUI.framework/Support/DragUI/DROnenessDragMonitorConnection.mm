@interface DROnenessDragMonitorConnection
- (BOOL)_shouldNotifyForSession:(id)a3;
@end

@implementation DROnenessDragMonitorConnection

- (BOOL)_shouldNotifyForSession:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = DROnenessDragMonitorConnection;
  if (![(DRDragMonitorConnection *)&v7 _shouldNotifyForSession:v4])
  {
LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  if (([v4 originatedFromContinuityDisplay] & 1) == 0)
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