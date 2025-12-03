@interface OrgApacheLuceneSearchFieldValueHitQueue_MultiComparatorsFieldValueHitQueue
- (BOOL)lessThanWithId:(id)id withId:(id)withId;
@end

@implementation OrgApacheLuceneSearchFieldValueHitQueue_MultiComparatorsFieldValueHitQueue

- (BOOL)lessThanWithId:(id)id withId:(id)withId
{
  comparators = self->super.comparators_;
  if (!comparators)
  {
LABEL_18:
    JreThrowNullPointerException();
  }

  size = comparators->super.size_;
  if (size < 1)
  {
LABEL_13:
    v17 = *(id + 3) <= *(withId + 3);
  }

  else
  {
    v9 = 0;
    while (1)
    {
      reverseMul = self->super.reverseMul_;
      if (!reverseMul)
      {
        goto LABEL_18;
      }

      v11 = reverseMul->super.size_;
      if (v9 >= v11)
      {
        IOSArray_throwOutOfBoundsWithMsg(v11, v9);
      }

      v12 = *(&reverseMul->super.size_ + v9 + 1);
      v13 = self->super.comparators_;
      v14 = v13->super.size_;
      if (v9 >= v14)
      {
        IOSArray_throwOutOfBoundsWithMsg(v14, v9);
      }

      v15 = (&v13->elementType_)[v9];
      if (!v15)
      {
        goto LABEL_18;
      }

      v16 = [(IOSClass *)v15 compareWithInt:*(id + 5) withInt:*(withId + 5)]* v12;
      if (v16)
      {
        break;
      }

      if (size == ++v9)
      {
        goto LABEL_13;
      }
    }

    v17 = v16 <= 0;
  }

  return !v17;
}

@end