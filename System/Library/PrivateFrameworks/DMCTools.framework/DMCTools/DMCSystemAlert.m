@interface DMCSystemAlert
- (NSString)description;
- (id)completionBlock;
- (id)notificationParametersOutFlags:(unint64_t *)a3;
- (void)setCompletionBlock:(id)a3;
- (void)setNotification:(__CFUserNotification *)a3;
@end

@implementation DMCSystemAlert

- (void)setNotification:(__CFUserNotification *)a3
{
  v4 = *(self + OBJC_IVAR___DMCSystemAlert_notification);
  *(self + OBJC_IVAR___DMCSystemAlert_notification) = a3;
  v3 = a3;
}

- (id)completionBlock
{
  if (*(self + OBJC_IVAR___DMCSystemAlert_completionBlock))
  {
    v2 = *(self + OBJC_IVAR___DMCSystemAlert_completionBlock + 8);
    v5[4] = *(self + OBJC_IVAR___DMCSystemAlert_completionBlock);
    v5[5] = v2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = sub_247F20B40;
    v5[3] = &block_descriptor_10_0;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCompletionBlock:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_247F08AC4;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___DMCSystemAlert_completionBlock);
  v8 = *(self + OBJC_IVAR___DMCSystemAlert_completionBlock);
  v9 = *(self + OBJC_IVAR___DMCSystemAlert_completionBlock + 8);
  *v7 = v6;
  v7[1] = v4;
  v10 = self;
  sub_247F081EC(v8);
}

- (NSString)description
{
  v2 = self;
  DMCSystemAlert.description.getter();

  v3 = sub_247F23EFC();

  return v3;
}

- (id)notificationParametersOutFlags:(unint64_t *)a3
{
  v4 = self;
  DMCSystemAlert.notificationParametersOutFlags(_:)(a3);

  v5 = sub_247F23E9C();

  return v5;
}

@end