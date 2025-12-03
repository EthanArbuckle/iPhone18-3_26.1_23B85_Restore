@interface CKAbstractWriteBatch
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation CKAbstractWriteBatch

- (void)setObject:(id)object forKey:(id)key
{
  if (object)
  {
    keyCopy = key;

    swift_unknownObjectRetain();
    sub_1C86F929C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    keyCopy2 = key;
  }

  sub_1C86F8EFC();

  sub_1C86D61F4(v7);

  sub_1C86885EC(v7);
}

@end