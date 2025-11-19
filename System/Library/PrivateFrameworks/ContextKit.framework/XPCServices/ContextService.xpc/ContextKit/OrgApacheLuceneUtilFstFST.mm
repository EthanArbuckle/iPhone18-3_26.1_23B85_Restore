@interface OrgApacheLuceneUtilFstFST
+ (BOOL)targetHasArcsWithOrgApacheLuceneUtilFstFST_Arc:(id)a3;
+ (void)initialize;
- (BOOL)isExpandedTargetWithOrgApacheLuceneUtilFstFST_Arc:(id)a3 withOrgApacheLuceneUtilFstFST_BytesReader:(id)a4;
- (BOOL)shouldExpandWithOrgApacheLuceneUtilFstBuilder:(id)a3 withOrgApacheLuceneUtilFstBuilder_UnCompiledNode:(id)a4;
- (NSString)description;
- (id)getBytesReader;
- (id)getChildResources;
- (id)getFirstArcWithOrgApacheLuceneUtilFstFST_Arc:(id)a3;
- (id)readFirstRealTargetArcWithLong:(int64_t)a3 withOrgApacheLuceneUtilFstFST_Arc:(id)a4 withOrgApacheLuceneUtilFstFST_BytesReader:(id)a5;
- (id)readFirstTargetArcWithOrgApacheLuceneUtilFstFST_Arc:(id)a3 withOrgApacheLuceneUtilFstFST_Arc:(id)a4 withOrgApacheLuceneUtilFstFST_BytesReader:(id)a5;
- (id)readLastTargetArcWithOrgApacheLuceneUtilFstFST_Arc:(id)a3 withOrgApacheLuceneUtilFstFST_Arc:(id)a4 withOrgApacheLuceneUtilFstFST_BytesReader:(id)a5;
- (id)readNextArcWithOrgApacheLuceneUtilFstFST_Arc:(id)a3 withOrgApacheLuceneUtilFstFST_BytesReader:(id)a4;
- (id)readNextRealArcWithOrgApacheLuceneUtilFstFST_Arc:(id)a3 withOrgApacheLuceneUtilFstFST_BytesReader:(id)a4;
- (int)readLabelWithOrgApacheLuceneStoreDataInput:(id)a3;
- (int)readNextArcLabelWithOrgApacheLuceneUtilFstFST_Arc:(id)a3 withOrgApacheLuceneUtilFstFST_BytesReader:(id)a4;
- (int64_t)addNodeWithOrgApacheLuceneUtilFstBuilder:(id)a3 withOrgApacheLuceneUtilFstBuilder_UnCompiledNode:(id)a4;
- (int64_t)getNodeAddressWithLong:(int64_t)a3;
- (int64_t)ramBytesUsed;
- (int64_t)readUnpackedNodeTargetWithOrgApacheLuceneUtilFstFST_BytesReader:(id)a3;
- (uint64_t)cacheRootArcs;
- (void)dealloc;
- (void)finishWithLong:(int64_t)a3;
- (void)saveWithOrgApacheLuceneStoreDataOutput:(id)a3;
- (void)saveWithOrgLukhnosPortmobileFilePath:(id)a3;
- (void)setEmptyOutputWithId:(id)a3;
@end

@implementation OrgApacheLuceneUtilFstFST

- (int64_t)ramBytesUsed
{
  v3 = qword_100554750;
  bytesArray = self->bytesArray_;
  if (bytesArray)
  {
    size = bytesArray->super.size_;
  }

  else
  {
    bytes = self->bytes_;
    if (!bytes)
    {
      goto LABEL_12;
    }

    size = [(OrgApacheLuceneUtilFstBytesStore *)bytes ramBytesUsed];
  }

  v7 = (size + v3);
  if (!self->packed_)
  {
    nodeAddress = self->nodeAddress_;
    if (!nodeAddress)
    {
      return &v7[self->cachedArcsBytesUsed_];
    }

    v10 = [(OrgApacheLuceneUtilPackedGrowableWriter *)nodeAddress ramBytesUsed];
    inCounts = self->inCounts_;
    if (inCounts)
    {
      v7 = &v7[v10 + [(OrgApacheLuceneUtilPackedGrowableWriter *)inCounts ramBytesUsed]];
      return &v7[self->cachedArcsBytesUsed_];
    }

LABEL_12:
    JreThrowNullPointerException();
  }

  nodeRefToAddress = self->nodeRefToAddress_;
  if (!nodeRefToAddress)
  {
    goto LABEL_12;
  }

  v7 = &v7[[(OrgApacheLuceneUtilPackedPackedInts_Reader *)nodeRefToAddress ramBytesUsed]];
  return &v7[self->cachedArcsBytesUsed_];
}

- (id)getChildResources
{
  v9 = new_JavaUtilArrayList_init();
  if (self->packed_)
  {
    v10 = @"node ref to address";
    v11 = 64;
LABEL_5:
    [(JavaUtilArrayList *)v9 addWithId:OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withOrgApacheLuceneUtilAccountable_(v10, *(&self->super.isa + v11), v3, v4, v5, v6, v7, v8)];
    return v9;
  }

  nodeAddress = self->nodeAddress_;
  if (nodeAddress)
  {
    [(JavaUtilArrayList *)v9 addWithId:OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withOrgApacheLuceneUtilAccountable_(@"node addresses", nodeAddress, v3, v4, v5, v6, v7, v8)];
    v10 = @"in counts";
    v11 = 88;
    goto LABEL_5;
  }

  return v9;
}

