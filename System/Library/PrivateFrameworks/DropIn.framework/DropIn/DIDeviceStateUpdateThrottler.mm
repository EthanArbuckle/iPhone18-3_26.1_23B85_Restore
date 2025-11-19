@interface DIDeviceStateUpdateThrottler
- (void)handleState:(int64_t)a3 reason:(id)a4 handler:(id)a5;
@end

@implementation DIDeviceStateUpdateThrottler

- (void)handleState:(int64_t)a3 reason:(id)a4 handler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_249DDC878();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v12 = self;
  sub_249DBFB28(a3, v8, v10, sub_249DC03F4, v11);
}

@end