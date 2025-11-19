@interface OrgApacheLuceneStoreIndexInput
- (id)clone;
- (id)getFullSliceDescriptionWithNSString:(id)a3;
- (id)randomAccessSliceWithLong:(int64_t)a3 withLong:(int64_t)a4;
- (void)dealloc;
@end

@implementation OrgApacheLuceneStoreIndexInput

- (id)clone
{
  v4.receiver = self;
  v4.super_class = OrgApacheLuceneStoreIndexInput;
  v2 = [(OrgApacheLuceneStoreDataInput *)&v4 clone];
  objc_opt_class();
  if (v2 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return v2;
}

- (id)getFullSliceDescriptionWithNSString:(id)a3
{
  result = [(OrgApacheLuceneStoreIndexInput *)self description];
  if (a3)
  {
    return JreStrcat("$$$C", v5, v6, v7, v8, v9, v10, v11, result);
  }

  return result;
}

- (id)randomAccessSliceWithLong:(int64_t)a3 withLong:(int64_t)a4
{
  v4 = [(OrgApacheLuceneStoreIndexInput *)self sliceWithNSString:@"randomaccess" withLong:a3 withLong:a4];
  if ([OrgApacheLuceneStoreRandomAccessInput_class_() isInstance:v4])
  {
    v5 = OrgApacheLuceneStoreRandomAccessInput_class_();
    if (v4)
    {
      if (([v5 isInstance:v4] & 1) == 0)
      {
        JreThrowClassCastException();
      }
    }

    return v4;
  }

  else
  {
    v7 = [OrgApacheLuceneStoreIndexInput__1 alloc];
    JreStrongAssign(&v7->val$slice_, v4);

    return v7;
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneStoreIndexInput;
  [(OrgApacheLuceneStoreDataInput *)&v3 dealloc];
}

@end