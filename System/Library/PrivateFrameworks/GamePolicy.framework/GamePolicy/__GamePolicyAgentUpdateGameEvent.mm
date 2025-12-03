@interface __GamePolicyAgentUpdateGameEvent
- (__GamePolicyAgentUpdateGameEvent)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation __GamePolicyAgentUpdateGameEvent

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_24E5CD4B4(coderCopy);
}

- (__GamePolicyAgentUpdateGameEvent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end