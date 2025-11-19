@interface OrgApacheLuceneUtilAutomatonCompiledAutomaton
- (BOOL)isEqual:(id)a3;
- (id)floorWithOrgApacheLuceneUtilBytesRef:(id)a3 withOrgApacheLuceneUtilBytesRefBuilder:(id)a4;
- (id)getTermsEnumWithOrgApacheLuceneIndexTerms:(id)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilAutomatonCompiledAutomaton

- (id)getTermsEnumWithOrgApacheLuceneIndexTerms:(id)a3
{
  v5 = [(JavaLangEnum *)self->type_ ordinal];
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      if (!a3)
      {
        goto LABEL_21;
      }

      v7 = new_OrgApacheLuceneIndexSingleTermsEnum_initWithOrgApacheLuceneIndexTermsEnum_withOrgApacheLuceneUtilBytesRef_([a3 iterator], self->term_);

      return v7;
    }

    else
    {
      if (v5 != 3)
      {
        goto LABEL_22;
      }

      if (!a3)
      {
        goto LABEL_21;
      }

      return [a3 intersectWithOrgApacheLuceneUtilAutomatonCompiledAutomaton:self withOrgApacheLuceneUtilBytesRef:0];
    }
  }

  else
  {
    if (v5)
    {
      if (v5 == 1)
      {
        if (a3)
        {

          return [a3 iterator];
        }

LABEL_21:
        JreThrowNullPointerException();
      }

LABEL_22:
      v8 = new_JavaLangRuntimeException_initWithNSString_(@"unhandled case");
      objc_exception_throw(v8);
    }

    if ((atomic_load_explicit(OrgApacheLuceneIndexTermsEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10005714C();
    }

    return OrgApacheLuceneIndexTermsEnum_EMPTY_;
  }
}

- (id)floorWithOrgApacheLuceneUtilBytesRef:(id)a3 withOrgApacheLuceneUtilBytesRefBuilder:(id)a4
{
  runAutomaton = self->runAutomaton_;
  if (!runAutomaton)
  {
    goto LABEL_43;
  }

  v8 = [(OrgApacheLuceneUtilAutomatonRunAutomaton *)runAutomaton getInitialState];
  if (!a3)
  {
    goto LABEL_43;
  }

  v9 = v8;
  if (!*(a3 + 5))
  {
    if (![(OrgApacheLuceneUtilAutomatonRunAutomaton *)self->runAutomaton_ isAcceptWithInt:v8])
    {
      return 0;
    }

    if (a4)
    {
      [a4 clear];
LABEL_37:

      return [a4 get];
    }

    goto LABEL_43;
  }

  v10 = new_JavaUtilArrayList_init();
  v11 = *(a3 + 1);
  if (!v11)
  {
    goto LABEL_43;
  }

  v12 = v10;
  v13 = 0;
  while (1)
  {
    v14 = *(v11 + 8);
    v15 = v13 + *(a3 + 4);
    if (v15 < 0 || v15 >= v14)
    {
      IOSArray_throwOutOfBoundsWithMsg(v14, v15);
    }

    v16 = *(v11 + 12 + v15);
    v17 = [(OrgApacheLuceneUtilAutomatonRunAutomaton *)self->runAutomaton_ stepWithInt:v9 withInt:v16];
    v18 = v17;
    if (v13 == *(a3 + 5) - 1)
    {
      break;
    }

    if (v17 == -1)
    {
      goto LABEL_21;
    }

    if (a4)
    {
      [a4 growWithInt:(v13 + 1)];
      [a4 setByteAtWithInt:v13 withByte:v16];
      [(JavaUtilArrayList *)v12 addWithId:JavaLangInteger_valueOfWithInt_(v9)];
      v11 = *(a3 + 1);
      v13 = (v13 + 1);
      v9 = v18;
      if (v11)
      {
        continue;
      }
    }

    goto LABEL_43;
  }

  if (v17 != -1 && [(OrgApacheLuceneUtilAutomatonRunAutomaton *)self->runAutomaton_ isAcceptWithInt:v17])
  {
    if (a4)
    {
      [a4 growWithInt:(v13 + 1)];
      [a4 setByteAtWithInt:v13 withByte:v16];
      v19 = *(a3 + 5);
      v20 = a4;
LABEL_36:
      [v20 setLengthWithInt:v19];
      goto LABEL_37;
    }

    goto LABEL_43;
  }

LABEL_21:
  automaton = self->automaton_;
  if (!automaton)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if (![(OrgApacheLuceneUtilAutomatonAutomaton *)automaton getNumTransitionsWithInt:v9])
    {
LABEL_34:
      if (a4)
      {
        v20 = a4;
        v19 = v13;
        goto LABEL_36;
      }

LABEL_43:
      JreThrowNullPointerException();
    }

    [(OrgApacheLuceneUtilAutomatonAutomaton *)self->automaton_ getTransitionWithInt:v9 withInt:0 withOrgApacheLuceneUtilAutomatonTransition:self->transition_];
    transition = self->transition_;
    if (!transition)
    {
      goto LABEL_43;
    }

    if (v16 > transition->min_)
    {
      break;
    }

    if ([(OrgApacheLuceneUtilAutomatonRunAutomaton *)self->runAutomaton_ isAcceptWithInt:v9])
    {
      goto LABEL_34;
    }

    if (![(JavaUtilArrayList *)v12 size])
    {
      return 0;
    }

    v23 = [(JavaUtilArrayList *)v12 removeWithInt:[(JavaUtilArrayList *)v12 size]- 1];
    if (v23)
    {
      v9 = [v23 intValue];
      v24 = *(a3 + 1);
      v25 = *(v24 + 8);
      v26 = v13 + *(a3 + 4) - 1;
      if (v26 < 0 || v26 >= v25)
      {
        IOSArray_throwOutOfBoundsWithMsg(v25, v26);
      }

      LODWORD(v16) = *(v24 + 12 + v26);
      automaton = self->automaton_;
      v13 = (v13 - 1);
      if (automaton)
      {
        continue;
      }
    }

    goto LABEL_43;
  }

  return sub_100101FF4(self, v9, a4, v13, v16);
}

