@interface OrgApacheLuceneStoreBufferedIndexInput_SlicedIndexInput
- (id)clone;
- (void)close;
- (void)dealloc;
@end

@implementation OrgApacheLuceneStoreBufferedIndexInput_SlicedIndexInput

- (id)clone
{
  v6.receiver = self;
  v6.super_class = OrgApacheLuceneStoreBufferedIndexInput_SlicedIndexInput;
  v3 = [(OrgApacheLuceneStoreBufferedIndexInput *)&v6 clone];
  objc_opt_class();
  if (!v3)
  {
    goto LABEL_5;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  base = self->base_;
  if (!base)
  {
LABEL_5:
    JreThrowNullPointerException();
  }

  JreStrongAssign(v3 + 7, [(OrgApacheLuceneStoreIndexInput *)base clone]);
  v3[8] = self->fileOffset_;
  v3[9] = self->length_;
  return v3;
}

- (void)close
{
  base = self->base_;
  if (!base)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneStoreIndexInput *)base close];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneStoreBufferedIndexInput_SlicedIndexInput;
  [(OrgApacheLuceneStoreBufferedIndexInput *)&v3 dealloc];
}

@end