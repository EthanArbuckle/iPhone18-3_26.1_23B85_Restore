@interface OrgApacheLuceneUtilFstFST
+ (BOOL)targetHasArcsWithOrgApacheLuceneUtilFstFST_Arc:(id)arc;
+ (void)initialize;
- (BOOL)isExpandedTargetWithOrgApacheLuceneUtilFstFST_Arc:(id)arc withOrgApacheLuceneUtilFstFST_BytesReader:(id)reader;
- (BOOL)shouldExpandWithOrgApacheLuceneUtilFstBuilder:(id)builder withOrgApacheLuceneUtilFstBuilder_UnCompiledNode:(id)node;
- (NSString)description;
- (id)getBytesReader;
- (id)getChildResources;
- (id)getFirstArcWithOrgApacheLuceneUtilFstFST_Arc:(id)arc;
- (id)readFirstRealTargetArcWithLong:(int64_t)long withOrgApacheLuceneUtilFstFST_Arc:(id)arc withOrgApacheLuceneUtilFstFST_BytesReader:(id)reader;
- (id)readFirstTargetArcWithOrgApacheLuceneUtilFstFST_Arc:(id)arc withOrgApacheLuceneUtilFstFST_Arc:(id)t_Arc withOrgApacheLuceneUtilFstFST_BytesReader:(id)reader;
- (id)readLastTargetArcWithOrgApacheLuceneUtilFstFST_Arc:(id)arc withOrgApacheLuceneUtilFstFST_Arc:(id)t_Arc withOrgApacheLuceneUtilFstFST_BytesReader:(id)reader;
- (id)readNextArcWithOrgApacheLuceneUtilFstFST_Arc:(id)arc withOrgApacheLuceneUtilFstFST_BytesReader:(id)reader;
- (id)readNextRealArcWithOrgApacheLuceneUtilFstFST_Arc:(id)arc withOrgApacheLuceneUtilFstFST_BytesReader:(id)reader;
- (int)readLabelWithOrgApacheLuceneStoreDataInput:(id)input;
- (int)readNextArcLabelWithOrgApacheLuceneUtilFstFST_Arc:(id)arc withOrgApacheLuceneUtilFstFST_BytesReader:(id)reader;
- (int64_t)addNodeWithOrgApacheLuceneUtilFstBuilder:(id)builder withOrgApacheLuceneUtilFstBuilder_UnCompiledNode:(id)node;
- (int64_t)getNodeAddressWithLong:(int64_t)long;
- (int64_t)ramBytesUsed;
- (int64_t)readUnpackedNodeTargetWithOrgApacheLuceneUtilFstFST_BytesReader:(id)reader;
- (uint64_t)cacheRootArcs;
- (void)dealloc;
- (void)finishWithLong:(int64_t)long;
- (void)saveWithOrgApacheLuceneStoreDataOutput:(id)output;
- (void)saveWithOrgLukhnosPortmobileFilePath:(id)path;
- (void)setEmptyOutputWithId:(id)id;
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

    ramBytesUsed = [(OrgApacheLuceneUtilPackedGrowableWriter *)nodeAddress ramBytesUsed];
    inCounts = self->inCounts_;
    if (inCounts)
    {
      v7 = &v7[ramBytesUsed + [(OrgApacheLuceneUtilPackedGrowableWriter *)inCounts ramBytesUsed]];
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

- (void)finishWithLong:(int64_t)long
{
  if (self->startNode_ != -1)
  {
    v4 = new_JavaLangIllegalStateException_initWithNSString_(@"already finished");
    objc_exception_throw(v4);
  }

  if (long == -1)
  {
    if (self->emptyOutput_)
    {
      long = 0;
    }

    else
    {
      long = -1;
    }
  }

  self->startNode_ = long;
  [(OrgApacheLuceneUtilFstBytesStore *)self->bytes_ finish];

  [OrgApacheLuceneUtilFstFST cacheRootArcs]_0(self);
}

- (uint64_t)cacheRootArcs
{
  v2 = [OrgApacheLuceneUtilFstFST_Arc alloc];
  result = [self getFirstArcWithOrgApacheLuceneUtilFstFST_Arc:v2];
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
    getBytesReader = [self getBytesReader];
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

    [self readFirstRealTargetArcWithLong:v2->target_ withOrgApacheLuceneUtilFstFST_Arc:v2 withOrgApacheLuceneUtilFstFST_BytesReader:getBytesReader];
    label = v2->label_;
    if (label >= v5->super.size_)
    {

      return sub_10011EC60(self, v5);
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

        [self readNextRealArcWithOrgApacheLuceneUtilFstFST_Arc:v2 withOrgApacheLuceneUtilFstFST_BytesReader:getBytesReader];
        ++v7;
        label = v2->label_;
      }

      while (label < v5->super.size_);
      result = sub_10011EC60(self, v5);
      if (v7 >= 5)
      {
        v8 = result;
        result = [self ramBytesUsed];
        if (result / 5 > v8)
        {
          result = JreStrongAssign((self + 72), v5);
          *(self + 100) = v8;
        }
      }
    }
  }

  return result;
}

