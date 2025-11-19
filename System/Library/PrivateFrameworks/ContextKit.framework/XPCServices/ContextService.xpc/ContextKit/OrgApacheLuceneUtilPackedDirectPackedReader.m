@interface OrgApacheLuceneUtilPackedDirectPackedReader
- (int64_t)getWithInt:(int)a3;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilPackedDirectPackedReader

- (int64_t)getWithInt:(int)a3
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  v5 = self->bitsPerValue_ * a3;
  [(OrgApacheLuceneStoreIndexInput *)in seekWithLong:self->startPointer_ + (v5 >> 3)];
  v13 = self->bitsPerValue_ + (v5 & 7);
  v14 = ((v13 + 7) & 0xF8) - v13;
  v15 = (v13 + 7) >> 3;
  if (v15 <= 4)
  {
    if (v15 > 2)
    {
      if (v15 == 3)
      {
        v19 = [(OrgApacheLuceneStoreDataInput *)self->in_ readShort];
        v20 = [(OrgApacheLuceneStoreIndexInput *)self->in_ readByte];
        goto LABEL_21;
      }

      LODWORD(v17) = [(OrgApacheLuceneStoreDataInput *)self->in_ readInt];
    }

    else if (v15 == 1)
    {
      LODWORD(v17) = [(OrgApacheLuceneStoreIndexInput *)self->in_ readByte];
    }

    else
    {
      if (v15 != 2)
      {
        goto LABEL_26;
      }

      LODWORD(v17) = [(OrgApacheLuceneStoreDataInput *)self->in_ readShort];
    }

    v17 = v17;
    return (v17 >> v14) & self->valueMask_;
  }

  if (v15 <= 6)
  {
    if (v15 != 5)
    {
      if (v15 == 6)
      {
        v18 = [(OrgApacheLuceneStoreDataInput *)self->in_ readInt];
        v17 = [(OrgApacheLuceneStoreDataInput *)self->in_ readShort]| (v18 << 16);
        return (v17 >> v14) & self->valueMask_;
      }

LABEL_26:
      bitsPerValue = self->bitsPerValue_;
      v24 = JreStrcat("$I", v6, v7, v8, v9, v10, v11, v12, @"bitsPerValue too large: ");
      v25 = new_JavaLangAssertionError_initWithId_(v24);
      objc_exception_throw(v25);
    }

    v19 = [(OrgApacheLuceneStoreDataInput *)self->in_ readInt];
    v20 = [(OrgApacheLuceneStoreIndexInput *)self->in_ readByte];
LABEL_21:
    v17 = v20 | (v19 << 8);
    return (v17 >> v14) & self->valueMask_;
  }

  if (v15 == 7)
  {
    v21 = [(OrgApacheLuceneStoreDataInput *)self->in_ readInt];
    v22 = [(OrgApacheLuceneStoreDataInput *)self->in_ readShort];
    v17 = (v21 << 24) | (v22 << 8) | [(OrgApacheLuceneStoreIndexInput *)self->in_ readByte];
    return (v17 >> v14) & self->valueMask_;
  }

  if (v15 == 8)
  {
    v17 = [(OrgApacheLuceneStoreDataInput *)self->in_ readLong];
    return (v17 >> v14) & self->valueMask_;
  }

  if (v15 != 9)
  {
    goto LABEL_26;
  }

  v16 = [(OrgApacheLuceneStoreDataInput *)self->in_ readLong];
  v17 = ([(OrgApacheLuceneStoreIndexInput *)self->in_ readByte]>> v14) | (v16 << (8 - v14));
  v14 = 0;
  return (v17 >> v14) & self->valueMask_;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPackedDirectPackedReader;
  [(OrgApacheLuceneUtilPackedDirectPackedReader *)&v3 dealloc];
}

@end