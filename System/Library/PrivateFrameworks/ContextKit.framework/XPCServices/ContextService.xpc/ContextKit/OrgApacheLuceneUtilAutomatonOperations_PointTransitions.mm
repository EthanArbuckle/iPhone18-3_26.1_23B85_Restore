@interface OrgApacheLuceneUtilAutomatonOperations_PointTransitions
- (BOOL)isEqual:(id)equal;
- (int)compareToWithId:(id)id;
- (void)dealloc;
- (void)resetWithInt:(int)int;
@end

@implementation OrgApacheLuceneUtilAutomatonOperations_PointTransitions

- (int)compareToWithId:(id)id
{
  objc_opt_class();
  if (!id)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return self->point_ - *(id + 2);
}

- (void)resetWithInt:(int)int
{
  self->point_ = int;
  ends = self->ends_;
  if (!ends || (ends->next_ = 0, (starts = self->starts_) == 0))
  {
    JreThrowNullPointerException();
  }

  starts->next_ = 0;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if (!equal)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return *(equal + 2) == self->point_;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilAutomatonOperations_PointTransitions;
  [(OrgApacheLuceneUtilAutomatonOperations_PointTransitions *)&v3 dealloc];
}

@end