@interface CRTTMergeableString
- (BOOL)_canDeltaMergeRenamed:(id)a3 charMap:(void *)a4;
- (BOOL)canDeltaMerge:(id)a3;
- (BOOL)deltaMerge:(id)a3;
- (BOOL)graphIsEqual:(id)a3;
- (BOOL)hasAllIDsIn:(void *)a3;
- (BOOL)hasDeltaTo:(id)a3 compareElements:(id)a4;
- (BOOL)isEmptyCRDT;
- (BOOL)isEqual:(id)a3;
- (BOOL)needToFinalizeTimestamps;
- (BOOL)saveSubstrings:(void *)a3 encoder:(id)a4 error:(id *)a5;
- (BOOL)saveToEncoder:(id)a3 error:(id *)a4;
- (_TtC9Coherence19CRTTMergeableString)initWithDecoder:(id)a3 error:(id *)a4;
- (_TtC9Coherence19CRTTMergeableString)initWithStorage:(id)a3 uuid:(id)a4 createInitialNodes:(BOOL)a5;
- (__n128)deleteSubstrings:(uint64_t)a3 withCharacterRanges:(char)a4;
- (id).cxx_construct;
- (id)characterRangesForIDRange:(TopoIDRange *)a3;
- (id)characterRangesForMergeableRange:(id)a3;
- (id)characterRangesForSelection:(id)a3;
- (id)characterRangesForSelection:(id)a3 selectedSubstringsBlock:(id)a4;
- (id)copyRenamedIfAvailable:(BOOL)a3;
- (id)description;
- (id)dotDescription:(unint64_t)a3;
- (id)fullyRenamed:(id)a3;
- (id)mergeableIndexForCharacterIndex:(int64_t)a3 affinity:(unint64_t)a4;
- (id)renamed:(id)a3;
- (id)renamedIfAvailable;
- (id)replicaUUIDForCharacterAtIndex:(unint64_t)a3;
- (id)selectionForCharacterRanges:(id)a3;
- (id)selectionForCharacterRanges:(id)a3 selectionAffinity:(unint64_t)a4;
- (id)temporaryConcurrentNames;
- (id)temporaryNamesExcludingSelf:(BOOL)a3;
- (id)undoCommandToChangeFrom:(id)a3 unedited:(id)a4;
- (id)undoCommandToChangeTo:(id)a3 unedited:(id)a4;
- (unint64_t)_characterIndexForIndex:(id)a3;
- (unint64_t)characterIndexForIndex:(id)a3;
- (unint64_t)length;
- (unint64_t)mergeWithString:(id)a3 optimized:(BOOL)a4 suggestedContext:(id)a5;
- (void)_apply:(id)a3 alwaysApply:(BOOL)a4;
- (void)_updateCache;
- (void)addNewAddedByFor:(void *)a3;
- (void)addedRefsInRangesTo:(id)a3 newRange:(id)a4;
- (void)applyRenamesAndRetainOrRelease:(id)a3 context:(id)a4;
- (void)applyTimestampRenames:(id)a3;
- (void)coalesce;
- (void)compareTo:(id)a3 merge:(id)a4 add:(id)a5;
- (void)dealloc;
- (void)deleteAllSubstrings;
- (void)deleteSubstrings:(void *)a3 withCharacterRanges:(void *)a4;
- (void)deltaTo:(id)a3 edited:(id)a4 unedited:(id)a5;
- (void)endEditing;
- (void)enumerateIndexes:(id)a3;
- (void)enumerateSubstrings:(id)a3;
- (void)finalizeTimestamps:(id)a3;
- (void)getCharacterRanges:(void *)a3 forSubstrings:(void *)a4;
- (void)getSubstringBeforeTopoID:(TopoID *)a3;
- (void)getSubstrings:(void *)a3 forCharacterRange:(_NSRange)a4;
- (void)getSubstrings:(void *)a3 forTopoIDRange:(TopoIDRange *)a4;
- (void)getSubstrings:(void *)a3 inOrderedSubstrings:(void *)a4 forCharacterRange:(_NSRange)a5;
- (void)insertAtIndex:(int64_t)a3 length:(int64_t)a4 getStorage:(id)a5;
- (void)insertStorageLength:(int64_t)a3 after:(void *)a4 before:(void *)a5 getStorage:(id)a6;
- (void)orderedSubstrings;
- (void)removeAll;
- (void)removeObjectsInRange:(_NSRange)a3;
- (void)replaceStorageInRange:(_NSRange)a3 withStorage:(id)a4;
- (void)sortSplitNodes;
- (void)stealReplicaFrom:(id)a3;
- (void)undeleteSubstrings:(void *)a3;
- (void)updateAttributedStringAfterMerge;
- (void)updateSubstringIndexes;
- (void)useRenameIfAvailable;
@end

@implementation CRTTMergeableString

- (id).cxx_construct
{
  self->_orderedSubstrings.__begin_ = 0;
  self->_orderedSubstrings.__end_ = 0;
  self->_orderedSubstrings.__cap_ = 0;
  self->_replica.index = 0;
  uuid_clear(self->_replica.uuid);
  return self;
}

- (void)dealloc
{
  v3 = [(CRTTMergeableString *)self temporaryNamesExcludingSelf:0];
  [_TtC9Coherence19CRGlobalContextObjC releaseObjCSequence:v3];

  [(CRTTMergeableString *)self deleteAllSubstrings];
  v4.receiver = self;
  v4.super_class = _TtC9Coherence19CRTTMergeableString;
  [(CRTTMergeableString *)&v4 dealloc];
}

- (void)deleteAllSubstrings
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x5812000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = &unk_1AE2A3E8A;
  memset(v14, 0, sizeof(v14));
  v15 = 1065353216;
  startNode = self->_startNode;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__CRTTMergeableString_deleteAllSubstrings__block_invoke;
  v7[3] = &unk_1E7A12370;
  v7[4] = &v8;
  traverseUnordered(startNode, v7);
  for (i = v9[8]; i; i = *i)
  {
    v4 = i[2];
    if (v4)
    {
      v5 = v4[7];
      if (v5)
      {
        v4[8] = v5;
        operator delete(v5);
      }

      v6 = v4[4];
      if (v6)
      {
        v4[5] = v6;
        operator delete(v6);
      }

      MEMORY[0x1B26FCDB0](v4, 0x10A0C409FE6E197);
    }
  }

  _Block_object_dispose(&v8, 8);
  std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::~__hash_table(v14);
}

- (void)orderedSubstrings
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_cacheInvalid)
  {
    [(CRTTMergeableString *)v2 _updateCache];
  }

  objc_sync_exit(v2);

  return &v2->_orderedSubstrings;
}

- (void)_updateCache
{
  p_orderedSubstrings = &self->_orderedSubstrings;
  self->_orderedSubstrings.__end_ = self->_orderedSubstrings.__begin_;
  self->_cacheInvalid = 0;
  startNode = self->_startNode;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__CRTTMergeableString__updateCache__block_invoke;
  v5[3] = &unk_1E7A12410;
  v5[4] = self;
  Coherence_namespace::traverseIterative(startNode, v5);
  if ((self->_orderedSubstrings.__end_ - self->_orderedSubstrings.__begin_) >> 2 < (self->_orderedSubstrings.__cap_ - self->_orderedSubstrings.__begin_))
  {
    std::vector<Coherence_namespace::TopoSubstring *>::shrink_to_fit(&p_orderedSubstrings->__begin_);
  }
}

- (void)useRenameIfAvailable
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_renamedString)
  {
    [(CRTTMergeableString *)obj deleteAllSubstrings];
    renamedString = obj->_renamedString;
    obj->_startNode = renamedString->_startNode;
    obj->_endNode = renamedString->_endNode;
    objc_storeStrong(&obj->_version, renamedString->_version);
    objc_storeStrong(&obj->_addedByVersion, obj->_renamedString->_addedByVersion);
    obj->_renameGeneration = [(CRTTMergeableString *)obj->_renamedString renameGeneration];
    obj->_renamedString->_startNode = 0;
    obj->_renamedString->_orderedSubstrings.__end_ = obj->_renamedString->_orderedSubstrings.__begin_;
    v3 = obj->_renamedString;
    obj->_renamedString = 0;

    [(CRTTMergeableString *)obj invalidateCache];
  }

  objc_sync_exit(obj);
}

- (void)coalesce
{
  if (!self->_editCount)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x5812000000;
    v11 = __Block_byref_object_copy_;
    v12 = __Block_byref_object_dispose_;
    v13 = &unk_1AE2A3E8A;
    memset(v14, 0, sizeof(v14));
    v15 = 1065353216;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __31__CRTTMergeableString_coalesce__block_invoke;
    v7[3] = &unk_1E7A12438;
    v7[4] = self;
    v7[5] = &v8;
    [(CRTTMergeableString *)self traverseUnordered:v7];
    if (v9[9])
    {
      for (i = v9[8]; i; i = *i)
      {
        v4 = i[2];
        if (v4)
        {
          v5 = v4[7];
          if (v5)
          {
            v4[8] = v5;
            operator delete(v5);
          }

          v6 = v4[4];
          if (v6)
          {
            v4[5] = v6;
            operator delete(v6);
          }

          MEMORY[0x1B26FCDB0](v4, 0x10A0C409FE6E197);
        }
      }

      [(CRTTMergeableString *)self invalidateCache];
    }

    _Block_object_dispose(&v8, 8);
    std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::~__hash_table(v14);
  }
}

uint64_t __31__CRTTMergeableString_coalesce__block_invoke(uint64_t result, char **this)
{
  if (*(*(result + 32) + 120) != this)
  {
    v3 = this[7];
    v4 = this + 7;
    if (this[8] - v3 == 8)
    {
      v5 = result;
      do
      {
        v6 = *v3;
        v8 = v6;
        if (v6[2].length != 1)
        {
          break;
        }

        result = Coherence_namespace::TopoSubstring::isSequentialWith(this, v6);
        if (!result)
        {
          break;
        }

        v7 = v8;
        if (v8 != this)
        {
          std::vector<Coherence_namespace::TopoSubstring *>::__assign_with_size[abi:ne200100]<Coherence_namespace::TopoSubstring **,Coherence_namespace::TopoSubstring **>(v4, v8[7], v8[8], (v8[8] - v8[7]) >> 3);
          v7 = v8;
        }

        *(this + 6) += *(v7 + 6);
        result = std::__hash_table<Coherence_namespace::TopoSubstring *,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::allocator<Coherence_namespace::TopoSubstring *>>::__emplace_unique_key_args<Coherence_namespace::TopoSubstring *,Coherence_namespace::TopoSubstring * const&>((*(*(v5 + 40) + 8) + 48), &v8);
        v3 = this[7];
      }

      while (this[8] - v3 == 8);
    }
  }

  return result;
}

- (void)updateSubstringIndexes
{
  v2 = [(CRTTMergeableString *)self orderedSubstrings];
  v3 = *v2;
  v4 = v2[1];
  if (*v2 != v4)
  {
    v5 = 0;
    do
    {
      v6 = *v3;
      *(v6 + 84) = v5;
      if (*(v6 + 40) != *(v6 + 32))
      {
        v5 += *(v6 + 24);
      }

      ++v3;
    }

    while (v3 != v4);
  }
}

- (unint64_t)length
{
  v2 = [(CRTTMergeableString *)self attributedString];
  v3 = [v2 length];

  return v3;
}

- (_TtC9Coherence19CRTTMergeableString)initWithDecoder:(id)a3 error:(id *)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v32 = a3;
  v6 = [MEMORY[0x1E696AFB0] UUID];
  v7 = [(CRTTMergeableString *)self initWithStorage:0 uuid:v6 createInitialNodes:0];

  if (!v7)
  {
    goto LABEL_29;
  }

  v8 = [v32 storageWithError:a4];
  [(CRTTMergeableString *)v7 setAttributedString:v8];

  v9 = [(CRTTMergeableString *)v7 attributedString];

  if (v9)
  {
    v10 = +[_TtC9Coherence19CRGlobalContextObjC objCRenames];
    -[CRTTMergeableString setRenameGeneration:](v7, "setRenameGeneration:", [v10 generation]);

    [(CRTTMergeableString *)v7 invalidateCache];
    __p = 0;
    v40 = 0;
    v31 = [v32 substringCount];
    v41 = 0;
    std::vector<Coherence_namespace::TopoSubstring *>::reserve(&__p, v31);
    if (v31)
    {
      operator new();
    }

    v11 = [v32 versionWithError:a4];
    [(CRTTMergeableString *)v7 setVersion:v11];

    v12 = [v32 addedByVersionWithError:a4];
    [(CRTTMergeableString *)v7 setAddedByVersion:v12];

    v13 = [(CRTTMergeableString *)v7 version];
    if (!v13 || ([(CRTTMergeableString *)v7 addedByVersion], v14 = objc_claimAutoreleasedReturnValue(), v15 = v14 == 0, v14, v13, v15))
    {
      v26 = 1;
      v25 = 1;
    }

    else
    {
      v16 = [(CRTTMergeableString *)v7 version];
      v17 = [v16 sortedUUIDs];

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v18 = v17;
      v19 = [v18 countByEnumeratingWithState:&v35 objects:v42 count:16];
      if (v19)
      {
        v20 = *v36;
        while (2)
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v36 != v20)
            {
              objc_enumerationMutation(v18);
            }

            v22 = *(*(&v35 + 1) + 8 * i);
            v23 = [MEMORY[0x1E696AFB0] Coherence_zero];
            LOBYTE(v22) = [v22 isEqual:v23];

            if (v22)
            {

              v33 = 0;
              v34 = 0;
              goto LABEL_20;
            }
          }

          v19 = [v18 countByEnumeratingWithState:&v35 objects:v42 count:16];
          if (v19)
          {
            continue;
          }

          break;
        }
      }

      v33 = 0;
      v34 = 0;
      v24 = [(CRTTMergeableString *)v7 attributedString];
      v25 = Coherence_namespace::decodeSubstrings(0, [v24 length], v32, &__p, &v34, &v33, a4);

      if (!v34 || !v33)
      {
LABEL_20:
        NSLog(&cfstr_CorruptMergeab_2.isa);
        v25 = 0;
      }

      [(CRTTMergeableString *)v7 setStartNode:?];
      [(CRTTMergeableString *)v7 setEndNode:v33];
      if ((v25 & 1) == 0)
      {
        [(CRTTMergeableString *)v7 setStartNode:0];
      }

      v26 = 0;
    }

    if (__p)
    {
      v40 = __p;
      operator delete(__p);
    }

    if ((v26 & 1) == 0)
    {
      if (!v25)
      {
        v28 = 0;
        goto LABEL_30;
      }

LABEL_29:
      v28 = v7;
LABEL_30:
      v27 = v28;
      goto LABEL_31;
    }
  }

  v27 = 0;
LABEL_31:

  v29 = *MEMORY[0x1E69E9840];
  return v27;
}

- (BOOL)saveToEncoder:(id)a3 error:(id *)a4
{
  v6 = a3;
  LOBYTE(a4) = [(CRTTMergeableString *)self saveSubstrings:[(CRTTMergeableString *)self orderedSubstrings] encoder:v6 error:a4];

  return a4;
}

- (BOOL)saveSubstrings:(void *)a3 encoder:(id)a4 error:(id *)a5
{
  v23 = a5;
  v7 = a4;
  memset(v28, 0, sizeof(v28));
  v29 = 1065353216;
  v9 = *a3;
  v8 = *(a3 + 1);
  v25 = self;
  if (*a3 != v8)
  {
    v10 = 0;
    do
    {
      v27 = *v9;
      v30 = &v27;
      *(std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::__emplace_unique_key_args<Coherence_namespace::TopoSubstring const*,std::piecewise_construct_t const&,std::tuple<Coherence_namespace::TopoSubstring const* const&>,std::tuple<>>(v28, &v27) + 6) = v10++;
      ++v9;
    }

    while (v9 != v8);
    v9 = *a3;
    v8 = *(a3 + 1);
  }

  if (v9 != v8)
  {
    v26 = v8;
    do
    {
      v11 = *v9;
      v12 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:*v9];
      [v7 setCharWithId:v12 clock:*(v11 + 20)];
      [v7 setWithLength:*(v11 + 24)];
      v13 = *(v11 + 32);
      v14 = *(v11 + 40);
      while (v13 != v14)
      {
        v15 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v13];
        [v7 addAddedById:v15 clock:*(v13 + 20)];

        v13 += 24;
      }

      v17 = *(v11 + 56);
      v16 = *(v11 + 64);
      while (v17 != v16)
      {
        v27 = *v17;
        v30 = &v27;
        [v7 addChildWithId:{*(std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*, unsigned int>, std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*, std::__hash_value_type<Coherence_namespace::TopoSubstring const*, unsigned int>, std::hash<Coherence_namespace::TopoSubstring const*>, std::equal_to<Coherence_namespace::TopoSubstring const*>, true>, std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*, std::__hash_value_type<Coherence_namespace::TopoSubstring const*, unsigned int>, std::equal_to<Coherence_namespace::TopoSubstring const*>, std::hash<Coherence_namespace::TopoSubstring const*>, true>, std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*, unsigned int>>>::__emplace_unique_key_args<Coherence_namespace::TopoSubstring const*, std::piecewise_construct_t const&, std::tuple<Coherence_namespace::TopoSubstring const* const&>, std::tuple<>>(v28, &v27) + 6), v23}];
        ++v17;
      }

      [v7 finishSubstring];

      ++v9;
    }

    while (v9 != v26);
  }

  v18 = [(CRTTMergeableString *)v25 attributedString];
  [v7 setStorage:v18 error:v24];

  if (v24 && *v24)
  {
    v19 = 0;
  }

  else
  {
    v20 = [(CRTTMergeableString *)v25 version];
    [v7 setWithVersion:v20];

    v21 = [(CRTTMergeableString *)v25 addedByVersion];
    [v7 setWithAddedByVersion:v21];

    v19 = 1;
  }

  std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::~__hash_table(v28);

  return v19;
}

