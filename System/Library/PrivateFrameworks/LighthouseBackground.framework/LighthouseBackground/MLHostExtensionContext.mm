@interface MLHostExtensionContext
- (_TtC20LighthouseBackground22MLHostExtensionContext)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MLHostExtensionContext

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  MLHostExtensionContext.encode(with:)(coderCopy);
}

- (_TtC20LighthouseBackground22MLHostExtensionContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end