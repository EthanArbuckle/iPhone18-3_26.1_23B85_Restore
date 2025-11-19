@interface DVTProcessorTraceRecorderConfiguration
- (DVTProcessorTraceRecorderConfiguration)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DVTProcessorTraceRecorderConfiguration

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  ProcessorTraceRecorderConfiguration.encode(with:)(v4);
}

- (DVTProcessorTraceRecorderConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end