- (int64_t)getNodeAddressWithLong:(int64_t)long
{
  nodeAddress = self->nodeAddress_;
  if (nodeAddress)
  {
    return [(OrgApacheLuceneUtilPackedGrowableWriter *)nodeAddress getWithInt:long];
  }

  else
  {
    return long;
  }
}

- (void)setEmptyOutputWithId:(id)id
{
  p_emptyOutput = &self->emptyOutput_;
  if (self->emptyOutput_)
  {
    outputs = self->outputs_;
    if (!outputs)
    {
      JreThrowNullPointerException();
    }

    id = [OrgApacheLuceneUtilFstOutputs mergeWithId:"mergeWithId:withId:" withId:?];
  }

  JreStrongAssign(p_emptyOutput, id);
}

- (void)saveWithOrgApacheLuceneStoreDataOutput:(id)output
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

  OrgApacheLuceneCodecsCodecUtil_writeHeaderWithOrgApacheLuceneStoreDataOutput_withNSString_withInt_(output, @"FST", 5);
  if (self->packed_)
  {
    if (!output)
    {
      goto LABEL_50;
    }

    v6 = 1;
  }

  else
  {
    if (!output)
    {
      goto LABEL_50;
    }

    v6 = 0;
  }

  [output writeByteWithByte:v6];
  if (self->emptyOutput_)
  {
    [output writeByteWithByte:1];
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

    [output writeVIntWithInt:v9->super.size_];
    [output writeBytesWithByteArray:v9 withInt:0 withInt:v9->super.size_];
  }

  else
  {
    [output writeByteWithByte:0];
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

  [output writeByteWithByte:v21];
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

    [(OrgApacheLuceneUtilPackedPackedInts_Reader *)v22 saveWithOrgApacheLuceneStoreDataOutput:output];
  }

  [output writeVLongWithLong:self->startNode_];
  bytes = self->bytes_;
  if (bytes)
  {
    [output writeVLongWithLong:{-[OrgApacheLuceneUtilFstBytesStore getPosition](bytes, "getPosition")}];
    v24 = self->bytes_;

    [(OrgApacheLuceneUtilFstBytesStore *)v24 writeToWithOrgApacheLuceneStoreDataOutput:output];
    return;
  }

  bytesArray = self->bytesArray_;
  if (!bytesArray)
  {
LABEL_50:
    JreThrowNullPointerException();
  }

  [output writeVLongWithLong:bytesArray->super.size_];
  v26 = self->bytesArray_->super.size_;

  [output writeBytesWithByteArray:? withInt:? withInt:?];
}

- (void)saveWithOrgLukhnosPortmobileFilePath:(id)path
{
  v4 = OrgLukhnosPortmobileFileFiles_newOutputStreamWithOrgLukhnosPortmobileFilePath_(path);
  v5 = new_JavaIoBufferedOutputStream_initWithJavaIoOutputStream_(v4);
  [(OrgApacheLuceneUtilFstFST *)self saveWithOrgApacheLuceneStoreDataOutput:new_OrgApacheLuceneStoreOutputStreamDataOutput_initWithJavaIoOutputStream_(v5)];
  if (v5)
  {
    [(JavaIoBufferedOutputStream *)v5 close];
  }
}

