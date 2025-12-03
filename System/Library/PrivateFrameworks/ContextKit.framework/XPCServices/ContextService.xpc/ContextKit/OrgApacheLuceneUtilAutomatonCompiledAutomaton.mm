@interface OrgApacheLuceneUtilAutomatonCompiledAutomaton
- (BOOL)isEqual:(id)equal;
- (id)floorWithOrgApacheLuceneUtilBytesRef:(id)ref withOrgApacheLuceneUtilBytesRefBuilder:(id)builder;
- (id)getTermsEnumWithOrgApacheLuceneIndexTerms:(id)terms;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilAutomatonCompiledAutomaton

- (id)getTermsEnumWithOrgApacheLuceneIndexTerms:(id)terms
{
  ordinal = [(JavaLangEnum *)self->type_ ordinal];
  if (ordinal > 1)
  {
    if (ordinal == 2)
    {
      if (!terms)
      {
        goto LABEL_21;
      }

      v7 = new_OrgApacheLuceneIndexSingleTermsEnum_initWithOrgApacheLuceneIndexTermsEnum_withOrgApacheLuceneUtilBytesRef_([terms iterator], self->term_);

      return v7;
    }

    else
    {
      if (ordinal != 3)
      {
        goto LABEL_22;
      }

      if (!terms)
      {
        goto LABEL_21;
      }

      return [terms intersectWithOrgApacheLuceneUtilAutomatonCompiledAutomaton:self withOrgApacheLuceneUtilBytesRef:0];
    }
  }

  else
  {
    if (ordinal)
    {
      if (ordinal == 1)
      {
        if (terms)
        {

          return [terms iterator];
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

- (id)floorWithOrgApacheLuceneUtilBytesRef:(id)ref withOrgApacheLuceneUtilBytesRefBuilder:(id)builder
{
  runAutomaton = self->runAutomaton_;
  if (!runAutomaton)
  {
    goto LABEL_43;
  }

  getInitialState = [(OrgApacheLuceneUtilAutomatonRunAutomaton *)runAutomaton getInitialState];
  if (!ref)
  {
    goto LABEL_43;
  }

  intValue = getInitialState;
  if (!*(ref + 5))
  {
    if (![(OrgApacheLuceneUtilAutomatonRunAutomaton *)self->runAutomaton_ isAcceptWithInt:getInitialState])
    {
      return 0;
    }

    if (builder)
    {
      [builder clear];
LABEL_37:

      return [builder get];
    }

    goto LABEL_43;
  }

  v10 = new_JavaUtilArrayList_init();
  v11 = *(ref + 1);
  if (!v11)
  {
    goto LABEL_43;
  }

  v12 = v10;
  v13 = 0;
  while (1)
  {
    v14 = *(v11 + 8);
    v15 = v13 + *(ref + 4);
    if (v15 < 0 || v15 >= v14)
    {
      IOSArray_throwOutOfBoundsWithMsg(v14, v15);
    }

    v16 = *(v11 + 12 + v15);
    v17 = [(OrgApacheLuceneUtilAutomatonRunAutomaton *)self->runAutomaton_ stepWithInt:intValue withInt:v16];
    v18 = v17;
    if (v13 == *(ref + 5) - 1)
    {
      break;
    }

    if (v17 == -1)
    {
      goto LABEL_21;
    }

    if (builder)
    {
      [builder growWithInt:(v13 + 1)];
      [builder setByteAtWithInt:v13 withByte:v16];
      [(JavaUtilArrayList *)v12 addWithId:JavaLangInteger_valueOfWithInt_(intValue)];
      v11 = *(ref + 1);
      v13 = (v13 + 1);
      intValue = v18;
      if (v11)
      {
        continue;
      }
    }

    goto LABEL_43;
  }

  if (v17 != -1 && [(OrgApacheLuceneUtilAutomatonRunAutomaton *)self->runAutomaton_ isAcceptWithInt:v17])
  {
    if (builder)
    {
      [builder growWithInt:(v13 + 1)];
      [builder setByteAtWithInt:v13 withByte:v16];
      v19 = *(ref + 5);
      builderCopy2 = builder;
LABEL_36:
      [builderCopy2 setLengthWithInt:v19];
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
    if (![(OrgApacheLuceneUtilAutomatonAutomaton *)automaton getNumTransitionsWithInt:intValue])
    {
LABEL_34:
      if (builder)
      {
        builderCopy2 = builder;
        v19 = v13;
        goto LABEL_36;
      }

LABEL_43:
      JreThrowNullPointerException();
    }

    [(OrgApacheLuceneUtilAutomatonAutomaton *)self->automaton_ getTransitionWithInt:intValue withInt:0 withOrgApacheLuceneUtilAutomatonTransition:self->transition_];
    transition = self->transition_;
    if (!transition)
    {
      goto LABEL_43;
    }

    if (v16 > transition->min_)
    {
      break;
    }

    if ([(OrgApacheLuceneUtilAutomatonRunAutomaton *)self->runAutomaton_ isAcceptWithInt:intValue])
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
      intValue = [v23 intValue];
      v24 = *(ref + 1);
      v25 = *(v24 + 8);
      v26 = v13 + *(ref + 4) - 1;
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

  return sub_100101FF4(self, intValue, builder, v13, v16);
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

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    goto LABEL_18;
  }

  if (!equal)
  {
    goto LABEL_6;
  }

  getClass = [(OrgApacheLuceneUtilAutomatonCompiledAutomaton *)self getClass];
  if (getClass != [equal getClass])
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  type = self->type_;
  if (type != *(equal + 1))
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
        v7 = [(OrgApacheLuceneUtilAutomatonRunAutomaton *)runAutomaton isEqual:*(equal + 3)];
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

  if ([(OrgApacheLuceneUtilBytesRef *)term isEqual:*(equal + 2)])
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