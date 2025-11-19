@interface OrgApacheLuceneIndexFieldInfos_FieldNumbers
- (BOOL)containsWithNSString:(id)a3 withOrgApacheLuceneIndexDocValuesTypeEnum:(id)a4;
- (int)addOrGetWithNSString:(id)a3 withInt:(int)a4 withOrgApacheLuceneIndexDocValuesTypeEnum:(id)a5;
- (void)clear;
- (void)dealloc;
- (void)setDocValuesTypeWithInt:(int)a3 withNSString:(id)a4 withOrgApacheLuceneIndexDocValuesTypeEnum:(id)a5;
- (void)verifyConsistentWithJavaLangInteger:(id)a3 withNSString:(id)a4 withOrgApacheLuceneIndexDocValuesTypeEnum:(id)a5;
@end

@implementation OrgApacheLuceneIndexFieldInfos_FieldNumbers

- (int)addOrGetWithNSString:(id)a3 withInt:(int)a4 withOrgApacheLuceneIndexDocValuesTypeEnum:(id)a5
{
  objc_sync_enter(self);
  if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (OrgApacheLuceneIndexDocValuesTypeEnum_values_ != a5)
  {
    docValuesType = self->docValuesType_;
    if (!docValuesType)
    {
      JreThrowNullPointerException();
    }

    v17 = [(JavaUtilMap *)docValuesType getWithId:a3];
    if (v17)
    {
      if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
      {
        objc_opt_class();
      }

      if (v17 != a5 && v17 != OrgApacheLuceneIndexDocValuesTypeEnum_values_)
      {
        v18 = JreStrcat("$@$@$$C", v10, v11, v12, v13, v14, v15, v16, @"cannot change DocValues type from ");
        v19 = new_JavaLangIllegalArgumentException_initWithNSString_(v18);
        objc_exception_throw(v19);
      }
    }

    else
    {
      [(JavaUtilMap *)self->docValuesType_ putWithId:a3 withId:a5];
    }
  }

  nameToNumber = self->nameToNumber_;
  if (!nameToNumber)
  {
    goto LABEL_24;
  }

  v21 = [(JavaUtilMap *)nameToNumber getWithId:a3];
  if (!v21)
  {
    v22 = JavaLangInteger_valueOfWithInt_(a4);
    if (a4 == -1)
    {
      goto LABEL_17;
    }

    v21 = v22;
    numberToName = self->numberToName_;
    if (!numberToName)
    {
      goto LABEL_23;
    }

    if (([(JavaUtilMap *)numberToName containsKeyWithId:v21]& 1) != 0)
    {
      do
      {
LABEL_17:
        v24 = self->numberToName_;
        if (!v24)
        {
          goto LABEL_23;
        }

        v25 = self->lowestUnassignedFieldNumber_ + 1;
        self->lowestUnassignedFieldNumber_ = v25;
      }

      while (([(JavaUtilMap *)v24 containsKeyWithId:JavaLangInteger_valueOfWithInt_(v25)]& 1) != 0);
      v21 = JavaLangInteger_valueOfWithInt_(self->lowestUnassignedFieldNumber_);
    }

    v26 = self->numberToName_;
    if (!v26)
    {
LABEL_23:
      JreThrowNullPointerException();
    }

    [(JavaUtilMap *)v26 putWithId:v21 withId:a3];
    [(JavaUtilMap *)self->nameToNumber_ putWithId:a3 withId:v21];
    if (!v21)
    {
LABEL_24:
      JreThrowNullPointerException();
    }
  }

  v27 = [(JavaLangInteger *)v21 intValue];
  objc_sync_exit(self);
  return v27;
}

