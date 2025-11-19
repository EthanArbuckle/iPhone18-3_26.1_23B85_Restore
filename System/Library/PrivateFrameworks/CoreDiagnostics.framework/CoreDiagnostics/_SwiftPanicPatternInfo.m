@interface _SwiftPanicPatternInfo
- (_SwiftPanicPatternInfo)init;
@end

@implementation _SwiftPanicPatternInfo

- (_SwiftPanicPatternInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end