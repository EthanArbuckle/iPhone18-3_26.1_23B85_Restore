@interface ICTextElementLocator
- (ICTextElementLocator)init;
- (ICTextElementLocator)initWithTextView:(id)view;
- (void)enumerateTextElementsUsingBlock:(id)block;
@end

@implementation ICTextElementLocator

- (ICTextElementLocator)initWithTextView:(id)view
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(ICTextElementLocator *)&v6 init];
}

- (void)enumerateTextElementsUsingBlock:(id)block
{
  v4 = _Block_copy(block);
  _Block_copy(v4);
  selfCopy = self;
  sub_21549097C(selfCopy, v4);
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