- (_TtC9Coherence19CRTTMergeableString)initWithStorage:(id)a3 uuid:(id)a4 createInitialNodes:(BOOL)a5
{
  v5 = a5;
  v27 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  {
    -[CRTTMergeableString initWithStorage:uuid:createInitialNodes:]::timestampMixUUID = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"1B034831-9253-4675-A9D0-969AF8C447A3"];
  }

  v24.receiver = self;
  v24.super_class = _TtC9Coherence19CRTTMergeableString;
  v11 = [(CRTTMergeableString *)&v24 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_uuid, a4);
    v13 = [_TtC9Coherence19CRGlobalContextObjC newObjCReplicaFor:v12->_uuid];
    v14 = [v13 uuid];
    Coherence_namespace::TopoReplica::TopoReplica(&__src, v14, [v13 index]);
    *v12->_replica.uuid = __src;
    v12->_replica.index = v26;

    v15 = [(NSUUID *)v12->_uuid Coherence_xorWith:[CRTTMergeableString initWithStorage:uuid:createInitialNodes:]::timestampMixUUID];
    v16 = [_TtC9Coherence19CRGlobalContextObjC newObjCReplicaFor:v15];
    addedByReplica = v12->_addedByReplica;
    v12->_addedByReplica = v16;

    if (v5)
    {
      operator new();
    }

    v18 = objc_alloc_init(_TtC9Coherence11ObjCVersion);
    version = v12->_version;
    v12->_version = v18;

    v20 = objc_alloc_init(_TtC9Coherence11ObjCVersion);
    addedByVersion = v12->_addedByVersion;
    v12->_addedByVersion = v20;

    v12->_cacheInvalid = 1;
    objc_storeStrong(&v12->_attributedString, a3);
  }

  v22 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)stealReplicaFrom:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&replicaLock);
  index = self->_replica.index;
  v6 = *self->_replica.uuid;
  v7 = *(v4 + 40);
  *self->_replica.uuid = *(v4 + 9);
  self->_replica.index = v7;
  *(v4 + 9) = v6;
  *(v4 + 40) = index;
  addedByReplica = self->_addedByReplica;
  self->_addedByReplica = 0;
  v9 = *(v4 + 13);
  *(v4 + 13) = 0;
  v10 = self->_addedByReplica;
  self->_addedByReplica = v9;

  v11 = *(v4 + 13);
  *(v4 + 13) = addedByReplica;

  localCounter = self->_localCounter;
  self->_localCounter = *(v4 + 12);
  *(v4 + 12) = localCounter;
  addedByLocalCounter = self->_addedByLocalCounter;
  self->_addedByLocalCounter = *(v4 + 14);
  *(v4 + 14) = addedByLocalCounter;

  v14 = *MEMORY[0x1E69E9840];

  os_unfair_lock_unlock(&replicaLock);
}

- (id)copyRenamedIfAvailable:(BOOL)a3
{
  v5 = [(CRTTMergeableString *)self attributedString];
  if ([v5 length])
  {
    v6 = 0;
  }

  else
  {
    v6 = [(ObjCVersion *)self->_version isEmpty];
  }

  if (a3)
  {
    v7 = [(CRTTMergeableString *)self renamedIfAvailable];
  }

  else
  {
    v7 = self;
  }

  v19 = v7;
  v8 = [_TtC9Coherence19CRTTMergeableString alloc];
  v9 = [(CRTTMergeableString *)v19 attributedString];
  v10 = [v9 mutableCopy];
  v11 = [(CRTTMergeableString *)v19 uuid];
  v12 = [(CRTTMergeableString *)v8 initWithStorage:v10 uuid:v11 createInitialNodes:v6];

  [(CRTTMergeableString *)v12 setRenameGeneration:[(CRTTMergeableString *)v19 renameGeneration]];
  if (!v6)
  {
    [(CRTTMergeableString *)v12 stealReplicaFrom:self];
    v13 = [(CRTTMergeableString *)v19 version];
    v14 = [v13 copy];
    [(CRTTMergeableString *)v12 setVersion:v14];

    v15 = [(CRTTMergeableString *)v19 addedByVersion];
    v16 = [v15 copy];
    [(CRTTMergeableString *)v12 setAddedByVersion:v16];

    v17 = [(CRTTMergeableString *)v12 orderedSubstrings];
    v17[1] = *v17;
    operator new();
  }

  return v12;
}

- (void)replaceStorageInRange:(_NSRange)a3 withStorage:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  [(CRTTMergeableString *)self useRenameIfAvailable];
  [(CRTTMergeableString *)self beginEditing];
  [(CRTTMergeableString *)self removeObjectsInRange:location, length];
  v8 = [v7 length];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__CRTTMergeableString_replaceStorageInRange_withStorage___block_invoke;
  v10[3] = &unk_1E7A12398;
  v9 = v7;
  v11 = v9;
  [(CRTTMergeableString *)self insertAtIndex:location length:v8 getStorage:v10];
  [(CRTTMergeableString *)self endEditing];
}

- (void)removeObjectsInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v14 = *MEMORY[0x1E69E9840];
  [(CRTTMergeableString *)self useRenameIfAvailable];
  if (length)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13[0] = location;
    v13[1] = length;
    v8 = 0;
    v9 = 0;
    __p = 0;
    std::vector<_NSRange>::__init_with_size[abi:ne200100]<_NSRange const*,_NSRange const*>(&__p, v13, &v14, 1uLL);
    [(CRTTMergeableString *)self getSubstrings:&v10 forCharacterRange:location, length];
    [(CRTTMergeableString *)self deleteSubstrings:&v10 withCharacterRanges:&__p];
    if (__p)
    {
      v8 = __p;
      operator delete(__p);
    }

    if (v10)
    {
      v11 = v10;
      operator delete(v10);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)removeAll
{
  v8 = *MEMORY[0x1E69E9840];
  if ([(CRTTMergeableString *)self length])
  {
    [(CRTTMergeableString *)self useRenameIfAvailable];
    v7[0] = 0;
    v7[1] = [(CRTTMergeableString *)self length];
    v5 = 0;
    v6 = 0;
    __p = 0;
    std::vector<_NSRange>::__init_with_size[abi:ne200100]<_NSRange const*,_NSRange const*>(&__p, v7, &v8, 1uLL);
    [(CRTTMergeableString *)self deleteSubstrings:[(CRTTMergeableString *)self orderedSubstrings] withCharacterRanges:&__p];
    if (__p)
    {
      v5 = __p;
      operator delete(__p);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)insertAtIndex:(int64_t)a3 length:(int64_t)a4 getStorage:(id)a5
{
  v20 = a5;
  [(CRTTMergeableString *)self useRenameIfAvailable];
  if (a4 >= 1)
  {
    if (a3)
    {
      if ([(CRTTMergeableString *)self length]== a3)
      {
        v9 = [(CRTTMergeableString *)self orderedSubstrings];
        v10 = v9[1] - *v9 - 16;
        do
        {
          v11 = v10;
          startNode = *(*[(CRTTMergeableString *)self orderedSubstrings]+ v10);
          if (*(startNode + 5) != *(startNode + 4))
          {
            break;
          }

          v10 = v11 - 8;
        }

        while (startNode != self->_startNode);
        v13 = *[(CRTTMergeableString *)self orderedSubstrings]+ v11;
      }

      else
      {
        v14 = Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(a3, v8);
        for (i = 0; ; i += 8)
        {
          startNode = *(*[(CRTTMergeableString *)self orderedSubstrings]+ i);
          if (*(startNode + 5) != *(startNode + 4))
          {
            v16 = *(startNode + 6);
            v17 = v14 >= v16;
            v18 = v14 - v16;
            if (!v17)
            {
              v19 = [(CRTTMergeableString *)self splitTopoSubstring:startNode atIndex:v14];
              [(CRTTMergeableString *)self invalidateCache];
              goto LABEL_17;
            }

            v14 = v18;
            if (!v18)
            {
              break;
            }
          }
        }

        v13 = *[(CRTTMergeableString *)self orderedSubstrings]+ i;
      }
    }

    else
    {
      startNode = self->_startNode;
      v13 = *[(CRTTMergeableString *)self orderedSubstrings];
    }

    v19 = *(v13 + 8);
LABEL_17:
    [(CRTTMergeableString *)self insertStorageLength:a4 after:startNode before:v19 getStorage:v20];
  }
}

- (void)endEditing
{
  editCount = self->_editCount;
  if (editCount)
  {
    v3 = editCount - 1;
    self->_editCount = v3;
    if (!v3)
    {
      [(CRTTMergeableString *)self coalesce];
    }
  }
}

- (id)replicaUUIDForCharacterAtIndex:(unint64_t)a3
{
  v4 = [(CRTTMergeableString *)self orderedSubstrings];
  v5 = *v4;
  v6 = v4[1];
  if (*v4 != v6)
  {
    v7 = 0;
    do
    {
      v8 = *v5;
      if (*(*v5 + 40) == *(*v5 + 32))
      {
        v10 = v7;
      }

      else
      {
        v9 = *(v8 + 24);
        v10 = v7 + v9;
        v11 = a3 >= v7;
        v12 = a3 - v7;
        if (v11 && v12 < v9)
        {
          v13 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v8];
          goto LABEL_11;
        }
      }

      ++v5;
      v7 = v10;
    }

    while (v5 != v6);
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (id)selectionForCharacterRanges:(id)a3
{
  v3 = [(CRTTMergeableString *)self selectionForCharacterRanges:a3 selectionAffinity:0];

  return v3;
}

- (id)selectionForCharacterRanges:(id)a3 selectionAffinity:(unint64_t)a4
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v46 = objc_alloc_init(_TtC9Coherence28CRTTMergeableStringSelection);
  [(CRTTMergeableStringSelection *)v46 setSelectionAffinity:a4];
  if (![v6 count])
  {
    goto LABEL_44;
  }

  v7 = [(CRTTMergeableString *)self orderedSubstrings];
  v45 = *v7;
  v43 = v7[1];
  if (*v7 == v43)
  {
    goto LABEL_44;
  }

  v8 = 0;
  v9 = 0;
  v10 = 1;
  v44 = a4;
  do
  {
    v11 = *v45;
    if (*(*v45 + 5) == *(*v45 + 4))
    {
      goto LABEL_43;
    }

    while (1)
    {
      v12 = [v6 objectAtIndexedSubscript:{v9, v43}];
      v13 = [v12 rangeValue];
      v15 = v14;

      if (v10)
      {
        break;
      }

      v20 = v13 + v15;
      if (v8 + *(v11 + 6) <= v13 + v15 - 1)
      {
        v10 = 0;
        goto LABEL_41;
      }

      v50 = *v11;
      v21 = *(v11 + 5);
      LODWORD(v51) = *(v11 + 4);
      v22 = *([(CRTTMergeableStringSelection *)v46 selectionRanges]+ 8);
      *(v22 - 24) = v50;
      *(v22 - 8) = v51;
      *(v22 - 4) = v21 + v20 + ~v8;
      v10 = 1;
      v23 = 1;
LABEL_37:
      v9 += v23;
      if (v9 >= [v6 count])
      {
        goto LABEL_41;
      }
    }

    v10 = v15 == 0;
    if (v15 | a4)
    {
      v16 = 1;
    }

    else
    {
      v16 = v13 == 0;
    }

    v17 = !v16;
    if (a4 || v8 != v13)
    {
      isStartNode = 0;
      isEndNode = 0;
      if (a4 == 1 && v8 == v13)
      {
        isEndNode = Coherence_namespace::TopoSubstring::isEndNode(v11);
        isStartNode = 0;
      }
    }

    else
    {
      isStartNode = Coherence_namespace::TopoSubstring::isStartNode(v11);
      isEndNode = 0;
    }

    v24 = v13 - v17;
    if (v8 + *(v11 + 6) > v24 || isEndNode || isStartNode)
    {
      v52 = *v11;
      v25 = *(v11 + 5);
      v53 = *(v11 + 4);
      v26 = [MEMORY[0x1E696AFB0] Coherence_zero];
      Coherence_namespace::TopoReplica::TopoReplica(&v47, v26, 0);
      v49 = 0;
      v50 = v47;
      v51 = v48;

      v27 = [(CRTTMergeableStringSelection *)v46 selectionRanges];
      v28 = v27;
      v29 = v25 + v24 - v8;
      v30 = *(v27 + 8);
      v31 = *(v27 + 16);
      if (v30 >= v31)
      {
        v33 = 0xAAAAAAAAAAAAAAABLL * ((v30 - *v27) >> 4);
        v34 = v33 + 1;
        if (v33 + 1 > 0x555555555555555)
        {
          std::vector<Coherence_namespace::TopoSubstring *>::__throw_length_error[abi:ne200100]();
        }

        v35 = 0xAAAAAAAAAAAAAAABLL * ((v31 - *v27) >> 4);
        if (2 * v35 > v34)
        {
          v34 = 2 * v35;
        }

        if (v35 >= 0x2AAAAAAAAAAAAAALL)
        {
          v36 = 0x555555555555555;
        }

        else
        {
          v36 = v34;
        }

        if (v36)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<Coherence_namespace::TopoID,Coherence_namespace::TopoID>>>(v27, v36);
        }

        v37 = 48 * v33;
        *v37 = v52;
        *(v37 + 16) = v53;
        *(v37 + 20) = v29;
        *(v37 + 24) = v50;
        *(v37 + 40) = v51;
        v32 = 48 * v33 + 48;
        v38 = *(v27 + 8) - *v27;
        v39 = v37 - v38;
        memcpy((v37 - v38), *v27, v38);
        v40 = *v28;
        *v28 = v39;
        *(v28 + 8) = v32;
        *(v28 + 16) = 0;
        if (v40)
        {
          operator delete(v40);
        }

        a4 = v44;
      }

      else
      {
        *v30 = v52;
        *(v30 + 16) = v53;
        *(v30 + 20) = v29;
        *(v30 + 24) = v50;
        *(v30 + 40) = v51;
        v32 = v30 + 48;
      }

      v23 = v15 == 0;
      *(v28 + 8) = v32;
      goto LABEL_37;
    }

    v10 = 1;
LABEL_41:
    if (v9 >= [v6 count])
    {
      break;
    }

    v8 += *(v11 + 6);
LABEL_43:
    ++v45;
  }

  while (v45 != v43);
LABEL_44:

  v41 = *MEMORY[0x1E69E9840];

  return v46;
}

- (id)characterRangesForSelection:(id)a3
{
  v3 = [(CRTTMergeableString *)self characterRangesForSelection:a3 selectedSubstringsBlock:0];

  return v3;
}

- (id)characterRangesForSelection:(id)a3 selectedSubstringsBlock:(id)a4
{
  v34 = self;
  v40[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 selectionRanges];
  if (v8[1] == *v8)
  {
    v31 = [MEMORY[0x1E696B098] valueWithRange:{0, 0}];
    v40[0] = v31;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];

    goto LABEL_38;
  }

  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = [(CRTTMergeableString *)v34 orderedSubstrings];
  v11 = *v10;
  v35 = *(v10 + 8);
  if (*v10 == v35)
  {
    goto LABEL_38;
  }

  v12 = 0;
  v13 = 0;
  LOBYTE(v14) = 1;
  do
  {
    v36 = v11;
    v15 = *v11;
    do
    {
      v16 = (*[v6 selectionRanges] + 48 * v13);
      v17 = *v16;
      v18 = v16[2];
      v38 = v16[1];
      v39 = v18;
      *uu2 = v17;
      if ((v14 & 1) == 0)
      {
        if (!Coherence_namespace::TopoIDRange::contains(v15, (&v38 + 8)))
        {
          break;
        }

        v23 = v12;
        if (*(v15 + 40) != *(v15 + 32))
        {
          v23 = v12 + (HIDWORD(v39) - *(v15 + 20) + 1);
        }

        v24 = [MEMORY[0x1E696B098] valueWithRange:{v4, v23 - v4}];
        [v9 addObject:v24];

        ++v13;
        if (v7)
        {
          v7[2](v7, v15, 0, v23 - v12);
        }

        goto LABEL_24;
      }

      if (!Coherence_namespace::TopoIDRange::contains(v15, uu2) && (*(v15 + 16) != v38 || uuid_compare(v15, uu2)))
      {
        break;
      }

      v4 = v12;
      if (*(v15 + 40) != *(v15 + 32))
      {
        v4 = v12 + (DWORD1(v38) - *(v15 + 20));
      }

      v19 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:&v38 + 8];
      v20 = [MEMORY[0x1E696AFB0] Coherence_zero];
      v21 = [v19 isEqual:v20];
      if (HIDWORD(v39))
      {
        v14 = 0;
      }

      else
      {
        v14 = v21;
      }

      if (!v14)
      {
        goto LABEL_25;
      }

      if (*(v15 + 40) != *(v15 + 32) && ![v6 selectionAffinity])
      {
        v4 += !Coherence_namespace::TopoSubstring::isStartNode(v15);
      }

      v22 = [MEMORY[0x1E696B098] valueWithRange:{v4, 0}];
      [v9 addObject:v22];

      ++v13;
LABEL_24:
      LOBYTE(v14) = 1;
LABEL_25:
      v25 = [v6 selectionRanges];
    }

    while (v13 < 0xAAAAAAAAAAAAAAABLL * ((v25[1] - *v25) >> 4));
    v26 = [v6 selectionRanges];
    if (v13 >= 0xAAAAAAAAAAAAAAABLL * ((v26[1] - *v26) >> 4))
    {
      break;
    }

    if (!((v7 == 0) | v14 & 1))
    {
      if (*(v15 + 40) == *(v15 + 32))
      {
        v27 = 0;
      }

      else
      {
        v27 = *(v15 + 24);
      }

      v28 = *(v15 + 84);
      v43.length = [(CRTTMergeableString *)v34 length]- v4;
      v42.location = v28;
      v42.length = v27;
      v43.location = v4;
      v29 = NSIntersectionRange(v42, v43);
      v7[2](v7, v15, v29.location, v29.length);
    }

    v30 = *(v15 + 40) == *(v15 + 32) ? 0 : *(v15 + 24);
    v12 += v30;
    v11 = v36 + 1;
  }

  while (v36 + 1 != v35);
