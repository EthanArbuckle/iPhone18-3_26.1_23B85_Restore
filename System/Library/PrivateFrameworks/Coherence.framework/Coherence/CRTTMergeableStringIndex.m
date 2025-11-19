@interface CRTTMergeableStringIndex
- (BOOL)isEqual:(id)a3;
- (BOOL)needToFinalizeTimestamps;
- (_TtC9Coherence24CRTTMergeableStringIndex)initWithTimestamp:(id)a3 affinity:(unint64_t)a4 renameGeneration:(int64_t)a5;
- (_TtC9Coherence24CRTTMergeableStringIndex)initWithTopoID:(TopoID *)a3 affinity:(unint64_t)a4 renameGeneration:(int64_t)a5 maxCounter:(int64_t)a6;
- (id).cxx_construct;
- (id)_objCRenameSequence;
- (id)description;
- (id)finalizedInContext:(id)a3;
- (id)renamed:(id)a3;
- (void)dealloc;
@end

@implementation CRTTMergeableStringIndex

- (_TtC9Coherence24CRTTMergeableStringIndex)initWithTopoID:(TopoID *)a3 affinity:(unint64_t)a4 renameGeneration:(int64_t)a5 maxCounter:(int64_t)a6
{
  v16.receiver = self;
  v16.super_class = _TtC9Coherence24CRTTMergeableStringIndex;
  v10 = [(CRTTMergeableStringIndex *)&v16 init];
  v11 = v10;
  v12 = *a3->replica.uuid;
  v13 = *&a3->replica.index;
  *&v10->_index.replica.index = v13;
  *v10->_index.replica.uuid = v12;
  v10->_maxCounter = a6;
  v10->_affinity = a4;
  v10->_renameGeneration = a5;
  if (v13)
  {
    v14 = [(CRTTMergeableStringIndex *)v10 _objCRenameSequence];
    [_TtC9Coherence19CRGlobalContextObjC retainObjCSequence:v14];
  }

  return v11;
}

- (_TtC9Coherence24CRTTMergeableStringIndex)initWithTimestamp:(id)a3 affinity:(unint64_t)a4 renameGeneration:(int64_t)a5
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v13.receiver = self;
  v13.super_class = _TtC9Coherence24CRTTMergeableStringIndex;
  v9 = [(CRTTMergeableStringIndex *)&v13 init];
  Coherence_namespace::TopoID::TopoID(&v14, v8);
  *v9->_index.replica.uuid = v14;
  *&v9->_index.replica.index = v15;
  v9->_renameGeneration = a5;
  v9->_maxCounter = -1;
  v9->_affinity = a4;
  if (v9->_index.replica.index)
  {
    v10 = [(CRTTMergeableStringIndex *)v9 _objCRenameSequence];
    [_TtC9Coherence19CRGlobalContextObjC retainObjCSequence:v10];
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
    v3 = [(CRTTMergeableStringIndex *)self _objCRenameSequence];
    [_TtC9Coherence19CRGlobalContextObjC releaseObjCSequence:v3];
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

- (id)finalizedInContext:(id)a3
{
  v4 = a3;
  if ([(CRTTMergeableStringIndex *)self needToFinalizeTimestamps])
  {
    v5 = [(CRTTMergeableStringIndex *)self _objCRenameSequence];
    v6 = [_TtC9Coherence19CRGlobalContextObjC renameObjCSequence:v5 after:self->_maxCounter in:v4];
    v7 = [(CRTTMergeableStringIndex *)self renamed:v6];
  }

  else
  {
    v7 = self;
  }

  return v7;
}

- (id)renamed:(id)a3
{
  v13[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (-[CRTTMergeableStringIndex needToFinalizeTimestamps](self, "needToFinalizeTimestamps") && ((v5 = -[CRTTMergeableStringIndex renameGeneration](self, "renameGeneration"), v5 < [v4 generation]) || (objc_msgSend(v4, "hasLocalRenames") & 1) != 0))
  {
    v6 = Coherence_namespace::TopoID::objc(&self->_index);
    v7 = [v4 renamed:v6];

    if (v7)
    {
      v8 = [_TtC9Coherence24CRTTMergeableStringIndex alloc];
      Coherence_namespace::TopoID::TopoID(v13, v7);
      v9 = -[CRTTMergeableStringIndex initWithTopoID:affinity:renameGeneration:maxCounter:](v8, "initWithTopoID:affinity:renameGeneration:maxCounter:", v13, self->_affinity, [v4 generation], self->_maxCounter);
    }

    else
    {
      v9 = self;
    }

    v10 = v9;
  }

  else
  {
    v10 = self;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)_objCRenameSequence
{
  v3 = objc_alloc_init(_TtC9Coherence18ObjCRenameSequence);
  v4 = Coherence_namespace::TopoReplica::objc(&self->_index);
  [(ObjCRenameSequence *)v3 addWithReplica:v4 range:self->_index.clock lastTimestamp:1, 0];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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