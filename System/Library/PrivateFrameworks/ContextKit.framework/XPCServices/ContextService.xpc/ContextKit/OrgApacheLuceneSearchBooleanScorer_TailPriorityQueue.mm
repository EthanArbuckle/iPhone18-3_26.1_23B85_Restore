@interface OrgApacheLuceneSearchBooleanScorer_TailPriorityQueue
- (BOOL)lessThanWithId:(id)id withId:(id)withId;
- (id)getWithInt:(int)int;
@end

@implementation OrgApacheLuceneSearchBooleanScorer_TailPriorityQueue

- (BOOL)lessThanWithId:(id)id withId:(id)withId
{
  if (!id || !withId)
  {
    JreThrowNullPointerException();
  }

  return *(id + 2) < *(withId + 2);
}

- (id)getWithInt:(int)int
{
  if (int < 0 || [(OrgApacheLuceneUtilPriorityQueue *)self size]<= int)
  {
    v11 = new_JavaLangIndexOutOfBoundsException_init();
    objc_exception_throw(v11);
  }

  getHeapArray = [(OrgApacheLuceneUtilPriorityQueue *)self getHeapArray];
  if (!getHeapArray)
  {
    JreThrowNullPointerException();
  }

  v6 = getHeapArray;
  v7 = (int + 1);
  v8 = getHeapArray[2];
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