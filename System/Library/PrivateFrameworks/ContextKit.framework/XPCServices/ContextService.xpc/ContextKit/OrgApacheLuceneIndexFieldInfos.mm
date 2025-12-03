@interface OrgApacheLuceneIndexFieldInfos
- (id)fieldInfoWithNSString:(id)string;
- (id)iterator;
- (int)size;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexFieldInfos

- (int)size
{
  byName = self->byName_;
  if (!byName)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilHashMap *)byName size];
}

- (id)iterator
{
  values = self->values_;
  if (!values)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilCollection *)values iterator];
}

- (id)fieldInfoWithNSString:(id)string
{
  byName = self->byName_;
  if (!byName)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilHashMap *)byName getWithId:string];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexFieldInfos;
  [(OrgApacheLuceneIndexFieldInfos *)&v3 dealloc];
}

@end