@interface OrgApacheLuceneSearchSortField
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (BOOL)needsScores;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)setMissingValueWithId:(id)a3;
@end

@implementation OrgApacheLuceneSearchSortField

- (void)setMissingValueWithId:(id)a3
{
  type = self->type_;
  if ((atomic_load_explicit(OrgApacheLuceneSearchSortField_TypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100055468();
  }

  if (type == qword_100557690)
  {
    goto LABEL_20;
  }

  v6 = self->type_;
  if ((atomic_load_explicit(OrgApacheLuceneSearchSortField_TypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100055468();
  }

  if (v6 == qword_1005576C0)
  {
LABEL_20:
    if (OrgApacheLuceneSearchSortField_STRING_FIRST_ != a3 && OrgApacheLuceneSearchSortField_STRING_LAST_ != a3)
    {
      v11 = @"For STRING type, missing value must be either STRING_FIRST or STRING_LAST";
LABEL_28:
      v13 = new_JavaLangIllegalArgumentException_initWithNSString_(v11);
      objc_exception_throw(v13);
    }
  }

  else
  {
    v7 = self->type_;
    if ((atomic_load_explicit(OrgApacheLuceneSearchSortField_TypeEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100055468();
    }

    if (v7 != qword_100557698)
    {
      v8 = self->type_;
      if ((atomic_load_explicit(OrgApacheLuceneSearchSortField_TypeEnum__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_100055468();
      }

      if (v8 != qword_1005576A0)
      {
        v9 = self->type_;
        if ((atomic_load_explicit(OrgApacheLuceneSearchSortField_TypeEnum__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_100055468();
        }

        if (v9 != qword_1005576A8)
        {
          v10 = self->type_;
          if ((atomic_load_explicit(OrgApacheLuceneSearchSortField_TypeEnum__initialized, memory_order_acquire) & 1) == 0)
          {
            sub_100055468();
          }

          if (v10 != qword_1005576B0)
          {
            v11 = @"Missing value only works for numeric or STRING types";
            goto LABEL_28;
          }
        }
      }
    }
  }

  JreStrongAssign(&self->missingValue_, a3);
}

- (id)description
{
  v3 = new_JavaLangStringBuilder_init();
  v4 = [(JavaLangEnum *)self->type_ ordinal];
  if (v4 > 4)
  {
    if (v4 <= 6)
    {
      if (v4 == 5)
      {
        v5 = @"<long: ";
      }

      else
      {
        v5 = @"<double: ";
      }

LABEL_28:
      v12 = [(JavaLangStringBuilder *)v3 appendWithNSString:v5];
      if (v12)
      {
        v7 = [v12 appendWithNSString:self->field_];
        if (v7)
        {
          v6 = @">";
          goto LABEL_31;
        }
      }

LABEL_39:
      JreThrowNullPointerException();
    }

    switch(v4)
    {
      case 7:
        v8 = [(JavaLangStringBuilder *)v3 appendWithNSString:@"<custom:"];
        if (v8)
        {
          v9 = [v8 appendWithNSString:self->field_];
          if (v9)
          {
            v10 = [v9 appendWithNSString:@": "];
            if (v10)
            {
              v11 = [v10 appendWithId:self->comparatorSource_];
              if (v11)
              {
                [v11 appendWithChar:62];
                goto LABEL_32;
              }
            }
          }
        }

        goto LABEL_39;
      case 8:
        v5 = @"<string_val: ";
        goto LABEL_28;
      case 10:
        v5 = @"<rewriteable: ";
        goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = @"<string: ";
    }

    else if (v4 == 3)
    {
      v5 = @"<int: ";
    }

    else
    {
      v5 = @"<float: ";
    }

    goto LABEL_28;
  }

  if (!v4)
  {
    v6 = @"<score>";
    goto LABEL_17;
  }

  if (v4 != 1)
  {
LABEL_27:
    v5 = @"<???: ";
    goto LABEL_28;
  }

  v6 = @"<doc>";
LABEL_17:
  v7 = v3;
LABEL_31:
  [(JavaLangStringBuilder *)v7 appendWithNSString:v6];
LABEL_32:
  if (self->reverse_)
  {
    [(JavaLangStringBuilder *)v3 appendWithChar:33];
  }

  if (self->missingValue_)
  {
    [(JavaLangStringBuilder *)v3 appendWithNSString:@" missingValue="];
    [(JavaLangStringBuilder *)v3 appendWithId:self->missingValue_];
  }

  return [(JavaLangStringBuilder *)v3 description];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v5) = 1;
    return v5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  objc_opt_class();
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v5 = OrgApacheLuceneUtilStringHelper_equalsWithNSString_withNSString_(*(a3 + 3), self->field_);
  if (v5)
  {
    if (*(a3 + 4) == self->type_ && *(a3 + 8) == self->reverse_)
    {
      v6 = *(a3 + 5);
      comparatorSource = self->comparatorSource_;
      if (v6)
      {

        LOBYTE(v5) = [v6 isEqual:comparatorSource];
      }

      else
      {
        LOBYTE(v5) = comparatorSource == 0;
      }

      return v5;
    }

LABEL_12:
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  type = self->type_;
  if (!type)
  {
    JreThrowNullPointerException();
  }

  v4 = [(JavaLangEnum *)type hash];
  v5 = ([JavaLangBoolean_valueOfWithBoolean_(self->reverse_) hash] + 879060445) ^ v4 ^ 0xAF5998BB;
  field = self->field_;
  if (field)
  {
    v5 += [(NSString *)field hash]^ 0xFF5685DD;
  }

  comparatorSource = self->comparatorSource_;
  if (comparatorSource)
  {
    v5 += [(OrgApacheLuceneSearchFieldComparatorSource *)comparatorSource hash];
  }

  return v5;
}

- (BOOL)needsScores
{
  type = self->type_;
  if ((atomic_load_explicit(OrgApacheLuceneSearchSortField_TypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100055468();
  }

  return type == OrgApacheLuceneSearchSortField_TypeEnum_values_;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchSortField;
  [(OrgApacheLuceneSearchSortField *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    if ((atomic_load_explicit(OrgApacheLuceneSearchSortField_TypeEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100055468();
    }

    v2 = OrgApacheLuceneSearchSortField_TypeEnum_values_;
    v3 = [OrgApacheLuceneSearchSortField alloc];
    OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchSortField_TypeEnum_(v3, 0, v2);
    JreStrongAssignAndConsume(&OrgApacheLuceneSearchSortField_FIELD_SCORE_, v3);
    if ((atomic_load_explicit(OrgApacheLuceneSearchSortField_TypeEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100055468();
    }

    v4 = qword_100557688;
    v5 = [OrgApacheLuceneSearchSortField alloc];
    OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchSortField_TypeEnum_(v5, 0, v4);
    JreStrongAssignAndConsume(&OrgApacheLuceneSearchSortField_FIELD_DOC_, v5);
    JreStrongAssignAndConsume(&OrgApacheLuceneSearchSortField_STRING_FIRST_, [OrgApacheLuceneSearchSortField__1 alloc]);
    JreStrongAssignAndConsume(&OrgApacheLuceneSearchSortField_STRING_LAST_, [OrgApacheLuceneSearchSortField__2 alloc]);
    atomic_store(1u, OrgApacheLuceneSearchSortField__initialized);
  }
}

@end