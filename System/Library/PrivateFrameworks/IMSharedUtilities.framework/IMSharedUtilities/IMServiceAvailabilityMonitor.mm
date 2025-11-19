@interface IMServiceAvailabilityMonitor
- (BOOL)isiMessageEnabled;
- (IMServiceAvailabilityMonitor)init;
@end

@implementation IMServiceAvailabilityMonitor

- (IMServiceAvailabilityMonitor)init
{
  *(&self->super.isa + OBJC_IVAR___IMServiceAvailabilityMonitor_mmsEnabled) = 0;
  *(&self->super.isa + OBJC_IVAR___IMServiceAvailabilityMonitor_rcsEnabled) = 0;
  *(&self->super.isa + OBJC_IVAR___IMServiceAvailabilityMonitor_mmsToken) = -1;
  v4.receiver = self;
  v4.super_class = IMServiceAvailabilityMonitor;
  v2 = [(IMServiceAvailabilityMonitor *)&v4 init];
  sub_1A87C4DAC();
  sub_1A87C4F28();

  return v2;
}

- (BOOL)isiMessageEnabled
{
  v2 = [objc_opt_self() sharedInstance];
  if (v2)
  {
    v3 = v2;
    if (qword_1EB300820 != -1)
    {
      swift_once();
    }

    v4 = sub_1A88C82A8();
    v5 = [v3 availabilityForListenerID:v4 forService:1];

    LOBYTE(v2) = v5 == 1;
  }

  else
  {
    __break(1u);
  }

  return v2;
}

@end