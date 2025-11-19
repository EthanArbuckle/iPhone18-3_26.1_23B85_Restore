@interface ICTextElementLocator
- (ICTextElementLocator)init;
- (ICTextElementLocator)initWithTextView:(id)a3;
- (void)enumerateTextElementsUsingBlock:(id)a3;
@end

@implementation ICTextElementLocator

- (ICTextElementLocator)initWithTextView:(id)a3
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(ICTextElementLocator *)&v6 init];
}

- (void)enumerateTextElementsUsingBlock:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_21549097C(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (ICTextElementLocator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end