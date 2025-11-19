@interface OrgApacheLuceneUtilAutomatonAutomaton
- (BOOL)transitionSortedWithOrgApacheLuceneUtilAutomatonTransition:(id)a3;
- (id)getSortedTransitions;
- (id)getStartPoints;
- (id)toDot;
- (int)createState;
- (int)getNumTransitionsWithInt:(int)a3;
- (int)initTransitionWithInt:(int)a3 withOrgApacheLuceneUtilAutomatonTransition:(id)a4;
- (int)stepWithInt:(int)a3 withInt:(int)a4;
- (int64_t)ramBytesUsed;
- (uint64_t)finishCurrentState;
- (unsigned)growStates;
- (unsigned)growTransitions;
- (void)copy__WithOrgApacheLuceneUtilAutomatonAutomaton:(id)a3;
- (void)dealloc;
- (void)finishState;
- (void)getNextTransitionWithOrgApacheLuceneUtilAutomatonTransition:(id)a3;
- (void)getTransitionWithInt:(int)a3 withInt:(int)a4 withOrgApacheLuceneUtilAutomatonTransition:(id)a5;
@end

@implementation OrgApacheLuceneUtilAutomatonAutomaton

- (int)createState
{
  [OrgApacheLuceneUtilAutomatonAutomaton growStates]_0(self, a2, v2, v3, v4, v5, v6, v7);
  states = self->states_;
  if (!states)
  {
    JreThrowNullPointerException();
  }

  nextState = self->nextState_;
  size = states->super.size_;
  if ((nextState & 0x80000000) != 0 || nextState >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, self->nextState_);
  }

  result = nextState / 2;
  *(&states->super.size_ + nextState + 1) = -1;
  self->nextState_ += 2;
  return result;
}

- (unsigned)growStates
{
  v9 = (a1 + 24);
  result = *(a1 + 24);
  if (!result)
  {
    JreThrowNullPointerException();
  }

  v10 = *(v9 - 4) + 2;
  if (v10 >= result[2])
  {
    v11 = OrgApacheLuceneUtilArrayUtil_growWithIntArray_withInt_(result, v10, a3, a4, a5, a6, a7, a8);

    return JreStrongAssign(v9, v11);
  }

  return result;
}

- (id)getSortedTransitions
{
  v3 = [(OrgApacheLuceneUtilAutomatonAutomaton *)self getNumStates];
  v4 = OrgApacheLuceneUtilAutomatonTransition_class_();
  v5 = [IOSObjectArray arrayWithLength:v3 type:IOSClass_arrayType(v4, 1u)];
  if (v3 >= 1)
  {
    v6 = 0;
    v7 = v3;
    do
    {
      v8 = [(OrgApacheLuceneUtilAutomatonAutomaton *)self getNumTransitionsWithInt:v6];
      v9 = [IOSObjectArray newArrayWithLength:v8 type:OrgApacheLuceneUtilAutomatonTransition_class_()];
      IOSObjectArray_SetAndConsume(v5, v6, v9);
      if (v8 >= 1)
      {
        v10 = 0;
        v11 = v8;
        do
        {
          v12 = new_OrgApacheLuceneUtilAutomatonTransition_init();
          [(OrgApacheLuceneUtilAutomatonAutomaton *)self getTransitionWithInt:v6 withInt:v10 withOrgApacheLuceneUtilAutomatonTransition:v12];
          size = v5->super.size_;
          if (v6 >= size)
          {
            IOSArray_throwOutOfBoundsWithMsg(size, v6);
          }

          v14 = (&v5->elementType_)[v6];
          if (!v14)
          {
            JreThrowNullPointerException();
          }

          IOSObjectArray_Set(v14, v10++, v12);
        }

        while (v11 != v10);
      }

      ++v6;
    }

    while (v6 != v7);
  }

  return v5;
}

- (unsigned)growTransitions
{
  v9 = (a1 + 40);
  result = *(a1 + 40);
  if (!result)
  {
    JreThrowNullPointerException();
  }

  v10 = *(v9 - 7) + 3;
  if (v10 >= result[2])
  {
    v11 = OrgApacheLuceneUtilArrayUtil_growWithIntArray_withInt_(result, v10, a3, a4, a5, a6, a7, a8);

    return JreStrongAssign(v9, v11);
  }

  return result;
}

