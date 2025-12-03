@interface OrgApacheLuceneCodecsLucene50AAPL50PostingsReader
+ (void)initialize;
- (id)description;
- (id)newTermState;
- (id)postingsWithOrgApacheLuceneIndexFieldInfo:(id)info withOrgApacheLuceneCodecsBlockTermState:(id)state withOrgApacheLuceneIndexPostingsEnum:(id)enum withInt:(int)int;
- (void)checkIntegrity;
- (void)close;
- (void)dealloc;
- (void)decodeTermWithLongArray:(id)array withOrgApacheLuceneStoreDataInput:(id)input withOrgApacheLuceneIndexFieldInfo:(id)info withOrgApacheLuceneCodecsBlockTermState:(id)state withBoolean:(BOOL)boolean;
- (void)init__WithOrgApacheLuceneStoreIndexInput:(id)input withOrgApacheLuceneIndexSegmentReadState:(id)state;
@end

@implementation OrgApacheLuceneCodecsLucene50AAPL50PostingsReader

- (void)init__WithOrgApacheLuceneStoreIndexInput:(id)input withOrgApacheLuceneIndexSegmentReadState:(id)state
{
  if (!state || (v4 = *(state + 2)) == 0 || (OrgApacheLuceneCodecsCodecUtil_checkIndexHeaderWithOrgApacheLuceneStoreDataInput_withNSString_withInt_withInt_withByteArray_withNSString_(input, OrgApacheLuceneCodecsLucene50AAPL50PostingsFormatReadOnly_TERMS_CODEC_, 0, 0, [v4 getId], *(state + 5)), !input))
  {
    JreThrowNullPointerException();
  }

  if ([input readVInt] != 128)
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

- (void)decodeTermWithLongArray:(id)array withOrgApacheLuceneStoreDataInput:(id)input withOrgApacheLuceneIndexFieldInfo:(id)info withOrgApacheLuceneCodecsBlockTermState:(id)state withBoolean:(BOOL)boolean
{
  booleanCopy = boolean;
  objc_opt_class();
  if (state && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  if (!info)
  {
    goto LABEL_38;
  }

  getIndexOptions = [info getIndexOptions];
  if (!getIndexOptions)
  {
    goto LABEL_38;
  }

  v13 = getIndexOptions;
  if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100015608();
  }

  v14 = [v13 compareToWithId:qword_100557388];
  getIndexOptions2 = [info getIndexOptions];
  if (!getIndexOptions2)
  {
    goto LABEL_38;
  }

  v16 = getIndexOptions2;
  if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100015608();
  }

  v17 = [v16 compareToWithId:qword_100557390];
  hasPayloads = [info hasPayloads];
  if (booleanCopy)
  {
    if (!state)
    {
      goto LABEL_38;
    }

    *(state + 7) = 0;
    *(state + 8) = 0;
    *(state + 9) = 0;
  }

  if (!array)
  {
    goto LABEL_38;
  }

  v19 = *(array + 2);
  if (v19 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v19, 0);
  }

  if (!state)
  {
    goto LABEL_38;
  }

  *(state + 7) += *(array + 2);
  if ((v14 & 0x80000000) == 0)
  {
    v20 = *(array + 2);
    if (v20 <= 1)
    {
      IOSArray_throwOutOfBoundsWithMsg(v20, 1);
    }

    *(state + 8) += *(array + 3);
    if ((v17 >= 0) | hasPayloads & 1)
    {
      v21 = *(array + 2);
      if (v21 <= 2)
      {
        IOSArray_throwOutOfBoundsWithMsg(v21, 2);
      }

      *(state + 9) += *(array + 4);
    }
  }

  if (*(state + 4) != 1)
  {
    *(state + 24) = -1;
LABEL_26:
    if ((v14 & 0x80000000) == 0)
    {
      if (*(state + 3) < 129)
      {
        readVLong = -1;
      }

      else
      {
        if (!input)
        {
          goto LABEL_38;
        }

        readVLong = [input readVLong];
      }

      *(state + 11) = readVLong;
    }

    if (*(state + 4) < 129)
    {
      readVLong2 = -1;
      goto LABEL_36;
    }

    if (input)
    {
      readVLong2 = [input readVLong];
      goto LABEL_36;
    }

LABEL_38:
    JreThrowNullPointerException();
  }

  if (!input)
  {
    goto LABEL_38;
  }

  *(state + 24) = [input readVInt];
  if (*(state + 24) != 2147483646)
  {
    goto LABEL_26;
  }

  *(state + 4) = 0;
  readVLong2 = -1;
  *(state + 11) = -1;
LABEL_36:
  *(state + 10) = readVLong2;
}

