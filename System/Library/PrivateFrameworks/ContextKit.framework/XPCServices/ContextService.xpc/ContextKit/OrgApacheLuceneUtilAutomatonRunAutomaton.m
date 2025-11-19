@interface OrgApacheLuceneUtilAutomatonRunAutomaton
- (BOOL)isEqual:(id)a3;
- (id)description;
- (id)getCharIntervals;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilAutomatonRunAutomaton

- (id)description
{
  v3 = new_JavaLangStringBuilder_init();
  v4 = [(JavaLangStringBuilder *)v3 appendWithNSString:@"initial state: "];
  if (!v4)
  {
    goto LABEL_38;
  }

  v5 = [v4 appendWithInt:self->initial_];
  if (!v5)
  {
    goto LABEL_38;
  }

  [v5 appendWithNSString:@"\n"];
  if (self->size_ >= 1)
  {
    v13 = 0;
    while (1)
    {
      [(JavaLangStringBuilder *)v3 appendWithNSString:JreStrcat("$I", v6, v7, v8, v9, v10, v11, v12, @"state ")];
      accept = self->accept_;
      if (!accept)
      {
        break;
      }

      size = accept->super.size_;
      if (v13 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v13);
      }

      v16 = *(&accept->super.size_ + v13 + 4) ? @" [accept]:\n" : @" [reject]:\n";
      [(JavaLangStringBuilder *)v3 appendWithNSString:v16];
      points = self->points_;
      if (!points)
      {
        break;
      }

      v18 = 0;
      while (1)
      {
        v19 = points->super.size_;
        if (v18 >= v19)
        {
          break;
        }

        transitions = self->transitions_;
        if (!transitions)
        {
          goto LABEL_38;
        }

        v21 = v18 + v19 * v13;
        v22 = transitions->super.size_;
        if (v21 < 0 || v21 >= v22)
        {
          IOSArray_throwOutOfBoundsWithMsg(v22, v21);
        }

        v23 = *(&transitions->super.size_ + v21 + 1);
        if (v23 == -1)
        {
          ++v18;
        }

        else
        {
          v24 = points->super.size_;
          if (v18 >= v24)
          {
            IOSArray_throwOutOfBoundsWithMsg(v24, v18);
          }

          v25 = *(&points->super.size_ + ++v18);
          if (v24 <= v18)
          {
            maxInterval = self->maxInterval_;
          }

          else
          {
            if ((v18 & 0x80000000) != 0)
            {
              IOSArray_throwOutOfBoundsWithMsg(v24, v18);
            }

            maxInterval = (*(&points->super.size_ + v18 + 1) - 1);
          }

          [(JavaLangStringBuilder *)v3 appendWithNSString:@" "];
          OrgApacheLuceneUtilAutomatonAutomaton_appendCharStringWithInt_withJavaLangStringBuilder_(v25, v3);
          if (v25 != maxInterval)
          {
            [(JavaLangStringBuilder *)v3 appendWithNSString:@"-"];
            OrgApacheLuceneUtilAutomatonAutomaton_appendCharStringWithInt_withJavaLangStringBuilder_(maxInterval, v3);
          }

          v27 = [(JavaLangStringBuilder *)v3 appendWithNSString:@" -> "];
          if (!v27)
          {
            goto LABEL_38;
          }

          v28 = [v27 appendWithInt:v23];
          if (!v28)
          {
            goto LABEL_38;
          }

          [v28 appendWithNSString:@"\n"];
          points = self->points_;
          if (!points)
          {
            goto LABEL_38;
          }
        }
      }

      if (++v13 >= self->size_)
      {
        goto LABEL_35;
      }
    }

LABEL_38:
    JreThrowNullPointerException();
  }

LABEL_35:

  return [(JavaLangStringBuilder *)v3 description];
}

- (id)getCharIntervals
{
  points = self->points_;
  if (!points)
  {
    JreThrowNullPointerException();
  }

  return [(IOSArray *)points clone];
}

- (unint64_t)hash
{
  points = self->points_;
  if (!points)
  {
    JreThrowNullPointerException();
  }

  v3 = self->maxInterval_ - self->initial_ + 32 * self->initial_;
  v4 = points->super.size_ - v3 + 32 * v3;
  return self->size_ - v4 + 32 * v4 + 923521;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    if (!a3)
    {
      goto LABEL_13;
    }

    v5 = [(OrgApacheLuceneUtilAutomatonRunAutomaton *)self getClass];
    if (v5 != [a3 getClass])
    {
      goto LABEL_13;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    if (self->initial_ == *(a3 + 8) && self->maxInterval_ == *(a3 + 4) && self->size_ == *(a3 + 5))
    {
      v6 = JavaUtilArrays_equalsWithIntArray_withIntArray_(self->points_, *(a3 + 6));
      if (v6)
      {
        v6 = JavaUtilArrays_equalsWithBooleanArray_withBooleanArray_(self->accept_, *(a3 + 3));
        if (v6)
        {
          transitions = self->transitions_;
          v8 = *(a3 + 5);

          LOBYTE(v6) = JavaUtilArrays_equalsWithIntArray_withIntArray_(transitions, v8);
        }
      }
    }

    else
    {
LABEL_13:
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilAutomatonRunAutomaton;
  [(OrgApacheLuceneUtilAutomatonRunAutomaton *)&v3 dealloc];
}

@end