@interface NDFeedItemPoolFetchOptions
- (NDFeedItemPoolFetchOptions)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NDFeedItemPoolFetchOptions

- (void)encodeWithCoder:(id)coder
{
  v4 = *(&self->super.isa + OBJC_IVAR___NDFeedItemPoolFetchOptions_name);
  v5 = *&self->name[OBJC_IVAR___NDFeedItemPoolFetchOptions_name];
  coderCopy = coder;
  selfCopy = self;
  v8 = sub_25BE4BA3C();
  v9 = sub_25BE4BA3C();
  [coderCopy encodeObject:v8 forKey:v9];

  v10 = *(&selfCopy->super.isa + OBJC_IVAR___NDFeedItemPoolFetchOptions_maxAge);
  v11 = sub_25BE4BA3C();
  [coderCopy encodeDouble:v11 forKey:v10];
}

- (NDFeedItemPoolFetchOptions)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end