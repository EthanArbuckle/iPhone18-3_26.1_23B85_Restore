@interface OrgApacheLuceneCodecsLucene50AAPL50PostingsReader
+ (void)initialize;
- (id)description;
- (id)newTermState;
- (id)postingsWithOrgApacheLuceneIndexFieldInfo:(id)a3 withOrgApacheLuceneCodecsBlockTermState:(id)a4 withOrgApacheLuceneIndexPostingsEnum:(id)a5 withInt:(int)a6;
- (void)checkIntegrity;
- (void)close;
- (void)dealloc;
- (void)decodeTermWithLongArray:(id)a3 withOrgApacheLuceneStoreDataInput:(id)a4 withOrgApacheLuceneIndexFieldInfo:(id)a5 withOrgApacheLuceneCodecsBlockTermState:(id)a6 withBoolean:(BOOL)a7;
- (void)init__WithOrgApacheLuceneStoreIndexInput:(id)a3 withOrgApacheLuceneIndexSegmentReadState:(id)a4;
@end

@implementation OrgApacheLuceneCodecsLucene50AAPL50PostingsReader

- (void)init__WithOrgApacheLuceneStoreIndexInput:(id)a3 withOrgApacheLuceneIndexSegmentReadState:(id)a4
{
  if (!a4 || (v4 = *(a4 + 2)) == 0 || (OrgApacheLuceneCodecsCodecUtil_checkIndexHeaderWithOrgApacheLuceneStoreDataInput_withNSString_withInt_withInt_withByteArray_withNSString_(a3, OrgApacheLuceneCodecsLucene50AAPL50PostingsFormatReadOnly_TERMS_CODEC_, 0, 0, [v4 getId], *(a4 + 5)), !a3))
  {
    JreThrowNullPointerException();
  }

  if ([a3 readVInt] != 128)
  {
    v13 = JreStrcat("$I$IC", v6, v7, v8, v9, v10, v11, v12, @"index-time BLOCK_SIZE (");
    v14 = new_JavaLangIllegalStateException_initWithNSString_(v13);
    objc_exception_throw(v14);
  }
}

- (id)newTermState
{
  Only_IntBlockTermState_init = new_OrgApacheLuceneCodecsLucene50AAPL50PostingsFormatReadOnly_IntBlockTermState_init();

  return Only_IntBlockTermState_init;
}

- (void)close
{
  posIn = self->posIn_;
  v4[0] = self->docIn_;
  v4[1] = posIn;
  v4[2] = self->payIn_;
  v3 = [IOSObjectArray arrayWithObjects:v4 count:3 type:JavaIoCloseable_class_()];
  OrgApacheLuceneUtilIOUtils_closeWithJavaIoCloseableArray_(v3);
}