LABEL_38:

  v32 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)characterRangesForMergeableRange:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 range];
  }

  else
  {
    memset(v33, 0, 28);
  }

  v6 = [v5 renameGeneration];
  if (v6 == [(CRTTMergeableString *)self renameGeneration])
  {
    *v28 = v33[0];
    *&v28[12] = *(v33 + 12);
    v7 = [(CRTTMergeableString *)self characterRangesForIDRange:v28];
    goto LABEL_12;
  }

  v8 = +[_TtC9Coherence19CRGlobalContextObjC objCRenames];
  v9 = [(CRTTMergeableString *)self renamed:v8];
  if (!LODWORD(v33[1]))
  {
    goto LABEL_10;
  }

  v10 = Coherence_namespace::TopoReplica::objc(v33);
  v11 = [v8 renamedWithRange:DWORD1(v33[1]) replica:{DWORD2(v33[1]), v10}];
  if (![v11 rangeCount])
  {

LABEL_10:
    *v28 = v33[0];
    *&v28[12] = *(v33 + 12);
    v7 = [v9 characterRangesForIDRange:v28];
    goto LABEL_11;
  }

  v23 = v10;
  v22 = [MEMORY[0x1E696AD50] indexSetWithIndexesInRange:{DWORD1(v33[1]), DWORD2(v33[1])}];
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = DWORD1(v33[1]);
  v13 = DWORD2(v33[1]);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __56__CRTTMergeableString_characterRangesForMergeableRange___block_invoke;
  v24[3] = &unk_1E7A123C0;
  v15 = v22;
  v25 = v15;
  v16 = v12;
  v26 = v16;
  v17 = v9;
  v27 = v17;
  [v11 enumerateRangesIn:v14 :{v13, v24}];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __56__CRTTMergeableString_characterRangesForMergeableRange___block_invoke_2;
  v29[3] = &unk_1E7A123E8;
  v32[0] = v33[0];
  *(v32 + 12) = *(v33 + 12);
  v18 = v16;
  v30 = v18;
  v31 = v17;
  [v15 enumerateRangesUsingBlock:v29];
  v19 = v31;
  v7 = v18;

LABEL_11:
LABEL_12:

  v20 = *MEMORY[0x1E69E9840];

  return v7;
}

uint64_t __56__CRTTMergeableString_characterRangesForMergeableRange___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v9 = a4;
  if ((a5 & 0x8000000000000000) == 0)
  {
    [*(a1 + 32) removeIndexesInRange:{a2, a3}];
    Coherence_namespace::TopoReplica::TopoReplica(&v19, v9, 0);
    v15 = v19;
    v11 = *(a1 + 40);
    v10 = *(a1 + 48);
    v16 = v20;
    v17 = a5;
    v18 = a3;
    v12 = [v10 characterRangesForIDRange:&v15];
    [v11 addObjectsFromArray:v12];
  }

  v13 = *MEMORY[0x1E69E9840];
  return 0;
}

void __56__CRTTMergeableString_characterRangesForMergeableRange___block_invoke_2(uint64_t a1, int a2, int a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 48);
  v3 = *(a1 + 64);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9 = v3;
  v10 = a2;
  v11 = a3;
  v6 = [v4 characterRangesForIDRange:&v8];
  [v5 addObjectsFromArray:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (id)characterRangesForIDRange:(TopoIDRange *)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [(CRTTMergeableString *)self orderedSubstrings];
  v7 = *v6;
  v8 = v6[1];
  if (*v6 != v8)
  {
    v9 = 0;
    while (1)
    {
      v10 = *v7;
      v11 = **v7;
      *&v20[12] = *(*v7 + 12);
      *v20 = v11;
      v22 = 0;
      v23 = 0;
      v21 = 0;
      std::vector<Coherence_namespace::TopoID>::__init_with_size[abi:ne200100]<Coherence_namespace::TopoID*,Coherence_namespace::TopoID*>(&v21, *(v10 + 4), *(v10 + 5), 0xAAAAAAAAAAAAAAABLL * ((*(v10 + 5) - *(v10 + 4)) >> 3));
      __p = 0;
      v25 = 0;
      v27 = 0;
      v26 = 0;
      v28 = *(v10 + 21);
      v12 = v21;
      if (v22 == v21)
      {
        v14 = 3;
        if (!v21)
        {
          goto LABEL_13;
        }
      }

      else
      {
        Coherence_namespace::TopoIDRange::intersection(v20, a3, v17);
        if (v19)
        {
          v13 = [MEMORY[0x1E696B098] valueWithRange:(v18 + v28 - *&v20[20])];
          [v5 addObject:v13];

          v9 += v19;
          v14 = 2 * (v9 >= a3->length);
        }

        else
        {
          v14 = 3;
        }

        if (__p)
        {
          v25 = __p;
          operator delete(__p);
        }

        v12 = v21;
        if (!v21)
        {
          goto LABEL_13;
        }
      }

      v22 = v12;
      operator delete(v12);
LABEL_13:
      if ((v14 == 3 || !v14) && ++v7 != v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)isEmptyCRDT
{
  v2 = [(CRTTMergeableString *)self version];
  v3 = [v2 isEmpty];

  return v3;
}

- (void)addNewAddedByFor:(void *)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = [(CRTTMergeableString *)self addedByVersion];
  [v5 insertWithRange:self->_addedByLocalCounter replica:{*(a3 + 6), self->_addedByReplica}];

  v6 = [(CRTTMergeableString *)self addedByReplica];
  Coherence_namespace::TopoReplica::TopoReplica(&v9, v6);
  addedByLocalCounter = self->_addedByLocalCounter;
  v11 = v9;
  v12 = v10;
  v13 = addedByLocalCounter;
  Coherence_namespace::TopoSubstring::addAddedBy(a3, &v11);

  self->_addedByLocalCounter += *(a3 + 6);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)deleteSubstrings:(void *)a3 withCharacterRanges:(void *)a4
{
  v7 = *a3;
  v8 = *(a3 + 1);
  while (v7 != v8)
  {
    v9 = *(*v7 + 32);
    if (*(*v7 + 40) != v9)
    {
      *(*v7 + 40) = v9;
    }

    v7 += 8;
  }

  v10 = *(a4 + 1);
  v11 = 126 - 2 * __clz((v10 - *a4) >> 4);
  if (v10 == *a4)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  *&v13 = std::__introsort<std::_ClassicAlgPolicy,[CRTTMergeableString deleteSubstrings:withCharacterRanges:]::$_1 &,_NSRange *,false>(*a4, v10, v12, 1, v4).n128_u64[0];
  v15 = *a4;
  v14 = *(a4 + 1);
  while (v15 != v14)
  {
    v16 = v15->n128_u64[0];
    v17 = v15->n128_u64[1];
    ++v15;
    [self->_attributedString Coherence_removeObjectsInRange:{v16, v17, v13}];
  }

  v18 = [(CRTTMergeableString *)self addedByVersion];
  [v18 insertWithRange:self->_addedByLocalCounter replica:{1, self->_addedByReplica}];

  ++self->_addedByLocalCounter;
  [(CRTTMergeableString *)self coalesce];

  [(CRTTMergeableString *)self updateSubstringIndexes];
}

- (void)insertStorageLength:(int64_t)a3 after:(void *)a4 before:(void *)a5 getStorage:(id)a6
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = a6;
  if (a3 >= 1)
  {
    operator new();
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)getSubstrings:(void *)a3 forCharacterRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v8 = [(CRTTMergeableString *)self orderedSubstrings];

  [(CRTTMergeableString *)self getSubstrings:a3 inOrderedSubstrings:v8 forCharacterRange:location, length];
}

- (void)getSubstrings:(void *)a3 inOrderedSubstrings:(void *)a4 forCharacterRange:(_NSRange)a5
{
  if (!a5.length)
  {
    return;
  }

  v8 = *a4;
  v7 = *(a4 + 1);
  if (*a4 == v7)
  {
    goto LABEL_18;
  }

  length = a5.length;
  location = a5.location;
  v12 = 0;
  v13 = a5.location + a5.length;
  while (1)
  {
    v14 = *v8;
    v20 = v14;
    if (*(v14 + 40) == *(v14 + 32))
    {
      v15 = v12;
LABEL_13:
      v7 = *(a4 + 1);
      goto LABEL_14;
    }

    v15 = v12 + *(v14 + 24);
    if (v15 > location)
    {
      break;
    }

LABEL_14:
    v8 += 8;
    v12 = v15;
    if (v8 == v7)
    {
      goto LABEL_18;
    }
  }

  if (v13 <= v12)
  {
    goto LABEL_18;
  }

  if (location > v12)
  {
    v19 = [(CRTTMergeableString *)self splitTopoSubstring:v14 atIndex:Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32((location - v12), a2)];
    v8 = std::vector<Coherence_namespace::TopoSubstring *>::insert(a4, v8 + 8, &v19);
    std::vector<Coherence_namespace::TopoSubstring *>::push_back[abi:ne200100](a3, &v19);
    if (v13 < v15)
    {
      v18 = [(CRTTMergeableString *)self splitTopoSubstring:v19 atIndex:Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(length, a2)];
      v16 = v8 + 8;
      v17 = &v18;
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  if (v15 <= v13)
  {
    std::vector<Coherence_namespace::TopoSubstring *>::push_back[abi:ne200100](a3, &v20);
    goto LABEL_13;
  }

  v19 = [(CRTTMergeableString *)self splitTopoSubstring:v14 atIndex:Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32((v13 - v12), a2)];
  std::vector<Coherence_namespace::TopoSubstring *>::push_back[abi:ne200100](a3, &v20);
  v16 = v8 + 8;
  v17 = &v19;
LABEL_17:
  std::vector<Coherence_namespace::TopoSubstring *>::insert(a4, v16, v17);
LABEL_18:
  [(CRTTMergeableString *)self invalidateCache];
}

- (void)getSubstringBeforeTopoID:(TopoID *)a3
{
  v17 = *MEMORY[0x1E69E9840];
  startNode = self->_startNode;
  v6 = [(CRTTMergeableString *)self orderedSubstrings];
  v7 = *v6;
  v8 = v6[1];
  while (1)
  {
    if (v7 == v8)
    {
      startNode = 0;
      goto LABEL_12;
    }

    v9 = *v7;
    v10 = **v7;
    *&uu2[12] = *(*v7 + 12);
    *uu2 = v10;
    if (a3->replica.index == *&uu2[16] && !uuid_compare(a3->replica.uuid, uu2))
    {
      if (*&uu2[20] == a3->clock)
      {
        goto LABEL_12;
      }

      if (Coherence_namespace::TopoID::operator>(a3, uu2))
      {
        v13 = *uu2;
        v14 = *&uu2[16];
        v15 = *&uu2[24] + *&uu2[20];
        if (Coherence_namespace::TopoID::operator<(a3, &v13))
        {
          break;
        }
      }
    }

    if (*(v9 + 5) != *(v9 + 4))
    {
      startNode = v9;
    }

    ++v7;
  }

  if (*(v9 + 5) != *(v9 + 4))
  {
    [(CRTTMergeableString *)self splitTopoSubstring:v9 atIndex:a3->clock - *&uu2[20]];
    [(CRTTMergeableString *)self invalidateCache];
    startNode = v9;
  }

LABEL_12:
  v11 = *MEMORY[0x1E69E9840];
  return startNode;
}

- (void)getSubstrings:(void *)a3 forTopoIDRange:(TopoIDRange *)a4
{
  v27 = *MEMORY[0x1E69E9840];
  if (!a4->length)
  {
    goto LABEL_19;
  }

  v7 = [(CRTTMergeableString *)self orderedSubstrings];
  v8 = *v7;
  v9 = v7[1];
  if (*v7 == v9)
  {
    goto LABEL_19;
  }

  v10 = 0;
  do
  {
    v19 = *v8;
    v11 = *v19;
    *&uu2[12] = *(v19 + 12);
    *uu2 = v11;
    if (a4->charID.replica.index == *&uu2[16] && !uuid_compare(a4->charID.replica.uuid, uu2))
    {
      *uu1 = *uu2;
      v24 = *&uu2[16];
      v25 = *&uu2[24] + *&uu2[20];
      if ((Coherence_namespace::TopoID::operator<=(uu1, a4->charID.replica.uuid) & 1) == 0)
      {
        *v20 = *a4->charID.replica.uuid;
        v12 = a4->length + a4->charID.clock;
        index = a4->charID.replica.index;
        v22 = v12;
        if ((Coherence_namespace::TopoID::operator>=(uu2, v20) & 1) == 0)
        {
          clock = a4->charID.clock;
          if (clock > *&uu2[20])
          {
            v18 = [(CRTTMergeableString *)self splitTopoSubstring:v19 atIndex:clock - *&uu2[20]];
            v14 = a4->length + a4->charID.clock;
            v24 = a4->charID.replica.index;
            v25 = v14;
            *uu1 = *a4->charID.replica.uuid;
            *v20 = *uu2;
            index = *&uu2[16];
            v22 = *&uu2[24] + *&uu2[20];
            if (Coherence_namespace::TopoID::operator<(uu1, v20))
            {
              [(CRTTMergeableString *)self splitTopoSubstring:v18 atIndex:a4->length];
            }

            v15 = &v18;
            goto LABEL_14;
          }

          *uu1 = *uu2;
          v24 = *&uu2[16];
          v25 = *&uu2[24] + *&uu2[20];
          *v20 = *a4->charID.replica.uuid;
          v16 = a4->length + clock;
          index = a4->charID.replica.index;
          v22 = v16;
          if (Coherence_namespace::TopoID::operator>(uu1, v20))
          {
            [(CRTTMergeableString *)self splitTopoSubstring:v19 atIndex:a4->length + a4->charID.clock - *&uu2[20]];
            v15 = &v19;
LABEL_14:
            std::vector<Coherence_namespace::TopoSubstring *>::push_back[abi:ne200100](a3, v15);
            v10 = 1;
            goto LABEL_16;
          }

          std::vector<Coherence_namespace::TopoSubstring *>::push_back[abi:ne200100](a3, &v19);
        }
      }
    }

LABEL_16:
    ++v8;
  }

  while (v8 != v9);
  if (v10)
  {
    [(CRTTMergeableString *)self invalidateCache];
  }

LABEL_19:
  v17 = *MEMORY[0x1E69E9840];
}

- (void)getCharacterRanges:(void *)a3 forSubstrings:(void *)a4
{
  std::vector<_NSRange>::reserve(a3, (*(a4 + 1) - *a4) >> 3);
  v28 = 0u;
  v29 = 0u;
  v30 = 1065353216;
  v7 = *a4;
  v8 = *(a4 + 1);
  while (v7 != v8)
  {
    std::__hash_table<Coherence_namespace::TopoSubstring *,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::allocator<Coherence_namespace::TopoSubstring *>>::__emplace_unique_key_args<Coherence_namespace::TopoSubstring *,Coherence_namespace::TopoSubstring * const&>(&v28, v7++);
  }

  v9 = [(CRTTMergeableString *)self orderedSubstrings];
  v10 = *v9;
  v11 = v9[1];
  if (*v9 != v11)
  {
    v12 = 0;
    do
    {
      v27 = *v10;
      v13 = std::__hash_table<Coherence_namespace::TopoSubstring *,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::allocator<Coherence_namespace::TopoSubstring *>>::find<Coherence_namespace::TopoSubstring *>(&v28, &v27);
      v14 = v13;
      if (*(v27 + 40) == *(v27 + 32))
      {
        v15 = 0;
        if (!v13)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v15 = *(v27 + 24);
        if (!v13)
        {
          goto LABEL_24;
        }
      }

      v17 = *(a3 + 1);
      v16 = *(a3 + 2);
      if (v17 >= v16)
      {
        v19 = *a3;
        v20 = v17 - *a3;
        v21 = v20 >> 4;
        v22 = (v20 >> 4) + 1;
        if (v22 >> 60)
        {
          std::vector<Coherence_namespace::TopoSubstring *>::__throw_length_error[abi:ne200100]();
        }

        v23 = v16 - v19;
        if (v23 >> 3 > v22)
        {
          v22 = v23 >> 3;
        }

        if (v23 >= 0x7FFFFFFFFFFFFFF0)
        {
          v24 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v24 = v22;
        }

        if (v24)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<_NSRange>>(a3, v24);
        }

        v25 = (16 * v21);
        *v25 = v12;
        v25[1] = v15;
        v18 = 16 * v21 + 16;
        memcpy(0, v19, v20);
        v26 = *a3;
        *a3 = 0;
        *(a3 + 1) = v18;
        *(a3 + 2) = 0;
        if (v26)
        {
          operator delete(v26);
        }
      }

      else
      {
        *v17 = v12;
        v17[1] = v15;
        v18 = (v17 + 2);
      }

      *(a3 + 1) = v18;
      if (*(&v29 + 1) == 1)
      {
        break;
      }

      std::__hash_table<Coherence_namespace::TopoSubstring *,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::allocator<Coherence_namespace::TopoSubstring *>>::erase(&v28, v14);
LABEL_24:
      v12 += v15;
      ++v10;
    }

    while (v10 != v11);
  }

  std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::~__hash_table(&v28);
}

- (void)enumerateIndexes:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CRTTMergeableString *)self orderedSubstrings];
  v6 = *v5;
  v7 = v5[1];
  if (*v5 != v7)
  {
    do
    {
      v8 = *v6;
      if (*(*v6 + 40) != *(*v6 + 32))
      {
        v10 = *(v8 + 4);
        v9 = *(v8 + 5);
        v15 = *v8;
        v16 = v10;
        v17 = v9;
        if (*(v8 + 6))
        {
          v11 = 0;
          do
          {
            v12 = *(v8 + 21);
            v13 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:&v15];
            v4[2](v4, v11 + v12, v13, v16, v11 + v17);

            ++v11;
          }

          while (v11 < *(v8 + 6));
        }
      }

      ++v6;
    }

    while (v6 != v7);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)mergeableIndexForCharacterIndex:(int64_t)a3 affinity:(unint64_t)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v34 = 0;
  uuid_clear(uu);
  v35 = 0;
  *v36 = 0u;
  *__p = 0u;
  v38 = 0u;
  v39 = 0;
  v40 = a3;
  v7 = *[(CRTTMergeableString *)self orderedSubstrings];
  v8 = *([(CRTTMergeableString *)self orderedSubstrings]+ 8);
  if (v8 == v7)
  {
    goto LABEL_14;
  }

  v9 = v8 - v7;
  do
  {
    v10 = v9 >> 1;
    v11 = &v7[v9 >> 1];
    v13 = *v11;
    v12 = v11 + 1;
    v9 += ~(v9 >> 1);
    if (*(v13 + 84) < v40)
    {
      v7 = v12;
    }

    else
    {
      v9 = v10;
    }
  }

  while (v9);
  if (v7 == v8)
  {
LABEL_14:
    v16 = 0;
  }

  else
  {
    v14 = 0x1FFFFFFFFFFFFFFFLL;
    if (*(*v7 + 84) <= a3)
    {
      v14 = 0;
    }

    i = &v7[v14];
    if (a4)
    {
      while (!Coherence_namespace::TopoSubstring::isEndNode(*i) && *(*i + 5) == *(*i + 4))
      {
        ++i;
      }
    }

    else if (*(*i + 21) >= a3)
    {
      isStartNode = Coherence_namespace::TopoSubstring::isStartNode(*i);
      v18 = -8;
      if (isStartNode)
      {
        v18 = 0;
      }

      for (i = (i + v18); ; --i)
      {
        v19 = Coherence_namespace::TopoSubstring::isStartNode(*i);
        v20 = *i;
        if (v19 || *(v20 + 5) != *(v20 + 4))
        {
          break;
        }
      }

      v21 = *(v20 + 6);
      v22 = *(v20 + 21);
      if (v21)
      {
        LODWORD(a3) = v21 + v22 - 1;
      }

      else
      {
        LODWORD(a3) = v22;
      }
    }

    else
    {
      LODWORD(a3) = a3 - 1;
    }

    v23 = [_TtC9Coherence24CRTTMergeableStringIndex alloc];
    v24 = *(*i + 21);
    v26 = *(*i + 4);
    v25 = *(*i + 5);
    v31 = **i;
    LODWORD(v32) = v26;
    HIDWORD(v32) = a3 - v24 + v25;
    v27 = [(CRTTMergeableString *)self renameGeneration:v31];
    v28 = [(CRTTMergeableString *)self version];
    v16 = -[CRTTMergeableStringIndex initWithTopoID:affinity:renameGeneration:maxCounter:](v23, "initWithTopoID:affinity:renameGeneration:maxCounter:", &v31, a4, v27, [v28 maxCounter]);
  }

  if (__p[1])
  {
    *&v38 = __p[1];
    operator delete(__p[1]);
  }

  if (v36[0])
  {
    v36[1] = v36[0];
    operator delete(v36[0]);
  }

  v29 = *MEMORY[0x1E69E9840];

  return v16;
}