- (int)readLabelWithOrgApacheLuceneStoreDataInput:(id)input
{
  inputType = self->inputType_;
  if ((atomic_load_explicit(OrgApacheLuceneUtilFstFST_INPUT_TYPEEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100122558();
  }

  if (inputType == OrgApacheLuceneUtilFstFST_INPUT_TYPEEnum_values_)
  {
    if (input)
    {
      return [input readByte];
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
    if (input)
    {
      return [input readShort];
    }

LABEL_15:
    JreThrowNullPointerException();
  }

  if (!input)
  {
    goto LABEL_15;
  }

  return [input readVInt];
}

+ (BOOL)targetHasArcsWithOrgApacheLuceneUtilFstFST_Arc:(id)arc
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilFstFST__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100122538();
    if (arc)
    {
      return *(arc + 4) > 0;
    }

LABEL_5:
    JreThrowNullPointerException();
  }

  if (!arc)
  {
    goto LABEL_5;
  }

  return *(arc + 4) > 0;
}

- (int64_t)addNodeWithOrgApacheLuceneUtilFstBuilder:(id)builder withOrgApacheLuceneUtilFstBuilder_UnCompiledNode:(id)node
{
  selfCopy = self;
  outputs = self->outputs_;
  if (!outputs)
  {
    goto LABEL_86;
  }

  getNoOutput = [(OrgApacheLuceneUtilFstOutputs *)outputs getNoOutput];
  if (!node)
  {
    goto LABEL_86;
  }

  if (!*(node + 4))
  {
    return -*(node + 40);
  }

  if (!builder)
  {
    goto LABEL_86;
  }

  v8 = *(builder + 7);
  if (!v8)
  {
    goto LABEL_86;
  }

  getPosition = [v8 getPosition];
  v82 = selfCopy;
  if (*(builder + 48) != 1)
  {
    goto LABEL_9;
  }

  v15 = *(node + 4);
  if (*(node + 14) > 3)
  {
    if (v15 < 10)
    {
      goto LABEL_9;
    }

LABEL_82:
    v78 = *(builder + 3);
    if (!v78)
    {
      goto LABEL_86;
    }

    v88 = 1;
    if (*(v78 + 8) < v15)
    {
      v79 = [IOSIntArray newArrayWithLength:OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(v15, 1, v9, v10, v11, v12, v13, v14)];
      JreStrongAssignAndConsume(builder + 3, v79);
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
  *(builder + 4) += *(node + 4);
  v16 = *(node + 4);
  getPosition2 = [*(builder + 7) getPosition];
  if (*(node + 4) >= 1)
  {
    getPosition4 = getPosition2;
    v18 = 0;
    v87 = 0;
    v84 = v16 - 1;
    builderCopy = builder;
    nodeCopy = node;
    while (1)
    {
      v19 = *(node + 3);
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

      if (*(builder + 2) == v23)
      {
        v25 = v24;
      }

      else
      {
        v25 = 2 * (v84 == v18);
      }

      if (*(v21 + 24) == 1)
      {
        if (*(v21 + 40) == getNoOutput)
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
        v28 = selfCopy;
      }

      else
      {
        inCounts = selfCopy->inCounts_;
        if (inCounts)
        {
          [(OrgApacheLuceneUtilPackedGrowableWriter *)inCounts setWithInt:v23 withLong:[(OrgApacheLuceneUtilPackedGrowableWriter *)inCounts getWithInt:Weak[1]]+ 1];
        }

        v28 = v82;
      }

      if (*(v21 + 32) != getNoOutput)
      {
        v25 += 16;
      }

      builder = builderCopy;
      [builderCopy[7] writeByteWithByte:v25];
      sub_10011F82C(v28, builderCopy[7], *(v21 + 8));
      selfCopy = v28;
      if (*(v21 + 32) != getNoOutput)
      {
        v29 = builderCopy[7];
        [*(v28 + 40) writeWithId:? withOrgApacheLuceneStoreDataOutput:?];
      }

      v30 = *(v21 + 40);
      if (v30 != getNoOutput)
      {
        [*(v28 + 40) writeFinalOutputWithId:v30 withOrgApacheLuceneStoreDataOutput:builderCopy[7]];
      }

      v31 = v23 >= 1 && (v25 & 4) == 0;
      node = nodeCopy;
      if (v31)
      {
        [builderCopy[7] writeVLongWithLong:Weak[1]];
      }

      if (v88)
      {
        getPosition3 = [builderCopy[7] getPosition];
        v33 = builderCopy[3];
        if (!v33)
        {
          goto LABEL_86;
        }

        v34 = getPosition3;
        v35 = v33[2];
        if (v18 >= v35)
        {
          IOSArray_throwOutOfBoundsWithMsg(v35, v18);
        }

        v33[v18 + 3] = v34 - getPosition4;
        getPosition4 = [builderCopy[7] getPosition];
        v36 = builderCopy[3];
        v37 = v36[2];
        if (v18 >= v37)
        {
          IOSArray_throwOutOfBoundsWithMsg(v37, v18);
        }

        v87 = JavaLangMath_maxWithInt_withInt_(v87, v36[v18 + 3]);
      }

      if (++v18 >= nodeCopy[4])
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
    [(OrgApacheLuceneStoreDataOutput *)v39 writeVIntWithInt:*(node + 4)];
    [(OrgApacheLuceneStoreDataOutput *)v39 writeVIntWithInt:v87];
    getPosition5 = [(OrgApacheLuceneStoreByteArrayDataOutput *)v39 getPosition];
    getPosition6 = [*(builder + 7) getPosition];
    v41 = *(node + 4) * v87;
    v42 = &getPosition[getPosition5 + v41];
    if (v42 > getPosition6)
    {
      v43 = getPosition6;
      [*(builder + 7) skipBytesWithInt:(v42 - getPosition6)];
      v44 = *(node + 4);
      v45 = (v44 - 1);
      if (v44 - 1 >= 0)
      {
        v46 = &getPosition[getPosition5 + v41 - v87];
        do
        {
          v47 = *(builder + 3);
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
            v49 = *(builder + 3);
            v50 = *(v49 + 8);
            if (v45 >= v50)
            {
              IOSArray_throwOutOfBoundsWithMsg(v50, v45);
            }

            [*(builder + 7) copyBytesWithLong:v43 withLong:v46 withInt:*(v49 + 12 + 4 * v45)];
          }

          v46 -= v87;
        }

        while (v45-- > 0);
      }
    }

    [*(builder + 7) writeBytesWithLong:getPosition withByteArray:v89 withInt:0 withInt:getPosition5];
    selfCopy = v82;
  }

  v38 = [*(builder + 7) getPosition] - 1;
  [*(builder + 7) reverseWithLong:getPosition withLong:v38];
  nodeAddress = selfCopy->nodeAddress_;
  p_nodeAddress = &selfCopy->nodeAddress_;
  v54 = *(builder + 5);
  if (nodeAddress && v54 == 0x7FFFFFFF)
  {
    v80 = new_JavaLangIllegalStateException_initWithNSString_(@"cannot create a packed FST with more than 2.1 billion nodes");
    objc_exception_throw(v80);
  }

  *(builder + 5) = v54 + 1;
  if (*p_nodeAddress)
  {
    v55 = *(builder + 10);
    if ([*p_nodeAddress size] == v55)
    {
      v56 = v82->nodeAddress_;
      v57 = [(OrgApacheLuceneUtilPackedGrowableWriter *)v56 size];
      getBitsPerValue = [(OrgApacheLuceneUtilPackedGrowableWriter *)v82->nodeAddress_ getBitsPerValue];
      v65 = [(OrgApacheLuceneUtilPackedGrowableWriter *)v56 resizeWithInt:OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(v57 + 1, getBitsPerValue, v59, v60, v61, v62, v63, v64)];
      JreStrongAssign(p_nodeAddress, v65);
      p_inCounts = &v82->inCounts_;
      v67 = v82->inCounts_;
      if (!v67)
      {
        goto LABEL_86;
      }

      v68 = [(OrgApacheLuceneUtilPackedGrowableWriter *)v67 size];
      getBitsPerValue2 = [*p_inCounts getBitsPerValue];
      v76 = [(OrgApacheLuceneUtilPackedGrowableWriter *)v67 resizeWithInt:OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(v68 + 1, getBitsPerValue2, v70, v71, v72, v73, v74, v75)];
      JreStrongAssign(p_inCounts, v76);
    }

    if (!*p_nodeAddress)
    {
LABEL_86:
      JreThrowNullPointerException();
    }

    [*p_nodeAddress setWithInt:*(builder + 10) withLong:v38];
    return *(builder + 5);
  }

  return v38;
}

- (id)getFirstArcWithOrgApacheLuceneUtilFstFST_Arc:(id)arc
{
  outputs = self->outputs_;
  if (!outputs)
  {
    goto LABEL_9;
  }

  getNoOutput = [(OrgApacheLuceneUtilFstOutputs *)outputs getNoOutput];
  if (!self->emptyOutput_)
  {
    if (arc)
    {
      *(arc + 40) = 2;
      JreStrongAssign(arc + 6, getNoOutput);
      goto LABEL_8;
    }

LABEL_9:
    JreThrowNullPointerException();
  }

  if (!arc)
  {
    goto LABEL_9;
  }

  *(arc + 40) = 3;
  JreStrongAssign(arc + 6, self->emptyOutput_);
  if (self->emptyOutput_ != getNoOutput)
  {
    *(arc + 40) |= 0x20u;
  }

LABEL_8:
  JreStrongAssign(arc + 2, getNoOutput);
  *(arc + 4) = self->startNode_;
  return arc;
}

- (id)readLastTargetArcWithOrgApacheLuceneUtilFstFST_Arc:(id)arc withOrgApacheLuceneUtilFstFST_Arc:(id)t_Arc withOrgApacheLuceneUtilFstFST_BytesReader:(id)reader
{
  if (atomic_load_explicit(OrgApacheLuceneUtilFstFST__initialized, memory_order_acquire))
  {
    if (!arc)
    {
      goto LABEL_34;
    }
  }

  else
  {
    sub_100122538();
    if (!arc)
    {
      goto LABEL_34;
    }
  }

  v9 = *(arc + 4);
  if (v9 <= 0)
  {
    if (t_Arc)
    {
      *(t_Arc + 2) = -1;
      *(t_Arc + 4) = -1;
      JreStrongAssign(t_Arc + 2, *(arc + 6));
      *(t_Arc + 40) = 2;
      return t_Arc;
    }

LABEL_34:
    JreThrowNullPointerException();
  }

  if (!reader)
  {
    goto LABEL_34;
  }

  nodeAddress = self->nodeAddress_;
  if (nodeAddress)
  {
    v9 = [(OrgApacheLuceneUtilPackedGrowableWriter *)nodeAddress getWithInt:?];
  }

  [reader setPositionWithLong:v9];
  if (!t_Arc)
  {
    goto LABEL_34;
  }

  *(t_Arc + 3) = *(arc + 4);
  readByte = [reader readByte];
  if (readByte == 32)
  {
    *(t_Arc + 20) = [reader readVInt];
    if (self->packed_ || self->version__ >= 4)
    {
      readVInt = [reader readVInt];
    }

    else
    {
      readVInt = [reader readInt];
    }

    *(t_Arc + 18) = readVInt;
    *(t_Arc + 8) = [reader getPosition];
    *(t_Arc + 19) = *(t_Arc + 20) - 2;
  }

  else
  {
    *(t_Arc + 40) = readByte;
    *(t_Arc + 18) = 0;
    if (([t_Arc isLast] & 1) == 0)
    {
      do
      {
        [(OrgApacheLuceneUtilFstFST *)self readLabelWithOrgApacheLuceneStoreDataInput:reader];
        if ([t_Arc flagWithInt:16])
        {
          outputs = self->outputs_;
          if (!outputs)
          {
            goto LABEL_34;
          }

          [(OrgApacheLuceneUtilFstOutputs *)outputs skipOutputWithOrgApacheLuceneStoreDataInput:reader];
        }

        if ([t_Arc flagWithInt:32])
        {
          v14 = self->outputs_;
          if (!v14)
          {
            goto LABEL_34;
          }

          [(OrgApacheLuceneUtilFstOutputs *)v14 skipFinalOutputWithOrgApacheLuceneStoreDataInput:reader];
        }

        if (([t_Arc flagWithInt:8] & 1) == 0 && (objc_msgSend(t_Arc, "flagWithInt:", 4) & 1) == 0)
        {
          if (self->packed_ || self->version__ > 3)
          {
            [reader readVLong];
          }

          else
          {
            [reader readInt];
          }
        }

        *(t_Arc + 40) = [reader readByte];
      }

      while (![t_Arc isLast]);
    }

    [reader skipBytesWithLong:-1];
    *(t_Arc + 7) = [reader getPosition];
  }

  [(OrgApacheLuceneUtilFstFST *)self readNextRealArcWithOrgApacheLuceneUtilFstFST_Arc:t_Arc withOrgApacheLuceneUtilFstFST_BytesReader:reader];
  return t_Arc;
}

- (int64_t)readUnpackedNodeTargetWithOrgApacheLuceneUtilFstFST_BytesReader:(id)reader
{
  if (self->version__ <= 3)
  {
    if (reader)
    {
      return [reader readInt];
    }

LABEL_8:
    JreThrowNullPointerException();
  }

  if (!reader)
  {
    goto LABEL_8;
  }

  return [reader readVLong];
}

- (id)readFirstTargetArcWithOrgApacheLuceneUtilFstFST_Arc:(id)arc withOrgApacheLuceneUtilFstFST_Arc:(id)t_Arc withOrgApacheLuceneUtilFstFST_BytesReader:(id)reader
{
  if (!arc)
  {
    goto LABEL_11;
  }

  if ([arc isFinal])
  {
    if (t_Arc)
    {
      *(t_Arc + 2) = -1;
      JreStrongAssign(t_Arc + 2, *(arc + 6));
      *(t_Arc + 40) = 1;
      v9 = *(arc + 4);
      if (v9 <= 0)
      {
        *(t_Arc + 40) = 3;
      }

      else
      {
        *(t_Arc + 3) = v9;
        *(t_Arc + 7) = *(arc + 4);
      }

      *(t_Arc + 4) = -1;
      return t_Arc;
    }

LABEL_11:
    JreThrowNullPointerException();
  }

  v10 = *(arc + 4);

  return [(OrgApacheLuceneUtilFstFST *)self readFirstRealTargetArcWithLong:v10 withOrgApacheLuceneUtilFstFST_Arc:t_Arc withOrgApacheLuceneUtilFstFST_BytesReader:reader];
}

- (id)readFirstRealTargetArcWithLong:(int64_t)long withOrgApacheLuceneUtilFstFST_Arc:(id)arc withOrgApacheLuceneUtilFstFST_BytesReader:(id)reader
{
  nodeAddress = self->nodeAddress_;
  longCopy = long;
  if (nodeAddress)
  {
    longCopy = [(OrgApacheLuceneUtilPackedGrowableWriter *)nodeAddress getWithInt:long];
  }

  if (!reader || ([reader setPositionWithLong:longCopy], !arc))
  {
    JreThrowNullPointerException();
  }

  *(arc + 3) = long;
  if ([reader readByte] == 32)
  {
    *(arc + 20) = [reader readVInt];
    if (self->packed_ || self->version__ >= 4)
    {
      readVInt = [reader readVInt];
    }

    else
    {
      readVInt = [reader readInt];
    }

    *(arc + 18) = readVInt;
    *(arc + 19) = -1;
    getPosition = [reader getPosition];
    *(arc + 7) = getPosition;
    *(arc + 8) = getPosition;
  }

  else
  {
    *(arc + 7) = longCopy;
    *(arc + 18) = 0;
  }

  return [(OrgApacheLuceneUtilFstFST *)self readNextRealArcWithOrgApacheLuceneUtilFstFST_Arc:arc withOrgApacheLuceneUtilFstFST_BytesReader:reader];
}

- (BOOL)isExpandedTargetWithOrgApacheLuceneUtilFstFST_Arc:(id)arc withOrgApacheLuceneUtilFstFST_BytesReader:(id)reader
{
  if (atomic_load_explicit(OrgApacheLuceneUtilFstFST__initialized, memory_order_acquire))
  {
    if (!arc)
    {
      goto LABEL_10;
    }
  }

  else
  {
    sub_100122538();
    if (!arc)
    {
      goto LABEL_10;
    }
  }

  v7 = *(arc + 4);
  if (v7 < 1)
  {
    return 0;
  }

  if (!reader)
  {
LABEL_10:
    JreThrowNullPointerException();
  }

  nodeAddress = self->nodeAddress_;
  if (nodeAddress)
  {
    v7 = [(OrgApacheLuceneUtilPackedGrowableWriter *)nodeAddress getWithInt:?];
  }

  [reader setPositionWithLong:v7];
  return [reader readByte] == 32;
}

- (id)readNextArcWithOrgApacheLuceneUtilFstFST_Arc:(id)arc withOrgApacheLuceneUtilFstFST_BytesReader:(id)reader
{
  if (!arc)
  {
    JreThrowNullPointerException();
  }

  if (*(arc + 2) == -1)
  {
    if (*(arc + 7) <= 0)
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

- (int)readNextArcLabelWithOrgApacheLuceneUtilFstFST_Arc:(id)arc withOrgApacheLuceneUtilFstFST_BytesReader:(id)reader
{
  if (*(arc + 2) == -1)
  {
    v7 = *(arc + 7);
    nodeAddress = self->nodeAddress_;
    if (nodeAddress)
    {
      v7 = [(OrgApacheLuceneUtilPackedGrowableWriter *)nodeAddress getWithInt:v7];
    }

    if (!reader)
    {
      goto LABEL_20;
    }

    [reader setPositionWithLong:v7];
    if ([reader readByte] == 32)
    {
      [reader readVInt];
      if (self->packed_ || self->version__ >= 4)
      {
        [reader readVInt];
      }

      else
      {
        [reader readInt];
      }

      goto LABEL_16;
    }

    readerCopy2 = reader;
    v9 = v7;
  }

  else
  {
    if (*(arc + 18))
    {
      if (reader)
      {
        [reader setPositionWithLong:*(arc + 8)];
        [reader skipBytesWithLong:*(arc + 18) + *(arc + 18) * *(arc + 19)];
        goto LABEL_16;
      }

LABEL_20:
      JreThrowNullPointerException();
    }

    if (!reader)
    {
      goto LABEL_20;
    }

    v9 = *(arc + 7);
    readerCopy2 = reader;
  }

  [readerCopy2 setPositionWithLong:v9];
LABEL_16:
  [reader readByte];

  return [(OrgApacheLuceneUtilFstFST *)self readLabelWithOrgApacheLuceneStoreDataInput:reader];
}

- (id)readNextRealArcWithOrgApacheLuceneUtilFstFST_Arc:(id)arc withOrgApacheLuceneUtilFstFST_BytesReader:(id)reader
{
  if (!arc)
  {
    goto LABEL_41;
  }

  if (*(arc + 18))
  {
    ++*(arc + 19);
    if (!reader)
    {
      goto LABEL_41;
    }

    [reader setPositionWithLong:*(arc + 8)];
    [reader skipBytesWithLong:*(arc + 18) * *(arc + 19)];
  }

  else
  {
    if (!reader)
    {
      goto LABEL_41;
    }

    [reader setPositionWithLong:*(arc + 7)];
  }

  *(arc + 40) = [reader readByte];
  *(arc + 2) = [(OrgApacheLuceneUtilFstFST *)self readLabelWithOrgApacheLuceneStoreDataInput:reader];
  v7 = [arc flagWithInt:16];
  outputs = self->outputs_;
  if (v7)
  {
    if (!outputs)
    {
      goto LABEL_41;
    }

    getNoOutput = [(OrgApacheLuceneUtilFstOutputs *)outputs readWithOrgApacheLuceneStoreDataInput:reader];
  }

  else
  {
    if (!outputs)
    {
      goto LABEL_41;
    }

    getNoOutput = [(OrgApacheLuceneUtilFstOutputs *)outputs getNoOutput];
  }

  JreStrongAssign(arc + 2, getNoOutput);
  v10 = [arc flagWithInt:32];
  v11 = self->outputs_;
  if (v10)
  {
    if (!v11)
    {
      goto LABEL_41;
    }

    getNoOutput2 = [(OrgApacheLuceneUtilFstOutputs *)v11 readFinalOutputWithOrgApacheLuceneStoreDataInput:reader];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_41;
    }

    getNoOutput2 = [(OrgApacheLuceneUtilFstOutputs *)v11 getNoOutput];
  }

  JreStrongAssign(arc + 6, getNoOutput2);
  if ([arc flagWithInt:8])
  {
    *(arc + 4) = ([arc flagWithInt:1] << 63) >> 63;
LABEL_36:
    getPosition = [reader getPosition];
    v18 = 56;
    goto LABEL_40;
  }

  if (![arc flagWithInt:4])
  {
    if (!self->packed_)
    {
      if (self->version__ <= 3)
      {
        readInt = [reader readInt];
        goto LABEL_35;
      }

      readVLong = [reader readVLong];
LABEL_34:
      readInt = readVLong;
      goto LABEL_35;
    }

    getPosition2 = [reader getPosition];
    readInt = [reader readVLong];
    if ([arc flagWithInt:64])
    {
      readInt += getPosition2;
LABEL_35:
      *(arc + 4) = readInt;
      goto LABEL_36;
    }

    nodeRefToAddress = self->nodeRefToAddress_;
    if (nodeRefToAddress)
    {
      if (readInt >= [(OrgApacheLuceneUtilPackedPackedInts_Reader *)nodeRefToAddress size])
      {
        goto LABEL_35;
      }

      readVLong = [(OrgApacheLuceneUtilPackedPackedInts_Reader *)self->nodeRefToAddress_ getWithInt:readInt];
      goto LABEL_34;
    }

LABEL_41:
    JreThrowNullPointerException();
  }

  *(arc + 7) = [reader getPosition];
  if (self->nodeAddress_)
  {
    getPosition = (*(arc + 3) - 1);
  }

  else
  {
    if (([arc flagWithInt:2] & 1) == 0)
    {
      if (*(arc + 18))
      {
        [reader setPositionWithLong:*(arc + 8)];
        [reader skipBytesWithLong:*(arc + 20) * *(arc + 18)];
      }

      else
      {
        sub_100120BBC(self, reader);
      }
    }

    getPosition = [reader getPosition];
  }

  v18 = 32;
LABEL_40:
  *(arc + v18) = getPosition;
  return arc;
}

- (BOOL)shouldExpandWithOrgApacheLuceneUtilFstBuilder:(id)builder withOrgApacheLuceneUtilFstBuilder_UnCompiledNode:(id)node
{
  if (!builder)
  {
    goto LABEL_10;
  }

  if (*(builder + 48) != 1)
  {
    return 0;
  }

  if (!node)
  {
LABEL_10:
    JreThrowNullPointerException();
  }

  v4 = *(node + 4);
  if (*(node + 14) < 4)
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
  if (objc_opt_class() == self)
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