- (void)decodeTermWithLongArray:(id)a3 withOrgApacheLuceneStoreDataInput:(id)a4 withOrgApacheLuceneIndexFieldInfo:(id)a5 withOrgApacheLuceneCodecsBlockTermState:(id)a6 withBoolean:(BOOL)a7
{
  v7 = a7;
  objc_opt_class();
  if (a6 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  if (!a5)
  {
    goto LABEL_38;
  }

  v12 = [a5 getIndexOptions];
  if (!v12)
  {
    goto LABEL_38;
  }

  v13 = v12;
  if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100015608();
  }

  v14 = [v13 compareToWithId:qword_100557388];
  v15 = [a5 getIndexOptions];
  if (!v15)
  {
    goto LABEL_38;
  }

  v16 = v15;
  if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100015608();
  }

  v17 = [v16 compareToWithId:qword_100557390];
  v18 = [a5 hasPayloads];
  if (v7)
  {
    if (!a6)
    {
      goto LABEL_38;
    }

    *(a6 + 7) = 0;
    *(a6 + 8) = 0;
    *(a6 + 9) = 0;
  }

  if (!a3)
  {
    goto LABEL_38;
  }

  v19 = *(a3 + 2);
  if (v19 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v19, 0);
  }

  if (!a6)
  {
    goto LABEL_38;
  }

  *(a6 + 7) += *(a3 + 2);
  if ((v14 & 0x80000000) == 0)
  {
    v20 = *(a3 + 2);
    if (v20 <= 1)
    {
      IOSArray_throwOutOfBoundsWithMsg(v20, 1);
    }

    *(a6 + 8) += *(a3 + 3);
    if ((v17 >= 0) | v18 & 1)
    {
      v21 = *(a3 + 2);
      if (v21 <= 2)
      {
        IOSArray_throwOutOfBoundsWithMsg(v21, 2);
      }

      *(a6 + 9) += *(a3 + 4);
    }
  }

  if (*(a6 + 4) != 1)
  {
    *(a6 + 24) = -1;
LABEL_26:
    if ((v14 & 0x80000000) == 0)
    {
      if (*(a6 + 3) < 129)
      {
        v23 = -1;
      }

      else
      {
        if (!a4)
        {
          goto LABEL_38;
        }

        v23 = [a4 readVLong];
      }

      *(a6 + 11) = v23;
    }

    if (*(a6 + 4) < 129)
    {
      v22 = -1;
      goto LABEL_36;
    }

    if (a4)
    {
      v22 = [a4 readVLong];
      goto LABEL_36;
    }

LABEL_38:
    JreThrowNullPointerException();
  }

  if (!a4)
  {
    goto LABEL_38;
  }

  *(a6 + 24) = [a4 readVInt];
  if (*(a6 + 24) != 2147483646)
  {
    goto LABEL_26;
  }

  *(a6 + 4) = 0;
  v22 = -1;
  *(a6 + 11) = -1;
LABEL_36:
  *(a6 + 10) = v22;
}

- (id)postingsWithOrgApacheLuceneIndexFieldInfo:(id)a3 withOrgApacheLuceneCodecsBlockTermState:(id)a4 withOrgApacheLuceneIndexPostingsEnum:(id)a5 withInt:(int)a6
{
  if (!a3)
  {
    goto LABEL_44;
  }

  v11 = [a3 getIndexOptions];
  if (!v11)
  {
    goto LABEL_44;
  }

  v12 = v11;
  if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100015608();
  }

  v13 = [v12 compareToWithId:qword_100557388];
  v14 = [a3 getIndexOptions];
  if (!v14)
  {
    goto LABEL_44;
  }

  v15 = v14;
  if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100015608();
  }

  v16 = [v15 compareToWithId:qword_100557390];
  v17 = [a3 hasPayloads];
  if (OrgApacheLuceneIndexPostingsEnum_featureRequestedWithInt_withShort_(a6, 0x4000) && (v13 & 0x80000000) != 0)
  {
    return 0;
  }

  if ((v13 & 0x80000000) != 0 || !OrgApacheLuceneIndexPostingsEnum_featureRequestedWithInt_withShort_(a6, 24))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (!a5)
      {
        goto LABEL_44;
      }

      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_45;
      }

      if ([a5 canReuseWithOrgApacheLuceneStoreIndexInput:self->docIn_ withOrgApacheLuceneIndexFieldInfo:a3])
      {
        goto LABEL_28;
      }
    }

    v19 = [OrgApacheLuceneCodecsLucene50AAPL50PostingsReader_BlockDocsEnum alloc];
    OrgApacheLuceneCodecsLucene50AAPL50PostingsReader_BlockDocsEnum_initWithOrgApacheLuceneCodecsLucene50AAPL50PostingsReader_withOrgApacheLuceneIndexFieldInfo_(v19, &self->super.super.isa, a3);
    goto LABEL_27;
  }

  if ((v16 & 0x80000000) == 0 && OrgApacheLuceneIndexPostingsEnum_featureRequestedWithInt_withShort_(a6, 56) || v17 && OrgApacheLuceneIndexPostingsEnum_featureRequestedWithInt_withShort_(a6, 88))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (!a5)
      {
        goto LABEL_44;
      }

      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_45;
      }

      if ([a5 canReuseWithOrgApacheLuceneStoreIndexInput:self->docIn_ withOrgApacheLuceneIndexFieldInfo:a3])
      {
        goto LABEL_28;
      }

      v19 = new_OrgApacheLuceneCodecsLucene50AAPL50PostingsReader_EverythingEnum_initWithOrgApacheLuceneCodecsLucene50AAPL50PostingsReader_withOrgApacheLuceneIndexFieldInfo_(self, a3);
    }

    else
    {
      v19 = [OrgApacheLuceneCodecsLucene50AAPL50PostingsReader_EverythingEnum alloc];
      OrgApacheLuceneCodecsLucene50AAPL50PostingsReader_EverythingEnum_initWithOrgApacheLuceneCodecsLucene50AAPL50PostingsReader_withOrgApacheLuceneIndexFieldInfo_(v19, self, a3);
    }

