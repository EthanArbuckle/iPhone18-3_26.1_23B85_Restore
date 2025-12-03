@interface CRTTMergeableStringRange
- (BOOL)isEqual:(id)equal;
- (TopoIDRange)range;
- (_TtC9Coherence24CRTTMergeableStringRange)initWithTopoIDRange:(TopoIDRange *)range renameGeneration:(int64_t)generation maxCounter:(int64_t)counter;
- (id).cxx_construct;
- (id)_objCRenameSequence;
- (id)description;
- (id)subrangeFrom:(_NSRange)from;
- (void)dealloc;
@end

@implementation CRTTMergeableStringRange

- (_TtC9Coherence24CRTTMergeableStringRange)initWithTopoIDRange:(TopoIDRange *)range renameGeneration:(int64_t)generation maxCounter:(int64_t)counter
{
  v12.receiver = self;
  v12.super_class = _TtC9Coherence24CRTTMergeableStringRange;
  v8 = [(CRTTMergeableStringRange *)&v12 init];
  v9 = *&range->charID.replica.uuid[12];
  *(v8 + 24) = *range->charID.replica.uuid;
  *(v8 + 36) = v9;
  *(v8 + 1) = generation;
  *(v8 + 2) = counter;
  _objCRenameSequence = [v8 _objCRenameSequence];
  if (_objCRenameSequence)
  {
    [_TtC9Coherence19CRGlobalContextObjC retainObjCSequence:_objCRenameSequence];
  }

  return v8;
}

- (void)dealloc
{
  _objCRenameSequence = [(CRTTMergeableStringRange *)self _objCRenameSequence];
  if (_objCRenameSequence)
  {
    [_TtC9Coherence19CRGlobalContextObjC releaseObjCSequence:_objCRenameSequence];
  }

  v4.receiver = self;
  v4.super_class = _TtC9Coherence24CRTTMergeableStringRange;
  [(CRTTMergeableStringRange *)&v4 dealloc];
}

- (id)_objCRenameSequence
{
  v8 = *MEMORY[0x1E69E9840];
  [(CRTTMergeableStringRange *)self range];
  if (v7)
  {
    v3 = 0;
  }

  else
  {
    v3 = objc_alloc_init(_TtC9Coherence18ObjCRenameSequence);
    v4 = Coherence_namespace::TopoReplica::objc(&self->_range);
    [(ObjCRenameSequence *)v3 addWithReplica:v4 range:self->_range.charID.clock lastTimestamp:self->_range.length, 0];
  }

  v5 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)subrangeFrom:(_NSRange)from
{
  length = from.length;
  location = from.location;
  v15 = *MEMORY[0x1E69E9840];
  v6 = [_TtC9Coherence24CRTTMergeableStringRange alloc];
  v11 = *self->_range.charID.replica.uuid;
  v7 = self->_range.charID.clock + location;
  index = self->_range.charID.replica.index;
  v13 = v7;
  v14 = length;
  v8 = [(CRTTMergeableStringRange *)v6 initWithTopoIDRange:&v11 renameGeneration:self->_renameGeneration maxCounter:self->_maxCounter];
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  v17 = *MEMORY[0x1E69E9840];
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    [(CRTTMergeableStringRange *)self range];
    if (v5)
    {
      [v5 range];
      if ((v14 == 0) != (v11 != 0))
      {
LABEL_4:
        [(CRTTMergeableStringRange *)self range];
        if (v5)
        {
          [v5 range];
          v6 = HIDWORD(v11);
        }

        else
        {
          v6 = 0;
          v10[0] = 0;
          v10[1] = 0;
          v12 = 0;
          v11 = 0;
        }

        v7 = v15 == v6 && v14 == v11 && !uuid_compare(uu1, v10) && v16 == v12;
        goto LABEL_14;
      }
    }

    else if (!v14)
    {
      goto LABEL_4;
    }

    v7 = 1;
LABEL_14:

    goto LABEL_15;
  }

  v7 = 0;
LABEL_15:

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = Coherence_namespace::TopoID::toString(&self->_range);
  v5 = [v3 stringWithFormat:@"<CRTTMergeableStringRange %p %@, %d>", self, v4, self->_range.length];

  return v5;
}

- (TopoIDRange)range
{
  *retstr->charID.replica.uuid = *&self->length;
  *&retstr->charID.replica.uuid[12] = *&self[1].charID.replica.uuid[8];
  return self;
}

- (id).cxx_construct
{
  self->_range.charID.replica.index = 0;
  uuid_clear(self->_range.charID.replica.uuid);
  self->_range.charID.clock = 0;
  return self;
}

@end