- (void)verifyConsistentWithJavaLangInteger:(id)a3 withNSString:(id)a4 withOrgApacheLuceneIndexDocValuesTypeEnum:(id)a5
{
  objc_sync_enter(self);
  if (!a4)
  {
    goto LABEL_19;
  }

  numberToName = self->numberToName_;
  if (!numberToName)
  {
    goto LABEL_19;
  }

  if (([a4 isEqual:{-[JavaUtilMap getWithId:](numberToName, "getWithId:", a3)}] & 1) == 0)
  {
    [(JavaUtilMap *)self->numberToName_ getWithId:a3];
    v27 = JreStrcat("$@$$$$C", v20, v21, v22, v23, v24, v25, v26, @"field number ");
    goto LABEL_23;
  }

  if (!a3 || (nameToNumber = self->nameToNumber_) == 0)
  {
LABEL_19:
    JreThrowNullPointerException();
  }

  if (([a3 isEqual:{-[JavaUtilMap getWithId:](nameToNumber, "getWithId:", a4)}] & 1) == 0)
  {
    [(JavaUtilMap *)self->nameToNumber_ getWithId:a4];
    v27 = JreStrcat("$$$@$@C", v28, v29, v30, v31, v32, v33, v34, @"field name ");
LABEL_23:
    v35 = new_JavaLangIllegalArgumentException_initWithNSString_(v27);
    objc_exception_throw(v35);
  }

  docValuesType = self->docValuesType_;
  if (!docValuesType)
  {
    JreThrowNullPointerException();
  }

  v19 = [(JavaUtilMap *)docValuesType getWithId:a4];
  if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (OrgApacheLuceneIndexDocValuesTypeEnum_values_ != a5 && v19)
  {
    if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      objc_opt_class();
    }

    if (v19 != a5 && v19 != OrgApacheLuceneIndexDocValuesTypeEnum_values_)
    {
      v36 = JreStrcat("$@$@$$C", v12, v13, v14, v15, v16, v17, v18, @"cannot change DocValues type from ");
      v37 = new_JavaLangIllegalArgumentException_initWithNSString_(v36);
      objc_exception_throw(v37);
    }
  }

  objc_sync_exit(self);
}

- (BOOL)containsWithNSString:(id)a3 withOrgApacheLuceneIndexDocValuesTypeEnum:(id)a4
{
  objc_sync_enter(self);
  nameToNumber = self->nameToNumber_;
  if (!nameToNumber)
  {
    goto LABEL_7;
  }

  if (([(JavaUtilMap *)nameToNumber containsKeyWithId:a3]& 1) == 0)
  {
    v9 = 0;
    goto LABEL_6;
  }

  docValuesType = self->docValuesType_;
  if (!docValuesType)
  {
LABEL_7:
    JreThrowNullPointerException();
  }

  v9 = [(JavaUtilMap *)docValuesType getWithId:a3]== a4;
LABEL_6:
  objc_sync_exit(self);
  return v9;
}

- (void)clear
{
  objc_sync_enter(self);
  numberToName = self->numberToName_;
  if (!numberToName || ([(JavaUtilMap *)numberToName clear], (nameToNumber = self->nameToNumber_) == 0) || ([(JavaUtilMap *)nameToNumber clear], (docValuesType = self->docValuesType_) == 0))
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilMap *)docValuesType clear];

  objc_sync_exit(self);
}

- (void)setDocValuesTypeWithInt:(int)a3 withNSString:(id)a4 withOrgApacheLuceneIndexDocValuesTypeEnum:(id)a5
{
  objc_sync_enter(self);
  [(OrgApacheLuceneIndexFieldInfos_FieldNumbers *)self verifyConsistentWithJavaLangInteger:JavaLangInteger_valueOfWithInt_(a3) withNSString:a4 withOrgApacheLuceneIndexDocValuesTypeEnum:a5];
  docValuesType = self->docValuesType_;
  if (!docValuesType)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilMap *)docValuesType putWithId:a4 withId:a5];

  objc_sync_exit(self);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexFieldInfos_FieldNumbers;
  [(OrgApacheLuceneIndexFieldInfos_FieldNumbers *)&v3 dealloc];
}

@end