- (uint64_t)finishCurrentState
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    goto LABEL_81;
  }

  v3 = 2 * *(a1 + 16);
  v4 = v3 | 1;
  v5 = *(v1 + 8);
  if (v3 < 0 || v4 >= v5)
  {
    IOSArray_throwOutOfBoundsWithMsg(v5, v3 | 1);
  }

  v6 = v1;
  v7 = *(v1 + 12 + 4 * v4);
  if (v3 < 0 || v3 >= v5)
  {
    IOSArray_throwOutOfBoundsWithMsg(v5, v3);
  }

  v8 = *(a1 + 56);
  if (!v8)
  {
    goto LABEL_81;
  }

  v9 = *(v6 + 12 + 4 * v3);
  v10 = (v9 / 3);
  [v8 sortWithInt:v10 withInt:(v9 / 3 + v7)];
  v77 = v9;
  if (v7 < 1)
  {
    v11 = 0;
    goto LABEL_61;
  }

  v76 = v10;
  v11 = 0;
  v12 = -1;
  v75 = v7;
  v13 = v7;
  v14 = v9;
  v15 = -1;
  v16 = -1;
  v17 = v9;
  do
  {
    v18 = *(a1 + 40);
    if (!v18)
    {
      goto LABEL_81;
    }

    v19 = *(v18 + 8);
    if ((v14 & 0x80000000) != 0 || v14 >= v19)
    {
      IOSArray_throwOutOfBoundsWithMsg(v19, v14);
    }

    v20 = *(a1 + 40);
    v21 = *(v18 + 12 + 4 * v14);
    v22 = v14 + 1;
    if (v14 + 1 < 0 || v22 >= v19)
    {
      IOSArray_throwOutOfBoundsWithMsg(v19, v22);
    }

    v23 = *(v20 + 12 + 4 * v22);
    v24 = v14 + 2;
    if (v14 + 2 < 0 || v24 >= v19)
    {
      IOSArray_throwOutOfBoundsWithMsg(v19, v24);
    }

    v25 = v14 + 2;
    v26 = *(v20 + 12 + 4 * v25);
    if (v16 != v21)
    {
      if (v16 != -1)
      {
        v37 = *(a1 + 40);
        v38 = *(v37 + 8);
        v39 = 3 * v11 + v17;
        if (v39 < 0 || v39 >= v38)
        {
          IOSArray_throwOutOfBoundsWithMsg(v38, v39);
        }

        *(v37 + 12 + 4 * v39) = v16;
        v40 = *(a1 + 40);
        v41 = *(v40 + 8);
        v42 = v39 + 1;
        if (v39 + 1 < 0 || v42 >= v41)
        {
          IOSArray_throwOutOfBoundsWithMsg(v41, v42);
        }

        *(v40 + 12 + 4 * v42) = v12;
        v43 = *(a1 + 40);
        v44 = *(v43 + 8);
        v45 = v39 + 2;
        v46 = v39 + 2;
        if (v46 < 0 || v45 >= v44)
        {
          IOSArray_throwOutOfBoundsWithMsg(v44, v45);
        }

        *(v43 + 12 + 4 * v46) = v15;
        ++v11;
      }

      v16 = v21;
      goto LABEL_35;
    }

    if (v23 > v15 + 1)
    {
      if (v16 != -1)
      {
        v27 = *(a1 + 40);
        v28 = *(v27 + 8);
        v29 = 3 * v11 + v17;
        if (v29 < 0 || v29 >= v28)
        {
          IOSArray_throwOutOfBoundsWithMsg(v28, v29);
        }

        *(v27 + 12 + 4 * v29) = v16;
        v30 = *(a1 + 40);
        v31 = *(v30 + 8);
        v32 = v29 + 1;
        if (v29 + 1 < 0 || v32 >= v31)
        {
          IOSArray_throwOutOfBoundsWithMsg(v31, v32);
        }

        *(v30 + 12 + 4 * v32) = v12;
        v33 = *(a1 + 40);
        v34 = *(v33 + 8);
        v35 = v29 + 2;
        v36 = v29 + 2;
        if (v36 < 0 || v35 >= v34)
        {
          IOSArray_throwOutOfBoundsWithMsg(v34, v35);
        }

        *(v33 + 12 + 4 * v36) = v15;
        ++v11;
      }

LABEL_35:
      v15 = v26;
      v12 = v23;
      goto LABEL_38;
    }

    if (v26 > v15)
    {
      v15 = *(v20 + 12 + 4 * v25);
    }

LABEL_38:
    v14 = (v14 + 3);
    --v13;
  }

  while (v13);
  if (v16 == -1)
  {
    v10 = v76;
    goto LABEL_60;
  }

  v47 = *(a1 + 40);
  if (!v47)
  {
    goto LABEL_81;
  }

  v48 = *(v47 + 8);
  v49 = 3 * v11 + v17;
  v50 = v49;
  if (v49 < 0 || v49 >= v48)
  {
    IOSArray_throwOutOfBoundsWithMsg(v48, v49);
  }

  *(v47 + 12 + 4 * v49) = v16;
  v51 = *(a1 + 40);
  v52 = *(v51 + 8);
  v53 = v49 + 1;
  if (v50 + 1 < 0 || v53 >= v52)
  {
    IOSArray_throwOutOfBoundsWithMsg(v52, v53);
  }

  *(v51 + 12 + 4 * v53) = v12;
  v54 = *(a1 + 40);
  v55 = *(v54 + 8);
  v57 = v50 + 2;
  v56 = v50 + 2 < 0;
  v58 = v50 + 2;
  v10 = v76;
  if (v56 || v57 >= v55)
  {
    IOSArray_throwOutOfBoundsWithMsg(v55, v57);
  }

  *(v54 + 12 + 4 * v58) = v15;
  ++v11;
