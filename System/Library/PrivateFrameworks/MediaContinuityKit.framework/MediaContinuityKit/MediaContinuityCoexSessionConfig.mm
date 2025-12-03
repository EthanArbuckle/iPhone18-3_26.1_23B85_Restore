@interface MediaContinuityCoexSessionConfig
- (MediaContinuityCoexSessionConfig)init;
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MediaContinuityCoexSessionConfig

- (NSString)description
{
  selfCopy = self;
  sub_2584730C4();

  v3 = sub_25853341C();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_258473778(coderCopy);
}

- (MediaContinuityCoexSessionConfig)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end