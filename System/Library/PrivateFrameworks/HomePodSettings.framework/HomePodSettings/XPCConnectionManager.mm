@interface XPCConnectionManager
- (void)installedProfilesWithCompletionHandler:(id)handler;
@end

@implementation XPCConnectionManager

- (void)installedProfilesWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;

  sub_254366AA8(&unk_2543AC7D0, v5);
}

@end