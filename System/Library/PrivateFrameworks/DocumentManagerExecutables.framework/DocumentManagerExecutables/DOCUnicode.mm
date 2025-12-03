@interface DOCUnicode
+ (id)nonBreakingSpaceWithZeroWidth:(BOOL)width;
+ (id)uc:(id)uc;
+ (int64_t)layoutDirectionForUIDirection:(int64_t)direction;
- (_TtC26DocumentManagerExecutables10DOCUnicode)init;
@end

@implementation DOCUnicode

- (_TtC26DocumentManagerExecutables10DOCUnicode)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (id)uc:(id)uc
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  v6 = type metadata accessor for DOCUnicode();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC26DocumentManagerExecutables10DOCUnicode_rawValue];
  *v8 = v3;
  v8[1] = v5;
  v11.receiver = v7;
  v11.super_class = v6;
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

+ (id)nonBreakingSpaceWithZeroWidth:(BOOL)width
{
  if (width)
  {
    if (one-time initialization token for nonBreakingSpace_zeroWidth != -1)
    {
      swift_once();
    }

    v3 = &static DOCUnicode.nonBreakingSpace_zeroWidth;
  }

  else
  {
    if (one-time initialization token for nonBreakingSpace != -1)
    {
      swift_once();
    }

    v3 = &static DOCUnicode.nonBreakingSpace;
  }

  v4 = *v3;

  return v4;
}

+ (int64_t)layoutDirectionForUIDirection:(int64_t)direction
{
  if (direction == 1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

@end