LABEL_60:
  LODWORD(v7) = v75;
LABEL_61:
  v59 = *(a1 + 16);
  *(a1 + 12) += -3 * (v7 - v11);
  v60 = *(a1 + 24);
  v61 = (2 * v59) | 1;
  v62 = *(v60 + 8);
  if (2 * v59 < 0 || v61 >= v62)
  {
    IOSArray_throwOutOfBoundsWithMsg(v62, (2 * v59) | 1);
  }

  *(v60 + 12 + 4 * v61) = v11;
  v63 = *(a1 + 64);
  if (!v63)
  {
    goto LABEL_81;
  }

  v64 = v11;
  result = [v63 sortWithInt:v10 withInt:(v11 + v10)];
  if (*(a1 + 48) != 1 || v64 < 2)
  {
    return result;
  }

  v66 = *(a1 + 40);
  if (!v66)
  {
LABEL_81:
    JreThrowNullPointerException();
  }

  v67 = *(v66 + 8);
  v68 = v77 + 2;
  if (v77 + 2 < 0 || v68 >= v67)
  {
    IOSArray_throwOutOfBoundsWithMsg(v67, v68);
  }

  v69 = (v66 + 12 + 4 * (v77 + 2));
  v70 = (v77 + 5);
  v71 = v64 - 1;
  while (1)
  {
    v72 = *(a1 + 40);
    result = *(v72 + 8);
    v73 = v70 - 1;
    if (v70 - 1 < 0 || v73 >= result)
    {
      IOSArray_throwOutOfBoundsWithMsg(result, v73);
    }

    if (*(v72 + 12 + 4 * v73) <= *v69)
    {
      break;
    }

    v74 = *(a1 + 40);
    result = *(v74 + 8);
    if ((v70 & 0x80000000) != 0 || v70 >= result)
    {
      IOSArray_throwOutOfBoundsWithMsg(result, v70);
    }

    v69 = (v74 + 12 + 4 * v70);
    v70 = (v70 + 3);
    if (!--v71)
    {
      return result;
    }
  }

  *(a1 + 48) = 0;
  return result;
}