- (unint64_t)_characterIndexForIndex:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 index];
  }

  else
  {
    memset(&v16, 0, sizeof(v16));
  }

  v6 = [(CRTTMergeableString *)self orderedSubstrings:*v16.replica.uuid];
  v7 = *v6;
  v8 = v6[1];
  while (1)
  {
    if (v7 == v8)
    {
      goto LABEL_15;
    }

    v9 = *v7;
    if (Coherence_namespace::TopoIDRange::contains(*v7, &v16) || *(v9 + 2) == *&v16.replica.index && !uuid_compare(v9, v16.replica.uuid))
    {
      break;
    }

    ++v7;
  }

  if (*(v9 + 5) == *(v9 + 4))
  {
    if ([v5 affinity] == 2)
    {
LABEL_15:
      v13 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_16;
    }

    v13 = *(v9 + 21);
  }

  else
  {
    v10 = *(v9 + 21);
    clock = v16.clock;
    v12 = *(v9 + 5);
    if ([v5 affinity])
    {
      v13 = clock + v10 - v12;
    }

    else
    {
      v13 = clock + v10 - v12 + 1;
    }
  }

LABEL_16:

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (unint64_t)characterIndexForIndex:(id)a3
{
  v4 = a3;
  v5 = [(CRTTMergeableString *)self renameGeneration];
  if (v5 == [v4 renameGeneration])
  {
    v6 = [(CRTTMergeableString *)self _characterIndexForIndex:v4];
  }

  else
  {
    v7 = +[_TtC9Coherence19CRGlobalContextObjC objCRenames];
    v8 = [(CRTTMergeableString *)self renamed:v7];
    v9 = [v4 renamed:v7];
    v6 = [v8 _characterIndexForIndex:v9];
  }

  return v6;
}

- (void)enumerateSubstrings:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CRTTMergeableString *)self orderedSubstrings];
  v6 = *v5;
  v7 = v5[1];
  if (*v5 != v7)
  {
    do
    {
      v8 = *v6;
      if (*(*v6 + 40) != *(*v6 + 32))
      {
        v9 = *(v8 + 6);
        if (v9)
        {
          v10 = *(v8 + 21);
          v11 = *v8;
          *&v13[12] = *(v8 + 12);
          *v13 = v11;
          v4[2](v4, v10, v9, v13);
        }
      }

      ++v6;
    }

    while (v6 != v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)updateAttributedStringAfterMerge
{
  v3 = [self->_attributedString Coherence_emptyCopy];
  v4 = [(CRTTMergeableString *)self orderedSubstrings];
  v5 = *v4;
  v6 = v4[1];
  while (v5 != v6)
  {
    v7 = *v5;
    v9 = [v3 length];
    if (*(v7 + 40) != *(v7 + 32))
    {
      [v3 Coherence_appendStorage:self->_attributedString fromRange:{*(v7 + 84), *(v7 + 24)}];
    }

    *(v7 + 84) = Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v9, v8);
    ++v5;
  }

  attributedString = self->_attributedString;
  self->_attributedString = v3;
}

- (BOOL)hasDeltaTo:(id)a3 compareElements:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CRTTMergeableString *)self renameGeneration];
  if (v8 != [v6 renameGeneration])
  {
    v16 = +[_TtC9Coherence19CRGlobalContextObjC objCRenames];
    v17 = [(CRTTMergeableString *)self renamed:v16];
    v18 = [v6 renamed:v16];
    v15 = [v17 hasDeltaTo:v18 compareElements:v7];

    goto LABEL_6;
  }

  v9 = [(CRTTMergeableString *)self version];
  v10 = [v6 version];
  v11 = [v9 hasDeltaTo:v10];

  if ((v11 & 1) == 0)
  {
    v12 = [(CRTTMergeableString *)self addedByVersion];
    v13 = [v6 addedByVersion];
    v14 = [v12 hasDeltaTo:v13];

    if ((v14 & 1) == 0)
    {
      if (v7)
      {
        v20 = [v6 orderedSubstrings];
        v31[0] = 0;
        v31[1] = 0;
        v30 = v31;
        v21 = [(CRTTMergeableString *)self orderedSubstrings];
        v22 = *v21;
        v23 = v21[1];
        while (v22 != v23)
        {
          v24 = *v22;
          *std::map<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *,Coherence_namespace::$_0,std::allocator<std::pair<Coherence_namespace::TopoIDRange const,Coherence_namespace::TopoSubstring *>>>::operator[](&v30, *v22++) = v24;
        }

        v25 = *v20;
        if (*v20 != *(v20 + 8))
        {
          v26 = MEMORY[0x1E69E9820];
          while (1)
          {
            v28[0] = v26;
            v28[1] = 3221225472;
            v28[2] = __50__CRTTMergeableString_hasDeltaTo_compareElements___block_invoke;
            v28[3] = &unk_1E7A12460;
            v29 = v7;
            v27 = compareSubstring(v28, *v25, &v30);

            if (v27)
            {
              break;
            }

            if (++v25 == *(v20 + 8))
            {
              goto LABEL_15;
            }
          }

          std::__tree<std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,std::__map_value_compare<Coherence_namespace::TopoIDRange,std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,Coherence_namespace::$_0,true>,std::allocator<std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>>>::destroy(v31[0]);
          goto LABEL_4;
        }

LABEL_15:
        std::__tree<std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,std::__map_value_compare<Coherence_namespace::TopoIDRange,std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,Coherence_namespace::$_0,true>,std::allocator<std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>>>::destroy(v31[0]);
      }

      v15 = 0;
      goto LABEL_6;
    }
  }

LABEL_4:
  v15 = 1;
LABEL_6:

  return v15;
}

uint64_t __50__CRTTMergeableString_hasDeltaTo_compareElements___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    return 0;
  }
}

- (unint64_t)mergeWithString:(id)a3 optimized:(BOOL)a4 suggestedContext:(id)a5
{
  v6 = a4;
  v69 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v49 = a5;
  [(CRTTMergeableString *)self useRenameIfAvailable];
  v9 = [(CRTTMergeableString *)self version];
  v50 = [v9 copy];

  v10 = [(CRTTMergeableString *)self addedByVersion];
  v51 = [v10 copy];

  v11 = [(CRTTMergeableString *)self renameGeneration];
  if (v11 != [v8 renameGeneration])
  {
    v12 = +[_TtC9Coherence19CRGlobalContextObjC objCRenames];
    v13 = [v8 renamed:v12];

    [(CRTTMergeableString *)self apply:v12 skipRetain:1 alwaysApply:0];
    v8 = v13;
  }

  v52 = v8;
  if (!v6)
  {
    goto LABEL_6;
  }

  v14 = [(CRTTMergeableString *)self version];
  v15 = [v8 version];
  v16 = [v14 compareTo:v15];

  v17 = [(CRTTMergeableString *)self addedByVersion];
  v18 = [v8 addedByVersion];
  v19 = [v17 compareTo:v18] | v16;

  if (v19 < 3)
  {
    v20 = qword_1AE240B30[v19];
  }

  else
  {
LABEL_6:
    v21 = [v8 orderedSubstrings];
    v59 = 0;
    v60 = &v59;
    v61 = 0x4812000000;
    v62 = __Block_byref_object_copy__19;
    v63 = __Block_byref_object_dispose__20;
    v64 = &unk_1AE2A3E8A;
    v66[0] = 0;
    v66[1] = 0;
    v65 = v66;
    v22 = [(CRTTMergeableString *)self orderedSubstrings];
    v23 = *v22;
    v24 = v22[1];
    while (v23 != v24)
    {
      v25 = *v23;
      *std::map<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *,Coherence_namespace::$_0,std::allocator<std::pair<Coherence_namespace::TopoIDRange const,Coherence_namespace::TopoSubstring *>>>::operator[]((v60 + 6), *v23++) = v25;
    }

    v26 = v21[1];
    if (v26 != *v21)
    {
      v27 = MEMORY[0x1E69E9820];
      do
      {
        v56[0] = v27;
        v56[1] = 3221225472;
        v56[2] = __66__CRTTMergeableString_mergeWithString_optimized_suggestedContext___block_invoke;
        v56[3] = &unk_1E7A12488;
        v56[4] = self;
        v57 = v52;
        v58 = &v59;
        v53[0] = MEMORY[0x1E69E9820];
        v53[1] = 3221225472;
        v53[2] = __66__CRTTMergeableString_mergeWithString_optimized_suggestedContext___block_invoke_2;
        v53[3] = &unk_1E7A124B0;
        v53[4] = self;
        v54 = v57;
        v55 = &v59;
        v28 = *(v26 - 8);
        v26 -= 8;
        mergeSubstring(v56, v53, v28, (v60 + 6), 0, 1);
      }

      while (v26 != *v21);
    }

    v29 = [(CRTTMergeableString *)self version];
    v30 = [v52 version];
    [v29 merge:v30];

    v31 = [(CRTTMergeableString *)self addedByVersion];
    v32 = [v52 addedByVersion];
    [v31 merge:v32];

    v33 = [(CRTTMergeableString *)self version];
    v34 = Coherence_namespace::TopoReplica::objc(&self->_replica);
    if (v52)
    {
      [v52 replica];
    }

    else
    {
      v67[0] = 0;
      v67[1] = 0;
      v68 = 0;
    }

    v35 = Coherence_namespace::TopoReplica::objc(v67);
    [_TtC9Coherence19CRGlobalContextObjC retainOrReleaseWithInitial:v50 current:v33 forReplica:v34 copyingFrom:v35];

    v36 = [(CRTTMergeableString *)self addedByVersion];
    v37 = [(CRTTMergeableString *)self addedByReplica];
    v38 = [v52 addedByReplica];
    [_TtC9Coherence19CRGlobalContextObjC retainOrReleaseWithInitial:v51 current:v36 forReplica:v37 copyingFrom:v38];

    v39 = [(CRTTMergeableString *)self context];
    v40 = v39 == 0;

    if (v40)
    {
      v41 = [v52 context];
      [(CRTTMergeableString *)self setContext:v41];
    }

    v42 = [(CRTTMergeableString *)self temporaryConcurrentNames];
    if (([v42 isEmpty] & 1) == 0)
    {
      [(CRTTMergeableString *)self invalidateCache];
      v43 = [(CRTTMergeableString *)self context];
      if (v43)
      {
        v44 = [(CRTTMergeableString *)self context];
      }

      else
      {
        v44 = v49;
      }

      v45 = v44;

      if (v45)
      {
        [(CRTTMergeableString *)self applyRenamesAndRetainOrRelease:v42 context:v45];
      }

      else
      {
        v46 = +[CRContext newTransientContextObjC];
        [(CRTTMergeableString *)self applyRenamesAndRetainOrRelease:v42 context:v46];
      }
    }

    [(CRTTMergeableString *)self sortSplitNodes];
    [(CRTTMergeableString *)self invalidateCache];
    [(CRTTMergeableString *)self updateAttributedStringAfterMerge];
    [(CRTTMergeableString *)self coalesce];

    _Block_object_dispose(&v59, 8);
    std::__tree<std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,std::__map_value_compare<Coherence_namespace::TopoIDRange,std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,Coherence_namespace::$_0,true>,std::allocator<std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>>>::destroy(v66[0]);
    v20 = 3;
  }

  v47 = *MEMORY[0x1E69E9840];
  return v20;
}

void __66__CRTTMergeableString_mergeWithString_optimized_suggestedContext___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = *(*(a1 + 48) + 8);
  v14 = *(a1 + 32);
  v7 = v5;
  v8 = v7;
  if (*(a2 + 24))
  {
    v10 = *(a2 + 32);
    v9 = *(a2 + 40);
    v11 = [v7 addedByVersion];
    Coherence_namespace::TopoSubstring::removeAddsNotIn(a2, a3, v11);

    v12 = [v14 addedByVersion];
    Coherence_namespace::TopoSubstring::addAddsIn(a2, a3, v12);

    v13 = [v8 attributedString];
    mergeStringData(v14, v9 == v10, a2, a3, v13, 0);
  }

  mergeAddChildren(a2, a3, v6 + 48);
}