- (NSString)description
{
  v3 = [-[OrgApacheLuceneUtilFstFST getClass](self "getClass")];
  packed = self->packed_;
  outputs = self->outputs_;
  inputType = self->inputType_;
  return JreStrcat("$$@$@$Z", v4, v5, v6, v7, v8, v9, v10, v3);
}

- (void)finishWithLong:(int64_t)a3
{
  if (self->startNode_ != -1)
  {
    v4 = new_JavaLangIllegalStateException_initWithNSString_(@"already finished");
    objc_exception_throw(v4);
  }

  if (a3 == -1)
  {
    if (self->emptyOutput_)
    {
      a3 = 0;
    }

    else
    {
      a3 = -1;
    }
  }

  self->startNode_ = a3;
  [(OrgApacheLuceneUtilFstBytesStore *)self->bytes_ finish];

  [OrgApacheLuceneUtilFstFST cacheRootArcs]_0(self);
}

- (uint64_t)cacheRootArcs
{
  v2 = [OrgApacheLuceneUtilFstFST_Arc alloc];
  result = [a1 getFirstArcWithOrgApacheLuceneUtilFstFST_Arc:v2];
  if (atomic_load_explicit(OrgApacheLuceneUtilFstFST__initialized, memory_order_acquire))
  {
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_20:
    JreThrowNullPointerException();
  }

  result = sub_100122538();
  if (!v2)
  {
    goto LABEL_20;
  }

LABEL_3:
  if (v2->target_ >= 1)
  {
    v4 = [a1 getBytesReader];
    if (qword_100554788 != -1)
    {
      sub_100122544();
    }

    v5 = [IOSObjectArray arrayWithLength:128 type:qword_100554780];
    objc_opt_class();
    if (v5 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    [a1 readFirstRealTargetArcWithLong:v2->target_ withOrgApacheLuceneUtilFstFST_Arc:v2 withOrgApacheLuceneUtilFstFST_BytesReader:v4];
    label = v2->label_;
    if (label >= v5->super.size_)
    {

      return sub_10011EC60(a1, v5);
    }

    else
    {
      v7 = 0;
      do
      {
        IOSObjectArray_Set(v5, label, [[OrgApacheLuceneUtilFstFST_Arc alloc] copyFromWithOrgApacheLuceneUtilFstFST_Arc:v2]);
        if ([(OrgApacheLuceneUtilFstFST_Arc *)v2 isLast])
        {
          break;
        }

        [a1 readNextRealArcWithOrgApacheLuceneUtilFstFST_Arc:v2 withOrgApacheLuceneUtilFstFST_BytesReader:v4];
        ++v7;
        label = v2->label_;
      }

      while (label < v5->super.size_);
      result = sub_10011EC60(a1, v5);
      if (v7 >= 5)
      {
        v8 = result;
        result = [a1 ramBytesUsed];
        if (result / 5 > v8)
        {
          result = JreStrongAssign((a1 + 72), v5);
          *(a1 + 100) = v8;
        }
      }
    }
  }

  return result;
}

- (int64_t)getNodeAddressWithLong:(int64_t)a3
{
  nodeAddress = self->nodeAddress_;
  if (nodeAddress)
  {
    return [(OrgApacheLuceneUtilPackedGrowableWriter *)nodeAddress getWithInt:a3];
  }

  else
  {
    return a3;
  }
}

- (void)setEmptyOutputWithId:(id)a3
{
  p_emptyOutput = &self->emptyOutput_;
  if (self->emptyOutput_)
  {
    outputs = self->outputs_;
    if (!outputs)
    {
      JreThrowNullPointerException();
    }

    a3 = [OrgApacheLuceneUtilFstOutputs mergeWithId:"mergeWithId:withId:" withId:?];
  }

  JreStrongAssign(p_emptyOutput, a3);
}

- (void)saveWithOrgApacheLuceneStoreDataOutput:(id)a3
{
  if (self->startNode_ == -1)
  {
    v27 = @"call finish first";
    goto LABEL_55;
  }

  if (self->nodeAddress_)
  {
    v27 = @"cannot save an FST pre-packed FST; it must first be packed";
    goto LABEL_55;
  }

  if (self->packed_)
  {
    nodeRefToAddress = self->nodeRefToAddress_;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v27 = @"cannot save a FST which has been loaded from disk ";
LABEL_55:
      v28 = new_JavaLangIllegalStateException_initWithNSString_(v27);
      objc_exception_throw(v28);
    }
  }

  OrgApacheLuceneCodecsCodecUtil_writeHeaderWithOrgApacheLuceneStoreDataOutput_withNSString_withInt_(a3, @"FST", 5);
  if (self->packed_)
  {
    if (!a3)
    {
      goto LABEL_50;
    }

    v6 = 1;
  }

  else
  {
    if (!a3)
    {
      goto LABEL_50;
    }

    v6 = 0;
  }

  [a3 writeByteWithByte:v6];
  if (self->emptyOutput_)
  {
    [a3 writeByteWithByte:1];
    v7 = new_OrgApacheLuceneStoreRAMOutputStream_init();
    outputs = self->outputs_;
    if (!outputs)
    {
      goto LABEL_50;
    }

    [(OrgApacheLuceneUtilFstOutputs *)outputs writeFinalOutputWithId:self->emptyOutput_ withOrgApacheLuceneStoreDataOutput:v7];
    v9 = [IOSByteArray arrayWithLength:[(OrgApacheLuceneStoreRAMOutputStream *)v7 getFilePointer]];
    [(OrgApacheLuceneStoreRAMOutputStream *)v7 writeToWithByteArray:v9 withInt:0];
    if (!self->packed_)
    {
      size = v9->super.size_;
      if (size >= 2)
      {
        v11 = 0;
        v12 = size >> 1;
        v13 = -1;
        do
        {
          v14 = v9->super.size_;
          if (v11 >= v14)
          {
            IOSArray_throwOutOfBoundsWithMsg(v14, v11);
          }

          v15 = *(&v9->super.size_ + v11 + 4);
          v16 = v14 + v13;
          if (v14 + v13 < 0 || v16 >= v14)
          {
            IOSArray_throwOutOfBoundsWithMsg(v14, v16);
          }

          if (v11 >= v14)
          {
            IOSArray_throwOutOfBoundsWithMsg(v14, v11);
          }

          *(&v9->super.size_ + v11 + 4) = *(&v9->super.size_ + v14 + v13 + 4);
          v17 = v9->super.size_;
          v18 = v13 + v17;
          if (v13 + v17 < 0 || v18 >= v17)
          {
            IOSArray_throwOutOfBoundsWithMsg(v17, v18);
          }

          *(&v9->super.size_ + v18 + 4) = v15;
          ++v11;
          --v13;
        }

        while (v12 != v11);
      }
    }

    [a3 writeVIntWithInt:v9->super.size_];
    [a3 writeBytesWithByteArray:v9 withInt:0 withInt:v9->super.size_];
  }

  else
  {
    [a3 writeByteWithByte:0];
  }

  inputType = self->inputType_;
  if ((atomic_load_explicit(OrgApacheLuceneUtilFstFST_INPUT_TYPEEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100122558();
  }

  if (inputType == OrgApacheLuceneUtilFstFST_INPUT_TYPEEnum_values_)
  {
    v21 = 0;
  }

  else
  {
    v20 = self->inputType_;
    if ((atomic_load_explicit(OrgApacheLuceneUtilFstFST_INPUT_TYPEEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100122558();
    }

    if (v20 == qword_100557B78)
    {
      v21 = 1;
    }

    else
    {
      v21 = 2;
    }
  }

  [a3 writeByteWithByte:v21];
  if (self->packed_)
  {
    v22 = self->nodeRefToAddress_;
    objc_opt_class();
    if (!v22)
    {
      goto LABEL_50;
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    [(OrgApacheLuceneUtilPackedPackedInts_Reader *)v22 saveWithOrgApacheLuceneStoreDataOutput:a3];
  }

  [a3 writeVLongWithLong:self->startNode_];
  bytes = self->bytes_;
  if (bytes)
  {
    [a3 writeVLongWithLong:{-[OrgApacheLuceneUtilFstBytesStore getPosition](bytes, "getPosition")}];
    v24 = self->bytes_;

    [(OrgApacheLuceneUtilFstBytesStore *)v24 writeToWithOrgApacheLuceneStoreDataOutput:a3];
    return;
  }

  bytesArray = self->bytesArray_;
  if (!bytesArray)
  {
LABEL_50:
    JreThrowNullPointerException();
  }

  [a3 writeVLongWithLong:bytesArray->super.size_];
  v26 = self->bytesArray_->super.size_;

  [a3 writeBytesWithByteArray:? withInt:? withInt:?];
}

- (void)saveWithOrgLukhnosPortmobileFilePath:(id)a3
{
  v4 = OrgLukhnosPortmobileFileFiles_newOutputStreamWithOrgLukhnosPortmobileFilePath_(a3);
  v5 = new_JavaIoBufferedOutputStream_initWithJavaIoOutputStream_(v4);
  [(OrgApacheLuceneUtilFstFST *)self saveWithOrgApacheLuceneStoreDataOutput:new_OrgApacheLuceneStoreOutputStreamDataOutput_initWithJavaIoOutputStream_(v5)];
  if (v5)
  {
    [(JavaIoBufferedOutputStream *)v5 close];
  }
}

- (int)readLabelWithOrgApacheLuceneStoreDataInput:(id)a3
{
  inputType = self->inputType_;
  if ((atomic_load_explicit(OrgApacheLuceneUtilFstFST_INPUT_TYPEEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100122558();
  }

  if (inputType == OrgApacheLuceneUtilFstFST_INPUT_TYPEEnum_values_)
  {
    if (a3)
    {
      return [a3 readByte];
    }

    goto LABEL_15;
  }

  v6 = self->inputType_;
  if ((atomic_load_explicit(OrgApacheLuceneUtilFstFST_INPUT_TYPEEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100122558();
  }

  if (v6 == qword_100557B78)
  {
    if (a3)
    {
      return [a3 readShort];
    }

LABEL_15:
    JreThrowNullPointerException();
  }

  if (!a3)
  {
    goto LABEL_15;
  }

  return [a3 readVInt];
}

+ (BOOL)targetHasArcsWithOrgApacheLuceneUtilFstFST_Arc:(id)a3
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilFstFST__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100122538();
    if (a3)
    {
      return *(a3 + 4) > 0;
    }

LABEL_5:
    JreThrowNullPointerException();
  }

  if (!a3)
  {
    goto LABEL_5;
  }

  return *(a3 + 4) > 0;
}

- (int64_t)addNodeWithOrgApacheLuceneUtilFstBuilder:(id)a3 withOrgApacheLuceneUtilFstBuilder_UnCompiledNode:(id)a4
{
  v4 = self;
  outputs = self->outputs_;
  if (!outputs)
  {
    goto LABEL_86;
  }

  v90 = [(OrgApacheLuceneUtilFstOutputs *)outputs getNoOutput];
  if (!a4)
  {
    goto LABEL_86;
  }

  if (!*(a4 + 4))
  {
    return -*(a4 + 40);
  }

  if (!a3)
  {
    goto LABEL_86;
  }

  v8 = *(a3 + 7);
  if (!v8)
  {
    goto LABEL_86;
  }

  v81 = [v8 getPosition];
  v82 = v4;
  if (*(a3 + 48) != 1)
  {
    goto LABEL_9;
  }

  v15 = *(a4 + 4);
  if (*(a4 + 14) > 3)
  {
    if (v15 < 10)
    {
      goto LABEL_9;
    }

LABEL_82:
    v78 = *(a3 + 3);
    if (!v78)
    {
      goto LABEL_86;
    }

    v88 = 1;
    if (*(v78 + 8) < v15)
    {
      v79 = [IOSIntArray newArrayWithLength:OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(v15, 1, v9, v10, v11, v12, v13, v14)];
      JreStrongAssignAndConsume(a3 + 3, v79);
    }

    goto LABEL_10;
  }

  if (v15 > 4)
  {
    goto LABEL_82;
  }

LABEL_9:
  v88 = 0;
LABEL_10:
  *(a3 + 4) += *(a4 + 4);
  v16 = *(a4 + 4);
  v17 = [*(a3 + 7) getPosition];
  if (*(a4 + 4) >= 1)
  {
    v83 = v17;
    v18 = 0;
    v87 = 0;
    v84 = v16 - 1;
    v85 = a3;
    v86 = a4;
    while (1)
    {
      v19 = *(a4 + 3);
      if (!v19)
      {
        goto LABEL_86;
      }

      v20 = *(v19 + 8);
      if (v18 >= v20)
      {
        IOSArray_throwOutOfBoundsWithMsg(v20, v18);
      }

      v21 = *(v19 + 24 + 8 * v18);
      if (!v21)
      {
        goto LABEL_86;
      }

      Weak = objc_loadWeak((v21 + 16));
      objc_opt_class();
      if (!Weak)
      {
        goto LABEL_86;
      }

      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        JreThrowClassCastException();
      }

      v23 = Weak[1];
      if (v88)
      {
        v24 = 2 * (v84 == v18);
      }

      else
      {
        v24 = (2 * (v84 == v18)) | 4;
      }

      if (*(a3 + 2) == v23)
      {
        v25 = v24;
      }

      else
      {
        v25 = 2 * (v84 == v18);
      }

      if (*(v21 + 24) == 1)
      {
        if (*(v21 + 40) == v90)
        {
          v26 = 1;
        }

        else
        {
          v26 = 33;
        }

        v25 |= v26;
      }

      if (v23 <= 0)
      {
        v25 += 8;
        v28 = v4;
      }

      else
      {
        inCounts = v4->inCounts_;
        if (inCounts)
        {
          [(OrgApacheLuceneUtilPackedGrowableWriter *)inCounts setWithInt:v23 withLong:[(OrgApacheLuceneUtilPackedGrowableWriter *)inCounts getWithInt:Weak[1]]+ 1];
        }

        v28 = v82;
      }

      if (*(v21 + 32) != v90)
      {
        v25 += 16;
      }

      a3 = v85;
      [v85[7] writeByteWithByte:v25];
      sub_10011F82C(v28, v85[7], *(v21 + 8));
      v4 = v28;
      if (*(v21 + 32) != v90)
      {
        v29 = v85[7];
        [*(v28 + 40) writeWithId:? withOrgApacheLuceneStoreDataOutput:?];
      }

      v30 = *(v21 + 40);
      if (v30 != v90)
      {
        [*(v28 + 40) writeFinalOutputWithId:v30 withOrgApacheLuceneStoreDataOutput:v85[7]];
      }

      v31 = v23 >= 1 && (v25 & 4) == 0;
      a4 = v86;
      if (v31)
      {
        [v85[7] writeVLongWithLong:Weak[1]];
      }

      if (v88)
      {
        v32 = [v85[7] getPosition];
        v33 = v85[3];
        if (!v33)
        {
          goto LABEL_86;
        }

        v34 = v32;
        v35 = v33[2];
        if (v18 >= v35)
        {
          IOSArray_throwOutOfBoundsWithMsg(v35, v18);
        }

        v33[v18 + 3] = v34 - v83;
        v83 = [v85[7] getPosition];
        v36 = v85[3];
        v37 = v36[2];
        if (v18 >= v37)
        {
          IOSArray_throwOutOfBoundsWithMsg(v37, v18);
        }

        v87 = JavaLangMath_maxWithInt_withInt_(v87, v36[v18 + 3]);
      }

      if (++v18 >= v86[4])
      {
        goto LABEL_57;
      }
    }
  }

  v87 = 0;
LABEL_57:
  if (v88)
  {
    v89 = [IOSByteArray arrayWithLength:11];
    v39 = new_OrgApacheLuceneStoreByteArrayDataOutput_initWithByteArray_(v89);
    [(OrgApacheLuceneStoreByteArrayDataOutput *)v39 writeByteWithByte:32];
    [(OrgApacheLuceneStoreDataOutput *)v39 writeVIntWithInt:*(a4 + 4)];
    [(OrgApacheLuceneStoreDataOutput *)v39 writeVIntWithInt:v87];
    v91 = [(OrgApacheLuceneStoreByteArrayDataOutput *)v39 getPosition];
    v40 = [*(a3 + 7) getPosition];
    v41 = *(a4 + 4) * v87;
    v42 = &v81[v91 + v41];
    if (v42 > v40)
    {
      v43 = v40;
      [*(a3 + 7) skipBytesWithInt:(v42 - v40)];
      v44 = *(a4 + 4);
      v45 = (v44 - 1);
      if (v44 - 1 >= 0)
      {
        v46 = &v81[v91 + v41 - v87];
        do
        {
          v47 = *(a3 + 3);
          if (!v47)
          {
            goto LABEL_86;
          }

          v48 = *(v47 + 8);
          if (v45 >= v48)
          {
            IOSArray_throwOutOfBoundsWithMsg(v48, v45);
          }

          v43 -= *(v47 + 12 + 4 * v45);
          if (v46 != v43)
          {
            v49 = *(a3 + 3);
            v50 = *(v49 + 8);
            if (v45 >= v50)
            {
              IOSArray_throwOutOfBoundsWithMsg(v50, v45);
            }

            [*(a3 + 7) copyBytesWithLong:v43 withLong:v46 withInt:*(v49 + 12 + 4 * v45)];
          }

          v46 -= v87;
        }

        while (v45-- > 0);
      }
    }

    [*(a3 + 7) writeBytesWithLong:v81 withByteArray:v89 withInt:0 withInt:v91];
    v4 = v82;
  }

  v38 = [*(a3 + 7) getPosition] - 1;
  [*(a3 + 7) reverseWithLong:v81 withLong:v38];
  nodeAddress = v4->nodeAddress_;
  p_nodeAddress = &v4->nodeAddress_;
  v54 = *(a3 + 5);
  if (nodeAddress && v54 == 0x7FFFFFFF)
  {
    v80 = new_JavaLangIllegalStateException_initWithNSString_(@"cannot create a packed FST with more than 2.1 billion nodes");
    objc_exception_throw(v80);
  }

  *(a3 + 5) = v54 + 1;
  if (*p_nodeAddress)
  {
    v55 = *(a3 + 10);
    if ([*p_nodeAddress size] == v55)
    {
      v56 = v82->nodeAddress_;
      v57 = [(OrgApacheLuceneUtilPackedGrowableWriter *)v56 size];
      v58 = [(OrgApacheLuceneUtilPackedGrowableWriter *)v82->nodeAddress_ getBitsPerValue];
      v65 = [(OrgApacheLuceneUtilPackedGrowableWriter *)v56 resizeWithInt:OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(v57 + 1, v58, v59, v60, v61, v62, v63, v64)];
      JreStrongAssign(p_nodeAddress, v65);
      p_inCounts = &v82->inCounts_;
      v67 = v82->inCounts_;
      if (!v67)
      {
        goto LABEL_86;
      }

      v68 = [(OrgApacheLuceneUtilPackedGrowableWriter *)v67 size];
      v69 = [*p_inCounts getBitsPerValue];
      v76 = [(OrgApacheLuceneUtilPackedGrowableWriter *)v67 resizeWithInt:OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(v68 + 1, v69, v70, v71, v72, v73, v74, v75)];
      JreStrongAssign(p_inCounts, v76);
    }

    if (!*p_nodeAddress)
    {
LABEL_86:
      JreThrowNullPointerException();
    }

    [*p_nodeAddress setWithInt:*(a3 + 10) withLong:v38];
    return *(a3 + 5);
  }

  return v38;
}

- (id)getFirstArcWithOrgApacheLuceneUtilFstFST_Arc:(id)a3
{
  outputs = self->outputs_;
  if (!outputs)
  {
    goto LABEL_9;
  }

  v6 = [(OrgApacheLuceneUtilFstOutputs *)outputs getNoOutput];
  if (!self->emptyOutput_)
  {
    if (a3)
    {
      *(a3 + 40) = 2;
      JreStrongAssign(a3 + 6, v6);
      goto LABEL_8;
    }

LABEL_9:
    JreThrowNullPointerException();
  }

  if (!a3)
  {
    goto LABEL_9;
  }

  *(a3 + 40) = 3;
  JreStrongAssign(a3 + 6, self->emptyOutput_);
  if (self->emptyOutput_ != v6)
  {
    *(a3 + 40) |= 0x20u;
  }

LABEL_8:
  JreStrongAssign(a3 + 2, v6);
  *(a3 + 4) = self->startNode_;
  return a3;
}

- (id)readLastTargetArcWithOrgApacheLuceneUtilFstFST_Arc:(id)a3 withOrgApacheLuceneUtilFstFST_Arc:(id)a4 withOrgApacheLuceneUtilFstFST_BytesReader:(id)a5
{
  if (atomic_load_explicit(OrgApacheLuceneUtilFstFST__initialized, memory_order_acquire))
  {
    if (!a3)
    {
      goto LABEL_34;
    }
  }

  else
  {
    sub_100122538();
    if (!a3)
    {
      goto LABEL_34;
    }
  }

  v9 = *(a3 + 4);
  if (v9 <= 0)
  {
    if (a4)
    {
      *(a4 + 2) = -1;
      *(a4 + 4) = -1;
      JreStrongAssign(a4 + 2, *(a3 + 6));
      *(a4 + 40) = 2;
      return a4;
    }

LABEL_34:
    JreThrowNullPointerException();
  }

  if (!a5)
  {
    goto LABEL_34;
  }

  nodeAddress = self->nodeAddress_;
  if (nodeAddress)
  {
    v9 = [(OrgApacheLuceneUtilPackedGrowableWriter *)nodeAddress getWithInt:?];
  }

  [a5 setPositionWithLong:v9];
  if (!a4)
  {
    goto LABEL_34;
  }

  *(a4 + 3) = *(a3 + 4);
  v11 = [a5 readByte];
  if (v11 == 32)
  {
    *(a4 + 20) = [a5 readVInt];
    if (self->packed_ || self->version__ >= 4)
    {
      v12 = [a5 readVInt];
    }

    else
    {
      v12 = [a5 readInt];
    }

    *(a4 + 18) = v12;
    *(a4 + 8) = [a5 getPosition];
    *(a4 + 19) = *(a4 + 20) - 2;
  }

  else
  {
    *(a4 + 40) = v11;
    *(a4 + 18) = 0;
    if (([a4 isLast] & 1) == 0)
    {
      do
      {
        [(OrgApacheLuceneUtilFstFST *)self readLabelWithOrgApacheLuceneStoreDataInput:a5];
        if ([a4 flagWithInt:16])
        {
          outputs = self->outputs_;
          if (!outputs)
          {
            goto LABEL_34;
          }

          [(OrgApacheLuceneUtilFstOutputs *)outputs skipOutputWithOrgApacheLuceneStoreDataInput:a5];
        }

        if ([a4 flagWithInt:32])
        {
          v14 = self->outputs_;
          if (!v14)
          {
            goto LABEL_34;
          }

          [(OrgApacheLuceneUtilFstOutputs *)v14 skipFinalOutputWithOrgApacheLuceneStoreDataInput:a5];
        }

        if (([a4 flagWithInt:8] & 1) == 0 && (objc_msgSend(a4, "flagWithInt:", 4) & 1) == 0)
        {
          if (self->packed_ || self->version__ > 3)
          {
            [a5 readVLong];
          }

          else
          {
            [a5 readInt];
          }
        }

        *(a4 + 40) = [a5 readByte];
      }

      while (![a4 isLast]);
    }

    [a5 skipBytesWithLong:-1];
    *(a4 + 7) = [a5 getPosition];
  }

  [(OrgApacheLuceneUtilFstFST *)self readNextRealArcWithOrgApacheLuceneUtilFstFST_Arc:a4 withOrgApacheLuceneUtilFstFST_BytesReader:a5];
  return a4;
}

- (int64_t)readUnpackedNodeTargetWithOrgApacheLuceneUtilFstFST_BytesReader:(id)a3
{
  if (self->version__ <= 3)
  {
    if (a3)
    {
      return [a3 readInt];
    }

LABEL_8:
    JreThrowNullPointerException();
  }

  if (!a3)
  {
    goto LABEL_8;
  }

  return [a3 readVLong];
}

- (id)readFirstTargetArcWithOrgApacheLuceneUtilFstFST_Arc:(id)a3 withOrgApacheLuceneUtilFstFST_Arc:(id)a4 withOrgApacheLuceneUtilFstFST_BytesReader:(id)a5
{
  if (!a3)
  {
    goto LABEL_11;
  }

  if ([a3 isFinal])
  {
    if (a4)
    {
      *(a4 + 2) = -1;
      JreStrongAssign(a4 + 2, *(a3 + 6));
      *(a4 + 40) = 1;
      v9 = *(a3 + 4);
      if (v9 <= 0)
      {
        *(a4 + 40) = 3;
      }

      else
      {
        *(a4 + 3) = v9;
        *(a4 + 7) = *(a3 + 4);
      }

      *(a4 + 4) = -1;
      return a4;
    }

LABEL_11:
    JreThrowNullPointerException();
  }

  v10 = *(a3 + 4);

  return [(OrgApacheLuceneUtilFstFST *)self readFirstRealTargetArcWithLong:v10 withOrgApacheLuceneUtilFstFST_Arc:a4 withOrgApacheLuceneUtilFstFST_BytesReader:a5];
}

- (id)readFirstRealTargetArcWithLong:(int64_t)a3 withOrgApacheLuceneUtilFstFST_Arc:(id)a4 withOrgApacheLuceneUtilFstFST_BytesReader:(id)a5
{
  nodeAddress = self->nodeAddress_;
  v10 = a3;
  if (nodeAddress)
  {
    v10 = [(OrgApacheLuceneUtilPackedGrowableWriter *)nodeAddress getWithInt:a3];
  }

  if (!a5 || ([a5 setPositionWithLong:v10], !a4))
  {
    JreThrowNullPointerException();
  }

  *(a4 + 3) = a3;
  if ([a5 readByte] == 32)
  {
    *(a4 + 20) = [a5 readVInt];
    if (self->packed_ || self->version__ >= 4)
    {
      v11 = [a5 readVInt];
    }

    else
    {
      v11 = [a5 readInt];
    }

    *(a4 + 18) = v11;
    *(a4 + 19) = -1;
    v12 = [a5 getPosition];
    *(a4 + 7) = v12;
    *(a4 + 8) = v12;
  }

  else
  {
    *(a4 + 7) = v10;
    *(a4 + 18) = 0;
  }

  return [(OrgApacheLuceneUtilFstFST *)self readNextRealArcWithOrgApacheLuceneUtilFstFST_Arc:a4 withOrgApacheLuceneUtilFstFST_BytesReader:a5];
}

- (BOOL)isExpandedTargetWithOrgApacheLuceneUtilFstFST_Arc:(id)a3 withOrgApacheLuceneUtilFstFST_BytesReader:(id)a4
{
  if (atomic_load_explicit(OrgApacheLuceneUtilFstFST__initialized, memory_order_acquire))
  {
    if (!a3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    sub_100122538();
    if (!a3)
    {
      goto LABEL_10;
    }
  }

  v7 = *(a3 + 4);
  if (v7 < 1)
  {
    return 0;
  }

  if (!a4)
  {
LABEL_10:
    JreThrowNullPointerException();
  }

  nodeAddress = self->nodeAddress_;
  if (nodeAddress)
  {
    v7 = [(OrgApacheLuceneUtilPackedGrowableWriter *)nodeAddress getWithInt:?];
  }

  [a4 setPositionWithLong:v7];
  return [a4 readByte] == 32;
}

- (id)readNextArcWithOrgApacheLuceneUtilFstFST_Arc:(id)a3 withOrgApacheLuceneUtilFstFST_BytesReader:(id)a4
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if (*(a3 + 2) == -1)
  {
    if (*(a3 + 7) <= 0)
    {
      v5 = new_JavaLangIllegalArgumentException_initWithNSString_(@"cannot readNextArc when arc.isLast()=true");
      objc_exception_throw(v5);
    }

    return [OrgApacheLuceneUtilFstFST readFirstRealTargetArcWithLong:"readFirstRealTargetArcWithLong:withOrgApacheLuceneUtilFstFST_Arc:withOrgApacheLuceneUtilFstFST_BytesReader:" withOrgApacheLuceneUtilFstFST_Arc:? withOrgApacheLuceneUtilFstFST_BytesReader:?];
  }

  else
  {

    return [OrgApacheLuceneUtilFstFST readNextRealArcWithOrgApacheLuceneUtilFstFST_Arc:"readNextRealArcWithOrgApacheLuceneUtilFstFST_Arc:withOrgApacheLuceneUtilFstFST_BytesReader:" withOrgApacheLuceneUtilFstFST_BytesReader:?];
  }
}

- (int)readNextArcLabelWithOrgApacheLuceneUtilFstFST_Arc:(id)a3 withOrgApacheLuceneUtilFstFST_BytesReader:(id)a4
{
  if (*(a3 + 2) == -1)
  {
    v7 = *(a3 + 7);
    nodeAddress = self->nodeAddress_;
    if (nodeAddress)
    {
      v7 = [(OrgApacheLuceneUtilPackedGrowableWriter *)nodeAddress getWithInt:v7];
    }

    if (!a4)
    {
      goto LABEL_20;
    }

    [a4 setPositionWithLong:v7];
    if ([a4 readByte] == 32)
    {
      [a4 readVInt];
      if (self->packed_ || self->version__ >= 4)
      {
        [a4 readVInt];
      }

      else
      {
        [a4 readInt];
      }

      goto LABEL_16;
    }

    v10 = a4;
    v9 = v7;
  }

  else
  {
    if (*(a3 + 18))
    {
      if (a4)
      {
        [a4 setPositionWithLong:*(a3 + 8)];
        [a4 skipBytesWithLong:*(a3 + 18) + *(a3 + 18) * *(a3 + 19)];
        goto LABEL_16;
      }

LABEL_20:
      JreThrowNullPointerException();
    }

    if (!a4)
    {
      goto LABEL_20;
    }

    v9 = *(a3 + 7);
    v10 = a4;
  }

  [v10 setPositionWithLong:v9];
LABEL_16:
  [a4 readByte];

  return [(OrgApacheLuceneUtilFstFST *)self readLabelWithOrgApacheLuceneStoreDataInput:a4];
}

- (id)readNextRealArcWithOrgApacheLuceneUtilFstFST_Arc:(id)a3 withOrgApacheLuceneUtilFstFST_BytesReader:(id)a4
{
  if (!a3)
  {
    goto LABEL_41;
  }

  if (*(a3 + 18))
  {
    ++*(a3 + 19);
    if (!a4)
    {
      goto LABEL_41;
    }

    [a4 setPositionWithLong:*(a3 + 8)];
    [a4 skipBytesWithLong:*(a3 + 18) * *(a3 + 19)];
  }

  else
  {
    if (!a4)
    {
      goto LABEL_41;
    }

    [a4 setPositionWithLong:*(a3 + 7)];
  }

  *(a3 + 40) = [a4 readByte];
  *(a3 + 2) = [(OrgApacheLuceneUtilFstFST *)self readLabelWithOrgApacheLuceneStoreDataInput:a4];
  v7 = [a3 flagWithInt:16];
  outputs = self->outputs_;
  if (v7)
  {
    if (!outputs)
    {
      goto LABEL_41;
    }

    v9 = [(OrgApacheLuceneUtilFstOutputs *)outputs readWithOrgApacheLuceneStoreDataInput:a4];
  }

  else
  {
    if (!outputs)
    {
      goto LABEL_41;
    }

    v9 = [(OrgApacheLuceneUtilFstOutputs *)outputs getNoOutput];
  }

  JreStrongAssign(a3 + 2, v9);
  v10 = [a3 flagWithInt:32];
  v11 = self->outputs_;
  if (v10)
  {
    if (!v11)
    {
      goto LABEL_41;
    }

    v12 = [(OrgApacheLuceneUtilFstOutputs *)v11 readFinalOutputWithOrgApacheLuceneStoreDataInput:a4];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_41;
    }

    v12 = [(OrgApacheLuceneUtilFstOutputs *)v11 getNoOutput];
  }

  JreStrongAssign(a3 + 6, v12);
  if ([a3 flagWithInt:8])
  {
    *(a3 + 4) = ([a3 flagWithInt:1] << 63) >> 63;
LABEL_36:
    v13 = [a4 getPosition];
    v18 = 56;
    goto LABEL_40;
  }

  if (![a3 flagWithInt:4])
  {
    if (!self->packed_)
    {
      if (self->version__ <= 3)
      {
        v15 = [a4 readInt];
        goto LABEL_35;
      }

      v17 = [a4 readVLong];
LABEL_34:
      v15 = v17;
      goto LABEL_35;
    }

    v14 = [a4 getPosition];
    v15 = [a4 readVLong];
    if ([a3 flagWithInt:64])
    {
      v15 += v14;
LABEL_35:
      *(a3 + 4) = v15;
      goto LABEL_36;
    }

    nodeRefToAddress = self->nodeRefToAddress_;
    if (nodeRefToAddress)
    {
      if (v15 >= [(OrgApacheLuceneUtilPackedPackedInts_Reader *)nodeRefToAddress size])
      {
        goto LABEL_35;
      }

      v17 = [(OrgApacheLuceneUtilPackedPackedInts_Reader *)self->nodeRefToAddress_ getWithInt:v15];
      goto LABEL_34;
    }

LABEL_41:
    JreThrowNullPointerException();
  }

  *(a3 + 7) = [a4 getPosition];
  if (self->nodeAddress_)
  {
    v13 = (*(a3 + 3) - 1);
  }

  else
  {
    if (([a3 flagWithInt:2] & 1) == 0)
    {
      if (*(a3 + 18))
      {
        [a4 setPositionWithLong:*(a3 + 8)];
        [a4 skipBytesWithLong:*(a3 + 20) * *(a3 + 18)];
      }

      else
      {
        sub_100120BBC(self, a4);
      }
    }

    v13 = [a4 getPosition];
  }

  v18 = 32;
LABEL_40:
  *(a3 + v18) = v13;
  return a3;
}

- (BOOL)shouldExpandWithOrgApacheLuceneUtilFstBuilder:(id)a3 withOrgApacheLuceneUtilFstBuilder_UnCompiledNode:(id)a4
{
  if (!a3)
  {
    goto LABEL_10;
  }

  if (*(a3 + 48) != 1)
  {
    return 0;
  }

  if (!a4)
  {
LABEL_10:
    JreThrowNullPointerException();
  }

  v4 = *(a4 + 4);
  if (*(a4 + 14) < 4)
  {
    return v4 > 4;
  }

  return v4 > 9;
}

- (id)getBytesReader
{
  bytesArray = self->bytesArray_;
  if (self->packed_)
  {
    if (bytesArray)
    {
      v3 = new_OrgApacheLuceneUtilFstForwardBytesReader_initWithByteArray_(self->bytesArray_);
LABEL_6:

      return v3;
    }

    bytes = self->bytes_;
    if (bytes)
    {

      return [(OrgApacheLuceneUtilFstBytesStore *)bytes getForwardReader];
    }

LABEL_17:
    JreThrowNullPointerException();
  }

  if (bytesArray)
  {
    v3 = new_OrgApacheLuceneUtilFstReverseBytesReader_initWithByteArray_(self->bytesArray_);
    goto LABEL_6;
  }

  v6 = self->bytes_;
  if (!v6)
  {
    goto LABEL_17;
  }

  return [(OrgApacheLuceneUtilFstBytesStore *)v6 getReverseReader];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilFstFST;
  [(OrgApacheLuceneUtilFstFST *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = OrgApacheLuceneUtilFstFST_class_();
    qword_100554750 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(v2);
    if (qword_100554788 != -1)
    {
      sub_100122544();
    }

    qword_100554758 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(qword_100554780);
    if ((atomic_load_explicit(OrgApacheLuceneUtilConstants__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100070498();
    }

    if (OrgApacheLuceneUtilConstants_JRE_IS_64BIT_)
    {
      v3 = 30;
    }

    else
    {
      v3 = 28;
    }

    OrgApacheLuceneUtilFstFST_DEFAULT_MAX_BLOCK_BITS_ = v3;
    atomic_store(1u, OrgApacheLuceneUtilFstFST__initialized);
  }
}

@end