- (void)copy__WithOrgApacheLuceneUtilAutomatonAutomaton:(id)a3
{
  v5 = [(OrgApacheLuceneUtilAutomatonAutomaton *)self getNumStates];
  if (!a3)
  {
    goto LABEL_31;
  }

  v12 = v5;
  v13 = OrgApacheLuceneUtilArrayUtil_growWithIntArray_withInt_(self->states_, *(a3 + 2) + self->nextState_, v6, v7, v8, v9, v10, v11);
  JreStrongAssign(&self->states_, v13);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*(a3 + 3), 0, self->states_, self->nextState_, *(a3 + 2));
  v14 = *(a3 + 2);
  if (v14 >= 1)
  {
    v15 = 0;
    while (1)
    {
      states = self->states_;
      if (!states)
      {
        break;
      }

      size = states->super.size_;
      v18 = v15 + self->nextState_;
      if (v18 < 0 || v18 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v18);
      }

      if (*(&states->super.size_ + v18 + 1) != -1)
      {
        v19 = self->states_;
        v20 = v19->super.size_;
        v21 = v15 + self->nextState_;
        if (v21 < 0 || v21 >= v20)
        {
          IOSArray_throwOutOfBoundsWithMsg(v20, v21);
        }

        *(&v19->super.size_ + v21 + 1) += self->nextTransition_;
      }

      v15 += 2;
      v14 = *(a3 + 2);
      if (v15 >= v14)
      {
        goto LABEL_15;
      }
    }

LABEL_31:
    JreThrowNullPointerException();
  }

LABEL_15:
  self->nextState_ += v14;
  v22 = [a3 getNumStates];
  v23 = [a3 getAcceptStates];
  if (v22 >= 1)
  {
    v30 = v23;
    if (!v23)
    {
      goto LABEL_31;
    }

    v24 = 0;
    do
    {
      v31 = [v30 nextSetBitWithInt:v24];
      if (v31 == -1)
      {
        break;
      }

      v32 = v31;
      [(OrgApacheLuceneUtilAutomatonAutomaton *)self setAcceptWithInt:v31 + v12 withBoolean:1];
      v24 = v32 + 1;
    }

    while (v24 < v22);
  }

  p_transitions = &self->transitions_;
  v34 = OrgApacheLuceneUtilArrayUtil_growWithIntArray_withInt_(self->transitions_, *(a3 + 3) + self->nextTransition_, v24, v25, v26, v27, v28, v29);
  JreStrongAssign(&self->transitions_, v34);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*(a3 + 5), 0, self->transitions_, self->nextTransition_, *(a3 + 3));
  v35 = *(a3 + 3);
  if (v35 >= 1)
  {
    for (i = 0; i < v35; i += 3)
    {
      v37 = *p_transitions;
      if (!*p_transitions)
      {
        goto LABEL_31;
      }

      v38 = v37->super.size_;
      v39 = i + self->nextTransition_;
      if (v39 < 0 || v39 >= v38)
      {
        IOSArray_throwOutOfBoundsWithMsg(v38, v39);
      }

      *(&v37->super.size_ + v39 + 1) += v12;
      v35 = *(a3 + 3);
    }
  }

  self->nextTransition_ += v35;
  if (!*(a3 + 48))
  {
    self->deterministic_ = 0;
  }
}

- (void)finishState
{
  if (self->curState_ != -1)
  {
    [OrgApacheLuceneUtilAutomatonAutomaton finishCurrentState]_0(self);
    self->curState_ = -1;
  }
}

- (int)getNumTransitionsWithInt:(int)a3
{
  states = self->states_;
  if (!states)
  {
    JreThrowNullPointerException();
  }

  v4 = (2 * a3) | 1;
  size = states->super.size_;
  if (2 * a3 < 0 || v4 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (2 * a3) | 1);
  }

  if (*(&states->super.size_ + v4 + 1) == -1)
  {
    return 0;
  }

  else
  {
    return *(&states->super.size_ + v4 + 1);
  }
}

- (int)initTransitionWithInt:(int)a3 withOrgApacheLuceneUtilAutomatonTransition:(id)a4
{
  if (!a4 || (*(a4 + 2) = a3, (states = self->states_) == 0))
  {
    JreThrowNullPointerException();
  }

  v6 = 2 * a3;
  size = states->super.size_;
  if (2 * a3 < 0 || v6 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (2 * a3));
  }

  *(a4 + 6) = *(&states->super.size_ + v6 + 1);

  return [(OrgApacheLuceneUtilAutomatonAutomaton *)self getNumTransitionsWithInt:?];
}

