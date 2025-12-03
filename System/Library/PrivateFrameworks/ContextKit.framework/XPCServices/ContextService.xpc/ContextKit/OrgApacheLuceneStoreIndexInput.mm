@interface OrgApacheLuceneStoreIndexInput
- (id)clone;
- (id)getFullSliceDescriptionWithNSString:(id)string;
- (id)randomAccessSliceWithLong:(int64_t)long withLong:(int64_t)withLong;
- (void)dealloc;
@end

@implementation OrgApacheLuceneStoreIndexInput

- (id)clone
{
  v4.receiver = self;
  v4.super_class = OrgApacheLuceneStoreIndexInput;
  clone = [(OrgApacheLuceneStoreDataInput *)&v4 clone];
  objc_opt_class();
  if (clone && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return clone;
}

- (id)getFullSliceDescriptionWithNSString:(id)string
{
  result = [(OrgApacheLuceneStoreIndexInput *)self description];
  if (string)
  {
    return JreStrcat("$$$C", v5, v6, v7, v8, v9, v10, v11, result);
  }

  return result;
}

- (id)randomAccessSliceWithLong:(int64_t)long withLong:(int64_t)withLong
{
  v4 = [(OrgApacheLuceneStoreIndexInput *)self sliceWithNSString:@"randomaccess" withLong:long withLong:withLong];
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