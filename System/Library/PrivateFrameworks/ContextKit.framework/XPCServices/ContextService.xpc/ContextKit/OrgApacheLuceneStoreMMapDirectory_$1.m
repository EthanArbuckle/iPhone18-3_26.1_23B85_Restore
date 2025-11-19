@interface OrgApacheLuceneStoreMMapDirectory_$1
- (id)run;
@end

@implementation OrgApacheLuceneStoreMMapDirectory_$1

- (id)run
{
  v2 = IOSClass_forName_(@"java.nio.DirectByteBuffer");
  if (!v2 || (v3 = [v2 getMethod:@"cleaner" parameterTypes:{+[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", 0, IOSClass_class_())}]) == 0)
  {
    JreThrowNullPointerException();
  }

  [v3 setAccessibleWithBoolean:1];
  return JavaLangBoolean_valueOfWithBoolean_(1);
}

@end