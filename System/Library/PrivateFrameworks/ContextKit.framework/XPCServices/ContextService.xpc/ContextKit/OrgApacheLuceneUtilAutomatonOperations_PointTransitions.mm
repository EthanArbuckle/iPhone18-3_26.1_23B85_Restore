@interface OrgApacheLuceneUtilAutomatonOperations_PointTransitions
- (BOOL)isEqual:(id)a3;
- (int)compareToWithId:(id)a3;
- (void)dealloc;
- (void)resetWithInt:(int)a3;
@end

@implementation OrgApacheLuceneUtilAutomatonOperations_PointTransitions

- (int)compareToWithId:(id)a3
{
  objc_opt_class();
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return self->point_ - *(a3 + 2);
}

- (void)resetWithInt:(int)a3
{
  self->point_ = a3;
  ends = self->ends_;
  if (!ends || (ends->next_ = 0, (starts = self->starts_) == 0))
  {
    JreThrowNullPointerException();
  }

  starts->next_ = 0;
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return *(a3 + 2) == self->point_;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilAutomatonOperations_PointTransitions;
  [(OrgApacheLuceneUtilAutomatonOperations_PointTransitions *)&v3 dealloc];
}

@end