- (void)getNextTransitionWithOrgApacheLuceneUtilAutomatonTransition:(id)a3
{
  transitions = self->transitions_;
  if (!transitions)
  {
    JreThrowNullPointerException();
  }

  v5 = *(a3 + 6);
  *(a3 + 6) = v5 + 1;
  size = transitions->super.size_;
  if (v5 < 0 || v5 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v5);
  }

  *(a3 + 3) = *(&transitions->super.size_ + v5 + 1);
  v7 = self->transitions_;
  v8 = *(a3 + 6);
  *(a3 + 6) = v8 + 1;
  v9 = v7->super.size_;
  if (v8 < 0 || v8 >= v9)
  {
    IOSArray_throwOutOfBoundsWithMsg(v9, v8);
  }

  *(a3 + 4) = *(&v7->super.size_ + v8 + 1);
  v10 = self->transitions_;
  v11 = *(a3 + 6);
  *(a3 + 6) = v11 + 1;
  v12 = v10->super.size_;
  if (v11 < 0 || v11 >= v12)
  {
    IOSArray_throwOutOfBoundsWithMsg(v12, v11);
  }

  *(a3 + 5) = *(&v10->super.size_ + v11 + 1);
}

- (BOOL)transitionSortedWithOrgApacheLuceneUtilAutomatonTransition:(id)a3
{
  if (!a3)
  {
    goto LABEL_20;
  }

  states = self->states_;
  if (!states)
  {
    goto LABEL_20;
  }

  v5 = *(a3 + 6);
  v6 = 2 * *(a3 + 2);
  size = states->super.size_;
  if (v6 < 0 || v6 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v6);
  }

  if (v5 == *(&states->super.size_ + v6 + 1))
  {
    return 1;
  }

  transitions = self->transitions_;
  if (!transitions)
  {
LABEL_20:
    JreThrowNullPointerException();
  }

  v9 = transitions->super.size_;
  if ((v5 & 0x80000000) != 0 || v5 >= v9)
  {
    IOSArray_throwOutOfBoundsWithMsg(v9, *(a3 + 6));
  }

  v10 = self->transitions_;
  v11 = *(&transitions->super.size_ + v5 + 1);
  v12 = v5 + 1;
  if (v5 + 1 < 0 || v12 >= v9)
  {
    IOSArray_throwOutOfBoundsWithMsg(v9, v12);
  }

  v13 = *(&v10->super.size_ + v12 + 1);
  v14 = v5 + 2;
  v15 = v5 + 2;
  if (v15 < 0 || v14 >= v9)
  {
    IOSArray_throwOutOfBoundsWithMsg(v9, v14);
  }

  v16 = *(a3 + 4);
  if (v13 > v16)
  {
    return 1;
  }

  if (v13 < v16)
  {
    return 0;
  }

  v18 = *(&v10->super.size_ + v15 + 1);
  v19 = *(a3 + 5);
  if (v18 > v19)
  {
    return 1;
  }

  return v18 >= v19 && v11 > *(a3 + 3);
}

- (void)getTransitionWithInt:(int)a3 withInt:(int)a4 withOrgApacheLuceneUtilAutomatonTransition:(id)a5
{
  states = self->states_;
  if (!states)
  {
    goto LABEL_14;
  }

  v7 = 2 * a3;
  size = states->super.size_;
  if (2 * a3 < 0 || v7 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v7);
  }

  if (!a5 || (v9 = *(&states->super.size_ + v7 + 1), *(a5 + 2) = a3, (transitions = self->transitions_) == 0))
  {
LABEL_14:
    JreThrowNullPointerException();
  }

  v11 = (v9 + 3 * a4);
  v12 = (v11 + 1);
  v13 = transitions->super.size_;
  if ((v11 & 0x80000000) != 0 || v11 >= v13)
  {
    IOSArray_throwOutOfBoundsWithMsg(v13, v11);
  }

  *(a5 + 3) = *(&transitions->super.size_ + v11 + 1);
  v14 = self->transitions_;
  v15 = (v11 + 2);
  v16 = v14->super.size_;
  if ((v12 & 0x80000000) != 0 || v12 >= v16)
  {
    IOSArray_throwOutOfBoundsWithMsg(v16, v12);
  }

  *(a5 + 4) = *(&v14->super.size_ + v12 + 1);
  v17 = self->transitions_;
  v18 = v17->super.size_;
  if ((v15 & 0x80000000) != 0 || v15 >= v18)
  {
    IOSArray_throwOutOfBoundsWithMsg(v18, v15);
  }

  *(a5 + 5) = *(&v17->super.size_ + v15 + 1);
}

