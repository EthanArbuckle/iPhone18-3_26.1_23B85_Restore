@interface OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State
+ (void)initialize;
- (BOOL)hasChildren;
- (BOOL)isEqual:(id)a3;
- (OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State)init;
- (id)getStateWithInt:(int)a3;
- (id)lastChild;
- (id)lastChildWithInt:(int)a3;
- (id)newStateWithInt:(int)a3;
- (unint64_t)hash;
- (void)dealloc;
- (void)replaceLastChildWithOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State:(id)a3;
@end

@implementation OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State

- (id)getStateWithInt:(int)a3
{
  v4 = JavaUtilArrays_binarySearchWithIntArray_withInt_(self->labels_, a3);
  if ((v4 & 0x80000000) != 0)
  {
    return 0;
  }

  states = self->states_;
  if (!states)
  {
    JreThrowNullPointerException();
  }

  v6 = v4;
  size = states->super.size_;
  if (v6 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v6);
  }

  return (&states->elementType_)[v6];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if (!a3)
  {
    goto LABEL_21;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  if (self->is_final_ != *(a3 + 24))
  {
    goto LABEL_16;
  }

  v5 = JavaUtilArrays_equalsWithIntArray_withIntArray_(self->labels_, *(a3 + 1));
  if (!v5)
  {
    return v5;
  }

  states = self->states_;
  v7 = *(a3 + 2);
  if ((atomic_load_explicit(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10010F608();
    if (states)
    {
      goto LABEL_7;
    }

LABEL_21:
    JreThrowNullPointerException();
  }

  if (!states)
  {
    goto LABEL_21;
  }

LABEL_7:
  if (!v7)
  {
    goto LABEL_21;
  }

  size = states->super.size_;
  if (size != *(v7 + 8))
  {
LABEL_16:
    LOBYTE(v5) = 0;
    return v5;
  }

  if (size < 1)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v9 = 0;
    do
    {
      v10 = (&states->elementType_)[v9];
      v11 = *(v7 + 8);
      if (v9 >= v11)
      {
        v14 = (&states->elementType_)[v9];
        IOSArray_throwOutOfBoundsWithMsg(v11, v9);
      }

      v12 = *(v7 + 24 + 8 * v9);
      LOBYTE(v5) = v10 == v12;
      if (v10 != v12)
      {
        break;
      }

      ++v9;
    }

    while (v9 < states->super.size_);
  }

  return v5;
}

- (unint64_t)hash
{
  labels = self->labels_;
  if (!labels)
  {
    goto LABEL_10;
  }

  size = labels->super.size_;
  v4 = (size - self->is_final_ + 32 * self->is_final_) ^ self->is_final_;
  v5 = &labels->super.size_ + 1;
  v6 = &v5[size];
  while (v5 < v6)
  {
    v7 = *v5++;
    v4 ^= v7 - v4 + 32 * v4;
  }

  states = self->states_;
  if (!states)
  {
LABEL_10:
    JreThrowNullPointerException();
  }

  p_elementType = &states->elementType_;
  v10 = &(&states->elementType_)[states->super.size_];
  while (p_elementType < v10)
  {
    v11 = *p_elementType++;
    v4 ^= JavaLangSystem_identityHashCodeWithId_(v11);
  }

  return v4;
}

- (BOOL)hasChildren
{
  labels = self->labels_;
  if (!labels)
  {
    JreThrowNullPointerException();
  }

  return labels->super.size_ > 0;
}

- (id)newStateWithInt:(int)a3
{
  p_labels = &self->labels_;
  labels = self->labels_;
  if (!labels)
  {
    goto LABEL_9;
  }

  v7 = JavaUtilArrays_copyOfWithIntArray_withInt_(labels, labels->super.size_ + 1);
  JreStrongAssign(p_labels, v7);
  states = self->states_;
  p_states = &self->states_;
  v8 = states;
  if (!states)
  {
    goto LABEL_9;
  }

  v11 = JavaUtilArrays_copyOfWithNSObjectArray_withInt_(v8, v8->super.size_ + 1);
  JreStrongAssign(p_states, v11);
  v12 = *p_labels;
  if (!*p_labels)
  {
    goto LABEL_9;
  }

  size = v12->super.size_;
  if (size <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, size - 1);
  }

  *(&v12->super.size_ + size) = a3;
  v14 = *p_states;
  if (!*p_states)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  v15 = v14->super.size_ - 1;
  v16 = sub_10010F5AC();

  return IOSObjectArray_SetAndConsume(v14, v15, v16);
}

- (id)lastChild
{
  states = self->states_;
  if (!states)
  {
    JreThrowNullPointerException();
  }

  size = states->super.size_;
  if (size <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (size - 1));
  }

  return *(&states->isRetained_ + size);
}

- (id)lastChildWithInt:(int)a3
{
  labels = self->labels_;
  if (!labels)
  {
    goto LABEL_9;
  }

  size = labels->super.size_;
  v5 = (size - 1);
  if (size - 1 < 0)
  {
    return 0;
  }

  if (size == 0x80000000)
  {
    IOSArray_throwOutOfBoundsWithMsg(0x80000000, v5);
  }

  if (*(&labels->super.size_ + v5 + 1) != a3)
  {
    return 0;
  }

  states = self->states_;
  if (!states)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  v7 = states->super.size_;
  if (v5 >= v7)
  {
    IOSArray_throwOutOfBoundsWithMsg(v7, v5);
  }

  return (&states->elementType_)[v5];
}

- (void)replaceLastChildWithOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State:(id)a3
{
  states = self->states_;
  if (!states)
  {
    JreThrowNullPointerException();
  }

  v5 = states->super.size_ - 1;

  IOSObjectArray_Set(states, v5, a3);
}

- (OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State)init
{
  JreStrongAssign(&self->labels_, qword_100554708);
  JreStrongAssign(&self->states_, qword_100554710);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State;
  [(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    JreStrongAssignAndConsume(&qword_100554708, [IOSIntArray newArrayWithLength:0]);
    v2 = [IOSObjectArray newArrayWithLength:0 type:OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_class_()];
    JreStrongAssignAndConsume(&qword_100554710, v2);
    atomic_store(1u, OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State__initialized);
  }
}

@end