- (unint64_t)hash
{
  runAutomaton = self->runAutomaton_;
  if (runAutomaton)
  {
    v4 = 31 * [(OrgApacheLuceneUtilAutomatonRunAutomaton *)runAutomaton hash]+ 961;
  }

  else
  {
    v4 = 961;
  }

  term = self->term_;
  if (term)
  {
    v6 = [(OrgApacheLuceneUtilBytesRef *)term hash];
  }

  else
  {
    v6 = 0;
  }

  type = self->type_;
  if (type)
  {
    LODWORD(type) = [(JavaLangEnum *)type hash];
  }

  return (type - (v6 + v4) + 32 * (v6 + v4));
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    goto LABEL_18;
  }

  if (!a3)
  {
    goto LABEL_6;
  }

  v5 = [(OrgApacheLuceneUtilAutomatonCompiledAutomaton *)self getClass];
  if (v5 != [a3 getClass])
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  type = self->type_;
  if (type != *(a3 + 1))
  {
    goto LABEL_6;
  }

  if ((atomic_load_explicit(OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100102AC0();
  }

  if (type != qword_100557AB8)
  {
    v8 = self->type_;
    if ((atomic_load_explicit(OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100102AC0();
    }

    if (v8 == qword_100557AC0)
    {
      runAutomaton = self->runAutomaton_;
      if (runAutomaton)
      {
        v7 = [(OrgApacheLuceneUtilAutomatonRunAutomaton *)runAutomaton isEqual:*(a3 + 3)];
        if (!v7)
        {
          return v7;
        }

        goto LABEL_18;
      }

LABEL_20:
      JreThrowNullPointerException();
    }

    goto LABEL_18;
  }

  term = self->term_;
  if (!term)
  {
    goto LABEL_20;
  }

  if ([(OrgApacheLuceneUtilBytesRef *)term isEqual:*(a3 + 2)])
  {
LABEL_18:
    LOBYTE(v7) = 1;
    return v7;
  }

LABEL_6:
  LOBYTE(v7) = 0;
  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilAutomatonCompiledAutomaton;
  [(OrgApacheLuceneUtilAutomatonCompiledAutomaton *)&v3 dealloc];
}

@end