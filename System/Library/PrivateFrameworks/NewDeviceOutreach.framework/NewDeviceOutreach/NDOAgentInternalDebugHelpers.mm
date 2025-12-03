@interface NDOAgentInternalDebugHelpers
+ (id)handleInternalCommand:(id)command;
+ (void)runDaemonStartupLogicIfNeeded;
- (_TtC8ndoagent28NDOAgentInternalDebugHelpers)init;
@end

@implementation NDOAgentInternalDebugHelpers

+ (id)handleInternalCommand:(id)command
{
  commandCopy = command;
  v4 = _s8ndoagent28NDOAgentInternalDebugHelpersC06handleC7CommandySo7NSErrorCSgSo12NSDictionaryCFZ_0(commandCopy);

  return v4;
}

+ (void)runDaemonStartupLogicIfNeeded
{
  if ([objc_opt_self() isInternal])
  {
    type metadata accessor for FileBasedRequestsStubbing();
    dispatch thunk of static FileBasedRequestsStubbing.stubRequests()();
    sub_10005934C();

    sub_10005A880();
  }
}

- (_TtC8ndoagent28NDOAgentInternalDebugHelpers)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for NDOAgentInternalDebugHelpers();
  return [(NDOAgentInternalDebugHelpers *)&v3 init];
}

@end