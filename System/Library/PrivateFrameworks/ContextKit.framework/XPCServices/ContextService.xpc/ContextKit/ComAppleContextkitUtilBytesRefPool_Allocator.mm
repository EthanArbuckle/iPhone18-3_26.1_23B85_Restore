@interface ComAppleContextkitUtilBytesRefPool_Allocator
- (void)recycleByteBlocksWithJavaUtilList:(id)list;
@end

@implementation ComAppleContextkitUtilBytesRefPool_Allocator

- (void)recycleByteBlocksWithJavaUtilList:(id)list
{
  if (!list || (v4 = [list toArrayWithNSObjectArray:{+[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", objc_msgSend(list, "size"), IOSClass_arrayType(+[IOSClass byteClass](IOSClass, "byteClass"), 1u))}]) == 0)
  {
    JreThrowNullPointerException();
  }

  v5 = v4[2];

  [(ComAppleContextkitUtilBytesRefPool_Allocator *)self recycleByteBlocksWithByteArray2:v4 withInt:0 withInt:v5];
}

@end