- (id)toDot
{
  v3 = new_JavaLangStringBuilder_init();
  [(JavaLangStringBuilder *)v3 appendWithNSString:@"digraph Automaton {\n"];
  [(JavaLangStringBuilder *)v3 appendWithNSString:@"  rankdir = LR\n"];
  v18 = [(OrgApacheLuceneUtilAutomatonAutomaton *)self getNumStates];
  if (v18 >= 1)
  {
    [(JavaLangStringBuilder *)v3 appendWithNSString:@"  initial [shape=plaintext, label=0]\n"];
    [(JavaLangStringBuilder *)v3 appendWithNSString:@"  initial -> 0\n"];
  }

  v4 = new_OrgApacheLuceneUtilAutomatonTransition_init();
  if (v18 >= 1)
  {
    v5 = v4;
    v6 = 0;
    do
    {
      [(JavaLangStringBuilder *)v3 appendWithNSString:@"  "];
      [(JavaLangStringBuilder *)v3 appendWithInt:v6];
      v7 = [(OrgApacheLuceneUtilAutomatonAutomaton *)self isAcceptWithInt:v6];
      v15 = @" [shape=circle,label=";
      if (v7)
      {
        v15 = @" [shape=doublecircle,label=";
      }

      [(JavaLangStringBuilder *)v3 appendWithNSString:JreStrcat("$I$", v8, v9, v10, v11, v12, v13, v14, v15)];
      v16 = [(OrgApacheLuceneUtilAutomatonAutomaton *)self initTransitionWithInt:v6 withOrgApacheLuceneUtilAutomatonTransition:v5];
      if (v16 >= 1)
      {
        do
        {
          [(OrgApacheLuceneUtilAutomatonAutomaton *)self getNextTransitionWithOrgApacheLuceneUtilAutomatonTransition:v5];
          [(JavaLangStringBuilder *)v3 appendWithNSString:@"  "];
          [(JavaLangStringBuilder *)v3 appendWithInt:v6];
          [(JavaLangStringBuilder *)v3 appendWithNSString:@" -> "];
          [(JavaLangStringBuilder *)v3 appendWithInt:v5[3]];
          [(JavaLangStringBuilder *)v3 appendWithNSString:@" [label="];
          OrgApacheLuceneUtilAutomatonAutomaton_appendCharStringWithInt_withJavaLangStringBuilder_(v5[4], v3);
          if (v5[5] != v5[4])
          {
            [(JavaLangStringBuilder *)v3 appendWithChar:45];
            OrgApacheLuceneUtilAutomatonAutomaton_appendCharStringWithInt_withJavaLangStringBuilder_(v5[5], v3);
          }

          [(JavaLangStringBuilder *)v3 appendWithNSString:@"]\n"];
          --v16;
        }

        while (v16);
      }

      v6 = (v6 + 1);
    }

    while (v6 != v18);
  }

  [(JavaLangStringBuilder *)v3 appendWithChar:125];

  return [(JavaLangStringBuilder *)v3 description];
}

