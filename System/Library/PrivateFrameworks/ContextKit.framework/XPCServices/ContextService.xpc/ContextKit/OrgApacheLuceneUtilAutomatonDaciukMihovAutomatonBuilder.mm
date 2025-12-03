@interface OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder
+ (void)initialize;
- (BOOL)setPreviousWithOrgApacheLuceneUtilCharsRef:(id)ref;
- (id)complete;
- (void)addWithOrgApacheLuceneUtilCharsRef:(id)ref;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder

- (void)addWithOrgApacheLuceneUtilCharsRef:(id)ref
{
  if (!ref)
  {
    goto LABEL_16;
  }

  v5 = [ref length];
  root = self->root_;
  if (v5 >= 1)
  {
    v7 = v5;
    v8 = 0;
    while (root)
    {
      v9 = [(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *)root lastChildWithInt:JavaLangCharacter_codePointAtWithJavaLangCharSequence_withInt_(ref, v8)];
      if (!v9)
      {
        goto LABEL_10;
      }

      v10 = v9;
      v11 = JavaLangCharacter_codePointAtWithJavaLangCharSequence_withInt_(ref, v8);
      v8 = JavaLangCharacter_charCountWithInt_(v11) + v8;
      root = v10;
      if (v8 >= v7)
      {
        goto LABEL_11;
      }
    }

LABEL_16:
    JreThrowNullPointerException();
  }

  if (!root)
  {
    goto LABEL_16;
  }

  v8 = 0;
LABEL_10:
  v10 = root;
LABEL_11:
  if ([(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *)v10 hasChildren])
  {
    sub_10010E82C(self, v10);
  }

  sub_10010E8DC(v10, ref, v8);
}

- (id)complete
{
  p_stateRegistry = &self->stateRegistry_;
  if (!self->stateRegistry_)
  {
    v6 = new_JavaLangIllegalStateException_init();
    objc_exception_throw(v6);
  }

  root = self->root_;
  if (!root)
  {
    JreThrowNullPointerException();
  }

  if ([(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *)root hasChildren])
  {
    sub_10010E82C(self, self->root_);
  }

  JreStrongAssign(p_stateRegistry, 0);
  return self->root_;
}

- (BOOL)setPreviousWithOrgApacheLuceneUtilCharsRef:(id)ref
{
  v4 = OrgApacheLuceneUtilCharsRef_deepCopyOfWithOrgApacheLuceneUtilCharsRef_(ref);
  JreStrongAssign(&self->previous_, v4);
  return 1;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder;
  [(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    UTF16SortedAsUTF8Comparator = OrgApacheLuceneUtilCharsRef_getUTF16SortedAsUTF8Comparator();
    JreStrongAssign(&qword_100554700, UTF16SortedAsUTF8Comparator);
    atomic_store(1u, &OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder__initialized);
  }
}

@end