@interface CKAbstractWriteBatch
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation CKAbstractWriteBatch

- (void)setObject:(id)a3 forKey:(id)a4
{
  if (a3)
  {
    v5 = a4;

    swift_unknownObjectRetain();
    sub_1C86F929C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    v6 = a4;
  }

  sub_1C86F8EFC();

  sub_1C86D61F4(v7);

  sub_1C86885EC(v7);
}

@end