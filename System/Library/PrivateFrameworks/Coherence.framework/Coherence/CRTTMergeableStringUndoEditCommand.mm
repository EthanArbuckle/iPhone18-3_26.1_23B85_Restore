@interface CRTTMergeableStringUndoEditCommand
- (BOOL)_applyToString:(id)a3;
- (BOOL)applyToString:(id)a3;
- (BOOL)hasTemporaryIDs;
- (CRContext)context;
- (_TtC9Coherence34CRTTMergeableStringUndoEditCommand)init;
- (id)description;
- (id)renamedWith:(id)a3;
- (id)temporaryIDs;
- (void)dealloc;
- (void)retainTemporaryIDs;
- (void)updateInsertTopoIDRange:(TopoIDRange *)a3 toNewRangeID:(TopoIDRange *)a4;
- (void)updateTopoIDRange:(TopoIDRange *)a3 toNewRangeID:(TopoIDRange *)a4;
@end

@implementation CRTTMergeableStringUndoEditCommand

- (_TtC9Coherence34CRTTMergeableStringUndoEditCommand)init
{
  v3.receiver = self;
  v3.super_class = _TtC9Coherence34CRTTMergeableStringUndoEditCommand;
  if ([(CRTTMergeableStringUndoEditCommand *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  v3 = [(CRTTMergeableStringUndoEditCommand *)self temporaryIDs];
  [_TtC9Coherence19CRGlobalContextObjC releaseObjCSequence:v3];

  deleteRanges = self->_deleteRanges;
  if (deleteRanges)
  {
    v5 = *deleteRanges;
    if (*deleteRanges)
    {
      deleteRanges[1] = v5;
      operator delete(v5);
    }

    MEMORY[0x1B26FCDB0](deleteRanges, 0x20C40960023A9);
  }

  insertStrings = self->_insertStrings;
  if (insertStrings)
  {
    v8 = self->_insertStrings;
    std::vector<std::pair<Coherence_namespace::TopoIDRange,objc_object  {objcproto26CRTTMergeableStringStorage}* {__strong}>>::__destroy_vector::operator()[abi:ne200100](&v8);
    MEMORY[0x1B26FCDB0](insertStrings, 0x20C40960023A9);
  }

  v7.receiver = self;
  v7.super_class = _TtC9Coherence34CRTTMergeableStringUndoEditCommand;
  [(CRTTMergeableStringUndoEditCommand *)&v7 dealloc];
}

- (void)updateTopoIDRange:(TopoIDRange *)a3 toNewRangeID:(TopoIDRange *)a4
{
  v16 = *MEMORY[0x1E69E9840];
  __p = 0;
  v12 = 0;
  v13 = 0;
  deleteRanges = self->_deleteRanges;
  v8 = *deleteRanges;
  v9 = deleteRanges[1];
  if (*deleteRanges != v9)
  {
    do
    {
      Coherence_namespace::updateTopoIDRange(v8, a3, a4, &__p);
      v8 += 28;
    }

    while (v8 != v9);
    deleteRanges = self->_deleteRanges;
  }

  if (deleteRanges != &__p)
  {
    std::vector<Coherence_namespace::TopoIDRange>::__assign_with_size[abi:ne200100]<Coherence_namespace::TopoIDRange*,Coherence_namespace::TopoIDRange*>(deleteRanges, __p, v12, 0x6DB6DB6DB6DB6DB7 * ((v12 - __p) >> 2));
  }

  v15[0] = *a3->charID.replica.uuid;
  *(v15 + 12) = *&a3->charID.replica.uuid[12];
  v14[0] = *a4->charID.replica.uuid;
  *(v14 + 12) = *&a4->charID.replica.uuid[12];
  [(CRTTMergeableStringUndoEditCommand *)self updateInsertTopoIDRange:v15 toNewRangeID:v14];
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)temporaryIDs
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(_TtC9Coherence18ObjCRenameSequence);
  deleteRanges = self->_deleteRanges;
  v5 = *deleteRanges;
  v6 = deleteRanges[1];
  while (v5 != v6)
  {
    v7 = *v5;
    *&v17[12] = *(v5 + 12);
    *v17 = v7;
    if (*&v17[16])
    {
      v8 = Coherence_namespace::TopoReplica::objc(v17);
      [(ObjCRenameSequence *)v3 addWithReplica:v8 range:*&v17[20] lastTimestamp:*&v17[24], 0, *v17, *&v17[8]];
    }

    v5 = (v5 + 28);
  }

  insertStrings = self->_insertStrings;
  v10 = *insertStrings;
  v11 = insertStrings[1];
  while (v10 != v11)
  {
    v12 = *v10;
    *&v17[12] = *(v10 + 12);
    *v17 = v12;
    v13 = *(v10 + 4);
    v18 = v13;
    if (*&v17[16])
    {
      v14 = Coherence_namespace::TopoReplica::objc(v17);
      [(ObjCRenameSequence *)v3 addWithReplica:v14 range:*&v17[20] lastTimestamp:*&v17[24], 0];

      v13 = v18;
    }

    v10 = (v10 + 40);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)hasTemporaryIDs
{
  deleteRanges = self->_deleteRanges;
  v3 = *deleteRanges;
  v4 = deleteRanges[1];
  while (v3 != v4)
  {
    if (*(v3 + 16))
    {
      return 1;
    }

    v3 += 28;
  }

  insertStrings = self->_insertStrings;
  v7 = *insertStrings;
  v6 = insertStrings[1];
  if (v7 == v6)
  {
    return 0;
  }

  v8 = v7 + 40;
  do
  {
    v9 = *(v8 - 24);
    result = v9 != 0;
    if (v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = v8 == v6;
    }

    v8 += 40;
  }

  while (!v11);
  return result;
}

- (void)retainTemporaryIDs
{
  v2 = [(CRTTMergeableStringUndoEditCommand *)self temporaryIDs];
  [_TtC9Coherence19CRGlobalContextObjC retainObjCSequence:?];
}

- (void)updateInsertTopoIDRange:(TopoIDRange *)a3 toNewRangeID:(TopoIDRange *)a4
{
  v15 = *MEMORY[0x1E69E9840];
  insertStrings = self->_insertStrings;
  v5 = *insertStrings;
  v6 = insertStrings[1];
  if (*insertStrings != v6)
  {
    do
    {
      if (*(v5 + 16) == a3->charID.replica.index && !uuid_compare(v5, a3->charID.replica.uuid) && (Coherence_namespace::TopoID::operator<(v5, a3) & 1) == 0)
      {
        v12 = *a3->charID.replica.uuid;
        v9 = a3->length + a3->charID.clock;
        index = a3->charID.replica.index;
        v14 = v9;
        if ((Coherence_namespace::TopoID::operator>=(v5, &v12) & 1) == 0)
        {
          v10 = *a4->charID.replica.uuid;
          *(v5 + 16) = a4->charID.replica.index;
          *v5 = v10;
          *(v5 + 20) = *(v5 + 20) + a4->charID.clock - a3->charID.clock;
        }
      }

      v5 += 40;
    }

    while (v5 != v6);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)renamedWith:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v25 = a3;
  v4 = objc_alloc_init(_TtC9Coherence34CRTTMergeableStringUndoEditCommand);
  v24 = self;
  deleteRanges = self->_deleteRanges;
  v6 = *deleteRanges;
  v7 = deleteRanges[1];
  if (*deleteRanges != v7)
  {
    do
    {
      v8 = *v6;
      *&v31[12] = *(v6 + 12);
      *v31 = v8;
      if (*&v31[16])
      {
        v9 = Coherence_namespace::TopoReplica::objc(v31);
        v10 = [v25 renamedWithRange:*&v31[20] replica:{*&v31[24], v9}];
        if ([v10 rangeCount])
        {
          v11 = *&v31[20];
          v12 = *&v31[24];
          v33[0] = MEMORY[0x1E69E9820];
          v33[1] = 3221225472;
          v33[2] = __50__CRTTMergeableStringUndoEditCommand_renamedWith___block_invoke;
          v33[3] = &unk_1E7A126A8;
          v34 = v4;
          v35[0] = *v31;
          *(v35 + 12) = *&v31[12];
          [v10 enumerateRangesIn:v11 :{v12, v33}];
        }

        else
        {
          std::vector<Coherence_namespace::TopoIDRange>::push_back[abi:ne200100](-[CRTTMergeableStringUndoEditCommand deleteRanges](v4, "deleteRanges"), v31);
        }
      }

      else
      {
        std::vector<Coherence_namespace::TopoIDRange>::push_back[abi:ne200100](-[CRTTMergeableStringUndoEditCommand deleteRanges](v4, "deleteRanges"), v31);
      }

      v6 = (v6 + 28);
    }

    while (v6 != v7);
  }

  insertStrings = v24->_insertStrings;
  v14 = *insertStrings;
  v15 = insertStrings[1];
  if (*insertStrings != v15)
  {
    do
    {
      v16 = *v14;
      *&v31[12] = *(v14 + 12);
      *v31 = v16;
      v32 = *(v14 + 4);
      if (v32)
      {
        if (*&v31[16])
        {
          v17 = Coherence_namespace::TopoReplica::objc(v31);
          v18 = [v25 renamedWithRange:*&v31[20] replica:{*&v31[24], v17}];
          v19 = *&v31[20];
          v20 = *&v31[24];
          v26[0] = MEMORY[0x1E69E9820];
          v26[1] = 3321888768;
          v26[2] = __50__CRTTMergeableStringUndoEditCommand_renamedWith___block_invoke_2;
          v26[3] = &unk_1F23BBA78;
          v27 = v4;
          v29[0] = *v31;
          *(v29 + 12) = *&v31[12];
          v30 = v32;
          v21 = v17;
          v28 = v21;
          [v18 enumerateRangesIn:v19 :{v20, v26}];
        }

        else
        {
          std::vector<std::pair<Coherence_namespace::TopoIDRange,objc_object  {objcproto26CRTTMergeableStringStorage}* {__strong}>>::push_back[abi:ne200100](-[CRTTMergeableStringUndoEditCommand insertStrings](v4, "insertStrings"), v31);
        }
      }

      v14 = (v14 + 40);
    }

    while (v14 != v15);
  }

  [(CRTTMergeableStringUndoEditCommand *)v4 retainTemporaryIDs];

  v22 = *MEMORY[0x1E69E9840];

  return v4;
}

uint64_t __50__CRTTMergeableStringUndoEditCommand_renamedWith___block_invoke(uint64_t a1, int a2, int a3, void *a4, uint64_t a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v9 = a4;
  if (a5 < 0)
  {
    v14 = *(a1 + 40);
    LODWORD(v15) = *(a1 + 56);
    HIDWORD(v15) = a2;
    v16 = a3;
    std::vector<Coherence_namespace::TopoIDRange>::push_back[abi:ne200100]([*(a1 + 32) deleteRanges], &v14);
  }

  else
  {
    Coherence_namespace::TopoReplica::TopoReplica(&v12, v9, 0);
    HIDWORD(v13) = a5;
    v14 = v12;
    v15 = v13;
    v16 = a3;
    std::vector<Coherence_namespace::TopoIDRange>::push_back[abi:ne200100]([*(a1 + 32) deleteRanges], &v14);
  }

  v10 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __50__CRTTMergeableStringUndoEditCommand_renamedWith___block_invoke_2(id *a1, int a2, int a3, void *a4, uint64_t a5)
{
  v20 = *MEMORY[0x1E69E9840];
  v9 = a4;
  if (a5 < 0)
  {
    v11 = [a1[5] uuid];
    Coherence_namespace::TopoReplica::TopoReplica(&v14, v11, [a1[5] index]);
    HIDWORD(v15) = a2;
    v18 = v14;
    v19 = v15;
  }

  else
  {
    Coherence_namespace::TopoReplica::TopoReplica(&v14, v9, 0);
    HIDWORD(v15) = a5;
    v18 = v14;
    v19 = v15;
  }

  v10 = [a1[4] insertStrings];
  v14 = v18;
  v15 = v19;
  v16 = a3;
  v17 = a1[10];
  std::vector<std::pair<Coherence_namespace::TopoIDRange,objc_object  {objcproto26CRTTMergeableStringStorage}* {__strong}>>::push_back[abi:ne200100](v10, &v14);

  v12 = *MEMORY[0x1E69E9840];
  return 0;
}

- (BOOL)applyToString:(id)a3
{
  v4 = a3;
  [v4 useRenameIfAvailable];
  v5 = +[_TtC9Coherence19CRGlobalContextObjC objCRenames];
  [v4 apply:v5 skipRetain:0 alwaysApply:0];
  if ([(CRTTMergeableStringUndoEditCommand *)self hasTemporaryIDs])
  {
    v6 = [(CRTTMergeableStringUndoEditCommand *)self renamedWith:v5];
    v7 = [v6 _applyToString:v4];
  }

  else
  {
    v7 = [(CRTTMergeableStringUndoEditCommand *)self _applyToString:v4];
  }

  return v7;
}

- (BOOL)_applyToString:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![v4 hasAllIDsIn:self->_insertStrings])
  {
    goto LABEL_21;
  }

  deleteRanges = self->_deleteRanges;
  if (deleteRanges[1] == *deleteRanges)
  {
    goto LABEL_20;
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  __p = 0;
  v17 = 0;
  v18 = 0;
  v6 = *deleteRanges;
  v7 = deleteRanges[1];
  if (*deleteRanges == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      v25 = *v6;
      v26 = *(v6 + 2);
      v9 = *(v6 + 6);
      v22 = v25;
      v23 = v26;
      v24 = v9;
      [v4 getSubstrings:&v19 forTopoIDRange:{&v22, __p}];
      v8 += v9;
      v6 = (v6 + 28);
    }

    while (v6 != v7);
  }

  [v4 getCharacterRanges:&__p forSubstrings:&v19];
  v10 = __p;
  if (__p == v17)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0;
    v12 = __p;
    do
    {
      v11 += v12[1];
      v12 += 2;
    }

    while (v12 != v17);
  }

  if (v11 == v8)
  {
    [v4 deleteSubstrings:&v19 withCharacterRanges:&__p];
    v10 = __p;
  }

  if (v10)
  {
    v17 = v10;
    operator delete(v10);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v11 == v8)
  {
LABEL_20:
    [v4 undeleteSubstrings:{self->_insertStrings, __p}];
    v13 = 1;
  }

  else
  {
LABEL_21:
    v13 = 0;
  }

  [v4 coalesce];
  if (v13)
  {
    [v4 updateSubstringIndexes];
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<CRTTMergeableStringUndoEditCommand %p Delete:", self];
  deleteRanges = self->_deleteRanges;
  v5 = *deleteRanges;
  v6 = deleteRanges[1];
  if (*deleteRanges != v6)
  {
    do
    {
      v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v5];
      v8 = [v7 Coherence_shortDescription];
      [v3 appendFormat:@"%@.%d:%d-%u, ", v8, v5[4], v5[5], v5[5] + v5[6] - 1];

      v5 += 7;
    }

    while (v5 != v6);
  }

  [v3 appendFormat:@"  Insert:"];
  insertStrings = self->_insertStrings;
  v10 = *insertStrings;
  v11 = insertStrings[1];
  if (*insertStrings != v11)
  {
    do
    {
      v12 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v10];
      v13 = [v12 Coherence_shortDescription];
      [v3 appendFormat:@"%@.%d:%d-%u=>'%@', ", v13, *(v10 + 16), *(v10 + 20), (*(v10 + 20) + *(v10 + 24) - 1), *(v10 + 32)];

      v10 += 40;
    }

    while (v10 != v11);
  }

  [v3 appendFormat:@">"];

  return v3;
}

- (CRContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

@end