void __66__CRTTMergeableString_mergeWithString_optimized_suggestedContext___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) attributedString];
  v4 = *(*(a1 + 48) + 8);
  mergeAddNewSubstring(v2, v3);
}

- (BOOL)canDeltaMerge:(id)a3
{
  v4 = a3;
  v5 = [(CRTTMergeableString *)self renameGeneration];
  if (v5 < [v4 renameGeneration] && -[CRTTMergeableString needToFinalizeTimestamps](self, "needToFinalizeTimestamps"))
  {
    v6 = +[_TtC9Coherence19CRGlobalContextObjC objCRenames];
    v7 = [(CRTTMergeableString *)self copyRenamedIfAvailable:1];
    [v7 apply:v6 skipRetain:0 alwaysApply:0];
    v8 = [v7 _canDeltaMergeRenamed:v4 charMap:0];
  }

  else
  {
    v8 = [(CRTTMergeableString *)self _canDeltaMergeRenamed:v4 charMap:0];
  }

  return v8;
}

- (BOOL)_canDeltaMergeRenamed:(id)a3 charMap:(void *)a4
{
  v6 = a3;
  v7 = [(CRTTMergeableString *)self version];
  v8 = [(CRTTMergeableString *)self addedByVersion];
  v9 = [v6 fromVersion];
  if ([v7 hasDeltaTo:v9])
  {
  }

  else
  {
    v10 = [v6 fromAddedByVersion];
    v11 = [v8 hasDeltaTo:v10];

    if ((v11 & 1) == 0)
    {
      v13 = [v6 orderedSubstrings];
      if (!a4)
      {
        operator new();
      }

      v14 = *v13;
      if (*v13 == *(v13 + 8))
      {
LABEL_11:
        v12 = 1;
        goto LABEL_12;
      }

      while ((compareSubstring(&__block_literal_global, *v14, a4) & 1) != 0 || *(*v14 + 40) == *(*v14 + 32) || *(*v14 + 84) != -1)
      {
        if (++v14 == *(v13 + 8))
        {
          goto LABEL_11;
        }
      }
    }
  }

  v12 = 0;
LABEL_12:

  return v12;
}

- (BOOL)deltaMerge:(id)a3
{
  v28 = a3;
  [(CRTTMergeableString *)self useRenameIfAvailable];
  v4 = [(CRTTMergeableString *)self renameGeneration];
  if (v4 < [v28 renameGeneration] && -[CRTTMergeableString needToFinalizeTimestamps](self, "needToFinalizeTimestamps"))
  {
    v5 = +[_TtC9Coherence19CRGlobalContextObjC objCRenames];
    [(CRTTMergeableString *)self apply:v5 skipRetain:0 alwaysApply:0];
  }

  v6 = [(CRTTMergeableString *)self renameGeneration];
  v7 = [v28 renameGeneration];
  if (v6 <= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  [(CRTTMergeableString *)self setRenameGeneration:v8];
  v9 = [v28 orderedSubstrings];
  v35 = 0;
  v36 = &v35;
  v37 = 0x4812000000;
  v38 = __Block_byref_object_copy__19;
  v39 = __Block_byref_object_dispose__20;
  v40 = &unk_1AE2A3E8A;
  v42[0] = 0;
  v42[1] = 0;
  v41 = v42;
  v10 = [(CRTTMergeableString *)self orderedSubstrings];
  v11 = *v10;
  v12 = v10[1];
  while (v11 != v12)
  {
    v13 = *v11;
    *std::map<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *,Coherence_namespace::$_0,std::allocator<std::pair<Coherence_namespace::TopoIDRange const,Coherence_namespace::TopoSubstring *>>>::operator[]((v36 + 6), *v11++) = v13;
  }

  v14 = [(CRTTMergeableString *)self _canDeltaMergeRenamed:v28 charMap:v36 + 6];
  v15 = v14;
  if (v14)
  {
    v27 = v14;
    v16 = v9[1];
    if (v16 != *v9)
    {
      v17 = MEMORY[0x1E69E9820];
      do
      {
        v32[0] = v17;
        v32[1] = 3221225472;
        v32[2] = __34__CRTTMergeableString_deltaMerge___block_invoke;
        v32[3] = &unk_1E7A12488;
        v32[4] = self;
        v33 = v28;
        v34 = &v35;
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __34__CRTTMergeableString_deltaMerge___block_invoke_2;
        v29[3] = &unk_1E7A124B0;
        v29[4] = self;
        v30 = v33;
        v31 = &v35;
        v18 = *(v16 - 8);
        v16 -= 8;
        mergeSubstring(v32, v29, v18, (v36 + 6), 0, 1);
      }

      while (v16 != *v9);
    }

    [(CRTTMergeableString *)self version];
    v19 = v15 = v27;
    v20 = [v28 version];
    [v19 merge:v20];

    v21 = [(CRTTMergeableString *)self addedByVersion];
    v22 = [v28 addedByVersion];
    [v21 merge:v22];

    v23 = [(CRTTMergeableString *)self temporaryConcurrentNames];
    if (([v23 isEmpty] & 1) == 0)
    {
      [(CRTTMergeableString *)self invalidateCache];
      v24 = [(CRTTMergeableString *)self context];

      if (v24)
      {
        v25 = [(CRTTMergeableString *)self context];
      }

      else
      {
        v25 = +[CRContext newTransientContextObjC];
      }

      [(CRTTMergeableString *)self applyRenamesAndRetainOrRelease:v23 context:v25];
    }

    [(CRTTMergeableString *)self sortSplitNodes];
    [(CRTTMergeableString *)self invalidateCache];
    [(CRTTMergeableString *)self updateAttributedStringAfterMerge];
    [(CRTTMergeableString *)self coalesce];
  }

  _Block_object_dispose(&v35, 8);
  std::__tree<std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,std::__map_value_compare<Coherence_namespace::TopoIDRange,std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,Coherence_namespace::$_0,true>,std::allocator<std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>>>::destroy(v42[0]);

  return v15;
}

void __34__CRTTMergeableString_deltaMerge___block_invoke(uint64_t a1, uint64_t a2, unsigned __int8 **a3)
{
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) attributedString];
  v8 = *(*(a1 + 48) + 8);
  v9 = v6;
  v13 = v7;
  if (*(a2 + 24))
  {
    v11 = *(a2 + 32);
    v10 = *(a2 + 40);
    Coherence_namespace::TopoSubstring::removeDeltaAddsNotIn(a2, a3);
    v12 = [v9 addedByVersion];
    Coherence_namespace::TopoSubstring::addAddsIn(a2, a3, v12);

    mergeStringData(v9, v10 == v11, a2, a3, v13, 1);
  }

  mergeAddChildren(a2, a3, v8 + 48);
}

void __34__CRTTMergeableString_deltaMerge___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) attributedString];
  v4 = *(*(a1 + 48) + 8);
  mergeAddNewSubstring(v2, v3);
}

- (id)undoCommandToChangeFrom:(id)a3 unedited:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [v6 undoCommandToChangeTo:self unedited:v7];
  }

  else
  {
    v9 = objc_alloc_init(_TtC9Coherence34CRTTMergeableStringUndoEditCommand);
    v10 = [(CRTTMergeableString *)self orderedSubstrings];
    v11 = *v10;
    v12 = v10[1];
    while (v11 != v12)
    {
      v13 = *v11;
      if (*(*v11 + 24) && *(v13 + 40) != *(v13 + 32))
      {
        std::vector<Coherence_namespace::TopoIDRange>::push_back[abi:ne200100](-[CRTTMergeableStringUndoEditCommand deleteRanges](v9, "deleteRanges"), v13);
      }

      ++v11;
    }

    v14 = [(CRTTMergeableStringUndoEditCommand *)v9 deleteRanges];
    if (v14[1] == *v14)
    {
      v8 = 0;
    }

    else
    {
      [(CRTTMergeableStringUndoEditCommand *)v9 retainTemporaryIDs];
      v8 = v9;
    }
  }

  return v8;
}

- (void)compareTo:(id)a3 merge:(id)a4 add:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CRTTMergeableString *)self renameGeneration];
  if (v11 == [v8 renameGeneration])
  {
    v12 = [v8 orderedSubstrings];
    __p = 0;
    v30 = 0;
    v31 = 0;
    v28[0] = 0;
    v28[1] = 0;
    v13 = [(CRTTMergeableString *)self orderedSubstrings];
    v14 = *v13;
    v15 = v13[1];
    while (v14 != v15)
    {
      v16 = *v14;
      *std::map<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *,Coherence_namespace::$_0,std::allocator<std::pair<Coherence_namespace::TopoIDRange const,Coherence_namespace::TopoSubstring *>>>::operator[](&v27, *v14++) = v16;
    }

    v20 = *v12;
    v21 = *(v12 + 8);
    if (v20 != v21)
    {
      do
      {
        mergeSubstring(v9, v10, *v20++, &v27, &__p, 0);
      }

      while (v20 != v21);
      v22 = __p;
      v23 = v30;
      if (__p != v30)
      {
        do
        {
          v24 = *v22;
          if (*v22)
          {
            v25 = v24[7];
            if (v25)
            {
              v24[8] = v25;
              operator delete(v25);
            }

            v26 = v24[4];
            if (v26)
            {
              v24[5] = v26;
              operator delete(v26);
            }

            MEMORY[0x1B26FCDB0](v24, 0x10A0C409FE6E197);
          }

          ++v22;
        }

        while (v22 != v23);
      }
    }

    std::__tree<std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,std::__map_value_compare<Coherence_namespace::TopoIDRange,std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,Coherence_namespace::$_0,true>,std::allocator<std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>>>::destroy(v28[0]);
    if (__p)
    {
      v30 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v17 = +[_TtC9Coherence19CRGlobalContextObjC objCRenames];
    v18 = [v8 renamed:v17];
    v19 = [(CRTTMergeableString *)self renamed:v17];
    [v19 compareTo:v18 merge:v9 add:v10];
  }
}

- (id)undoCommandToChangeTo:(id)a3 unedited:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(_TtC9Coherence34CRTTMergeableStringUndoEditCommand);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __54__CRTTMergeableString_undoCommandToChangeTo_unedited___block_invoke;
  v18[3] = &unk_1E7A124F8;
  v19 = v8;
  v20 = self;
  v9 = v7;
  v22 = v9;
  v10 = v6;
  v21 = v10;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __54__CRTTMergeableString_undoCommandToChangeTo_unedited___block_invoke_2;
  v16[3] = &unk_1E7A12410;
  v11 = v19;
  v17 = v11;
  [(CRTTMergeableString *)self compareTo:v10 merge:v18 add:v16];
  [(CRTTMergeableStringUndoEditCommand *)v11 retainTemporaryIDs];
  v12 = [(CRTTMergeableStringUndoEditCommand *)v11 deleteRanges];
  if (v12[1] == *v12 && (v13 = [(CRTTMergeableStringUndoEditCommand *)v11 insertStrings], v13[1] == *v13))
  {
    v14 = 0;
  }

  else
  {
    v14 = v11;
  }

  return v14;
}

void __54__CRTTMergeableString_undoCommandToChangeTo_unedited___block_invoke(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 24))
  {
LABEL_34:
    v36 = *MEMORY[0x1E69E9840];
    return;
  }

  v7 = *(a2 + 32);
  v6 = *(a2 + 40);
  if (*(a3 + 5) == *(a3 + 4))
  {
    if (v6 != v7)
    {
      v10 = [*(a1 + 32) insertStrings];
      v11 = [*(a1 + 40) attributedString];
      v12 = v11;
      if (*(a2 + 40) == *(a2 + 32))
      {
        v13 = 0;
      }

      else
      {
        v13 = *(a2 + 24);
      }

      v14 = [v11 Coherence_storageFromRange:{*(a2 + 84), v13}];
      *v37 = *a3;
      *&v37[12] = *(a3 + 12);
      v15 = v10[1];
      v16 = v10[2];
      if (v15 >= v16)
      {
        v31 = 0xCCCCCCCCCCCCCCCDLL * ((v15 - *v10) >> 3);
        v32 = v31 + 1;
        if (v31 + 1 > 0x666666666666666)
        {
          std::vector<Coherence_namespace::TopoSubstring *>::__throw_length_error[abi:ne200100]();
        }

        v33 = 0xCCCCCCCCCCCCCCCDLL * ((v16 - *v10) >> 3);
        if (2 * v33 > v32)
        {
          v32 = 2 * v33;
        }

        if (v33 >= 0x333333333333333)
        {
          v34 = 0x666666666666666;
        }

        else
        {
          v34 = v32;
        }

        v39 = v10;
        if (v34)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<Coherence_namespace::TopoIDRange,objc_object  {objcproto26CRTTMergeableStringStorage}* {__strong}>>>(v10, v34);
        }

        v35 = 40 * v31;
        *v38 = 0;
        *&v38[8] = v35;
        *&v38[24] = 0;
        *v35 = *v37;
        *(v35 + 12) = *&v37[12];
        *(v35 + 32) = v14;
        *&v38[16] = 40 * v31 + 40;
        std::vector<std::pair<Coherence_namespace::TopoIDRange,objc_object  {objcproto26CRTTMergeableStringStorage}* {__strong}>>::__swap_out_circular_buffer(v10, v38);
        v19 = v10[1];
        std::__split_buffer<std::pair<Coherence_namespace::TopoIDRange,objc_object  {objcproto26CRTTMergeableStringStorage}* {__strong}>>::~__split_buffer(v38);
      }

      else
      {
        v17 = *a3;
        v18 = *(a3 + 2);
        *(v15 + 24) = *(a3 + 6);
        *(v15 + 16) = v18;
        *v15 = v17;
        *(v15 + 32) = v14;
        v19 = v15 + 40;
      }

      v10[1] = v19;

      goto LABEL_34;
    }

    goto LABEL_13;
  }

  if (v6 != v7)
  {
LABEL_13:
    v20 = *(a1 + 56);
    if (v20)
    {
      v21 = [_TtC9Coherence24CRTTMergeableStringRange alloc];
      *v38 = *a3;
      *&v38[12] = *(a3 + 12);
      v22 = [*(a1 + 40) renameGeneration];
      v23 = [*(a1 + 40) version];
      v24 = [v23 maxCounter];

      v25 = [*(a1 + 48) version];
      v26 = [v25 maxCounter];

      if (v24 <= v26)
      {
        v27 = v26;
      }

      else
      {
        v27 = v24;
      }

      v28 = [(CRTTMergeableStringRange *)v21 initWithTopoIDRange:v38 renameGeneration:v22 maxCounter:v27];
      if (*(a3 + 5) == *(a3 + 4))
      {
        v29 = 0;
      }

      else
      {
        v29 = *(a3 + 6);
      }

      if (*(a2 + 40) == *(a2 + 32))
      {
        v30 = 0;
      }

      else
      {
        v30 = *(a2 + 24);
      }

      (*(v20 + 16))(v20, v28, *(a3 + 21), v29, *(a2 + 84), v30);
    }

    goto LABEL_34;
  }

  v8 = [*(a1 + 32) deleteRanges];
  v9 = *MEMORY[0x1E69E9840];

  std::vector<Coherence_namespace::TopoIDRange>::push_back[abi:ne200100](v8, a3);
}

void __54__CRTTMergeableString_undoCommandToChangeTo_unedited___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40) != *(a2 + 32))
  {
    v4 = [*(a1 + 32) deleteRanges];

    std::vector<Coherence_namespace::TopoIDRange>::push_back[abi:ne200100](v4, a2);
  }
}

- (void)addedRefsInRangesTo:(id)a3 newRange:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__CRTTMergeableString_addedRefsInRangesTo_newRange___block_invoke;
  v10[3] = &unk_1E7A12520;
  v11 = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__CRTTMergeableString_addedRefsInRangesTo_newRange___block_invoke_2;
  v8[3] = &unk_1E7A12548;
  v9 = v11;
  v7 = v11;
  [(CRTTMergeableString *)self compareTo:a3 merge:v10 add:v8];
}

uint64_t __52__CRTTMergeableString_addedRefsInRangesTo_newRange___block_invoke(uint64_t result, uint64_t a2, Coherence_namespace::TopoSubstring *this)
{
  if (*(this + 6))
  {
    v4 = *(result + 32);
    v5 = *(this + 21);
    if (*(this + 5) == *(this + 4))
    {
      v6 = 0;
    }

    else
    {
      v6 = *(this + 6);
    }

    if (Coherence_namespace::TopoSubstring::hasNewAddedByFrom(this, a2))
    {
      v7 = 0;
      v8 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = *(a2 + 84);
      if (*(a2 + 40) == *(a2 + 32))
      {
        v7 = 0;
      }

      else
      {
        v7 = *(a2 + 24);
      }
    }

    v9 = *(v4 + 16);

    return v9(v4, v5, v6, v8, v7);
  }

  return result;
}

uint64_t __52__CRTTMergeableString_addedRefsInRangesTo_newRange___block_invoke_2(uint64_t result, uint64_t a2)
{
  if (*(a2 + 40) != *(a2 + 32))
  {
    if (*(a2 + 24))
    {
      v2 = *(a2 + 84);
      return (*(*(result + 32) + 16))();
    }
  }

  return result;
}

