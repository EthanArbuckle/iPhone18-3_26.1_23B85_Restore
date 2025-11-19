@interface OrgApacheLuceneIndexFieldInfos
- (id)fieldInfoWithNSString:(id)a3;
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

- (id)fieldInfoWithNSString:(id)a3
{
  byName = self->byName_;
  if (!byName)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilHashMap *)byName getWithId:a3];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexFieldInfos;
  [(OrgApacheLuceneIndexFieldInfos *)&v3 dealloc];
}

@end