@interface OrgApacheLuceneSearchBooleanScorer_TailPriorityQueue
- (BOOL)lessThanWithId:(id)a3 withId:(id)a4;
- (id)getWithInt:(int)a3;
@end

@implementation OrgApacheLuceneSearchBooleanScorer_TailPriorityQueue

- (BOOL)lessThanWithId:(id)a3 withId:(id)a4
{
  if (!a3 || !a4)
  {
    JreThrowNullPointerException();
  }

  return *(a3 + 2) < *(a4 + 2);
}

- (id)getWithInt:(int)a3
{
  if (a3 < 0 || [(OrgApacheLuceneUtilPriorityQueue *)self size]<= a3)
  {
    v11 = new_JavaLangIndexOutOfBoundsException_init();
    objc_exception_throw(v11);
  }

  v5 = [(OrgApacheLuceneUtilPriorityQueue *)self getHeapArray];
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  v6 = v5;
  v7 = (a3 + 1);
  v8 = v5[2];
  if (v7 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, v7);
  }

  v9 = *&v6[2 * v7 + 6];
  objc_opt_class();
  if (v9 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return v9;
}

@end