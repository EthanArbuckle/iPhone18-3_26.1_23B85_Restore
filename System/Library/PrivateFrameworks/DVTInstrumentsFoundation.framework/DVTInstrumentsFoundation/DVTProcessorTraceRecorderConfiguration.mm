@interface DVTProcessorTraceRecorderConfiguration
- (DVTProcessorTraceRecorderConfiguration)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DVTProcessorTraceRecorderConfiguration

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  ProcessorTraceRecorderConfiguration.encode(with:)(coderCopy);
}

- (DVTProcessorTraceRecorderConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end