- (id)getStartPoints
{
  v3 = new_JavaUtilHashSet_init();
  [(JavaUtilHashSet *)v3 addWithId:JavaLangInteger_valueOfWithInt_(0)];
  if (self->nextState_ >= 1)
  {
    v4 = 0;
    do
    {
      states = self->states_;
      if (!states)
      {
LABEL_37:
        JreThrowNullPointerException();
      }

      size = states->super.size_;
      if ((v4 & 0x80000000) != 0 || v4 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v4);
      }

      v7 = *(&states->super.size_ + v4 + 1);
      v8 = v4 | 1;
      if ((v4 & 0x80000000) != 0 || v8 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v4 | 1);
      }

      v9 = 3 * *(&self->states_->super.size_ + v8 + 1) + v7;
      while (v7 < v9)
      {
        transitions = self->transitions_;
        if (!transitions)
        {
          goto LABEL_37;
        }

        v11 = v7 + 1;
        v12 = transitions->super.size_;
        if (v7 < -1 || v11 >= v12)
        {
          IOSArray_throwOutOfBoundsWithMsg(v12, v11);
        }

        v13 = transitions->buffer_[v7];
        v14 = v7 + 2;
        if (v7 + 2 < 0 || v14 >= v12)
        {
          IOSArray_throwOutOfBoundsWithMsg(v12, v14);
        }

        v15 = *(&self->transitions_->super.size_ + v14 + 1);
        [(JavaUtilHashSet *)v3 addWithId:JavaLangInteger_valueOfWithInt_(v13)];
        if (v15 <= 1114110)
        {
          [(JavaUtilHashSet *)v3 addWithId:JavaLangInteger_valueOfWithInt_(v15 + 1)];
        }

        v7 += 3;
      }

      v4 = (v4 + 2);
    }

    while (v4 < self->nextState_);
  }

  v16 = [IOSIntArray arrayWithLength:[(JavaUtilHashSet *)v3 size]];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v17 = [(JavaUtilHashSet *)v3 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = *v28;
    do
    {
      v21 = 0;
      do
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(v3);
        }

        v22 = *(*(&v27 + 1) + 8 * v21);
        if (!v22)
        {
          goto LABEL_37;
        }

        v23 = [v22 intValue];
        v24 = v16->super.size_;
        if ((v19 & 0x80000000) != 0 || v19 >= v24)
        {
          IOSArray_throwOutOfBoundsWithMsg(v24, v19);
        }

        *(&v16->super.size_ + v19 + 1) = v23;
        ++v21;
        v19 = (v19 + 1);
      }

      while (v18 != v21);
      v25 = [(JavaUtilHashSet *)v3 countByEnumeratingWithState:&v27 objects:v31 count:16];
      v18 = v25;
    }

    while (v25);
  }

  JavaUtilArrays_sortWithIntArray_(v16);
  return v16;
}

- (int)stepWithInt:(int)a3 withInt:(int)a4
{
  states = self->states_;
  if (!states)
  {
LABEL_23:
    JreThrowNullPointerException();
  }

  v6 = 2 * a3;
  v7 = 2 * a3;
  size = states->super.size_;
  if (2 * a3 < 0 || v6 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v6);
  }

  v9 = states;
  v10 = *(&states->super.size_ + v7 + 1);
  v11 = v7 | 1;
  if ((v7 & 0x80000000) != 0 || v11 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v7 | 1);
  }

  v12 = 3 * *(&v9->super.size_ + v11 + 1) + v10;
  while (v10 < v12)
  {
    transitions = self->transitions_;
    if (!transitions)
    {
      goto LABEL_23;
    }

    v14 = transitions->super.size_;
    if ((v10 & 0x80000000) != 0 || v10 >= v14)
    {
      IOSArray_throwOutOfBoundsWithMsg(v14, v10);
    }

    v15 = *(&transitions->super.size_ + v10 + 1);
    v16 = v10 + 1;
    if (v10 < -1 || v16 >= v14)
    {
      IOSArray_throwOutOfBoundsWithMsg(v14, v16);
    }

    v17 = self->transitions_->buffer_[v10];
    v18 = v10 + 2;
    if (v10 + 2 < 0 || v18 >= v14)
    {
      IOSArray_throwOutOfBoundsWithMsg(v14, v18);
    }

    v10 = (v10 + 3);
    if (v17 <= a4 && *(&self->transitions_->super.size_ + v18 + 1) >= a4)
    {
      return v15;
    }
  }

  return -1;
}

- (int64_t)ramBytesUsed
{
  if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000120A8();
  }

  v3 = OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_HEADER_;
  v4 = OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithIntArray_(self->states_);
  v5 = OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithIntArray_(self->transitions_);
  if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000120A8();
  }

  isAccept = self->isAccept_;
  if (!isAccept)
  {
    JreThrowNullPointerException();
  }

  v7 = OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_HEADER_;
  v8 = [(JavaUtilBitSet *)isAccept size];
  if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000120A8();
  }

  v9 = OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_REF_;
  if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000120A8();
  }

  return v3 + v4 + v5 + v7 + v8 / 8 + v9 + 2 * OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_REF_ + 13;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilAutomatonAutomaton;
  [(OrgApacheLuceneUtilAutomatonAutomaton *)&v3 dealloc];
}

@end