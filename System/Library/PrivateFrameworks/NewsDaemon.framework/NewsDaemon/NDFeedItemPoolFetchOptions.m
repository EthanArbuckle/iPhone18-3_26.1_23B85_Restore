@interface NDFeedItemPoolFetchOptions
- (NDFeedItemPoolFetchOptions)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NDFeedItemPoolFetchOptions

- (void)encodeWithCoder:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___NDFeedItemPoolFetchOptions_name);
  v5 = *&self->name[OBJC_IVAR___NDFeedItemPoolFetchOptions_name];
  v6 = a3;
  v7 = self;
  v8 = sub_25BE4BA3C();
  v9 = sub_25BE4BA3C();
  [v6 encodeObject:v8 forKey:v9];

  v10 = *(&v7->super.isa + OBJC_IVAR___NDFeedItemPoolFetchOptions_maxAge);
  v11 = sub_25BE4BA3C();
  [v6 encodeDouble:v11 forKey:v10];
}

- (NDFeedItemPoolFetchOptions)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end