- (void)deltaTo:(id)a3 edited:(id)a4 unedited:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v56[0] = 0;
  v56[1] = v56;
  v56[2] = 0x2020000000;
  v56[3] = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x4012000000;
  v49 = __Block_byref_object_copy__27;
  v50 = __Block_byref_object_dispose__28;
  v51 = &unk_1AE2A3E8A;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__30;
  v40 = __Block_byref_object_dispose__31;
  v41 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__CRTTMergeableString_deltaTo_edited_unedited___block_invoke;
  aBlock[3] = &unk_1E7A12570;
  v32 = &v42;
  v33 = &v46;
  v34 = &v52;
  v11 = v9;
  v31 = v11;
  v35 = &v36;
  v12 = v8;
  v30 = v12;
  v13 = _Block_copy(aBlock);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __47__CRTTMergeableString_deltaTo_edited_unedited___block_invoke_2;
  v20[3] = &unk_1E7A12598;
  v21 = v13;
  v24 = v56;
  v14 = v10;
  v22 = v14;
  v25 = &v42;
  v15 = v11;
  v23 = v15;
  v26 = &v46;
  v27 = &v52;
  v28 = &v36;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __47__CRTTMergeableString_deltaTo_edited_unedited___block_invoke_3;
  v17[3] = &unk_1E7A125C0;
  v16 = v21;
  v18 = v16;
  v19 = v56;
  [(CRTTMergeableString *)self compareTo:v12 merge:v20 add:v17];
  if (*(v43 + 24) == 1)
  {
    (*(v15 + 2))(v15, v47[6], v47[7], v53[3], v37[5]);
  }

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(v56, 8);
}

void __47__CRTTMergeableString_deltaTo_edited_unedited___block_invoke(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(*(*(a1 + 48) + 8) + 24) != 1 || a2 > *(*(*(a1 + 56) + 8) + 56) + *(*(*(a1 + 56) + 8) + 48) + *(*(*(a1 + 64) + 8) + 24) && (v12 = *(a1 + 40), v13 = *(*(*(a1 + 72) + 8) + 40), (*(*(a1 + 40) + 16))(), *(*(*(a1 + 48) + 8) + 24) = 0, (*(*(*(a1 + 48) + 8) + 24) & 1) == 0))
  {
    v14 = *(*(a1 + 56) + 8);
    *(v14 + 48) = a2;
    *(v14 + 56) = 0;
    *(*(*(a1 + 64) + 8) + 24) = 0;
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v15 = *(*(a1 + 72) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = 0;
  }

  if (a4 < 0)
  {
    *(*(*(a1 + 56) + 8) + 56) += a3;
    *(*(*(a1 + 64) + 8) + 24) += a4;
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) += a4;
    if (a4)
    {
      v17 = *(*(*(a1 + 72) + 8) + 40);
      v18 = [*(a1 + 32) attributedString];
      v22 = v18;
      if (v17)
      {
        [v17 Coherence_appendStorage:v18 fromRange:{a5, a6}];
      }

      else
      {
        v19 = [v18 Coherence_storageFromRange:{a5, a6}];
        v20 = *(*(a1 + 72) + 8);
        v21 = *(v20 + 40);
        *(v20 + 40) = v19;
      }
    }
  }
}

uint64_t __47__CRTTMergeableString_deltaTo_edited_unedited___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    v6 = result;
    v8 = *(a3 + 32);
    v7 = *(a3 + 40);
    v10 = *(a2 + 32);
    v9 = *(a2 + 40);
    if (v7 == v8)
    {
      if (v9 != v10)
      {
        v18 = *(result + 32);
        v19 = *(*(v6[7] + 8) + 24);
        v20 = -*(a3 + 24);
        v21 = *(v6[4] + 16);

        return v21();
      }
    }

    else
    {
      if (v9 == v10)
      {
        v22 = *(a3 + 24);
        v23 = *(result + 32);
        v24 = *(*(v6[7] + 8) + 24);
        v25 = *(a3 + 84);
        result = (*(v6[4] + 16))();
      }

      else
      {
        result = *(result + 40);
        if (result)
        {
          if (*(*(v6[8] + 8) + 24) == 1)
          {
            v11 = *(v6[9] + 8);
            v12 = *(v11 + 48);
            v13 = *(v11 + 56);
            v14 = *(*(v6[10] + 8) + 24);
            v15 = *(*(v6[11] + 8) + 40);
            (*(v6[6] + 16))();
            *(*(v6[8] + 8) + 24) = 0;
            result = v6[5];
            v8 = *(a3 + 32);
            v7 = *(a3 + 40);
            v10 = *(a2 + 32);
            v9 = *(a2 + 40);
            v3 = *(a2 + 24);
          }

          if (v7 == v8)
          {
            v16 = 0;
          }

          else
          {
            v16 = *(a3 + 24);
          }

          if (v9 == v10)
          {
            v17 = 0;
          }

          else
          {
            v17 = v3;
          }

          result = (*(result + 16))(result, *(a3 + 84), v16, *(a2 + 84), v17);
        }
      }

      *(*(v6[7] + 8) + 24) += *(a3 + 24);
    }
  }

  return result;
}

uint64_t __47__CRTTMergeableString_deltaTo_edited_unedited___block_invoke_3(uint64_t result, uint64_t a2)
{
  if (*(a2 + 40) != *(a2 + 32))
  {
    v2 = result;
    v3 = *(a2 + 24);
    v4 = *(*(*(result + 40) + 8) + 24);
    v5 = *(a2 + 84);
    result = (*(*(result + 32) + 16))();
    *(*(*(v2 + 40) + 8) + 24) += v3;
  }

  return result;
}

- (void)sortSplitNodes
{
  v3[5] = *MEMORY[0x1E69E9840];
  minIdPath(self->_startNode, 0, v3);
  v2 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(CRTTMergeableString *)self attributedString];
  v7 = [v3 stringWithFormat:@"<%@ %p = '%@'>", v5, self, v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  attributedString = self->_attributedString;
  v6 = [v4 attributedString];
  LOBYTE(attributedString) = [attributedString isEqual:v6];

  v7 = (attributedString & 1) != 0 && [(CRTTMergeableString *)self graphIsEqual:v4];
  return v7;
}

- (BOOL)graphIsEqual:(id)a3
{
  v4 = a3;
  v5 = [(CRTTMergeableString *)self renameGeneration];
  if (v5 == [v4 renameGeneration])
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v42 = 1;
    v31 = 0;
    v32 = &v31;
    v33 = 0x5812000000;
    v34 = __Block_byref_object_copy__37;
    v35 = __Block_byref_object_dispose__38;
    v36 = &unk_1AE2A3E8A;
    memset(v37, 0, sizeof(v37));
    v38 = 1065353216;
    [(CRTTMergeableString *)self coalesce];
    [v4 coalesce];
    v6 = [(CRTTMergeableString *)self version];
    v7 = [v4 version];
    v8 = [v6 isEqual:v7];

    if (v8)
    {
      v9 = [(CRTTMergeableString *)self addedByVersion];
      v10 = [v4 addedByVersion];
      v11 = [v9 isEqual:v10];

      if (v11)
      {
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __36__CRTTMergeableString_graphIsEqual___block_invoke;
        v30[3] = &unk_1E7A12370;
        v30[4] = &v31;
        [(CRTTMergeableString *)self traverseUnordered:v30];
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __36__CRTTMergeableString_graphIsEqual___block_invoke_2;
        v29[3] = &unk_1E7A125E8;
        v29[4] = &v31;
        v29[5] = &v39;
        [v4 traverseUnordered:v29];
        v12 = v40;
        LODWORD(self) = *(v40 + 24);
        if (self != 1)
        {
LABEL_30:
          _Block_object_dispose(&v31, 8);
          std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::~__hash_table(v37);
          _Block_object_dispose(&v39, 8);
          goto LABEL_31;
        }

        v13 = v32[8];
        if (!v13)
        {
          LOBYTE(self) = 1;
          goto LABEL_30;
        }

        while (2)
        {
          v14 = v13[5];
          v15 = v13[6];
          if (v14)
          {
            v16 = v15 == 0;
          }

          else
          {
            v16 = 1;
          }

          if (v16 || (v17 = v14[4], v18 = v14[5], v19 = v15[4], v18 - v17 != v15[5] - v19))
          {
LABEL_33:
            LOBYTE(self) = 0;
            *(v12 + 24) = 0;
            goto LABEL_30;
          }

          while (v17 != v18)
          {
            if (*(v17 + 20) != *(v19 + 20) || *(v17 + 16) != *(v19 + 16) || uuid_compare(v17, v19))
            {
              goto LABEL_32;
            }

            v17 += 24;
            v19 += 24;
          }

          v21 = v14[7];
          v20 = v14[8];
          if (v20 - v21 != v15[8] - v15[7])
          {
LABEL_32:
            v12 = v40;
            goto LABEL_33;
          }

          if (v20 != v21)
          {
            v22 = 0;
            if (((v20 - v21) >> 3) <= 1)
            {
              v23 = 1;
            }

            else
            {
              v23 = (v20 - v21) >> 3;
            }

            while (1)
            {
              v24 = *(v14[7] + 8 * v22);
              if (uuid_compare(v24, v24))
              {
                break;
              }

              if (v23 == ++v22)
              {
                goto LABEL_25;
              }
            }

            *(v40 + 24) = 0;
          }

LABEL_25:
          v12 = v40;
          LOBYTE(self) = *(v40 + 24);
          if (self)
          {
            v13 = *v13;
            if (v13)
            {
              continue;
            }

            goto LABEL_30;
          }

          break;
        }
      }
    }

    LOBYTE(self) = 0;
    goto LABEL_30;
  }

  v25 = +[_TtC9Coherence19CRGlobalContextObjC objCRenames];
  v26 = [(CRTTMergeableString *)self renamed:v25];
  v27 = [v4 renamed:v25];
  LOBYTE(self) = [v26 graphIsEqual:v27];

LABEL_31:
  return self;
}

uint64_t *__36__CRTTMergeableString_graphIsEqual___block_invoke(uint64_t a1, uint64_t a2)
{
  std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoID,std::pair<Coherence_namespace::TopoSubstring *,Coherence_namespace::TopoSubstring *>>,std::__unordered_map_hasher<Coherence_namespace::TopoID,std::__hash_value_type<Coherence_namespace::TopoID,std::pair<Coherence_namespace::TopoSubstring *,Coherence_namespace::TopoSubstring *>>,std::hash<Coherence_namespace::TopoID>,std::equal_to<Coherence_namespace::TopoID>,true>,std::__unordered_map_equal<Coherence_namespace::TopoID,std::__hash_value_type<Coherence_namespace::TopoID,std::pair<Coherence_namespace::TopoSubstring *,Coherence_namespace::TopoSubstring *>>,std::equal_to<Coherence_namespace::TopoID>,std::hash<Coherence_namespace::TopoID>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoID,std::pair<Coherence_namespace::TopoSubstring *,Coherence_namespace::TopoSubstring *>>>>::__emplace_unique_key_args<Coherence_namespace::TopoID,std::piecewise_construct_t const&,std::tuple<Coherence_namespace::TopoID const&>,std::tuple<>>((*(*(a1 + 32) + 8) + 48), a2)[5] = a2;
  result = std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoID,std::pair<Coherence_namespace::TopoSubstring *,Coherence_namespace::TopoSubstring *>>,std::__unordered_map_hasher<Coherence_namespace::TopoID,std::__hash_value_type<Coherence_namespace::TopoID,std::pair<Coherence_namespace::TopoSubstring *,Coherence_namespace::TopoSubstring *>>,std::hash<Coherence_namespace::TopoID>,std::equal_to<Coherence_namespace::TopoID>,true>,std::__unordered_map_equal<Coherence_namespace::TopoID,std::__hash_value_type<Coherence_namespace::TopoID,std::pair<Coherence_namespace::TopoSubstring *,Coherence_namespace::TopoSubstring *>>,std::equal_to<Coherence_namespace::TopoID>,std::hash<Coherence_namespace::TopoID>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoID,std::pair<Coherence_namespace::TopoSubstring *,Coherence_namespace::TopoSubstring *>>>>::__emplace_unique_key_args<Coherence_namespace::TopoID,std::piecewise_construct_t const&,std::tuple<Coherence_namespace::TopoID const&>,std::tuple<>>((*(*(a1 + 32) + 8) + 48), a2);
  result[6] = 0;
  return result;
}

uint64_t *__36__CRTTMergeableString_graphIsEqual___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoID,std::pair<Coherence_namespace::TopoSubstring *,Coherence_namespace::TopoSubstring *>>,std::__unordered_map_hasher<Coherence_namespace::TopoID,std::__hash_value_type<Coherence_namespace::TopoID,std::pair<Coherence_namespace::TopoSubstring *,Coherence_namespace::TopoSubstring *>>,std::hash<Coherence_namespace::TopoID>,std::equal_to<Coherence_namespace::TopoID>,true>,std::__unordered_map_equal<Coherence_namespace::TopoID,std::__hash_value_type<Coherence_namespace::TopoID,std::pair<Coherence_namespace::TopoSubstring *,Coherence_namespace::TopoSubstring *>>,std::equal_to<Coherence_namespace::TopoID>,std::hash<Coherence_namespace::TopoID>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoID,std::pair<Coherence_namespace::TopoSubstring *,Coherence_namespace::TopoSubstring *>>>>::find<Coherence_namespace::TopoID>((*(*(a1 + 32) + 8) + 48), a2);
  if (result)
  {
    result[6] = a2;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a3 = 1;
  }

  return result;
}

- (id)dotDescription:(unint64_t)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v5 appendFormat:@"subgraph cluster_%ld%p_%ld {\n  rankdir=LR;\n", a3, self, a3];
  v37 = self;
  v6 = [(CRTTMergeableString *)self attributedString];
  v7 = [v6 description];

  v34 = [v7 stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];

  [(CRTTMergeableString *)self replica];
  v8 = Coherence_namespace::TopoReplica::toString(&v38);
  [v5 appendFormat:@"  label=%@_%ld version=(%@) addedBy=(%@)    '%@'\n", v8, a3, v37->_version, v37->_addedByVersion, v34];

  [v5 appendFormat:@"  color=lightgrey;\n"];
  v9 = [(CRTTMergeableString *)self orderedSubstrings];
  v10 = *v9;
  v35 = v9[1];
  if (*v9 != v35)
  {
    do
    {
      v11 = *v10;
      if (v37->_startNode == *v10)
      {
        v17 = @"  N%ld%p [label=Start];\n";
      }

      else
      {
        if (v37->_endNode != v11)
        {
          if (v11[5] == v11[4])
          {
            v36 = &stru_1F23CB0F8;
          }

          else
          {
            attributedString = v37->_attributedString;
            if (objc_opt_respondsToSelector())
            {
              v13 = MEMORY[0x1E696AEC0];
              v14 = [v37->_attributedString string];
              v15 = v14;
              if (v11[5] == v11[4])
              {
                v16 = 0;
              }

              else
              {
                v16 = *(v11 + 6);
              }

              v20 = [v14 substringWithRange:{*(v11 + 21), v16}];
              v36 = [v13 stringWithFormat:@"%@", v20];

              goto LABEL_19;
            }

            v18 = v37->_attributedString;
            objc_opt_class();
            v36 = @"?";
            if (objc_opt_isKindOfClass())
            {
              if (v11[5] == v11[4])
              {
                v19 = 0;
              }

              else
              {
                v19 = *(v11 + 6);
              }

              v21 = MEMORY[0x1E696AEC0];
              v15 = [v37->_attributedString substringWithRange:{*(v11 + 21), v19}];
              v36 = [v21 stringWithFormat:@"%@", v15];
LABEL_19:
            }
          }

          v22 = objc_alloc_init(MEMORY[0x1E696AD60]);
          v23 = v11[4];
          v24 = v11[5];
          while (v23 != v24)
          {
            v25 = *v23;
            v39 = *(v23 + 2);
            v38 = v25;
            v26 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:&v38];
            v27 = [v26 Coherence_shortDescription];
            [v22 appendFormat:@"%@.%d, %d ", v27, v39, HIDWORD(v39)];

            v23 = (v23 + 24);
          }

          v28 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v11];
          v29 = [v28 Coherence_shortDescription];
          [v5 appendFormat:@"  N%ld%p [label=%@ %@.%d, %d-%u (%@)];\n", a3, v11, v36, v29, *(v11 + 4), *(v11 + 5), (*(v11 + 5) + *(v11 + 6) - 1), v22];

          goto LABEL_24;
        }

        v17 = @"  N%ld%p [label=End];\n";
      }

      [v5 appendFormat:v17, a3, v11];
