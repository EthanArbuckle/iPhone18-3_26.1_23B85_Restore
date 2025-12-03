@interface DIDeviceStateUpdateThrottler
- (void)handleState:(int64_t)state reason:(id)reason handler:(id)handler;
@end

@implementation DIDeviceStateUpdateThrottler

- (void)handleState:(int64_t)state reason:(id)reason handler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = sub_249DDC878();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  selfCopy = self;
  sub_249DBFB28(state, v8, v10, sub_249DC03F4, v11);
}

@end