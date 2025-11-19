@interface MediaContinuityCoexSessionConfig
- (MediaContinuityCoexSessionConfig)init;
- (NSString)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MediaContinuityCoexSessionConfig

- (NSString)description
{
  v2 = self;
  sub_2584730C4();

  v3 = sub_25853341C();

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_258473778(v4);
}

- (MediaContinuityCoexSessionConfig)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end