LABEL_27:
    a5 = v19;
    if (a5)
    {
LABEL_28:
      objc_opt_class();
      if (!a4 || (objc_opt_isKindOfClass() & 1) != 0)
      {

        return [a5 resetWithOrgApacheLuceneCodecsLucene50AAPL50PostingsFormatReadOnly_IntBlockTermState:a4 withInt:?];
      }

LABEL_45:
      JreThrowClassCastException();
    }

    goto LABEL_44;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_48;
  }

  objc_opt_class();
  if (!a5)
  {
    goto LABEL_44;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_45;
  }

  if (([a5 canReuseWithOrgApacheLuceneStoreIndexInput:self->docIn_ withOrgApacheLuceneIndexFieldInfo:a3] & 1) == 0)
  {
LABEL_48:
    v20 = [OrgApacheLuceneCodecsLucene50AAPL50PostingsReader_BlockPostingsEnum alloc];
    OrgApacheLuceneCodecsLucene50AAPL50PostingsReader_BlockPostingsEnum_initWithOrgApacheLuceneCodecsLucene50AAPL50PostingsReader_withOrgApacheLuceneIndexFieldInfo_(v20, self, a3);
    a5 = v20;
    if (!a5)
    {
LABEL_44:
      JreThrowNullPointerException();
    }
  }

  objc_opt_class();
  if (a4 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_45;
  }

  return [a5 resetWithOrgApacheLuceneCodecsLucene50AAPL50PostingsFormatReadOnly_IntBlockTermState:a4];
}

- (void)checkIntegrity
{
  docIn = self->docIn_;
  if (docIn)
  {
    OrgApacheLuceneCodecsCodecUtil_checksumEntireFileWithOrgApacheLuceneStoreIndexInput_(docIn);
  }

  posIn = self->posIn_;
  if (posIn)
  {
    OrgApacheLuceneCodecsCodecUtil_checksumEntireFileWithOrgApacheLuceneStoreIndexInput_(posIn);
  }

  payIn = self->payIn_;
  if (payIn)
  {

    OrgApacheLuceneCodecsCodecUtil_checksumEntireFileWithOrgApacheLuceneStoreIndexInput_(payIn);
  }
}

- (id)description
{
  v3 = [-[OrgApacheLuceneCodecsLucene50AAPL50PostingsReader getClass](self "getClass")];
  v13 = self->payIn_ != 0;
  v12 = self->posIn_ != 0;
  return JreStrcat("$$Z$ZC", v4, v5, v6, v7, v8, v9, v10, v3);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsLucene50AAPL50PostingsReader;
  [(OrgApacheLuceneCodecsLucene50AAPL50PostingsReader *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = OrgApacheLuceneCodecsLucene50AAPL50PostingsReader_class_();
    qword_100554120 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(v2);
    atomic_store(1u, OrgApacheLuceneCodecsLucene50AAPL50PostingsReader__initialized);
  }
}

@end