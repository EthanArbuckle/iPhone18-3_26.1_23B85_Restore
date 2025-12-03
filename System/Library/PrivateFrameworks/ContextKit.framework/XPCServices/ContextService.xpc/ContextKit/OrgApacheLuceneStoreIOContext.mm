@interface OrgApacheLuceneStoreIOContext
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation OrgApacheLuceneStoreIOContext

- (unint64_t)hash
{
  context = self->context_;
  if (context)
  {
    v4 = 31 * [(JavaLangEnum *)context hash]+ 961;
  }

  else
  {
    v4 = 961;
  }

  flushInfo = self->flushInfo_;
  if (flushInfo)
  {
    v6 = [(OrgApacheLuceneStoreFlushInfo *)flushInfo hash];
  }

  else
  {
    v6 = 0;
  }

  mergeInfo = self->mergeInfo_;
  if (mergeInfo)
  {
    LODWORD(mergeInfo) = [(OrgApacheLuceneStoreMergeInfo *)mergeInfo hash];
  }

  if (self->readOnce_)
  {
    v9 = 1231;
  }

  else
  {
    v9 = 1237;
  }

  v8 = mergeInfo - (v6 + v4) + 32 * (v6 + v4);
  return (v9 - v8 + 32 * v8);
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v6) = 1;
    return v6;
  }

  if (!equal)
  {
    goto LABEL_6;
  }

  getClass = [(OrgApacheLuceneStoreIOContext *)self getClass];
  if (getClass != [equal getClass])
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  if (self->context_ != *(equal + 1))
  {
    goto LABEL_6;
  }

  flushInfo = self->flushInfo_;
  v8 = *(equal + 3);
  if (flushInfo)
  {
    v6 = [(OrgApacheLuceneStoreFlushInfo *)flushInfo isEqual:v8];
    if (!v6)
    {
      return v6;
    }
  }

  else if (v8)
  {
    goto LABEL_6;
  }

  mergeInfo = self->mergeInfo_;
  v10 = *(equal + 2);
  if (mergeInfo)
  {
    v6 = [(OrgApacheLuceneStoreMergeInfo *)mergeInfo isEqual:v10];
    if (!v6)
    {
      return v6;
    }

    goto LABEL_17;
  }

  if (!v10)
  {
LABEL_17:
    LOBYTE(v6) = self->readOnce_ == *(equal + 32);
    return v6;
  }

LABEL_6:
  LOBYTE(v6) = 0;
  return v6;
}

- (id)description
{
  readOnce = self->readOnce_;
  flushInfo = self->flushInfo_;
  mergeInfo = self->mergeInfo_;
  context = self->context_;
  return JreStrcat("$@$@$@$ZC", a2, v2, v3, v4, v5, v6, v7, @"IOContext [context=");
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneStoreIOContext;
  [(OrgApacheLuceneStoreIOContext *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    if ((atomic_load_explicit(OrgApacheLuceneStoreIOContext_ContextEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1000E5C44();
    }

    v2 = qword_1005579F0;
    v3 = [OrgApacheLuceneStoreIOContext alloc];
    sub_1000E55C8(v3, v2, 0);
    JreStrongAssignAndConsume(&OrgApacheLuceneStoreIOContext_DEFAULT_, v3);
    v4 = [OrgApacheLuceneStoreIOContext alloc];
    sub_1000E549C(v4, 1);
    JreStrongAssignAndConsume(&OrgApacheLuceneStoreIOContext_READONCE_, v4);
    v5 = [OrgApacheLuceneStoreIOContext alloc];
    sub_1000E549C(v5, 0);
    JreStrongAssignAndConsume(&OrgApacheLuceneStoreIOContext_READ_, v5);
    atomic_store(1u, OrgApacheLuceneStoreIOContext__initialized);
  }
}

@end