LABEL_24:
      v30 = v11[7];
      v31 = v11[8];
      while (v30 != v31)
      {
        [v5 appendFormat:@"  N%ld%p -> N%ld%p;\n", a3, v11, a3, *v30++];
      }

      ++v10;
    }

    while (v10 != v35);
  }

  [v5 appendString:@"}\n"];

  v32 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)_apply:(id)a3 alwaysApply:(BOOL)a4
{
  v6 = a3;
  v7 = [(CRTTMergeableString *)self renameGeneration];
  if (v7 < [v6 generation] || a4)
  {
    v8 = [(CRTTMergeableString *)self orderedSubstrings];
    v9 = *v8;
    v10 = v8[1];
    if (*v8 != v10)
    {
      do
      {
        v18[0] = 0;
        v18[1] = v18;
        v18[2] = 0x2020000000;
        v11 = *v9;
        v18[3] = v11;
        if (*(v11 + 4))
        {
          v12 = Coherence_namespace::TopoReplica::objc(v11);
          v13 = [v6 renamedWithRange:*(v11 + 5) replica:{*(v11 + 6), v12}];
          v14 = *(v11 + 5);
          v15 = *(v11 + 6);
          v17[0] = MEMORY[0x1E69E9820];
          v17[1] = 3221225472;
          v17[2] = __42__CRTTMergeableString__apply_alwaysApply___block_invoke;
          v17[3] = &unk_1E7A12610;
          v17[4] = self;
          v17[5] = v18;
          [v13 enumerateRangesIn:v14 :{v15, v17}];
        }

        _Block_object_dispose(v18, 8);
        ++v9;
      }

      while (v9 != v10);
    }

    [(CRTTMergeableString *)self invalidateCache];
    -[CRTTMergeableString setRenameGeneration:](self, "setRenameGeneration:", [v6 generation]);
    v16 = [(CRTTMergeableString *)self version];
    [v16 apply:v6];

    [(CRTTMergeableString *)self applyTimestampRenames:v6];
    [(CRTTMergeableString *)self coalesce];
  }
}

uint64_t __42__CRTTMergeableString__apply_alwaysApply___block_invoke(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = a4;
  if (a3 >= *(*(*(*(a1 + 40) + 8) + 24) + 24))
  {
    v9 = 0;
    if (a5 < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v9 = [*(a1 + 32) splitTopoSubstring:? atIndex:?];
  if ((a5 & 0x8000000000000000) == 0)
  {
LABEL_5:
    Coherence_namespace::TopoReplica::TopoReplica(&v14, v8, 0);
    v16 = v14;
    v10 = v15;
    v17 = v15;
    v11 = *(*(*(a1 + 40) + 8) + 24);
    *v11 = v14;
    *(v11 + 16) = v10;
    *(v11 + 20) = a5;
  }

LABEL_6:
  if (v9)
  {
    *(*(*(a1 + 40) + 8) + 24) = v9;
  }

  v12 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)applyTimestampRenames:(id)a3
{
  v4 = a3;
  v5 = [(CRTTMergeableString *)self orderedSubstrings];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3812000000;
  v26 = __Block_byref_object_copy__85;
  v27 = __Block_byref_object_dispose__86;
  v28 = &unk_1AE2A3E8A;
  v6 = *v5;
  v29 = v6;
  while (v6 != v5[1])
  {
    v7 = *v6;
    v8 = *(*v6 + 32);
    v9 = *(*v6 + 40);
    if (v8 != v9)
    {
      v10 = 0;
      do
      {
        if (*(v8 + 4))
        {
          v11 = Coherence_namespace::TopoReplica::objc(v8);
          v12 = *(v8 + 5);
          v13 = *(v7 + 24);
          v14 = [v4 renamedWithRange:v12 replica:{v13, v11}];
          v15 = [v14 rangeCountIn:{v12, v13}];
          if (v15 == 1)
          {
            v22[0] = MEMORY[0x1E69E9820];
            v22[1] = 3221225472;
            v22[2] = __45__CRTTMergeableString_applyTimestampRenames___block_invoke;
            v22[3] = &__block_descriptor_40_e34_B40__0__NSRange_QQ_8__NSUUID_24q32l;
            v22[4] = v8;
            [v14 enumerateRangesIn:v12 :{v13, v22}];
          }

          else if (v15 >= 2)
          {
            v21[0] = MEMORY[0x1E69E9820];
            v21[1] = 3221225472;
            v21[2] = __45__CRTTMergeableString_applyTimestampRenames___block_invoke_2;
            v21[3] = &unk_1E7A12658;
            v21[4] = &v23;
            v21[5] = v7;
            v21[6] = v5;
            [v14 enumerateRangesIn:v12 :{v13, v21}];

            v6 = v24[6];
            goto LABEL_16;
          }

          v10 = 1;
        }

        v8 = (v8 + 24);
      }

      while (v8 != v9);
      if (v10)
      {
        v16 = *(v7 + 32);
        v17 = *(v7 + 40);
        v18 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v17 - v16) >> 3));
        if (v17 == v16)
        {
          v19 = 0;
        }

        else
        {
          v19 = v18;
        }

        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,Coherence_namespace::TopoID *,false>(v16, v17, v30, v19, 1);
      }
    }

    v6 = v24[6] + 8;
    v24[6] = v6;
LABEL_16:
    ;
  }

  _Block_object_dispose(&v23, 8);
  v20 = [(CRTTMergeableString *)self addedByVersion];
  [v20 apply:v4];
}

uint64_t __45__CRTTMergeableString_applyTimestampRenames___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if ((a5 & 0x8000000000000000) == 0)
  {
    Coherence_namespace::TopoReplica::TopoReplica(&v12, v7, 0);
    v14 = v12;
    v8 = v13;
    v15 = v13;
    v9 = *(a1 + 32);
    *v9 = v12;
    *(v9 + 16) = v8;
    *(v9 + 20) = a5;
  }

  v10 = *MEMORY[0x1E69E9840];
  return 1;
}

void __45__CRTTMergeableString_applyTimestampRenames___block_invoke_2(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v6 = a4;
  v7 = *(a1 + 40);
  if (a3 < v7[6])
  {
    Coherence_namespace::TopoSubstring::splitAt(v7);
  }

  __assert_rtn("[CRTTMergeableString applyTimestampRenames:]_block_invoke_2", "TTMergeableString.mm", 2607, "0");
}

- (id)renamed:(id)a3
{
  v4 = a3;
  v5 = [(CRTTMergeableString *)self renameGeneration];
  if (v5 >= [v4 generation] && (objc_msgSend(v4, "hasLocalRenames") & 1) == 0)
  {
    v10 = self;
    goto LABEL_14;
  }

  v6 = self;
  objc_sync_enter(v6);
  renamedString = v6->_renamedString;
  if (!renamedString)
  {
    v9 = 0;
    goto LABEL_9;
  }

  v8 = [(CRTTMergeableString *)renamedString renameGeneration];
  if (v8 < [v4 generation])
  {
    v9 = v6->_renamedString;
LABEL_9:
    if (v9)
    {
      v12 = v9;
    }

    else
    {
      v12 = v6;
    }

    v13 = [(CRTTMergeableString *)v12 copyRenamedIfAvailable:0];
    [(CRTTMergeableString *)v13 apply:v4 skipRetain:0 alwaysApply:0];
    v14 = v6->_renamedString;
    v6->_renamedString = v13;
    v15 = v13;

    v10 = v6->_renamedString;
    goto LABEL_13;
  }

  v11 = [v4 hasLocalRenames];
  v9 = v6->_renamedString;
  if (v11)
  {
    goto LABEL_9;
  }

  v10 = v9;
LABEL_13:
  objc_sync_exit(v6);

LABEL_14:

  return v10;
}

- (id)temporaryNamesExcludingSelf:(BOOL)a3
{
  v3 = a3;
  v36 = *MEMORY[0x1E69E9840];
  v32 = objc_alloc_init(_TtC9Coherence18ObjCRenameSequence);
  v31 = objc_alloc_init(_TtC9Coherence11ObjCVersion);
  v30 = self;
  v5 = [(CRTTMergeableString *)self orderedSubstrings];
  v6 = *v5;
  v29 = v5[1];
  if (*v5 != v29)
  {
    v7 = 0;
    do
    {
      v8 = *v6;
      v9 = *(*v6 + 4);
      if (v9 && (!v3 || v9 != v30->_replica.index || uuid_compare(*v6, v30->_replica.uuid)))
      {
        v10 = Coherence_namespace::TopoReplica::objc(v8);
        if (v7 && (v11 = *(v7 + 6)) != 0)
        {
          v12 = *(v7 + 4);
          v13 = *(v7 + 5);
          *uu2 = *v7;
          v34 = v12;
          v35 = v11 + v13 - 1;
          v14 = Coherence_namespace::TopoID::objc(uu2);
        }

        else
        {
          v14 = 0;
        }

        [(ObjCRenameSequence *)v32 addWithReplica:v10 range:*(v8 + 5) lastTimestamp:*(v8 + 6), v14, v29];
      }

      v16 = *(v8 + 4);
      v15 = *(v8 + 5);
      while (v16 != v15)
      {
        if (*(v16 + 4))
        {
          if (!v3 || (Coherence_namespace::TopoReplica::TopoReplica(uu2, v30->_addedByReplica), *(v16 + 4) != v34) || uuid_compare(v16, uu2))
          {
            v17 = Coherence_namespace::TopoReplica::objc(v16);
            v18 = *(v16 + 5);
            v19 = *(v8 + 6);
            if (v7 && (v20 = *(v7 + 4), *(v7 + 5) - v20 == 24))
            {
              v21 = Coherence_namespace::TopoID::objc(v20);
            }

            else
            {
              v21 = 0;
            }

            [(ObjCRenameSequence *)v32 addAddedByReplica:v17 range:v18 lastTimestamp:v19, v21, v29];
            [(ObjCVersion *)v31 insertWithRange:v18 replica:v19, v17];
          }
        }

        v16 = (v16 + 24);
      }

      ++v6;
      v7 = v8;
    }

    while (v6 != v29);
  }

  v22 = [(CRTTMergeableString *)v30 addedByVersion];
  if (v3)
  {
    [(CRTTMergeableString *)v30 replica];
    v23 = Coherence_namespace::TopoReplica::objc(uu2);
  }

  else
  {
    v23 = 0;
  }

  v24 = [v22 temporaryComponentsWithExcluding:v23];
  if (v3)
  {
  }

  [v24 subtract:v31];
  [(ObjCRenameSequence *)v32 addTemporaryAddedByVersion:v24];
  v25 = [(CRTTMergeableString *)v30 addedByVersion];
  [(ObjCRenameSequence *)v32 addAddedByVersion:v25];

  v26 = [(CRTTMergeableString *)v30 version];
  [(ObjCRenameSequence *)v32 addVersion:v26];

  v27 = *MEMORY[0x1E69E9840];

  return v32;
}

- (id)temporaryConcurrentNames
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(_TtC9Coherence18ObjCRenameSequence);
  startNode = self->_startNode;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__CRTTMergeableString_temporaryConcurrentNames__block_invoke;
  v10[3] = &unk_1E7A12680;
  v5 = v3;
  v11 = v5;
  minIdPath(startNode, v10, v12);
  v6 = [(CRTTMergeableString *)self addedByVersion];
  [(ObjCRenameSequence *)v5 addAddedByVersion:v6];

  v7 = [(CRTTMergeableString *)self version];
  [(ObjCRenameSequence *)v5 addVersion:v7];

  v8 = *MEMORY[0x1E69E9840];

  return v5;
}

void __47__CRTTMergeableString_temporaryConcurrentNames__block_invoke(uint64_t a1, Coherence_namespace::TopoReplica *this)
{
  v3 = *(a1 + 32);
  v4 = Coherence_namespace::TopoReplica::objc(this);
  v5 = *(this + 5);
  v6 = v4;
  [v3 addWithReplica:? range:? lastTimestamp:?];
}

- (id)fullyRenamed:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = v5;
  v7 = v6[6];
  v8 = v6;
  if (v7)
  {
    v8 = v7;
  }

  v9 = [v8 temporaryNamesExcludingSelf:0];
  v10 = v8;
  v11 = v10;
  if (([v9 isEmpty] & 1) == 0)
  {
    v12 = [v10 copyRenamedIfAvailable:0];

    v13 = [v6 version];
    v14 = +[CRGlobalContextObjC renameObjCSequence:after:in:](_TtC9Coherence19CRGlobalContextObjC, "renameObjCSequence:after:in:", v9, [v13 maxCounter], v4);

    [v12 apply:v14 skipRetain:1 alwaysApply:0];
    [_TtC9Coherence19CRGlobalContextObjC releaseObjCSequence:v9];

    v11 = v12;
  }

  if (v11 != v6)
  {
    objc_storeStrong(v6 + 6, v11);
  }

  [v11 setContext:v4];

  objc_sync_exit(v6);

  return v11;
}

- (id)renamedIfAvailable
{
  v2 = self;
  objc_sync_enter(v2);
  renamedString = v2->_renamedString;
  if (!renamedString)
  {
    renamedString = v2;
  }

  v4 = renamedString;
  objc_sync_exit(v2);

  return v4;
}

- (void)applyRenamesAndRetainOrRelease:(id)a3 context:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (([v10 isEmpty] & 1) == 0)
  {
    v7 = [(CRTTMergeableString *)self version];
    v8 = +[CRGlobalContextObjC renameObjCSequence:after:in:](_TtC9Coherence19CRGlobalContextObjC, "renameObjCSequence:after:in:", v10, [v7 maxCounter], v6);

    [(CRTTMergeableString *)self apply:v8 skipRetain:0 alwaysApply:1];
    v9 = +[_TtC9Coherence19CRGlobalContextObjC objCRenames];
    [(CRTTMergeableString *)self apply:v9 skipRetain:0 alwaysApply:1];

    [(CRTTMergeableString *)self setContext:v6];
  }
}

- (BOOL)needToFinalizeTimestamps
{
  v3 = [(CRTTMergeableString *)self orderedSubstrings];
  for (i = *v3; i != v3[1]; ++i)
  {
    v5 = *i;
    if (*(*i + 16))
    {
      return 1;
    }

    v6 = *(v5 + 32);
    v7 = *(v5 + 40);
    while (v6 != v7)
    {
      if (*(v6 + 16))
      {
        return 1;
      }

      v6 += 24;
    }
  }

  v9 = [(CRTTMergeableString *)self addedByVersion];
  v8 = [v9 hasTemporaryComponents];

  return v8;
}

- (void)finalizeTimestamps:(id)a3
{
  v7 = a3;
  [(CRTTMergeableString *)self useRenameIfAvailable];
  v4 = [(CRTTMergeableString *)self temporaryNamesExcludingSelf:0];
  v5 = [(CRTTMergeableString *)self version];
  v6 = +[CRGlobalContextObjC renameObjCSequence:after:in:](_TtC9Coherence19CRGlobalContextObjC, "renameObjCSequence:after:in:", v4, [v5 maxCounter], v7);

  [(CRTTMergeableString *)self apply:v6 skipRetain:0 alwaysApply:1];
  [(CRTTMergeableString *)self setContext:v7];
}

- (__n128)deleteSubstrings:(uint64_t)a3 withCharacterRanges:(char)a4
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = (a2 - v12) >> 4;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v58 = a2[-1].n128_u64[0];
        v57 = a2 - 1;
        if (*v12 >= v58)
        {
          return result;
        }

LABEL_107:
        v128 = *v12;
        *v12 = *v57;
        result = v128;
LABEL_108:
        *v57 = result;
        return result;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      v59 = (v12 + 16);
      v63 = *(v12 + 16);
      v64 = (v12 + 32);
      v65 = *(v12 + 32);
      if (*v12 >= v63)
      {
        if (v63 < v65)
        {
          result = *v59;
          *v59 = *v64;
          *v64 = result;
          if (*v12 < *(v12 + 16))
          {
            v131 = *v12;
            *v12 = *v59;
            result = v131;
            *v59 = v131;
          }
        }
      }

      else
      {
        if (v63 < v65)
        {
          v129 = *v12;
          *v12 = *v64;
          result = v129;
          goto LABEL_180;
        }

        v133 = *v12;
        *v12 = *v59;
        result = v133;
        *v59 = v133;
        if (*(v12 + 16) < v65)
        {
          result = *v59;
          *v59 = *v64;
LABEL_180:
          *v64 = result;
        }
      }

      if (v64->n128_u64[0] >= v9->n128_u64[0])
      {
        return result;
      }

      result = *v64;
      *v64 = *v9;
      *v9 = result;
      if (v59->n128_u64[0] >= v64->n128_u64[0])
      {
        return result;
      }

      result = *v59;
      *v59 = *v64;
      *v64 = result;
