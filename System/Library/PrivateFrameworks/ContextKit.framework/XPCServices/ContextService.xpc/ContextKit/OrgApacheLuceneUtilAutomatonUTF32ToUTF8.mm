@interface OrgApacheLuceneUtilAutomatonUTF32ToUTF8
+ (void)initialize;
- (id)convertWithOrgApacheLuceneUtilAutomatonAutomaton:(id)automaton;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilAutomatonUTF32ToUTF8

- (id)convertWithOrgApacheLuceneUtilAutomatonAutomaton:(id)automaton
{
  if (!automaton)
  {
    goto LABEL_26;
  }

  if (![automaton getNumStates])
  {
    return automaton;
  }

  v5 = +[IOSIntArray arrayWithLength:](IOSIntArray, "arrayWithLength:", [automaton getNumStates]);
  JavaUtilArrays_fillWithIntArray_withInt_(v5, -1);
  v6 = new_JavaUtilArrayList_init();
  [(JavaUtilArrayList *)v6 addWithId:JavaLangInteger_valueOfWithInt_(0)];
  v7 = new_OrgApacheLuceneUtilAutomatonAutomaton_Builder_init();
  JreStrongAssignAndConsume(&self->utf8_, v7);
  createState = [(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)self->utf8_ createState];
  -[OrgApacheLuceneUtilAutomatonAutomaton_Builder setAcceptWithInt:withBoolean:](self->utf8_, "setAcceptWithInt:withBoolean:", createState, [automaton isAcceptWithInt:0]);
  size = v5->super.size_;
  if (size <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, 0);
  }

  *(&v5->super.size_ + 1) = createState;
  v10 = new_OrgApacheLuceneUtilAutomatonTransition_init();
  selfCopy2 = self;
  if ([(JavaUtilArrayList *)v6 size])
  {
    while (1)
    {
      v12 = [(JavaUtilArrayList *)v6 removeWithInt:[(JavaUtilArrayList *)v6 size]- 1];
      if (!v12)
      {
        break;
      }

      intValue = [v12 intValue];
      v14 = intValue;
      v15 = v5->super.size_;
      if (intValue < 0 || intValue >= v15)
      {
        IOSArray_throwOutOfBoundsWithMsg(v15, intValue);
      }

      v24 = *(&v5->super.size_ + intValue + 1);
      v16 = [automaton getNumTransitionsWithInt:intValue];
      [automaton initTransitionWithInt:v14 withOrgApacheLuceneUtilAutomatonTransition:v10];
      if (v16 >= 1)
      {
        do
        {
          [automaton getNextTransitionWithOrgApacheLuceneUtilAutomatonTransition:v10];
          dest = v10->dest_;
          v18 = dest;
          v19 = v5->super.size_;
          if (dest < 0 || dest >= v19)
          {
            IOSArray_throwOutOfBoundsWithMsg(v19, dest);
          }

          createState2 = *(&v5->super.size_ + dest + 1);
          if (createState2 == -1)
          {
            createState2 = [(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)selfCopy2->utf8_ createState];
            -[OrgApacheLuceneUtilAutomatonAutomaton_Builder setAcceptWithInt:withBoolean:](selfCopy2->utf8_, "setAcceptWithInt:withBoolean:", createState2, [automaton isAcceptWithInt:v18]);
            v21 = v5->super.size_;
            if ((v18 & 0x80000000) != 0 || v18 >= v21)
            {
              IOSArray_throwOutOfBoundsWithMsg(v21, v18);
            }

            *(&v5->super.size_ + v18 + 1) = createState2;
            [(JavaUtilArrayList *)v6 addWithId:JavaLangInteger_valueOfWithInt_(v18)];
            selfCopy2 = self;
          }

          [(OrgApacheLuceneUtilAutomatonUTF32ToUTF8 *)selfCopy2 convertOneEdgeWithInt:v24 withInt:createState2 withInt:v10->min_ withInt:v10->max_];
          --v16;
        }

        while (v16);
      }

      if (![(JavaUtilArrayList *)v6 size])
      {
        goto LABEL_22;
      }
    }

LABEL_26:
    JreThrowNullPointerException();
  }

LABEL_22:
  utf8 = selfCopy2->utf8_;

  return [(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)utf8 finish];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilAutomatonUTF32ToUTF8;
  [(OrgApacheLuceneUtilAutomatonUTF32ToUTF8 *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v6 = xmmword_100314080;
    JreStrongAssignAndConsume(&qword_100553DE8, [IOSIntArray newArrayWithInts:&v6 count:4]);
    v5 = xmmword_100314090;
    JreStrongAssignAndConsume(&qword_100553DF0, [IOSIntArray newArrayWithInts:&v5 count:4]);
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilAutomatonUTF32ToUTF8_MASKS_, [IOSIntArray newArrayWithLength:32]);
    v2 = 0;
    v3 = 2;
    do
    {
      v4 = *(OrgApacheLuceneUtilAutomatonUTF32ToUTF8_MASKS_ + 8);
      if (v2 >= v4)
      {
        IOSArray_throwOutOfBoundsWithMsg(v4, v2);
      }

      *(OrgApacheLuceneUtilAutomatonUTF32ToUTF8_MASKS_ + 12 + 4 * v2) = v3 - 1;
      v3 *= 2;
      ++v2;
    }

    while (v2 != 32);
    atomic_store(1u, OrgApacheLuceneUtilAutomatonUTF32ToUTF8__initialized);
  }
}

@end