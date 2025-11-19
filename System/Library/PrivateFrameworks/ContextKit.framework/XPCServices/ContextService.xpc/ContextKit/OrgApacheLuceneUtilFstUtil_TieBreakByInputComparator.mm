@interface OrgApacheLuceneUtilFstUtil_TieBreakByInputComparator
- (int)compareWithId:(id)a3 withId:(id)a4;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilFstUtil_TieBreakByInputComparator

- (int)compareWithId:(id)a3 withId:(id)a4
{
  comparator = self->comparator_;
  if (!comparator || !a3 || !a4)
  {
    goto LABEL_10;
  }

  result = [(JavaUtilComparator *)comparator compareWithId:*(a3 + 2) withId:*(a4 + 2)];
  if (result)
  {
    return result;
  }

  v8 = *(a3 + 3);
  if (!v8 || (v9 = [v8 get]) == 0)
  {
LABEL_10:
    JreThrowNullPointerException();
  }

  v10 = v9;
  v11 = [*(a4 + 3) get];

  return [v10 compareToWithId:v11];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilFstUtil_TieBreakByInputComparator;
  [(OrgApacheLuceneUtilFstUtil_TieBreakByInputComparator *)&v3 dealloc];
}

@end