@interface OrgApacheLuceneIndexIndexCommit
- (BOOL)isEqual:(id)equal;
- (int)compareToWithId:(id)id;
- (unint64_t)hash;
@end

@implementation OrgApacheLuceneIndexIndexCommit

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  objc_opt_class();
  if (!equal)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  getDirectory = [equal getDirectory];
  if (getDirectory != [(OrgApacheLuceneIndexIndexCommit *)self getDirectory])
  {
    return 0;
  }

  getGeneration = [equal getGeneration];
  return getGeneration == [(OrgApacheLuceneIndexIndexCommit *)self getGeneration];
}

- (unint64_t)hash
{
  getDirectory = [(OrgApacheLuceneIndexIndexCommit *)self getDirectory];
  if (!getDirectory)
  {
    JreThrowNullPointerException();
  }

  v4 = [getDirectory hash];
  return ([JavaLangLong_valueOfWithLong_([(OrgApacheLuceneIndexIndexCommit *)self getGeneration]) hash]+ v4);
}

- (int)compareToWithId:(id)id
{
  objc_opt_class();
  if (!id)
  {
    [(OrgApacheLuceneIndexIndexCommit *)self getDirectory];
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  getDirectory = [(OrgApacheLuceneIndexIndexCommit *)self getDirectory];
  if (getDirectory != [id getDirectory])
  {
    v9 = new_JavaLangUnsupportedOperationException_initWithNSString_(@"cannot compare IndexCommits from different Directory instances");
    objc_exception_throw(v9);
  }

  getGeneration = [(OrgApacheLuceneIndexIndexCommit *)self getGeneration];
  getGeneration2 = [id getGeneration];

  return JavaLangLong_compareWithLong_withLong_(getGeneration, getGeneration2);
}

@end