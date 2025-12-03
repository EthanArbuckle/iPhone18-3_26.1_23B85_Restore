@interface CRTTMergeableStringIndex
- (BOOL)isEqual:(id)equal;
- (BOOL)needToFinalizeTimestamps;
- (_TtC9Coherence24CRTTMergeableStringIndex)initWithTimestamp:(id)timestamp affinity:(unint64_t)affinity renameGeneration:(int64_t)generation;
- (_TtC9Coherence24CRTTMergeableStringIndex)initWithTopoID:(TopoID *)d affinity:(unint64_t)affinity renameGeneration:(int64_t)generation maxCounter:(int64_t)counter;
- (id).cxx_construct;
- (id)_objCRenameSequence;
- (id)description;
- (id)finalizedInContext:(id)context;
- (id)renamed:(id)renamed;
- (void)dealloc;
@end

@implementation CRTTMergeableStringIndex

- (_TtC9Coherence24CRTTMergeableStringIndex)initWithTopoID:(TopoID *)d affinity:(unint64_t)affinity renameGeneration:(int64_t)generation maxCounter:(int64_t)counter
{
  v16.receiver = self;
  v16.super_class = _TtC9Coherence24CRTTMergeableStringIndex;
  v10 = [(CRTTMergeableStringIndex *)&v16 init];
  v11 = v10;
  v12 = *d->replica.uuid;
  v13 = *&d->replica.index;
  *&v10->_index.replica.index = v13;
  *v10->_index.replica.uuid = v12;
  v10->_maxCounter = counter;
  v10->_affinity = affinity;
  v10->_renameGeneration = generation;
  if (v13)
  {
    _objCRenameSequence = [(CRTTMergeableStringIndex *)v10 _objCRenameSequence];
    [_TtC9Coherence19CRGlobalContextObjC retainObjCSequence:_objCRenameSequence];
  }

  return v11;
}

- (_TtC9Coherence24CRTTMergeableStringIndex)initWithTimestamp:(id)timestamp affinity:(unint64_t)affinity renameGeneration:(int64_t)generation
{
  v16 = *MEMORY[0x1E69E9840];
  timestampCopy = timestamp;
  v13.receiver = self;
  v13.super_class = _TtC9Coherence24CRTTMergeableStringIndex;
  v9 = [(CRTTMergeableStringIndex *)&v13 init];
  Coherence_namespace::TopoID::TopoID(&v14, timestampCopy);
  *v9->_index.replica.uuid = v14;
  *&v9->_index.replica.index = v15;
  v9->_renameGeneration = generation;
  v9->_maxCounter = -1;
  v9->_affinity = affinity;
  if (v9->_index.replica.index)
  {
    _objCRenameSequence = [(CRTTMergeableStringIndex *)v9 _objCRenameSequence];
    [_TtC9Coherence19CRGlobalContextObjC retainObjCSequence:_objCRenameSequence];
  }

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  [(CRTTMergeableStringIndex *)self index];
  if (v6)
  {
    _objCRenameSequence = [(CRTTMergeableStringIndex *)self _objCRenameSequence];
    [_TtC9Coherence19CRGlobalContextObjC releaseObjCSequence:_objCRenameSequence];
  }

  v5.receiver = self;
  v5.super_class = _TtC9Coherence24CRTTMergeableStringIndex;
  [(CRTTMergeableStringIndex *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (BOOL)needToFinalizeTimestamps
{
  v5 = *MEMORY[0x1E69E9840];
  [(CRTTMergeableStringIndex *)self index];
  result = v4 != 0;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)finalizedInContext:(id)context
{
  contextCopy = context;
  if ([(CRTTMergeableStringIndex *)self needToFinalizeTimestamps])
  {
    _objCRenameSequence = [(CRTTMergeableStringIndex *)self _objCRenameSequence];
    v6 = [_TtC9Coherence19CRGlobalContextObjC renameObjCSequence:_objCRenameSequence after:self->_maxCounter in:contextCopy];
    selfCopy = [(CRTTMergeableStringIndex *)self renamed:v6];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)renamed:(id)renamed
{
  v13[3] = *MEMORY[0x1E69E9840];
  renamedCopy = renamed;
  if (-[CRTTMergeableStringIndex needToFinalizeTimestamps](self, "needToFinalizeTimestamps") && ((v5 = -[CRTTMergeableStringIndex renameGeneration](self, "renameGeneration"), v5 < [renamedCopy generation]) || (objc_msgSend(renamedCopy, "hasLocalRenames") & 1) != 0))
  {
    v6 = Coherence_namespace::TopoID::objc(&self->_index);
    v7 = [renamedCopy renamed:v6];

    if (v7)
    {
      v8 = [_TtC9Coherence24CRTTMergeableStringIndex alloc];
      Coherence_namespace::TopoID::TopoID(v13, v7);
      selfCopy = -[CRTTMergeableStringIndex initWithTopoID:affinity:renameGeneration:maxCounter:](v8, "initWithTopoID:affinity:renameGeneration:maxCounter:", v13, self->_affinity, [renamedCopy generation], self->_maxCounter);
    }

    else
    {
      selfCopy = self;
    }

    selfCopy2 = selfCopy;
  }

  else
  {
    selfCopy2 = self;
  }

  v11 = *MEMORY[0x1E69E9840];

  return selfCopy2;
}

- (id)_objCRenameSequence
{
  v3 = objc_alloc_init(_TtC9Coherence18ObjCRenameSequence);
  v4 = Coherence_namespace::TopoReplica::objc(&self->_index);
  [(ObjCRenameSequence *)v3 addWithReplica:v4 range:self->_index.clock lastTimestamp:1, 0];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  v21 = *MEMORY[0x1E69E9840];
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    [(CRTTMergeableStringIndex *)self index];
    if (v5)
    {
      [v5 index];
      if ((v20 == 0) != (v17 != 0))
      {
LABEL_4:
        [(CRTTMergeableStringIndex *)self index];
        if (v5)
        {
          [v5 index];
          v6 = HIDWORD(v17);
        }

        else
        {
          v6 = 0;
          *uu2 = 0;
          v16 = 0;
          v17 = 0;
        }

        v7 = v20 == __PAIR64__(v6, v17) && uuid_compare(uu1, uu2) == 0;
LABEL_21:

        goto LABEL_22;
      }
    }

    else if (!v20)
    {
      goto LABEL_4;
    }

    v8 = +[_TtC9Coherence19CRGlobalContextObjC objCRenames];
    v9 = [(CRTTMergeableStringIndex *)self renamed:v8];
    v10 = [v5 renamed:v8];
    v11 = v10;
    if (v9)
    {
      [v9 index];
      if (v11)
      {
LABEL_10:
        [v11 index];
        v12 = HIDWORD(v17);
LABEL_13:
        v7 = v20 == __PAIR64__(v12, v17) && uuid_compare(uu1, uu2) == 0;

        goto LABEL_21;
      }
    }

    else
    {
      *uu1 = 0;
      v19 = 0;
      v20 = 0;
      if (v10)
      {
        goto LABEL_10;
      }
    }

    v12 = 0;
    *uu2 = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_13;
  }

  v7 = 0;
LABEL_22:

  v13 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = Coherence_namespace::TopoID::toString(&self->_index);
  v5 = [v3 stringWithFormat:@"<CRTTMergeableStringIndex: %p %@ %@>", self, v4, -[CRTTMergeableStringIndex description]::affinityNames[self->_affinity]];

  return v5;
}

- (id).cxx_construct
{
  self->_index.replica.index = 0;
  uuid_clear(self->_index.replica.uuid);
  self->_index.clock = 0;
  return self;
}

@end