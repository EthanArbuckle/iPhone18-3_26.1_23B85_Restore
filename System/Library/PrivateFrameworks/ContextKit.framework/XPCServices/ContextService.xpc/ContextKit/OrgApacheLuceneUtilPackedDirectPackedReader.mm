@interface OrgApacheLuceneUtilPackedDirectPackedReader
- (int64_t)getWithInt:(int)int;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilPackedDirectPackedReader

- (int64_t)getWithInt:(int)int
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  v5 = self->bitsPerValue_ * int;
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
        readShort = [(OrgApacheLuceneStoreDataInput *)self->in_ readShort];
        readByte = [(OrgApacheLuceneStoreIndexInput *)self->in_ readByte];
        goto LABEL_21;
      }

      LODWORD(readLong) = [(OrgApacheLuceneStoreDataInput *)self->in_ readInt];
    }

    else if (v15 == 1)
    {
      LODWORD(readLong) = [(OrgApacheLuceneStoreIndexInput *)self->in_ readByte];
    }

    else
    {
      if (v15 != 2)
      {
        goto LABEL_26;
      }

      LODWORD(readLong) = [(OrgApacheLuceneStoreDataInput *)self->in_ readShort];
    }

    readLong = readLong;
    return (readLong >> v14) & self->valueMask_;
  }

  if (v15 <= 6)
  {
    if (v15 != 5)
    {
      if (v15 == 6)
      {
        readInt = [(OrgApacheLuceneStoreDataInput *)self->in_ readInt];
        readLong = [(OrgApacheLuceneStoreDataInput *)self->in_ readShort]| (readInt << 16);
        return (readLong >> v14) & self->valueMask_;
      }

LABEL_26:
      bitsPerValue = self->bitsPerValue_;
      v24 = JreStrcat("$I", v6, v7, v8, v9, v10, v11, v12, @"bitsPerValue too large: ");
      v25 = new_JavaLangAssertionError_initWithId_(v24);
      objc_exception_throw(v25);
    }

    readShort = [(OrgApacheLuceneStoreDataInput *)self->in_ readInt];
    readByte = [(OrgApacheLuceneStoreIndexInput *)self->in_ readByte];
LABEL_21:
    readLong = readByte | (readShort << 8);
    return (readLong >> v14) & self->valueMask_;
  }

  if (v15 == 7)
  {
    readInt2 = [(OrgApacheLuceneStoreDataInput *)self->in_ readInt];
    readShort2 = [(OrgApacheLuceneStoreDataInput *)self->in_ readShort];
    readLong = (readInt2 << 24) | (readShort2 << 8) | [(OrgApacheLuceneStoreIndexInput *)self->in_ readByte];
    return (readLong >> v14) & self->valueMask_;
  }

  if (v15 == 8)
  {
    readLong = [(OrgApacheLuceneStoreDataInput *)self->in_ readLong];
    return (readLong >> v14) & self->valueMask_;
  }

  if (v15 != 9)
  {
    goto LABEL_26;
  }

  readLong2 = [(OrgApacheLuceneStoreDataInput *)self->in_ readLong];
  readLong = ([(OrgApacheLuceneStoreIndexInput *)self->in_ readByte]>> v14) | (readLong2 << (8 - v14));
  v14 = 0;
  return (readLong >> v14) & self->valueMask_;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPackedDirectPackedReader;
  [(OrgApacheLuceneUtilPackedDirectPackedReader *)&v3 dealloc];
}

@end