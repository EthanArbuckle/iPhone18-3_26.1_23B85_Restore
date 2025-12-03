@interface OrgApacheLuceneUtilAutomatonOperations_TransitionList
- (void)addWithOrgApacheLuceneUtilAutomatonTransition:(id)transition;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilAutomatonOperations_TransitionList

- (void)addWithOrgApacheLuceneUtilAutomatonTransition:(id)transition
{
  p_transitions = &self->transitions_;
  transitions = self->transitions_;
  if (!transitions)
  {
    goto LABEL_13;
  }

  v12 = self->next_ + 3;
  if (transitions[2] < v12)
  {
    v13 = OrgApacheLuceneUtilArrayUtil_growWithIntArray_withInt_(transitions, v12, transition, v3, v4, v5, v6, v7);
    JreStrongAssign(p_transitions, v13);
  }

  if (!transition || (v14 = *p_transitions) == 0)
  {
LABEL_13:
    JreThrowNullPointerException();
  }

  next = self->next_;
  size = v14->super.size_;
  if (next < 0 || next >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, next);
  }

  *(&v14->super.size_ + next + 1) = *(transition + 3);
  v17 = self->transitions_;
  v18 = v17->super.size_;
  v19 = self->next_ + 1;
  if (v19 < 0 || v19 >= v18)
  {
    IOSArray_throwOutOfBoundsWithMsg(v18, v19);
  }

  *(&v17->super.size_ + v19 + 1) = *(transition + 4);
  v20 = *(transition + 5);
  v21 = self->transitions_;
  v22 = self->next_;
  v23 = v21->super.size_;
  v24 = v22 + 2;
  if (v22 + 2 < 0 || v24 >= v23)
  {
    IOSArray_throwOutOfBoundsWithMsg(v23, (v22 + 2));
  }

  *(&v21->super.size_ + v24 + 1) = v20;
  self->next_ += 3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilAutomatonOperations_TransitionList;
  [(OrgApacheLuceneUtilAutomatonOperations_TransitionList *)&v3 dealloc];
}

@end