LABEL_184:
      if (*v12 < *(v12 + 16))
      {
        v134 = *v12;
        *v12 = *v59;
        result = v134;
        *v59 = v134;
      }

      return result;
    }

    if (v13 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,-[CRTTMergeableString deleteSubstrings:withCharacterRanges:]::$_1 &,_NSRange *,0>(v12, (v12 + 16), (v12 + 32), (v12 + 48), a2[-1].n128_u64, result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v66 = (v12 + 16);
      v68 = v12 == a2 || v66 == a2;
      if (a4)
      {
        if (!v68)
        {
          v69 = 0;
          v70 = v12;
          do
          {
            v71 = v66;
            v72 = v70[2];
            if (*v70 < v72)
            {
              v73 = v70[3];
              v74 = v69;
              while (1)
              {
                result = *(v12 + v74);
                *(v12 + v74 + 16) = result;
                if (!v74)
                {
                  break;
                }

                v75 = *(v12 + v74 - 16);
                v74 -= 16;
                if (v75 >= v72)
                {
                  v76 = (v12 + v74 + 16);
                  goto LABEL_127;
                }
              }

              v76 = v12;
LABEL_127:
              *v76 = v72;
              v76[1] = v73;
            }

            v66 = v71 + 1;
            v69 += 16;
            v70 = v71;
          }

          while (&v71[1] != a2);
        }
      }

      else if (!v68)
      {
        do
        {
          v104 = v66;
          v105 = a1[1].n128_u64[0];
          if (a1->n128_u64[0] < v105)
          {
            v106 = a1[1].n128_u64[1];
            v107 = v104;
            do
            {
              result = v107[-1];
              *v107 = result;
              v108 = v107[-2].n128_u64[0];
              --v107;
            }

            while (v108 < v105);
            v107->n128_u64[0] = v105;
            v107->n128_u64[1] = v106;
          }

          v66 = v104 + 1;
          a1 = v104;
        }

        while (&v104[1] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v77 = (v13 - 2) >> 1;
        v78 = v77;
        do
        {
          v79 = v78;
          if (v77 >= v78)
          {
            v80 = (2 * v78) | 1;
            v81 = (v12 + 16 * v80);
            v82 = *v81;
            if (2 * v79 + 2 < v13 && v81[2] < v82)
            {
              v82 = v81[2];
              v81 += 2;
              v80 = 2 * v79 + 2;
            }

            v83 = (v12 + 16 * v79);
            v84 = *v83;
            v85 = *v83;
            if (*v83 >= v82)
            {
              do
              {
                v86 = v81;
                *v83 = *v81;
                if (v77 < v80)
                {
                  break;
                }

                v87 = (2 * v80) | 1;
                v81 = (v12 + 16 * v87);
                v80 = 2 * v80 + 2;
                v88 = *v81;
                if (v80 >= v13)
                {
                  v80 = v87;
                }

                else if (v81[2] >= v88)
                {
                  v80 = v87;
                }

                else
                {
                  v88 = v81[2];
                  v81 += 2;
                }

                v83 = v86;
              }

              while (v85 >= v88);
              *v86 = v84;
            }
          }

          v78 = v79 - 1;
        }

        while (v79);
        do
        {
          v89 = 0;
          v130 = *v12;
          v90 = v12;
          do
          {
            v91 = &v90[v89];
            v92 = v91 + 1;
            v93 = (2 * v89) | 1;
            v89 = 2 * v89 + 2;
            if (v89 >= v13)
            {
              v89 = v93;
            }

            else
            {
              v95 = v91[2].n128_u64[0];
              v94 = v91 + 2;
              if (v95 >= v94[-1].n128_u64[0])
              {
                v89 = v93;
              }

              else
              {
                v92 = v94;
              }
            }

            *v90 = *v92;
            v90 = v92;
          }

          while (v89 <= ((v13 - 2) >> 1));
          if (v92 == --a2)
          {
            result = v130;
            *v92 = v130;
          }

          else
          {
            *v92 = *a2;
            result = v130;
            *a2 = v130;
            v96 = (&v92[1] - v12) >> 4;
            v97 = v96 < 2;
            v98 = v96 - 2;
            if (!v97)
            {
              v99 = v98 >> 1;
              v100 = (v12 + 16 * v99);
              v101 = v92->n128_u64[0];
              if (v92->n128_u64[0] < v100->n128_u64[0])
              {
                v102 = v92->n128_u64[1];
                do
                {
                  v103 = v100;
                  result = *v100;
                  *v92 = *v100;
                  if (!v99)
                  {
                    break;
                  }

                  v99 = (v99 - 1) >> 1;
                  v100 = (v12 + 16 * v99);
                  v92 = v103;
                }

                while (v101 < v100->n128_u64[0]);
                v103->n128_u64[0] = v101;
                v103->n128_u64[1] = v102;
              }
            }
          }

          v97 = v13-- <= 2;
        }

        while (!v97);
      }

      return result;
    }

    v14 = (v12 + 16 * (v13 >> 1));
    v15 = v14;
    v16 = v9->n128_u64[0];
    if (v13 >= 0x81)
    {
      v17 = v14->n128_u64[0];
      if (*v12 >= v14->n128_u64[0])
      {
        if (v17 < v16)
        {
          v111 = *v14;
          *v14 = *v9;
          *v9 = v111;
          if (*v12 < v14->n128_u64[0])
          {
            v112 = *v12;
            *v12 = *v14;
            *v14 = v112;
          }
        }
      }

      else
      {
        if (v17 < v16)
        {
          v109 = *v12;
          *v12 = *v9;
          goto LABEL_26;
        }

        v115 = *v12;
        *v12 = *v14;
        *v14 = v115;
        if (v14->n128_u64[0] < v9->n128_u64[0])
        {
          v109 = *v14;
          *v14 = *v9;
LABEL_26:
          *v9 = v109;
        }
      }

      v19 = (v12 + 16);
      v20 = v14 - 1;
      v21 = v14[-1].n128_u64[0];
      v22 = v10->n128_u64[0];
      if (*(v12 + 16) >= v21)
      {
        if (v21 < v22)
        {
          v116 = *v20;
          *v20 = *v10;
          *v10 = v116;
          if (v19->n128_u64[0] < v20->n128_u64[0])
          {
            v24 = *v19;
            *v19 = *v20;
            *v20 = v24;
          }
        }
      }

      else
      {
        if (v21 < v22)
        {
          v23 = *v19;
          *v19 = *v10;
          goto LABEL_38;
        }

        v25 = *v19;
        *v19 = *v20;
        *v20 = v25;
        if (v20->n128_u64[0] < v10->n128_u64[0])
        {
          v118 = *v20;
          *v20 = *v10;
          v23 = v118;
LABEL_38:
          *v10 = v23;
        }
      }

      v26 = (v12 + 32);
      v29 = v14[1].n128_u64[0];
      v27 = v14 + 1;
      v28 = v29;
      v30 = v11->n128_u64[0];
      if (*(v12 + 32) >= v29)
      {
        if (v28 < v30)
        {
          v119 = *v27;
          *v27 = *v11;
          *v11 = v119;
          if (v26->n128_u64[0] < v27->n128_u64[0])
          {
            v32 = *v26;
            *v26 = *v27;
            *v27 = v32;
          }
        }
      }

      else
      {
        if (v28 < v30)
        {
          v31 = *v26;
          *v26 = *v11;
          goto LABEL_47;
        }

        v33 = *v26;
        *v26 = *v27;
        *v27 = v33;
        if (v27->n128_u64[0] < v11->n128_u64[0])
        {
          v120 = *v27;
          *v27 = *v11;
          v31 = v120;
LABEL_47:
          *v11 = v31;
        }
      }

      v34 = v15->n128_u64[0];
      v35 = v27->n128_u64[0];
      if (v20->n128_u64[0] >= v15->n128_u64[0])
      {
        if (v34 < v35)
        {
          v122 = *v15;
          *v15 = *v27;
          *v27 = v122;
          if (v20->n128_u64[0] < v15->n128_u64[0])
          {
            v123 = *v20;
            *v20 = *v15;
            *v15 = v123;
          }
        }
      }

      else
      {
        if (v34 < v35)
        {
          v121 = *v20;
          *v20 = *v27;
          goto LABEL_56;
        }

        v124 = *v20;
        *v20 = *v15;
        *v15 = v124;
        if (v15->n128_u64[0] < v27->n128_u64[0])
        {
          v121 = *v15;
          *v15 = *v27;
LABEL_56:
          *v27 = v121;
        }
      }

      v125 = *v12;
      *v12 = *v15;
      result = v125;
      *v15 = v125;
      goto LABEL_58;
    }

    v18 = *v12;
    if (v14->n128_u64[0] >= *v12)
    {
      if (v18 < v16)
      {
        v113 = *v12;
        *v12 = *v9;
        result = v113;
        *v9 = v113;
        if (v14->n128_u64[0] < *v12)
        {
          v114 = *v14;
          *v14 = *v12;
          result = v114;
          *v12 = v114;
        }
      }

      goto LABEL_58;
    }

    if (v18 < v16)
    {
      v110 = *v14;
      *v14 = *v9;
LABEL_35:
      result = v110;
      *v9 = v110;
      goto LABEL_58;
    }

    v117 = *v14;
    *v14 = *v12;
    result = v117;
    *v12 = v117;
    if (*v12 < v9->n128_u64[0])
    {
      v110 = *v12;
      *v12 = *v9;
      goto LABEL_35;
    }

LABEL_58:
    --a3;
    v36 = *v12;
    if (a4)
    {
      v37 = *(v12 + 8);
LABEL_61:
      v38 = 0;
      do
      {
        v39 = *(v12 + v38 + 16);
        v38 += 16;
      }

      while (v36 < v39);
      v40 = v12 + v38;
      v41 = a2;
      if (v38 == 16)
      {
        v41 = a2;
        do
        {
          if (v40 >= v41)
          {
            break;
          }

          v43 = v41[-1].n128_u64[0];
          --v41;
        }

        while (v36 >= v43);
      }

      else
      {
        do
        {
          v42 = v41[-1].n128_u64[0];
          --v41;
        }

        while (v36 >= v42);
      }

      v12 += v38;
      if (v40 < v41)
      {
        v44 = v41;
        do
        {
          v126 = *v12;
          *v12 = *v44;
          result = v126;
          *v44 = v126;
          do
          {
            v45 = *(v12 + 16);
            v12 += 16;
          }

          while (v36 < v45);
          do
          {
            v46 = v44[-1].n128_u64[0];
            --v44;
          }

          while (v36 >= v46);
        }

        while (v12 < v44);
      }

      v47 = (v12 - 16);
      if ((v12 - 16) != a1)
      {
        result = *v47;
        *a1 = *v47;
      }

      *(v12 - 16) = v36;
      *(v12 - 8) = v37;
      if (v40 < v41)
      {
        goto LABEL_80;
      }

      v48 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[CRTTMergeableString deleteSubstrings:withCharacterRanges:]::$_1 &,_NSRange *>(a1, (v12 - 16), result);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[CRTTMergeableString deleteSubstrings:withCharacterRanges:]::$_1 &,_NSRange *>(v12, a2, v49))
      {
        a2 = (v12 - 16);
        if (!v48)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v48)
      {
LABEL_80:
        std::__introsort<std::_ClassicAlgPolicy,[CRTTMergeableString deleteSubstrings:withCharacterRanges:]::$_1 &,_NSRange *,false>(a1, v12 - 16, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v37 = *(v12 + 8);
      if (v36 < *(v12 - 16))
      {
        goto LABEL_61;
      }

      if (v9->n128_u64[0] >= v36)
      {
        v51 = v12 + 16;
        do
        {
          v12 = v51;
          if (v51 >= a2)
          {
            break;
          }

          v51 += 16;
        }

        while (*v12 >= v36);
      }

      else
      {
        do
        {
          v50 = *(v12 + 16);
          v12 += 16;
        }

        while (v50 >= v36);
      }

      v52 = a2;
      if (v12 < a2)
      {
        v52 = a2;
        do
        {
          v53 = v52[-1].n128_u64[0];
          --v52;
        }

        while (v53 < v36);
      }

      while (v12 < v52)
      {
        v127 = *v12;
        *v12 = *v52;
        result = v127;
        *v52 = v127;
        do
        {
          v54 = *(v12 + 16);
          v12 += 16;
        }

        while (v54 >= v36);
        do
        {
          v55 = v52[-1].n128_u64[0];
          --v52;
        }

        while (v55 < v36);
      }

      v56 = (v12 - 16);
      if ((v12 - 16) != a1)
      {
        result = *v56;
        *a1 = *v56;
      }

      a4 = 0;
      *(v12 - 16) = v36;
      *(v12 - 8) = v37;
    }
  }

  v59 = (v12 + 16);
  v60 = *(v12 + 16);
  v62 = a2[-1].n128_u64[0];
  v57 = a2 - 1;
  v61 = v62;
  if (*v12 >= v60)
  {
    if (v60 >= v61)
    {
      return result;
    }

    result = *v59;
    *v59 = *v57;
    *v57 = result;
    goto LABEL_184;
  }

  if (v60 < v61)
  {
    goto LABEL_107;
  }

  v132 = *v12;
  *v12 = *v59;
  result = v132;
  *v59 = v132;
  if (*(v12 + 16) < v57->n128_u64[0])
  {
    result = *v59;
    *v59 = *v57;
    goto LABEL_108;
  }

  return result;
}

- (BOOL)hasAllIDsIn:(void *)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 1065353216;
  v4 = *a3;
  v5 = *(a3 + 1);
  if (*a3 != v5)
  {
    do
    {
      v6 = *v4;
      *&v24[12] = *(v4 + 12);
      *v24 = v6;
      v25 = *(v4 + 4);
      if (v25)
      {
        v7 = std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>,std::__unordered_map_hasher<Coherence_namespace::TopoReplica,std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>,std::hash<Coherence_namespace::TopoReplica>,std::equal_to<Coherence_namespace::TopoReplica>,true>,std::__unordered_map_equal<Coherence_namespace::TopoReplica,std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>,std::equal_to<Coherence_namespace::TopoReplica>,std::hash<Coherence_namespace::TopoReplica>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>>>::find<Coherence_namespace::TopoReplica>(&v20, v24);
        if (v7)
        {
          [v7[5] addIndexesInRange:{*&v24[20], *&v24[24]}];
        }

        else
        {
          v8 = [MEMORY[0x1E696AD50] indexSetWithIndexesInRange:{*&v24[20], *&v24[24], v20, v21}];
          v23[0] = v24;
          v9 = std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>,std::__unordered_map_hasher<Coherence_namespace::TopoReplica,std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>,std::hash<Coherence_namespace::TopoReplica>,std::equal_to<Coherence_namespace::TopoReplica>,true>,std::__unordered_map_equal<Coherence_namespace::TopoReplica,std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>,std::equal_to<Coherence_namespace::TopoReplica>,std::hash<Coherence_namespace::TopoReplica>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>>>::__emplace_unique_key_args<Coherence_namespace::TopoReplica,std::piecewise_construct_t const&,std::tuple<Coherence_namespace::TopoReplica const&>,std::tuple<>>(&v20, v24);
          v10 = v9[5];
          v9[5] = v8;
        }
      }

      v4 = (v4 + 40);
    }

    while (v4 != v5);
  }

  v11 = [(CRTTMergeableString *)self orderedSubstrings:v20];
  v12 = *v11;
  v13 = v11[1];
  while (v12 != v13)
  {
    v14 = **v12;
    *&v24[12] = *(*v12 + 12);
    *v24 = v14;
    v15 = std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>,std::__unordered_map_hasher<Coherence_namespace::TopoReplica,std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>,std::hash<Coherence_namespace::TopoReplica>,std::equal_to<Coherence_namespace::TopoReplica>,true>,std::__unordered_map_equal<Coherence_namespace::TopoReplica,std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>,std::equal_to<Coherence_namespace::TopoReplica>,std::hash<Coherence_namespace::TopoReplica>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>>>::find<Coherence_namespace::TopoReplica>(&v20, v24);
    v16 = v15;
    if (v15)
    {
      [v15[5] removeIndexesInRange:{*&v24[20], *&v24[24]}];
      if (![v16[5] count])
      {
        std::__hash_table<Coherence_namespace::TopoSubstring *,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::allocator<Coherence_namespace::TopoSubstring *>>::remove(&v20, v16, v23);
        std::unique_ptr<std::__hash_node<std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](v23);
      }
    }

    ++v12;
  }

  v17 = *(&v21 + 1) == 0;
  std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>,std::__unordered_map_hasher<Coherence_namespace::TopoReplica,std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>,std::hash<Coherence_namespace::TopoReplica>,std::equal_to<Coherence_namespace::TopoReplica>,true>,std::__unordered_map_equal<Coherence_namespace::TopoReplica,std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>,std::equal_to<Coherence_namespace::TopoReplica>,std::hash<Coherence_namespace::TopoReplica>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>>>::~__hash_table(&v20);
  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (void)undeleteSubstrings:(void *)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = *a3;
  v4 = *(a3 + 1);
  if (*a3 != v4)
  {
    do
    {
      v23 = *v3;
      *(&v6 + 1) = *(&v23 + 1);
      v24 = *(v3 + 4);
      *&v6 = *(v3 + 20);
      v16 = v6;
      v7 = *(v3 + 4);
      if (v7)
      {
        __p = 0;
        v18 = 0;
        v19 = 0;
        v20 = v23;
        v21 = v24;
        v22 = v16;
        [(CRTTMergeableString *)self getSubstrings:&__p forTopoIDRange:&v20];
        v8 = __p;
        v9 = v18;
        if (v18 != __p)
        {
          do
          {
            v11 = *(v9 - 1);
            v9 -= 8;
            v10 = v11;
            if (*(v11 + 40) == *(v11 + 32))
            {
              v13 = v10[5];
              v12 = v10[6];
              v14 = [(CRTTMergeableString *)self attributedString];
              [v14 Coherence_replaceStorageInRange:v10[21] withStorage:0 fromRange:{v7, (v13 - v16), v12}];

              [(CRTTMergeableString *)self addNewAddedByFor:v10];
              v8 = __p;
            }
          }

          while (v9 != v8);
        }

        [(CRTTMergeableString *)self updateSubstringIndexes];
        if (__p)
        {
          v18 = __p;
          operator delete(__p);
        }
      }

      v3 = (v3 + 40);
    }

    while (v3 != v4);
  }

  v15 = *MEMORY[0x1E69E9840];
}

@end