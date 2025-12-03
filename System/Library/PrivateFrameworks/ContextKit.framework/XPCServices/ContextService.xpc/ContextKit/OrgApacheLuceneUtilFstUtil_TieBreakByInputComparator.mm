@interface OrgApacheLuceneUtilFstUtil_TieBreakByInputComparator
- (int)compareWithId:(id)id withId:(id)withId;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilFstUtil_TieBreakByInputComparator

- (int)compareWithId:(id)id withId:(id)withId
{
  comparator = self->comparator_;
  if (!comparator || !id || !withId)
  {
    goto LABEL_10;
  }

  result = [(JavaUtilComparator *)comparator compareWithId:*(id + 2) withId:*(withId + 2)];
  if (result)
  {
    return result;
  }

  v8 = *(id + 3);
  if (!v8 || (v9 = [v8 get]) == 0)
  {
LABEL_10:
    JreThrowNullPointerException();
  }

  v10 = v9;
  v11 = [*(withId + 3) get];

  return [v10 compareToWithId:v11];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilFstUtil_TieBreakByInputComparator;
  [(OrgApacheLuceneUtilFstUtil_TieBreakByInputComparator *)&v3 dealloc];
}

@end