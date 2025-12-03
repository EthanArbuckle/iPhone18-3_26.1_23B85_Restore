@interface OrgApacheLuceneUtilAttributeSource_$1
- (id)computeValueWithIOSClass:(id)class;
@end

@implementation OrgApacheLuceneUtilAttributeSource_$1

- (id)computeValueWithIOSClass:(id)class
{
  v4 = new_JavaUtilLinkedHashSet_init();
  do
  {
    if (!class || (v5 = [class getInterfaces]) == 0)
    {
LABEL_14:
      JreThrowNullPointerException();
    }

    v6 = (v5 + 24);
    v7 = &v5[8 * *(v5 + 2) + 24];
    while (v6 < v7)
    {
      v9 = *v6++;
      v8 = v9;
      if (v9 != OrgApacheLuceneUtilAttribute_class_() && [OrgApacheLuceneUtilAttribute_class_() isAssignableFrom:v8])
      {
        if (!v8)
        {
          goto LABEL_14;
        }

        -[JavaUtilHashSet addWithId:](v4, "addWithId:", [v8 asSubclass:OrgApacheLuceneUtilAttribute_class_()]);
      }
    }

    class = [class getSuperclass];
  }

  while (class);
  v10 = [IOSObjectArray arrayWithLength:[(JavaUtilHashSet *)v4 size] type:IOSClass_class_()];

  return [(JavaUtilAbstractCollection *)v4 toArrayWithNSObjectArray:v10];
}

@end