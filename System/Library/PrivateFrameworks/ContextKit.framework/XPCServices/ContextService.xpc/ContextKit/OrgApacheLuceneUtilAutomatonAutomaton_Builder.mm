@interface OrgApacheLuceneUtilAutomatonAutomaton_Builder
- (id)finish;
- (int)createState;
- (void)copyStatesWithOrgApacheLuceneUtilAutomatonAutomaton:(id)automaton;
- (void)copy__WithOrgApacheLuceneUtilAutomatonAutomaton:(id)automaton;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilAutomatonAutomaton_Builder

- (id)finish
{
  nextState = self->nextState_;
  v4 = (self->nextTransition_ / 4);
  v5 = [OrgApacheLuceneUtilAutomatonAutomaton alloc];
  OrgApacheLuceneUtilAutomatonAutomaton_initWithInt_withInt_(v5, nextState, v4);
  v6 = v5;
  if (nextState >= 1)
  {
    v7 = 0;
    do
    {
      [(OrgApacheLuceneUtilAutomatonAutomaton *)v6 createState];
      [(OrgApacheLuceneUtilAutomatonAutomaton *)v6 setAcceptWithInt:v7 withBoolean:[(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)self isAcceptWithInt:v7]];
      v7 = (v7 + 1);
    }

    while (nextState != v7);
  }

  sorter = self->sorter_;
  if (!sorter)
  {
    goto LABEL_23;
  }

  [(OrgApacheLuceneUtilSorter *)sorter sortWithInt:0 withInt:v4];
  if (self->nextTransition_ >= 1)
  {
    v9 = 0;
    while (1)
    {
      transitions = self->transitions_;
      if (!transitions)
      {
        break;
      }

      size = transitions->super.size_;
      if ((v9 & 0x80000000) != 0 || v9 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v9);
      }

      v13 = *(&transitions->super.size_ + v9 + 1);
      v14 = v9 + 1;
      if ((v9 & 0x80000000) != 0 || v14 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v14);
      }

      v12 = self->transitions_;
      v15 = *(&v12->super.size_ + v14 + 1);
      v16 = v9 + 2;
      if ((v9 & 0x80000000) != 0 || v16 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v16);
      }

      v17 = self->transitions_;
      v18 = *(&v12->super.size_ + v16 + 1);
      v19 = v9 + 3;
      if ((v9 & 0x80000000) != 0 || v19 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v19);
      }

      [(OrgApacheLuceneUtilAutomatonAutomaton *)v6 addTransitionWithInt:v13 withInt:v15 withInt:v18 withInt:*(&self->transitions_->super.size_ + v19 + 1)];
      v9 = (v9 + 4);
      if (v9 >= self->nextTransition_)
      {
        goto LABEL_22;
      }
    }

LABEL_23:
    JreThrowNullPointerException();
  }

LABEL_22:
  [(OrgApacheLuceneUtilAutomatonAutomaton *)v6 finishState];
  return v6;
}

- (int)createState
{
  nextState = self->nextState_;
  self->nextState_ = nextState + 1;
  return nextState;
}

- (void)copy__WithOrgApacheLuceneUtilAutomatonAutomaton:(id)automaton
{
  getNumStates = [(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)self getNumStates];
  if (!automaton)
  {
    JreThrowNullPointerException();
  }

  v6 = getNumStates;
  getNumStates2 = [automaton getNumStates];
  [(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)self copyStatesWithOrgApacheLuceneUtilAutomatonAutomaton:automaton];
  v8 = new_OrgApacheLuceneUtilAutomatonTransition_init();
  if (getNumStates2 >= 1)
  {
    v9 = v8;
    v10 = 0;
    do
    {
      v11 = [automaton initTransitionWithInt:v10 withOrgApacheLuceneUtilAutomatonTransition:v9];
      if (v11 >= 1)
      {
        v12 = v11;
        do
        {
          [automaton getNextTransitionWithOrgApacheLuceneUtilAutomatonTransition:v9];
          [(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)self addTransitionWithInt:v10 + v6 withInt:v9->dest_ + v6 withInt:v9->min_ withInt:v9->max_];
          --v12;
        }

        while (v12);
      }

      v10 = (v10 + 1);
    }

    while (v10 != getNumStates2);
  }
}

- (void)copyStatesWithOrgApacheLuceneUtilAutomatonAutomaton:(id)automaton
{
  if (!automaton)
  {
    JreThrowNullPointerException();
  }

  getNumStates = [automaton getNumStates];
  if (getNumStates >= 1)
  {
    v6 = getNumStates;
    v7 = 0;
    do
    {
      -[OrgApacheLuceneUtilAutomatonAutomaton_Builder setAcceptWithInt:withBoolean:](self, "setAcceptWithInt:withBoolean:", -[OrgApacheLuceneUtilAutomatonAutomaton_Builder createState](self, "createState"), [automaton isAcceptWithInt:v7]);
      v7 = (v7 + 1);
    }

    while (v6 != v7);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilAutomatonAutomaton_Builder;
  [(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)&v3 dealloc];
}

@end