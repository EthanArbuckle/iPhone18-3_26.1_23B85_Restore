@interface OrgApacheLuceneIndexFilteredTermsEnum
- (BOOL)seekExactWithOrgApacheLuceneUtilBytesRef:(id)a3;
- (OrgApacheLuceneIndexFilteredTermsEnum)initWithOrgApacheLuceneIndexTermsEnum:(id)a3;
- (OrgApacheLuceneIndexFilteredTermsEnum)initWithOrgApacheLuceneIndexTermsEnum:(id)a3 withBoolean:(BOOL)a4;
- (id)attributes;
- (id)next;
- (id)nextSeekTermWithOrgApacheLuceneUtilBytesRef:(id)a3;
- (id)seekCeilWithOrgApacheLuceneUtilBytesRef:(id)a3;
- (id)term;
- (id)termState;
- (int)docFreq;
- (int64_t)ord;
- (int64_t)totalTermFreq;
- (void)dealloc;
- (void)seekExactWithLong:(int64_t)a3;
- (void)seekExactWithOrgApacheLuceneUtilBytesRef:(id)a3 withOrgApacheLuceneIndexTermState:(id)a4;
@end

@implementation OrgApacheLuceneIndexFilteredTermsEnum

- (OrgApacheLuceneIndexFilteredTermsEnum)initWithOrgApacheLuceneIndexTermsEnum:(id)a3
{
  OrgApacheLuceneIndexTermsEnum_init(self);
  JreStrongAssign(&self->tenum_, a3);
  self->doSeek_ = 1;
  return self;
}

- (OrgApacheLuceneIndexFilteredTermsEnum)initWithOrgApacheLuceneIndexTermsEnum:(id)a3 withBoolean:(BOOL)a4
{
  OrgApacheLuceneIndexTermsEnum_init(self);
  JreStrongAssign(&self->tenum_, a3);
  self->doSeek_ = a4;
  return self;
}

- (id)nextSeekTermWithOrgApacheLuceneUtilBytesRef:(id)a3
{
  initialSeekTerm = self->initialSeekTerm_;
  JreStrongAssign(&self->initialSeekTerm_, 0);
  return initialSeekTerm;
}

- (id)attributes
{
  tenum = self->tenum_;
  if (!tenum)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexTermsEnum *)tenum attributes];
}

- (id)term
{
  tenum = self->tenum_;
  if (!tenum)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexTermsEnum *)tenum term];
}

- (int)docFreq
{
  tenum = self->tenum_;
  if (!tenum)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexTermsEnum *)tenum docFreq];
}

- (int64_t)totalTermFreq
{
  tenum = self->tenum_;
  if (!tenum)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexTermsEnum *)tenum totalTermFreq];
}

- (BOOL)seekExactWithOrgApacheLuceneUtilBytesRef:(id)a3
{
  v3 = [-[OrgApacheLuceneIndexFilteredTermsEnum getClass](self getClass];
  v11 = JreStrcat("$$", v4, v5, v6, v7, v8, v9, v10, v3);
  v12 = new_JavaLangUnsupportedOperationException_initWithNSString_(v11);
  objc_exception_throw(v12);
}

- (id)seekCeilWithOrgApacheLuceneUtilBytesRef:(id)a3
{
  v3 = [-[OrgApacheLuceneIndexFilteredTermsEnum getClass](self getClass];
  v11 = JreStrcat("$$", v4, v5, v6, v7, v8, v9, v10, v3);
  v12 = new_JavaLangUnsupportedOperationException_initWithNSString_(v11);
  objc_exception_throw(v12);
}

- (void)seekExactWithLong:(int64_t)a3
{
  v3 = [-[OrgApacheLuceneIndexFilteredTermsEnum getClass](self getClass];
  v11 = JreStrcat("$$", v4, v5, v6, v7, v8, v9, v10, v3);
  v12 = new_JavaLangUnsupportedOperationException_initWithNSString_(v11);
  objc_exception_throw(v12);
}

- (int64_t)ord
{
  tenum = self->tenum_;
  if (!tenum)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexTermsEnum *)tenum ord];
}

- (void)seekExactWithOrgApacheLuceneUtilBytesRef:(id)a3 withOrgApacheLuceneIndexTermState:(id)a4
{
  v4 = [-[OrgApacheLuceneIndexFilteredTermsEnum getClass](self getClass];
  v12 = JreStrcat("$$", v5, v6, v7, v8, v9, v10, v11, v4);
  v13 = new_JavaLangUnsupportedOperationException_initWithNSString_(v12);
  objc_exception_throw(v13);
}

- (id)termState
{
  tenum = self->tenum_;
  if (!tenum)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexTermsEnum *)tenum termState];
}

- (id)next
{
  do
  {
    while (1)
    {
      if (self->doSeek_)
      {
        self->doSeek_ = 0;
        result = [(OrgApacheLuceneIndexFilteredTermsEnum *)self nextSeekTermWithOrgApacheLuceneUtilBytesRef:self->actualTerm_];
        if (!result)
        {
          return result;
        }

        v4 = result;
        tenum = self->tenum_;
        if (!tenum)
        {
LABEL_21:
          JreThrowNullPointerException();
        }

        v6 = [(OrgApacheLuceneIndexTermsEnum *)tenum seekCeilWithOrgApacheLuceneUtilBytesRef:v4];
        if ((atomic_load_explicit(OrgApacheLuceneIndexTermsEnum_SeekStatusEnum__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_1000169C0();
        }

        if (v6 == OrgApacheLuceneIndexTermsEnum_SeekStatusEnum_values_)
        {
          return 0;
        }

        v7 = self->tenum_;
        if (!v7)
        {
          goto LABEL_21;
        }

        JreStrongAssign(&self->actualTerm_, [(OrgApacheLuceneIndexTermsEnum *)v7 term]);
        actualTerm = self->actualTerm_;
      }

      else
      {
        v9 = self->tenum_;
        if (!v9)
        {
          goto LABEL_21;
        }

        JreStrongAssign(&self->actualTerm_, [(OrgApacheLuceneIndexTermsEnum *)v9 next]);
        actualTerm = self->actualTerm_;
        if (!actualTerm)
        {
          return 0;
        }
      }

      v10 = [-[OrgApacheLuceneIndexFilteredTermsEnum acceptWithOrgApacheLuceneUtilBytesRef:](self acceptWithOrgApacheLuceneUtilBytesRef:{actualTerm), "ordinal"}];
      if (v10 <= 2)
      {
        break;
      }

      if (v10 == 3)
      {
        self->doSeek_ = 1;
      }

      else if (v10 == 4)
      {
        return 0;
      }
    }

    if (!v10)
    {
      return self->actualTerm_;
    }
  }

  while (v10 != 1);
  self->doSeek_ = 1;
  return self->actualTerm_;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexFilteredTermsEnum;
  [(OrgApacheLuceneIndexTermsEnum *)&v3 dealloc];
}

@end