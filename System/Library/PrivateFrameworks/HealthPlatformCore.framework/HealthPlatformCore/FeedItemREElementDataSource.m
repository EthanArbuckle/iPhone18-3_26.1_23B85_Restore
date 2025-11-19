@interface FeedItemREElementDataSource
+ (NSString)bundleIdentifier;
+ (id)contentAttributes;
- (NSArray)supportedSections;
- (_TtC18HealthPlatformCore27FeedItemREElementDataSource)init;
- (void)getElementsInSection:(id)a3 withHandler:(id)a4;
@end

@implementation FeedItemREElementDataSource

+ (NSString)bundleIdentifier
{
  v2 = sub_2287CB210();

  return v2;
}

- (NSArray)supportedSections
{
  if (sub_2287149DC())
  {
    v2 = sub_2287CB390();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (id)contentAttributes
{
  v2 = sub_2287CB390();

  return v2;
}

- (void)getElementsInSection:(id)a3 withHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = v6;
  if (a3)
  {
    v8 = sub_2287CB220();
    a3 = v9;
    if (v7)
    {
LABEL_3:
      v10 = swift_allocObject();
      *(v10 + 16) = v7;
      v7 = sub_228714BD0;
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:
  v11 = self;
  sub_22871240C(v8, a3, v7, v10);
  sub_228714BC0(v7);
}

- (_TtC18HealthPlatformCore27FeedItemREElementDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end