- (id)postingsWithOrgApacheLuceneIndexFieldInfo:(id)info withOrgApacheLuceneCodecsBlockTermState:(id)state withOrgApacheLuceneIndexPostingsEnum:(id)enum withInt:(int)int
{
  if (!info)
  {
    goto LABEL_44;
  }

  getIndexOptions = [info getIndexOptions];
  if (!getIndexOptions)
  {
    goto LABEL_44;
  }

  v12 = getIndexOptions;
  if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100015608();
  }

  v13 = [v12 compareToWithId:qword_100557388];
  getIndexOptions2 = [info getIndexOptions];
  if (!getIndexOptions2)
  {
    goto LABEL_44;
  }

  v15 = getIndexOptions2;
  if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100015608();
  }

  v16 = [v15 compareToWithId:qword_100557390];
  hasPayloads = [info hasPayloads];
  if (OrgApacheLuceneIndexPostingsEnum_featureRequestedWithInt_withShort_(int, 0x4000) && (v13 & 0x80000000) != 0)
  {
    return 0;
  }

  if ((v13 & 0x80000000) != 0 || !OrgApacheLuceneIndexPostingsEnum_featureRequestedWithInt_withShort_(int, 24))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (!enum)
      {
        goto LABEL_44;
      }

      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_45;
      }

      if ([enum canReuseWithOrgApacheLuceneStoreIndexInput:self->docIn_ withOrgApacheLuceneIndexFieldInfo:info])
      {
        goto LABEL_28;
      }
    }

    v19 = [OrgApacheLuceneCodecsLucene50AAPL50PostingsReader_BlockDocsEnum alloc];
    OrgApacheLuceneCodecsLucene50AAPL50PostingsReader_BlockDocsEnum_initWithOrgApacheLuceneCodecsLucene50AAPL50PostingsReader_withOrgApacheLuceneIndexFieldInfo_(v19, &self->super.super.isa, info);
    goto LABEL_27;
  }

  if ((v16 & 0x80000000) == 0 && OrgApacheLuceneIndexPostingsEnum_featureRequestedWithInt_withShort_(int, 56) || hasPayloads && OrgApacheLuceneIndexPostingsEnum_featureRequestedWithInt_withShort_(int, 88))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (!enum)
      {
        goto LABEL_44;
      }

      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_45;
      }

      if ([enum canReuseWithOrgApacheLuceneStoreIndexInput:self->docIn_ withOrgApacheLuceneIndexFieldInfo:info])
      {
        goto LABEL_28;
      }

      v19 = new_OrgApacheLuceneCodecsLucene50AAPL50PostingsReader_EverythingEnum_initWithOrgApacheLuceneCodecsLucene50AAPL50PostingsReader_withOrgApacheLuceneIndexFieldInfo_(self, info);
    }

    else
    {
      v19 = [OrgApacheLuceneCodecsLucene50AAPL50PostingsReader_EverythingEnum alloc];
      OrgApacheLuceneCodecsLucene50AAPL50PostingsReader_EverythingEnum_initWithOrgApacheLuceneCodecsLucene50AAPL50PostingsReader_withOrgApacheLuceneIndexFieldInfo_(v19, self, info);
    }

LABEL_27:
    enum = v19;
    if (enum)
    {
LABEL_28:
      objc_opt_class();
      if (!state || (objc_opt_isKindOfClass() & 1) != 0)
      {

        return [enum resetWithOrgApacheLuceneCodecsLucene50AAPL50PostingsFormatReadOnly_IntBlockTermState:state withInt:?];
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
  if (!enum)
  {
    goto LABEL_44;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_45;
  }

  if (([enum canReuseWithOrgApacheLuceneStoreIndexInput:self->docIn_ withOrgApacheLuceneIndexFieldInfo:info] & 1) == 0)
  {
LABEL_48:
    v20 = [OrgApacheLuceneCodecsLucene50AAPL50PostingsReader_BlockPostingsEnum alloc];
    OrgApacheLuceneCodecsLucene50AAPL50PostingsReader_BlockPostingsEnum_initWithOrgApacheLuceneCodecsLucene50AAPL50PostingsReader_withOrgApacheLuceneIndexFieldInfo_(v20, self, info);
    enum = v20;
    if (!enum)
    {
LABEL_44:
      JreThrowNullPointerException();
    }
  }

  objc_opt_class();
  if (state && (objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_45;
  }

  return [enum resetWithOrgApacheLuceneCodecsLucene50AAPL50PostingsFormatReadOnly_IntBlockTermState:state];
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
  if (objc_opt_class() == self)
  {
    v2 = OrgApacheLuceneCodecsLucene50AAPL50PostingsReader_class_();
    qword_100554120 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(v2);
    atomic_store(1u, OrgApacheLuceneCodecsLucene50AAPL50PostingsReader__initialized);
  }
}

@end