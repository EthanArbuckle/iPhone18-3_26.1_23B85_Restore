@interface ICTTMergeableString
+ (id)timestampFromData:(id)a3;
- (BOOL)canMergeString:(id)a3;
- (BOOL)check:(id *)a3;
- (BOOL)graphIsEqual:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isFragment;
- (BOOL)selection:(id)a3 wasModifiedAfter:(id)a4;
- (BOOL)textEitherSideOfSelectionAnchor:(TopoID)a3 wasModifiedAfter:(id)a4;
- (ICCRTTCompatibleDocument)document;
- (ICTTMergeableString)initWithArchive:(const void *)a3 replicaID:(id)a4 orderedSubstrings:(void *)a5 timestamp:(id)a6 fragment:(BOOL)a7;
- (ICTTMergeableString)initWithData:(id)a3 replicaID:(id)a4 fragment:(BOOL)a5;
- (ICTTMergeableString)initWithReplicaID:(id)a3 asFragment:(BOOL)a4;
- (ICTTMergeableStringDelegate)delegate;
- (NSString)description;
- (TopoIDRange)insertAttributedString:(SEL)a3 after:(id)a4 before:(void *)a5;
- (__n128)deleteSubstrings:(uint64_t)a3 withCharacterRanges:(char)a4;
- (id).cxx_construct;
- (id)characterRangesForSelection:(id)a3;
- (id)characterRangesForSelection:(id)a3 selectedSubstringsBlock:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dotDescription:(unint64_t)a3;
- (id)i_saveDeltasSinceTimestamp:(id)a3 toArchive:(void *)a4;
- (id)selectionForCharacterRanges:(id)a3;
- (id)selectionForCharacterRanges:(id)a3 selectionAffinity:(unint64_t)a4;
- (id)serialize;
- (id)serializeDeltaSinceTimestamp:(id)a3;
- (int64_t)substring:(void *)a3 modifiedAfter:(id)a4 includeAttributes:(BOOL)a5 replicaID:(id *)a6;
- (unint64_t)getCharacterIndexForCharID:(TopoID)a3;
- (unint64_t)hash;
- (unint64_t)length;
- (unint64_t)mergeWithString:(id)a3 mergeTimestamps:(BOOL)a4;
- (void)checkTimestampLogStyleErrors:(BOOL)a3;
- (void)cleanupObjectsNeedingUpdatedRanges;
- (void)coalesce;
- (void)dealloc;
- (void)deleteCharactersInRange:(_NSRange)a3;
- (void)deleteSubstrings:(void *)a3 withCharacterRanges:(void *)a4;
- (void)dumpData;
- (void)dumpMergeData:(id)a3;
- (void)endEditing;
- (void)enumerateHighlightableRangesModifiedAfter:(id)a3 includingAttributes:(BOOL)a4 usingBlock:(id)a5;
- (void)enumerateSubstrings:(id)a3;
- (void)generateIdsForLocalChanges;
- (void)generateIdsForLocalChangesSafeForSharedTimestamp:(BOOL)a3;
- (void)getCharacterRanges:(void *)a3 forSubstrings:(void *)a4;
- (void)getSubstringBeforeTopoID:(TopoID)a3;
- (void)getSubstrings:(void *)a3 forCharacterRange:(_NSRange)a4;
- (void)getSubstrings:(void *)a3 forTopoIDRange:(TopoIDRange *)a4;
- (void)insertAttributedString:(id)a3 atIndex:(unint64_t)a4;
- (void)insertString:(id)a3 atIndex:(unint64_t)a4;
- (void)mergeWith:(id)a3;
- (void)moveRange:(_NSRange)a3 toIndex:(unint64_t)a4;
- (void)orderedSubstrings;
- (void)realizeLocalChangesIn:(id)a3;
- (void)replaceCharactersInRange:(_NSRange)a3 withAttributedString:(id)a4;
- (void)replaceCharactersInRange:(_NSRange)a3 withString:(id)a4;
- (void)saveSubstrings:(void *)a3 archiveSet:(void *)a4 linkSet:(void *)a5 archivedString:(id *)a6 toArchive:(void *)a7;
- (void)saveToArchive:(void *)a3;
- (void)setDocument:(id)a3;
- (void)setTimestamp:(id)a3;
- (void)sortSplitNodes;
- (void)splitTopoSubstring:(void *)a3 atIndex:(unsigned int)a4;
- (void)traverseUnordered:(id)a3;
- (void)updateAttributedStringAfterMerge;
- (void)updateCache;
- (void)updateClock;
- (void)updateSubstringIndexes;
- (void)updateTimestampsInRange:(_NSRange)a3;
- (void)updateTopoIDRange:(TopoIDRange *)a3 toNewRangeID:(TopoIDRange *)a4;
@end

@implementation ICTTMergeableString

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

- (void)updateClock
{
  if (self->_replicaUUID)
  {
    v28 = [MEMORY[0x277CCAD78] TTZero];
    v3 = [MEMORY[0x277CCAD78] TTZero];
    v4 = [(ICTTMergeableString *)self orderedSubstrings];
    v27 = self;
    v5 = *v4;
    v6 = v4[1];
    if (*v4 != v6)
    {
      v7 = 0;
      v8 = 0;
      while (1)
      {
        v9 = *v5;
        v10 = **v5;
        v11 = [MEMORY[0x277CCAD78] TTZero];
        if ([v10 isEqual:v11])
        {
          goto LABEL_12;
        }

        v12 = *v9;
        v13 = v12;
        v14 = *(v9 + 2) + *(v9 + 4) - 1;
        if (v14 > v7)
        {
          break;
        }

        if (v14 != v7)
        {

          goto LABEL_12;
        }

        v16 = [v12 TTCompare:v28];

        if (v16 == 1)
        {
          goto LABEL_7;
        }

LABEL_13:
        v17 = v9[3];
        v18 = [MEMORY[0x277CCAD78] TTZero];
        if (([v17 isEqual:v18] & 1) == 0)
        {
          v19 = *(v9 + 8);
          if (v19 > v8)
          {

LABEL_17:
            v20 = v9[3];

            v8 = *(v9 + 8);
            v3 = v20;
            goto LABEL_18;
          }

          if (v19 == v8)
          {
            v21 = [v9[3] TTCompare:v3];

            if (v21 != 1)
            {
              goto LABEL_18;
            }

            goto LABEL_17;
          }
        }

LABEL_18:
        if (++v5 == v6)
        {
          goto LABEL_25;
        }
      }

LABEL_7:
      v15 = *v9;
      v11 = v28;
      v7 = *(v9 + 2) + *(v9 + 4) - 1;
      v28 = v15;
LABEL_12:

      goto LABEL_13;
    }

    v8 = 0;
    v7 = 0;
LABEL_25:
    v22 = v27;
    v23 = [v28 TTCompare:{v27->_replicaUUID, v27}];
    v24 = [v3 TTCompare:v22->_replicaUUID];
    if (v23 == -1)
    {
      v25 = v7;
    }

    else
    {
      v25 = v7 + 1;
    }

    if (v24 == -1)
    {
      v26 = v8;
    }

    else
    {
      v26 = v8 + 1;
    }

    v22->_replicaTextClock = v25;
    v22->_replicaStyleClock = v26;
  }
}

- (void)orderedSubstrings
{
  if (self->_cacheInvalid)
  {
    [(ICTTMergeableString *)self updateCache];
  }

  return &self->_orderedSubstrings;
}

- (void)updateCache
{
  p_orderedSubstrings = &self->_orderedSubstrings;
  begin = self->_orderedSubstrings.__begin_;
  self->_orderedSubstrings.__end_ = begin;
  self->_cacheInvalid = 0;
  v5 = self->_startNodes.__begin_;
  end = self->_startNodes.__end_;
  if (v5 == end)
  {
    v9 = begin;
  }

  else
  {
    v7 = MEMORY[0x277D85DD0];
    do
    {
      v8 = *v5;
      v10[0] = v7;
      v10[1] = 3221225472;
      v10[2] = __34__ICTTMergeableString_updateCache__block_invoke;
      v10[3] = &unk_278195C58;
      v10[4] = self;
      traverseIterative(v8, v10);
      ++v5;
    }

    while (v5 != end);
    begin = self->_orderedSubstrings.__begin_;
    v9 = self->_orderedSubstrings.__end_;
  }

  if ((v9 - begin) >> 2 < (self->_orderedSubstrings.__cap_ - begin))
  {
    std::vector<TopoSubstring *>::shrink_to_fit(&p_orderedSubstrings->__begin_);
  }
}

- (void)generateIdsForLocalChanges
{
  v3 = [(ICTTMergeableString *)self timestamp];
  -[ICTTMergeableString generateIdsForLocalChangesSafeForSharedTimestamp:](self, "generateIdsForLocalChangesSafeForSharedTimestamp:", [v3 isDocumentShared]);
}

- (BOOL)isFragment
{
  begin = self->_startNodes.__begin_;
  if ((self->_startNodes.__end_ - begin) != 8 || (self->_endNodes.__end_ - self->_endNodes.__begin_) != 8)
  {
    goto LABEL_9;
  }

  v4 = *begin;
  v5 = [MEMORY[0x277CCAD78] TTZero];
  if (*(v4 + 2))
  {
    goto LABEL_4;
  }

  v7 = [*v4 isEqual:v5];

  if ((v7 & 1) == 0)
  {
LABEL_9:
    LOBYTE(v6) = 1;
    return v6;
  }

  v8 = *self->_endNodes.__begin_;
  v5 = [MEMORY[0x277CCAD78] TTZero];
  if (*(v8 + 2) == -1)
  {
    v6 = [*v8 isEqual:v5] ^ 1;
    goto LABEL_5;
  }

LABEL_4:
  LOBYTE(v6) = 1;
LABEL_5:

  return v6;
}

- (void)sortSplitNodes
{
  minIdPath(*self->_startNodes.__begin_, v3);
  v2 = v3[0];
}

- (void)updateAttributedStringAfterMerge
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB48]);
  v4 = [(ICTTMergeableString *)self orderedSubstrings];
  v5 = *v4;
  v6 = v4[1];
  while (v5 != v6)
  {
    v7 = *v5;
    v8 = [(NSMutableAttributedString *)v3 length];
    if ((*(v7 + 44) & 1) == 0)
    {
      [(NSMutableAttributedString *)v3 ic_appendAttributedSubstring:self->_attributedString fromRange:*(v7 + 40), *(v7 + 16)];
    }

    *(v7 + 40) = ICTTBoundedCheckedCastNSUIntegerToUInt32(v8);
    ++v5;
  }

  attributedString = self->_attributedString;
  self->_attributedString = v3;
}

- (ICTTMergeableStringDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)dealloc
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x5812000000;
  v16 = __Block_byref_object_copy__11;
  v17 = __Block_byref_object_dispose__12;
  v18 = "";
  memset(v19, 0, sizeof(v19));
  v20 = 1065353216;
  begin = self->_startNodes.__begin_;
  end = self->_startNodes.__end_;
  if (begin == end)
  {
    v7 = &v13;
  }

  else
  {
    v5 = MEMORY[0x277D85DD0];
    do
    {
      v6 = *begin;
      v12[0] = v5;
      v12[1] = 3221225472;
      v12[2] = __30__ICTTMergeableString_dealloc__block_invoke;
      v12[3] = &unk_278195BB8;
      v12[4] = &v13;
      traverseUnordered(v6, v12);
      ++begin;
    }

    while (begin != end);
    v7 = v14;
  }

  for (i = v7[8]; i; i = *i)
  {
    v9 = i[2];
    if (v9)
    {
      v10 = *(v9 + 48);
      if (v10)
      {
        *(v9 + 56) = v10;
        operator delete(v10);
      }

      MEMORY[0x216063B80](v9, 0x1080C40D9F1C51ELL);
    }
  }

  _Block_object_dispose(&v13, 8);
  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(v19);
  v11.receiver = self;
  v11.super_class = ICTTMergeableString;
  [(ICTTMergeableString *)&v11 dealloc];
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
      [(ICTTMergeableString *)self coalesce];
    }
  }
}

- (void)coalesce
{
  if (!self->_editCount && ![(ICTTMergeableString *)self isFragment])
  {
    v3 = *self->_startNodes.__begin_;
    v48[0] = 0;
    v48[1] = v48;
    v48[2] = 0x2020000000;
    v49 = 0;
    v40 = 0;
    v41 = &v40;
    v42 = 0x5812000000;
    v43 = __Block_byref_object_copy__11;
    v44 = __Block_byref_object_dispose__12;
    v45 = "";
    memset(v46, 0, sizeof(v46));
    v47 = 1065353216;
    v32 = 0;
    v33 = &v32;
    v34 = 0x5812000000;
    v35 = __Block_byref_object_copy__11;
    v36 = __Block_byref_object_dispose__12;
    v37 = "";
    memset(v38, 0, sizeof(v38));
    v39 = 1065353216;
    v4 = [MEMORY[0x277CCAD78] UUID];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __31__ICTTMergeableString_coalesce__block_invoke;
    v25[3] = &unk_278195C80;
    v31 = v3;
    v28 = &v32;
    v5 = v4;
    v26 = v5;
    v27 = self;
    v29 = v48;
    v30 = &v40;
    [(ICTTMergeableString *)self traverseUnordered:v25];
    for (i = v41[8]; i; i = *i)
    {
      v7 = i[2];
      v8 = *v7;
      v9 = *(v7 + 8);
      v10 = *(v7 + 16);
      v11 = [MEMORY[0x277CCAD78] CR_unserialized];
      unserializedClock = self->_unserializedClock;
      v13 = *v7;
      *v7 = v11;

      *(v7 + 8) = unserializedClock;
      self->_unserializedClock += *(v7 + 16);
      v14 = v8;
      v22 = v14;
      v23 = v9;
      v24 = v10;
      v19 = *v7;
      v15 = *(v7 + 16);
      v20 = *(v7 + 8);
      v21 = v15;
      [(ICTTMergeableString *)self updateTopoIDRange:&v22 toNewRangeID:&v19];
    }

    for (j = v33[8]; j; j = *j)
    {
      v17 = j[2];
      if (v17)
      {
        v18 = *(v17 + 48);
        if (v18)
        {
          *(v17 + 56) = v18;
          operator delete(v18);
        }

        MEMORY[0x216063B80](v17, 0x1080C40D9F1C51ELL);
      }
    }

    [(ICTTMergeableString *)self invalidateCache];

    _Block_object_dispose(&v32, 8);
    std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(v38);
    _Block_object_dispose(&v40, 8);
    std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(v46);
    _Block_object_dispose(v48, 8);
  }
}

void __31__ICTTMergeableString_coalesce__block_invoke(void *a1, uint64_t a2)
{
  v48 = a2;
  if (a1[9] != a2)
  {
    v2 = a2;
    v3 = *(a2 + 48);
    if (*(a2 + 56) - v3 == 8)
    {
      v5 = 0x277CCA000uLL;
      do
      {
        v6 = *v3;
        v47 = v6;
        if (*(v6 + 72) != 1 || *(v2 + 44) != *(v6 + 44))
        {
          return;
        }

        if ([*v2 isEqual:*v6])
        {
          v7 = v48;
          if (*(v2 + 16) + *(v2 + 8) == *(v6 + 8) && *(v48 + 32) == *(v47 + 32))
          {
            v8 = [*(v48 + 24) isEqual:*(v47 + 24)];
            v7 = v48;
            if (v8)
            {
              v9 = v47;
              if (v48 != v47)
              {
                std::vector<TopoSubstring *>::__assign_with_size[abi:ne200100]<TopoSubstring **,TopoSubstring **>((v48 + 48), *(v47 + 48), *(v47 + 56), (*(v47 + 56) - *(v47 + 48)) >> 3);
                v9 = v47;
                v7 = v48;
              }

              *(v7 + 16) += *(v9 + 16);
              std::__hash_table<TopoSubstring *,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,std::allocator<TopoSubstring *>>::__emplace_unique_key_args<TopoSubstring *,TopoSubstring * const&>((*(a1[6] + 8) + 48), &v47);
              goto LABEL_27;
            }
          }
        }

        else
        {
          v7 = v48;
        }

        v10 = *v7;
        v11 = [*(v5 + 3448) CR_unserialized];
        if (v10 != v11)
        {
          goto LABEL_30;
        }

        v12 = *v47;
        v13 = [*(v5 + 3448) CR_unserialized];
        v14 = v13;
        if (v12 != v13 || *(v48 + 32) != *(v47 + 32))
        {

LABEL_30:
          return;
        }

        v15 = [*(v48 + 24) isEqual:*(v47 + 24)];

        if (!v15)
        {
          return;
        }

        v16 = v48;
        v17 = *v48;
        v18 = *(v16 + 8);
        v19 = *(v16 + 16);
        if (v48 != v47)
        {
          std::vector<TopoSubstring *>::__assign_with_size[abi:ne200100]<TopoSubstring **,TopoSubstring **>((v48 + 48), *(v47 + 48), *(v47 + 56), (*(v47 + 56) - *(v47 + 48)) >> 3);
        }

        v20 = a1[4];
        v21 = v20;
        v22 = *(*(a1[7] + 8) + 24);
        v23 = v48;
        v24 = *(v48 + 16);
        v25 = v21;
        v26 = *(v47 + 16) + *(v23 + 16);
        objc_storeStrong(v23, v20);
        *(v23 + 8) = v22;
        *(v23 + 16) = v26;
        *(*(a1[7] + 8) + 24) += *(v48 + 16);
        v27 = a1[5];
        v28 = v17;
        v44 = v28;
        v45 = v18;
        v46 = v19;
        v29 = v25;
        v41 = v29;
        v42 = v22;
        v43 = v19;
        if (v27)
        {
          [v27 updateTopoIDRange:&v44 toNewRangeID:&v41];
        }

        else
        {
        }

        v30 = a1[5];
        v31 = v47;
        v38 = *v47;
        v32 = *(v31 + 16);
        v39 = *(v31 + 8);
        v40 = v32;
        v33 = v29;
        v35 = v33;
        v34 = *(v47 + 16);
        LODWORD(v36) = v24 + v22;
        LODWORD(v37) = v34;
        if (v30)
        {
          [v30 updateTopoIDRange:&v38 toNewRangeID:&v35];
        }

        else
        {
        }

        std::__hash_table<TopoSubstring *,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,std::allocator<TopoSubstring *>>::__emplace_unique_key_args<TopoSubstring *,TopoSubstring * const&>((*(a1[8] + 8) + 48), &v48);
        std::__hash_table<TopoSubstring *,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,std::allocator<TopoSubstring *>>::__emplace_unique_key_args<TopoSubstring *,TopoSubstring * const&>((*(a1[6] + 8) + 48), &v47);
        *(a1[5] + 112) = 1;

        v5 = 0x277CCA000;
LABEL_27:
        v2 = v48;
        v3 = *(v48 + 48);
      }

      while (*(v48 + 56) - v3 == 8);
    }
  }
}

- (unint64_t)length
{
  v2 = [(ICTTMergeableString *)self string];
  v3 = [v2 length];

  return v3;
}

- (ICTTMergeableString)initWithReplicaID:(id)a3 asFragment:(BOOL)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v16.receiver = self;
  v16.super_class = ICTTMergeableString;
  v8 = [(ICTTMergeableString *)&v16 init];
  if (v8)
  {
    if (!v7)
    {
      [MEMORY[0x277D36198] handleFailedAssertWithCondition:"replicaID" functionName:"-[ICTTMergeableString initWithReplicaID:asFragment:]" simulateCrash:1 showAlert:0 format:@"Trying to create a mergeable string without a replica ID"];
    }

    objc_storeStrong(&v8->_replicaUUID, a3);
    v8->_unserializedClock = 0;
    if (!a4)
    {
      operator new();
    }

    v9 = [[ICTTVectorMultiTimestamp alloc] initWithCapacity:2];
    timestamp = v8->_timestamp;
    v8->_timestamp = v9;

    v11 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:5];
    objectsNeedingUpdatedRanges = v8->_objectsNeedingUpdatedRanges;
    v8->_objectsNeedingUpdatedRanges = v11;

    v8->_cacheInvalid = 1;
    v13 = objc_alloc_init(MEMORY[0x277CCAB48]);
    attributedString = v8->_attributedString;
    v8->_attributedString = v13;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  topotext::String::String(v10);
  [(ICTTMergeableString *)self saveToArchive:v10];
  v4 = [(ICTTMergeableString *)self timestamp];
  if ([v4 isDocumentShared])
  {
    v5 = [(ICTTMergeableString *)self timestamp];
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_alloc(objc_opt_class());
  v7 = [(ICTTMergeableString *)self replicaUUID];
  v8 = [v6 initWithArchive:v10 replicaID:v7 timestamp:v5];

  topotext::String::~String(v10);
  return v8;
}

+ (id)timestampFromData:(id)a3
{
  v3 = a3;
  v4 = [[ICTTVectorMultiTimestamp alloc] initWithData:v3 andCapacity:2];

  return v4;
}

- (void)insertString:(id)a3 atIndex:(unint64_t)a4
{
  v7 = a3;
  v6 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v7];
  [(ICTTMergeableString *)self insertAttributedString:v6 atIndex:a4];
}

- (void)replaceCharactersInRange:(_NSRange)a3 withString:(id)a4
{
  length = a3.length;
  location = a3.location;
  v8 = a4;
  v7 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v8];
  [(ICTTMergeableString *)self replaceCharactersInRange:location withAttributedString:length, v7];
}

- (void)replaceCharactersInRange:(_NSRange)a3 withAttributedString:(id)a4
{
  length = a3.length;
  location = a3.location;
  v9 = a4;
  v7 = [(ICTTMergeableString *)self delegate];
  v8 = v7;
  if (v7)
  {
    [v7 beginEditing];
  }

  [(ICTTMergeableString *)self beginEditing];
  [(ICTTMergeableString *)self deleteCharactersInRange:location, length];
  [(ICTTMergeableString *)self insertAttributedString:v9 atIndex:location];
  [(ICTTMergeableString *)self endEditing];
  if (v8)
  {
    [v8 endEditing];
  }
}

- (void)deleteCharactersInRange:(_NSRange)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (a3.length)
  {
    length = a3.length;
    location = a3.location;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = a3;
    v7 = 0;
    v8 = 0;
    __p = 0;
    std::vector<_NSRange>::__init_with_size[abi:ne200100]<_NSRange const*,_NSRange const*>(&__p, &v12, &v13, 1uLL);
    [(ICTTMergeableString *)self getSubstrings:&v9 forCharacterRange:location, length];
    [(ICTTMergeableString *)self deleteSubstrings:&v9 withCharacterRanges:&__p];
    if (__p)
    {
      v7 = __p;
      operator delete(__p);
    }

    if (v9)
    {
      v10 = v9;
      operator delete(v9);
    }
  }
}

- (void)insertAttributedString:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  if (![v6 length])
  {
    goto LABEL_16;
  }

  if (a4)
  {
    if ([(ICTTMergeableString *)self length]== a4)
    {
      v7 = [(ICTTMergeableString *)self orderedSubstrings];
      v8 = [(ICTTMergeableString *)self orderedSubstrings];
      v9 = *(*v7 + v8[1] - *v8 - 16);
      begin = self->_endNodes.__begin_;
      goto LABEL_14;
    }

    v12 = ICTTBoundedCheckedCastNSUIntegerToUInt32(a4);
    for (i = 0; ; i += 8)
    {
      v9 = *(*[(ICTTMergeableString *)self orderedSubstrings]+ i);
      if ((*(v9 + 44) & 1) == 0)
      {
        v14 = *(v9 + 4);
        v15 = v12 >= v14;
        v16 = v12 - v14;
        if (!v15)
        {
          v17 = [(ICTTMergeableString *)self splitTopoSubstring:v9 atIndex:v12];
          [(ICTTMergeableString *)self invalidateCache];
          goto LABEL_15;
        }

        v12 = v16;
        if (!v16)
        {
          break;
        }
      }
    }

    v11 = *[(ICTTMergeableString *)self orderedSubstrings]+ i;
  }

  else
  {
    v9 = *self->_startNodes.__begin_;
    v11 = *[(ICTTMergeableString *)self orderedSubstrings];
  }

  begin = (v11 + 8);
LABEL_14:
  v17 = *begin;
LABEL_15:
  [(ICTTMergeableString *)self insertAttributedString:v6 after:v9 before:v17];

LABEL_16:
}

- (id)selectionForCharacterRanges:(id)a3
{
  v3 = [(ICTTMergeableString *)self selectionForCharacterRanges:a3 selectionAffinity:0];

  return v3;
}

- (id)selectionForCharacterRanges:(id)a3 selectionAffinity:(unint64_t)a4
{
  v6 = a3;
  v36 = objc_alloc_init(ICTTMergeableStringSelection);
  v35 = a4;
  [(ICTTMergeableStringSelection *)v36 setSelectionAffinity:a4];
  if (![v6 count])
  {
    goto LABEL_32;
  }

  v7 = [(ICTTMergeableString *)self orderedSubstrings];
  v33 = v7[1];
  v34 = *v7;
  if (*v7 == v33)
  {
    goto LABEL_32;
  }

  v8 = 0;
  v9 = 0;
  v10 = 1;
  do
  {
    v11 = *v34;
    if (*(*v34 + 44))
    {
      goto LABEL_31;
    }

    while (1)
    {
      v12 = [v6 objectAtIndexedSubscript:v9];
      v13 = [v12 rangeValue];
      v15 = v14;

      if (!v10)
      {
        break;
      }

      v10 = v15 == 0;
      if (v15 | v35)
      {
        v16 = 1;
      }

      else
      {
        v16 = v13 == 0;
      }

      v17 = !v16;
      if (v35 || v8 != v13)
      {
        v19 = 0;
        if (v35 == 1)
        {
          v18 = 0;
          if (v8 == v13)
          {
            v19 = 0;
            v18 = *(v11 + 56) == *(v11 + 48);
          }
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
        v19 = *(v11 + 72) == 0;
      }

      v27 = v13 - v17;
      if (v8 + *(v11 + 16) <= v13 - v17 && !v18 && !v19)
      {
        v10 = 1;
        goto LABEL_29;
      }

      v28 = *v11;
      v29 = *(v11 + 8);
      v30 = [MEMORY[0x277CCAD78] TTZero];
      v31 = v29 + v27 - v8;
      v25 = v28;
      v37 = v25;
      v38 = v31;
      v39 = v30;
      v40 = 0;
      std::vector<std::pair<TopoID,TopoID>>::push_back[abi:ne200100](-[ICTTMergeableStringSelection selectionRanges](v36, "selectionRanges"), &v37);
      v26 = v15 == 0;

LABEL_25:
      v9 += v26;
      if (v9 >= [v6 count])
      {
        goto LABEL_29;
      }
    }

    v20 = v13 + v15;
    if (v8 + *(v11 + 16) > v20 - 1)
    {
      v21 = *v11;
      v22 = *(v11 + 8) + v20 + ~v8;
      v23 = *([(ICTTMergeableStringSelection *)v36 selectionRanges]+ 8);
      v24 = *(v23 - 16);
      *(v23 - 16) = v21;
      v25 = v21;

      *(v23 - 8) = v22;
      v10 = 1;
      v26 = 1;
      goto LABEL_25;
    }

    v10 = 0;
LABEL_29:
    if (v9 >= [v6 count])
    {
      break;
    }

    v8 += *(v11 + 16);
LABEL_31:
    ++v34;
  }

  while (v34 != v33);
LABEL_32:

  return v36;
}

- (id)characterRangesForSelection:(id)a3
{
  v3 = [(ICTTMergeableString *)self characterRangesForSelection:a3 selectedSubstringsBlock:0];

  return v3;
}

- (id)characterRangesForSelection:(id)a3 selectedSubstringsBlock:(id)a4
{
  v41 = self;
  v6 = a3;
  v7 = a4;
  v45 = v6;
  v8 = [v6 selectionRanges];
  if (v8[1] != *v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v10 = [(ICTTMergeableString *)v41 orderedSubstrings];
    v11 = *v10;
    v42 = *(v10 + 8);
    if (*v10 == v42)
    {
      goto LABEL_50;
    }

    v12 = 0;
    v13 = 0;
    v44 = v9;
    v14 = 1;
    while (1)
    {
      v43 = v11;
      v15 = *v11;
      while (1)
      {
        v16 = v7;
        v17 = *[v45 selectionRanges] + 32 * v13;
        v18 = *v17;
        v19 = *(v17 + 8);
        v20 = *(v17 + 16);
        v21 = v20;
        v22 = *(v17 + 24);
        v23 = *v15;
        if (v14)
        {
          break;
        }

        if (![v20 isEqual:v23])
        {
          goto LABEL_37;
        }

        v31 = *(v15 + 8);
        if (v22 < v31 || v22 >= *(v15 + 16) + v31)
        {
          goto LABEL_37;
        }

        if (*(v15 + 44))
        {
          v32 = 0;
        }

        else
        {
          v32 = v22 - v31 + 1;
        }

        v7 = v16;
        v33 = [MEMORY[0x277CCAE60] valueWithRange:{v4, v12 + v32 - v4}];
        [v44 addObject:v33];

        ++v13;
        if (v16)
        {
          v16[2](v16, v15, 0, v32);
        }

        v14 = 1;
LABEL_35:

        v34 = [v45 selectionRanges];
        if (v13 >= (v34[1] - *v34) >> 5)
        {
          goto LABEL_38;
        }
      }

      v24 = [v18 isEqual:v23];
      v25 = *(v15 + 8);
      v26 = v19 >= v25 ? v24 : 0;
      if (v26 == 1 && v19 < *(v15 + 16) + v25 || v25 == v19 && [*v15 isEqual:v18])
      {
        break;
      }

LABEL_37:

      v7 = v16;
LABEL_38:
      v35 = [v45 selectionRanges];
      if (v13 < (v35[1] - *v35) >> 5)
      {
        if (!((v7 == 0) | v14 & 1))
        {
          if (*(v15 + 44))
          {
            v36 = 0;
          }

          else
          {
            v36 = *(v15 + 16);
          }

          v37 = *(v15 + 40);
          v48.length = [(ICTTMergeableString *)v41 length]- v4;
          v47.location = v37;
          v47.length = v36;
          v48.location = v4;
          v38 = NSIntersectionRange(v47, v48);
          v7[2](v7, v15, v38.location, v38.length);
        }

        v39 = (*(v15 + 44) & 1) != 0 ? 0 : *(v15 + 16);
        v12 += v39;
        v11 = v43 + 1;
        if (v43 + 1 != v42)
        {
          continue;
        }
      }

      v9 = v44;
      goto LABEL_50;
    }

    v4 = v12;
    if ((*(v15 + 44) & 1) == 0)
    {
      v4 = v12 + v19 - *(v15 + 8);
    }

    v27 = [MEMORY[0x277CCAD78] TTZero];
    v28 = [v21 isEqual:v27];
    if (v22)
    {
      v29 = 0;
    }

    else
    {
      v29 = v28;
    }

    if (v29 == 1)
    {
      if ((*(v15 + 44) & 1) == 0 && ![v45 selectionAffinity] && *(v15 + 72))
      {
        ++v4;
      }

      v30 = [MEMORY[0x277CCAE60] valueWithRange:{v4, 0}];
      [v44 addObject:v30];

      ++v13;
      v14 = 1;
    }

    else
    {
      v14 = 0;
    }

    v7 = v16;
    goto LABEL_35;
  }

  v9 = MEMORY[0x277CBEBF8];
LABEL_50:

  return v9;
}

- (void)setTimestamp:(id)a3
{
  v11 = a3;
  objc_storeStrong(&self->_timestamp, a3);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ICTTMergeableString *)self invalidateCache];
    [(ICTTMergeableString *)self updateClock];
    replicaTextClock = self->_replicaTextClock;
    v6 = [(ICTTVectorMultiTimestamp *)self->_timestamp clockForUUID:self->_replicaUUID atIndex:0];
    if (replicaTextClock <= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = replicaTextClock;
    }

    self->_replicaTextClock = v7;
    replicaStyleClock = self->_replicaStyleClock;
    v9 = [(ICTTVectorMultiTimestamp *)self->_timestamp clockForUUID:self->_replicaUUID atIndex:1];
    if (replicaStyleClock <= v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = replicaStyleClock;
    }

    self->_replicaStyleClock = v10;
  }
}

- (void)updateTimestampsInRange:(_NSRange)a3
{
  v18 = *MEMORY[0x277D85DE8];
  if (a3.length)
  {
    length = a3.length;
    location = a3.location;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = a3;
    v12 = 0;
    v13 = 0;
    __p = 0;
    std::vector<_NSRange>::__init_with_size[abi:ne200100]<_NSRange const*,_NSRange const*>(&__p, &v17, &v18, 1uLL);
    [(ICTTMergeableString *)self getSubstrings:&v14 forCharacterRange:location, length];
    v6 = v14;
    v7 = v15;
    if (v14 != v15)
    {
      do
      {
        v8 = *v6;
        v9 = [MEMORY[0x277CCAD78] CR_unserialized];
        v10 = *(v8 + 24);
        *(v8 + 24) = v9;

        ++v6;
      }

      while (v6 != v7);
    }

    [(ICTTMergeableString *)self coalesce];
    self->_hasLocalChanges = 1;
    if (__p)
    {
      v12 = __p;
      operator delete(__p);
    }

    if (v14)
    {
      v15 = v14;
      operator delete(v14);
    }
  }
}

- (void)deleteSubstrings:(void *)a3 withCharacterRanges:(void *)a4
{
  v7 = *a3;
  v8 = *(a3 + 1);
  if (*a3 != v8)
  {
    do
    {
      v9 = *v7;
      if ((*(*v7 + 44) & 1) == 0)
      {
        *(v9 + 44) = 1;
        v10 = [MEMORY[0x277CCAD78] CR_unserialized];
        v11 = *(v9 + 24);
        *(v9 + 24) = v10;
      }

      ++v7;
    }

    while (v7 != v8);
  }

  v12 = *(a4 + 1);
  v13 = 126 - 2 * __clz((v12 - *a4) >> 4);
  if (v12 == *a4)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  *&v15 = std::__introsort<std::_ClassicAlgPolicy,[ICTTMergeableString deleteSubstrings:withCharacterRanges:]::$_1 &,_NSRange *,false>(*a4, v12, v14, 1, v4).n128_u64[0];
  v16 = *a4;
  v17 = *(a4 + 1);
  while (v16 != v17)
  {
    v18 = v16->n128_u64[0];
    v19 = v16->n128_u64[1];
    ++v16;
    [(NSMutableAttributedString *)self->_attributedString deleteCharactersInRange:v18, v19, v15];
  }

  v20 = [(ICTTMergeableString *)self delegate];
  v27 = v20;
  if (v20)
  {
    [v20 beginEditing];
    v22 = *a4;
    v21 = *(a4 + 1);
    if (v21 == *a4)
    {
      goto LABEL_18;
    }

    v23 = 0;
    location = v22->n128_u64[0];
    v24.length = v22->n128_u64[1];
    do
    {
      v29.location = v22->n128_u64[0];
      v26 = v22->n128_u64[1];
      v24.location = location;
      v29.length = v26;
      v24 = NSUnionRange(v24, v29);
      location = v24.location;
      v23 += v26;
      ++v22;
    }

    while (v22 != v21);
    [v27 edited:2 range:v24.location changeInLength:{v24.length, -v23}];
  }

  [(ICTTMergeableString *)self coalesce];
  [(ICTTMergeableString *)self updateSubstringIndexes];
  self->_hasLocalChanges = 1;
  if (v27)
  {
    [v27 endEditing];
  }

LABEL_18:
}

- (TopoIDRange)insertAttributedString:(SEL)a3 after:(id)a4 before:(void *)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x4812000000;
  v13 = __Block_byref_object_copy__21;
  v14 = __Block_byref_object_dispose__22;
  v15 = 256;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  if ([v7 length])
  {
    operator new();
  }

  v8 = v11;
  retstr->var0.replicaID = v11[6];
  retstr->var0.clock = *(v8 + 14);
  retstr->var1 = *(v8 + 16);
  _Block_object_dispose(&v10, 8);

  return result;
}

void __59__ICTTMergeableString_insertAttributedString_after_before___block_invoke(uint64_t a1, id *a2, id *a3)
{
  memset(v8, 0, sizeof(v8));
  updateTopoIDRange((*(*(a1 + 32) + 8) + 48), a2, a3, v8);
  v6 = v8[0];
  v7 = *(*(a1 + 32) + 8);
  objc_storeStrong((v7 + 48), *v8[0]);
  *(v7 + 56) = *(v6 + 8);
  *(v7 + 64) = *(v6 + 16);
  v9 = v8;
  std::vector<TopoIDRange>::__destroy_vector::operator()[abi:ne200100](&v9);
}

- (void)moveRange:(_NSRange)a3 toIndex:(unint64_t)a4
{
  if (a3.length)
  {
    __p = 0;
    v5 = 0;
    v6 = 0;
    [(ICTTMergeableString *)self getSubstrings:&__p forCharacterRange:a3.location, a3.length];
    if (__p)
    {
      v5 = __p;
      operator delete(__p);
    }
  }
}

- (void)getSubstrings:(void *)a3 forCharacterRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v8 = [(ICTTMergeableString *)self orderedSubstrings];
  if (!length)
  {
    return;
  }

  v9 = v8;
  v11 = *v8;
  v10 = v8[1];
  if (*v8 == v10)
  {
    return;
  }

  v12 = 0;
  v13 = location + length;
  while (1)
  {
    v14 = *v11;
    v20 = v14;
    if ((*(v14 + 44) & 1) == 0)
    {
      break;
    }

    v15 = v12;
LABEL_6:
    v10 = v9[1];
LABEL_12:
    v11 += 8;
    v12 = v15;
    if (v11 == v10)
    {
      return;
    }
  }

  v15 = v12 + *(v14 + 16);
  if (v15 <= location)
  {
    goto LABEL_12;
  }

  if (v13 <= v12)
  {
    return;
  }

  if (location > v12)
  {
    v19 = [(ICTTMergeableString *)self splitTopoSubstring:v14 atIndex:ICTTBoundedCheckedCastNSUIntegerToUInt32(location - v12)];
    v11 = std::vector<TopoSubstring *>::insert(v9, v11 + 8, &v19);
    std::vector<TopoSubstring *>::push_back[abi:ne200100](a3, &v19);
    if (v13 < v15)
    {
      v18 = [(ICTTMergeableString *)self splitTopoSubstring:v19 atIndex:ICTTBoundedCheckedCastNSUIntegerToUInt32(length)];
      v16 = v11 + 8;
      v17 = &v18;
      goto LABEL_17;
    }

    goto LABEL_6;
  }

  if (v15 <= v13)
  {
    std::vector<TopoSubstring *>::push_back[abi:ne200100](a3, &v20);
    goto LABEL_6;
  }

  v19 = [(ICTTMergeableString *)self splitTopoSubstring:v14 atIndex:ICTTBoundedCheckedCastNSUIntegerToUInt32(v13 - v12)];
  std::vector<TopoSubstring *>::push_back[abi:ne200100](a3, &v20);
  v16 = v11 + 8;
  v17 = &v19;
LABEL_17:
  std::vector<TopoSubstring *>::insert(v9, v16, v17);
}

- (void)getSubstringBeforeTopoID:(TopoID)a3
{
  clock = a3.clock;
  replicaID = a3.replicaID;
  v6 = *self->_startNodes.__begin_;
  v20 = a3.replicaID;
  v7 = [(ICTTMergeableString *)self orderedSubstrings];
  v9 = *v7;
  v8 = v7[1];
  if (*v7 == v8)
  {
LABEL_13:
    v6 = 0;
    goto LABEL_18;
  }

  v19 = self;
  while (1)
  {
    v10 = *v9;
    v11 = **v9;
    v12 = *(v10 + 2);
    v13 = *(v10 + 4);
    if (![(NSUUID *)replicaID isEqual:v11])
    {
      goto LABEL_10;
    }

    v14 = clock - v12;
    if (clock == v12)
    {
      goto LABEL_17;
    }

    if (clock <= v12)
    {
      goto LABEL_10;
    }

    v15 = v11;
    v16 = v15;
    if (v13 + v12 > clock)
    {
      break;
    }

    if (v13 + v12 == clock)
    {
      v17 = [(NSUUID *)v20 TTCompare:v15];

      replicaID = v20;
      if (v17 == -1)
      {
        goto LABEL_15;
      }
    }

    else
    {

      replicaID = v20;
    }

LABEL_10:
    if (!*(v10 + 44))
    {
      v6 = v10;
    }

    if (++v9 == v8)
    {
      goto LABEL_13;
    }
  }

  replicaID = v20;
LABEL_15:
  if ((*(v10 + 44) & 1) == 0)
  {
    [(ICTTMergeableString *)v19 splitTopoSubstring:v10 atIndex:v14];
    [(ICTTMergeableString *)v19 invalidateCache];
    v6 = v10;
  }

LABEL_17:

LABEL_18:
  return v6;
}

- (void)getSubstrings:(void *)a3 forTopoIDRange:(TopoIDRange *)a4
{
  if (!a4->var1)
  {
    goto LABEL_36;
  }

  v6 = [(ICTTMergeableString *)self orderedSubstrings];
  v7 = *v6;
  v8 = v6[1];
  if (*v6 == v8)
  {
    goto LABEL_36;
  }

  v32 = 0;
  do
  {
    v9 = *v7;
    v36 = v9;
    v10 = *v9;
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    if (([(NSUUID *)a4->var0.replicaID isEqual:v10]& 1) == 0)
    {
      goto LABEL_14;
    }

    v13 = v10;
    v14 = v12 + v11;
    v34 = v13;
    v35 = v12 + v11;
    if (TopoID::operator<=(&v34, a4))
    {
      goto LABEL_13;
    }

    v15 = a4->var0.replicaID;
    v16 = v15;
    v17 = a4->var1 + a4->var0.clock;
    if (v11 == v17)
    {
      if ([v13 isEqual:v15])
      {
        goto LABEL_12;
      }

      v18 = [v13 TTCompare:v16];

      if (v18 == 1)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v11 > v17)
      {
LABEL_12:

LABEL_13:
        goto LABEL_14;
      }
    }

    clock = a4->var0.clock;
    if (clock > v11)
    {
      v34 = [(ICTTMergeableString *)self splitTopoSubstring:v36 atIndex:clock - v11];
      v20 = a4->var0.replicaID;
      v21 = a4->var1 + a4->var0.clock;
      v22 = v13;
      v23 = v22;
      if (v21 >= v14)
      {
        if (v21 != v14)
        {

          goto LABEL_32;
        }

        v31 = [(NSUUID *)v20 TTCompare:v22];

        if (v31 != -1)
        {
          goto LABEL_32;
        }
      }

      else
      {
      }

      [(ICTTMergeableString *)self splitTopoSubstring:v34 atIndex:a4->var1];
LABEL_32:
      std::vector<TopoSubstring *>::push_back[abi:ne200100](a3, &v34);
      goto LABEL_33;
    }

    v24 = v13;
    v25 = a4->var0.replicaID;
    v26 = v25;
    v27 = a4->var1 + a4->var0.clock;
    if (v14 <= v27)
    {
      if (v14 != v27)
      {

LABEL_31:
        std::vector<TopoSubstring *>::push_back[abi:ne200100](a3, &v36);
        goto LABEL_14;
      }

      v30 = [v24 TTCompare:v25];

      if (v30 != 1)
      {
        goto LABEL_31;
      }
    }

    else
    {
    }

    v28 = v36;
    v29 = a4->var0.replicaID;
    [(ICTTMergeableString *)self splitTopoSubstring:v28 atIndex:a4->var0.clock - v11 + a4->var1];

    std::vector<TopoSubstring *>::push_back[abi:ne200100](a3, &v36);
LABEL_33:
    v32 = 1;
LABEL_14:

    ++v7;
  }

  while (v7 != v8);
  if (v32)
  {
    [(ICTTMergeableString *)self invalidateCache];
  }

LABEL_36:
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
    std::__hash_table<TopoSubstring *,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,std::allocator<TopoSubstring *>>::__emplace_unique_key_args<TopoSubstring *,TopoSubstring * const&>(&v28, v7++);
  }

  v9 = [(ICTTMergeableString *)self orderedSubstrings];
  v10 = *v9;
  v11 = v9[1];
  if (*v9 != v11)
  {
    v12 = 0;
    do
    {
      v27 = *v10;
      v13 = std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::find<TopoSubstring *>(&v28, &v27);
      v14 = v13;
      if (*(v27 + 44))
      {
        v15 = 0;
        if (!v13)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v15 = *(v27 + 16);
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
          std::vector<std::pair<minIdPathData,TopoSubstring *>>::__throw_length_error[abi:ne200100]();
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

      std::__hash_table<TopoSubstring *,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,std::allocator<TopoSubstring *>>::erase(&v28, v14);
LABEL_24:
      v12 += v15;
      ++v10;
    }

    while (v10 != v11);
  }

  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(&v28);
}

- (unint64_t)getCharacterIndexForCharID:(TopoID)a3
{
  clock = a3.clock;
  replicaID = a3.replicaID;
  v5 = [(ICTTMergeableString *)self orderedSubstrings];
  v6 = *v5;
  v7 = v5[1];
  if (*v5 == v7)
  {
LABEL_18:
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = 0;
    while (1)
    {
      v9 = *v6;
      v10 = (*(*v6 + 44) & 1) != 0 ? 0 : *(v9 + 16);
      if (*(v9 + 8) == clock && ([*v9 isEqual:replicaID] & 1) != 0)
      {
        break;
      }

      if ([*v9 isEqual:replicaID])
      {
        v11 = *(v9 + 8);
        if (v11 < clock || v11 == clock && [*v9 TTCompare:replicaID] == -1)
        {
          v12 = *v9;
          v13 = v12;
          v14 = *(v9 + 16) + *(v9 + 8);
          if (v14 > clock)
          {

LABEL_21:
            v8 = v8 + clock - *(v9 + 8);
            break;
          }

          if (v14 == clock)
          {
            v15 = [(NSUUID *)replicaID TTCompare:v12];

            if (v15 == -1)
            {
              goto LABEL_21;
            }
          }

          else
          {
          }
        }
      }

      v8 += v10;
      if (++v6 == v7)
      {
        goto LABEL_18;
      }
    }
  }

  return v8;
}

- (void)enumerateSubstrings:(id)a3
{
  v4 = a3;
  v5 = [(ICTTMergeableString *)self orderedSubstrings];
  v6 = *v5;
  v7 = v5[1];
  if (*v5 != v7)
  {
    do
    {
      v8 = *v6;
      if ((*(*v6 + 44) & 1) == 0)
      {
        v9 = *(v8 + 16);
        if (v9)
        {
          v10 = *(v8 + 40);
          v12 = *v8;
          v11 = *(v8 + 16);
          v13 = *(v8 + 8);
          v14 = v11;
          v4[2](v4, v10, v9, &v12, *(v8 + 24), *(v8 + 32));
        }
      }

      ++v6;
    }

    while (v6 != v7);
  }
}

- (int64_t)substring:(void *)a3 modifiedAfter:(id)a4 includeAttributes:(BOOL)a5 replicaID:(id *)a6
{
  v7 = a5;
  v9 = a4;
  v10 = *a3;
  v11 = [v9 clockForUUID:v10 atIndex:0] - *(a3 + 2);
  if (v11 >= *(a3 + 4))
  {
    v14 = *(a3 + 3);
    if ([v9 clockForUUID:v14 atIndex:1] > *(a3 + 8) || !v7)
    {
      v13 = -1;
    }

    else if (a6)
    {
      v16 = v14;
      v13 = 0;
      *a6 = v14;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    if (a6)
    {
      v12 = v10;
      *a6 = v10;
    }

    v13 = v11 & ~(v11 >> 63);
  }

  return v13;
}

- (void)enumerateHighlightableRangesModifiedAfter:(id)a3 includingAttributes:(BOOL)a4 usingBlock:(id)a5
{
  v6 = a4;
  v18 = a3;
  v17 = a5;
  [(ICTTMergeableString *)self generateIdsForLocalChanges];
  v8 = [(ICTTMergeableString *)self orderedSubstrings];
  v10 = *v8;
  v9 = v8[1];
  if (*v8 != v9)
  {
    do
    {
      v11 = *v10;
      if ((*(*v10 + 44) & 1) == 0 && *(v11 + 16))
      {
        v19 = 0;
        v12 = [(ICTTMergeableString *)self substring:v11 modifiedAfter:v18 includeAttributes:v6 replicaID:&v19];
        v13 = v19;
        if ((v12 & 0x8000000000000000) == 0)
        {
          v14 = *(v11 + 40);
          v15 = [(ICTTMergeableString *)self replicaUUID];
          v16 = [v13 isEqual:v15];

          if ((v16 & 1) == 0)
          {
            v17[2](v17, v12 + v14, *(v11 + 16) - v12);
          }
        }
      }

      ++v10;
    }

    while (v10 != v9);
  }
}

- (BOOL)textEitherSideOfSelectionAnchor:(TopoID)a3 wasModifiedAfter:(id)a4
{
  clock = a3.clock;
  replicaID = a3.replicaID;
  v7 = a4;
  v8 = [(ICTTMergeableString *)self orderedSubstrings];
  v9 = *v8;
  v10 = v8[1];
  if (*v8 != v10)
  {
    v11 = 0;
    v12 = 0;
    while (1)
    {
      v13 = *v9;
      if (v12)
      {
        break;
      }

      if ([(NSUUID *)replicaID isEqual:*v13])
      {
        v14 = *(v13 + 2);
        if (v14 <= clock && *(v13 + 4) + v14 > clock)
        {
          v15 = *(v13 + 44) != 1 || v11 == 0;
          if (!v15 && ([(ICTTMergeableString *)self substring:v11 modifiedAfter:v7]& 0x8000000000000000) == 0 || (v16 = [(ICTTMergeableString *)self substring:v13 modifiedAfter:v7], (v16 & 0x8000000000000000) == 0) && v16 <= clock - *(v13 + 2))
          {
LABEL_32:
            v19 = 1;
            goto LABEL_31;
          }

          v17 = *v13;
          v18 = *(v13 + 2) + *(v13 + 4) - 1;

          if (v18 != clock)
          {
            goto LABEL_30;
          }

          goto LABEL_7;
        }
      }

      if (!*(v13 + 4) && *(v13 + 2) == clock && ([*v13 isEqual:replicaID] & 1) != 0)
      {
        goto LABEL_7;
      }

      if (*(v13 + 44) != 1 || ([(ICTTMergeableString *)self substring:v13 modifiedAfter:v7]& 0x8000000000000000) == 0)
      {
        v12 = 0;
        goto LABEL_27;
      }

      v12 = 0;
LABEL_8:
      v13 = v11;
LABEL_27:
      ++v9;
      v11 = v13;
      if (v9 == v10)
      {
        goto LABEL_30;
      }
    }

    if (![(ICTTMergeableString *)self substring:*v9 modifiedAfter:v7]&& *(v13 + 4))
    {
      goto LABEL_32;
    }

    if ((*(v13 + 44) & 1) == 0)
    {
      goto LABEL_30;
    }

LABEL_7:
    v12 = 1;
    goto LABEL_8;
  }

LABEL_30:
  v19 = 0;
LABEL_31:

  return v19;
}

- (BOOL)selection:(id)a3 wasModifiedAfter:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(ICTTMergeableString *)self generateIdsForLocalChanges];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v8 = [v6 selectionRanges];
  if (v8[1] == *v8)
  {
    LOBYTE(self) = 0;
  }

  else
  {
    v9 = [v6 selectionRanges];
    if (v9[1] - *v9 != 32)
    {
LABEL_9:
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __50__ICTTMergeableString_selection_wasModifiedAfter___block_invoke;
      v22[3] = &unk_278195C30;
      v22[4] = self;
      v23 = v7;
      v24 = &v25;
      v20 = [(ICTTMergeableString *)self characterRangesForSelection:v6 selectedSubstringsBlock:v22];
      LOBYTE(self) = *(v26 + 24);

      goto LABEL_10;
    }

    v10 = *[v6 selectionRanges];
    v11 = [MEMORY[0x277CCAD78] TTZero];
    v12 = v11;
    if (*(v10 + 24))
    {

      goto LABEL_9;
    }

    v13 = [*(v10 + 16) isEqual:v11];

    if (!v13)
    {
      goto LABEL_9;
    }

    v14 = [v6 selectionRanges];
    v15 = *v14;
    v16 = **v14;
    v17 = *(v15 + 2);
    v18 = v16;
    v19 = v18;
    if (self)
    {
      LOBYTE(self) = [(ICTTMergeableString *)self textEitherSideOfSelectionAnchor:v18 wasModifiedAfter:v17, v7];
    }

    else
    {
    }
  }

LABEL_10:
  _Block_object_dispose(&v25, 8);

  return self & 1;
}

NSUInteger __50__ICTTMergeableString_selection_wasModifiedAfter___block_invoke(uint64_t a1, uint64_t a2, NSUInteger a3, NSUInteger a4)
{
  result = [*(a1 + 32) substring:a2 modifiedAfter:*(a1 + 40)];
  if ((result & 0x8000000000000000) == 0)
  {
    if ((*(a2 + 44) & 1) != 0 || (v10.length = *(a2 + 16) - result, v10.location = result + *(a2 + 40), v11.location = a3, v11.length = a4, v9 = NSIntersectionRange(v10, v11), result = v9.location, v9.length))
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }

  return result;
}

- (void)splitTopoSubstring:(void *)a3 atIndex:(unsigned int)a4
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = *a3;
  *(a3 + 4) = a4;
  operator new();
}

- (void)updateSubstringIndexes
{
  v2 = [(ICTTMergeableString *)self orderedSubstrings];
  v3 = *v2;
  v4 = v2[1];
  if (*v2 != v4)
  {
    v5 = 0;
    do
    {
      v6 = *v3;
      *(v6 + 40) = v5;
      if ((*(v6 + 44) & 1) == 0)
      {
        v5 += *(v6 + 16);
      }

      ++v3;
    }

    while (v3 != v4);
  }
}

- (void)updateTopoIDRange:(TopoIDRange *)a3 toNewRangeID:(TopoIDRange *)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = [(ICTTMergeableString *)self objectsNeedingUpdatedRanges];
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v8)
  {
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        v26 = a3->var0.replicaID;
        var1 = a3->var1;
        clock = a3->var0.clock;
        v28 = var1;
        v23 = a4->var0.replicaID;
        v13 = a4->var1;
        v24 = a4->var0.clock;
        v25 = v13;
        if (v11)
        {
          [v11 updateTopoIDRange:&v26 toNewRangeID:&v23];
        }

        else
        {
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v8);
  }

  updateRangeBlock = self->_updateRangeBlock;
  if (updateRangeBlock)
  {
    v20 = a3->var0.replicaID;
    v15 = a3->var1;
    v21 = a3->var0.clock;
    v22 = v15;
    v17 = a4->var0.replicaID;
    v16 = a4->var1;
    v18 = a4->var0.clock;
    v19 = v16;
    updateRangeBlock[2](updateRangeBlock, &v20, &v17);
  }
}

- (void)cleanupObjectsNeedingUpdatedRanges
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:5];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(ICTTMergeableString *)self objectsNeedingUpdatedRanges];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if (([v8 hasTopoIDsThatCanChange] & 1) == 0)
        {
          [v3 addObject:v8];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = [(ICTTMergeableString *)self objectsNeedingUpdatedRanges];
  [v9 minusHashTable:v3];
}

- (void)generateIdsForLocalChangesSafeForSharedTimestamp:(BOOL)a3
{
  if (self->_hasLocalChanges)
  {
    v3 = a3;
    replicaStyleClock = self->_replicaStyleClock;
    v5 = [(ICTTMergeableString *)self orderedSubstrings];
    v6 = *v5;
    v7 = v5[1];
    if (*v5 == v7)
    {
      [(ICTTMergeableString *)self cleanupObjectsNeedingUpdatedRanges];
      goto LABEL_32;
    }

    v28 = v3;
    v8 = 0;
    while (1)
    {
      v9 = *v6;
      v10 = **v6;
      v11 = [MEMORY[0x277CCAD78] CR_unserialized];

      if (v10 == v11)
      {
        break;
      }

      v12 = v9[3];
      v13 = [MEMORY[0x277CCAD78] CR_unserialized];

      if (v12 == v13)
      {
        v14 = *(v9 + 8);
        LODWORD(v15) = v14 + 8;
        if (*(v9 + 44))
        {
          v15 = v15;
        }

        else
        {
          v15 = (v14 + 1);
        }

        if (replicaStyleClock <= v15)
        {
          v16 = v15;
        }

        else
        {
          v16 = replicaStyleClock;
        }

        if (v16 + 1 > self->_replicaStyleClock)
        {
          v17 = v16 + 1;
        }

        else
        {
          v17 = self->_replicaStyleClock;
        }

        self->_replicaStyleClock = v17;
        objc_storeStrong(v9 + 3, self->_replicaUUID);
        *(v9 + 8) = v16;
LABEL_21:
        v8 = 1;
      }

      if (++v6 == v7)
      {
        [(ICTTMergeableString *)self cleanupObjectsNeedingUpdatedRanges];
        if ((v8 & 1) == 0)
        {
          goto LABEL_32;
        }

        timestamp = self->_timestamp;
        if (v28)
        {
          if ([(ICTTVectorMultiTimestamp *)timestamp clockForUUID:self->_replicaUUID atIndex:0]< self->_replicaTextClock)
          {
            [ICTTVectorMultiTimestamp setClock:"setClock:forUUID:atIndex:" forUUID:? atIndex:?];
          }

          if ([(ICTTVectorMultiTimestamp *)self->_timestamp clockForUUID:self->_replicaUUID atIndex:1]>= self->_replicaStyleClock)
          {
LABEL_32:
            self->_unserializedClock = 0;
            self->_hasLocalChanges = 0;
            return;
          }
        }

        else
        {
          [(ICTTVectorMultiTimestamp *)timestamp setClock:self->_replicaTextClock forUUID:self->_replicaUUID atIndex:0];
        }

        [(ICTTVectorMultiTimestamp *)self->_timestamp setClock:self->_replicaStyleClock forUUID:self->_replicaUUID atIndex:1];
        goto LABEL_32;
      }
    }

    replicaUUID = self->_replicaUUID;
    v19 = replicaUUID;
    replicaTextClock = self->_replicaTextClock;
    v21 = *(v9 + 4);
    v33 = *v9;
    v22 = *(v9 + 4);
    v34 = *(v9 + 2);
    v35 = v22;
    v23 = v19;
    v30 = v23;
    v31 = replicaTextClock;
    v32 = v21;
    [(ICTTMergeableString *)self updateTopoIDRange:&v33 toNewRangeID:&v30];
    objc_storeStrong(v9, replicaUUID);
    v24 = v9[3];
    *(v9 + 2) = replicaTextClock;
    *(v9 + 4) = v21;
    self->_replicaTextClock += v21;
    v25 = [MEMORY[0x277CCAD78] CR_unserialized];

    if (v24 == v25)
    {
      objc_storeStrong(v9 + 3, self->_replicaUUID);
      *(v9 + 8) = 0;
      v26 = self->_replicaStyleClock;
      if (v26 <= 1)
      {
        v26 = 1;
      }

      self->_replicaStyleClock = v26;
    }

    goto LABEL_21;
  }
}

- (BOOL)canMergeString:(id)a3
{
  v4 = a3;
  if ([(ICTTMergeableString *)self isFragment])
  {
    v5 = 0;
  }

  else if ([v4 isFragment])
  {
    v26 = 0u;
    v27 = 0u;
    v28 = 1065353216;
    v6 = [v4 startNodes];
    v7 = *v6;
    v8 = *(v6 + 8);
    while (v7 != v8)
    {
      v9 = *v7;
      v10 = **v7;
      v11 = *(v9 + 2) + *(v9 + 4) - 1;
      v24 = v10;
      v25 = v11;
      std::__hash_table<TopoID,std::hash<TopoID>,std::equal_to<TopoID>,std::allocator<TopoID>>::__emplace_unique_key_args<TopoID,TopoID>(&v26, &v24);

      ++v7;
    }

    v12 = [v4 endNodes];
    v13 = *v12;
    v14 = v12[1];
    while (v13 != v14)
    {
      std::__hash_table<TopoID,std::hash<TopoID>,std::equal_to<TopoID>,std::allocator<TopoID>>::__emplace_unique_key_args<TopoID,TopoID const&>(&v26, *v13++);
    }

    v15 = [(ICTTMergeableString *)self orderedSubstrings];
    v16 = *v15;
    v17 = v15[1];
LABEL_12:
    if (v16 != v17)
    {
      v18 = *v16;
      v19 = **v16;
      v20 = *(v18 + 2);
      if (*(v18 + 4) <= 1u)
      {
        v21 = 1;
      }

      else
      {
        v21 = *(v18 + 4);
      }

      while (1)
      {
        v22 = v19;
        v24 = v22;
        v25 = v20;
        std::__hash_table<TopoID,std::hash<TopoID>,std::equal_to<TopoID>,std::allocator<TopoID>>::__erase_unique<TopoID>(&v26, &v24);

        if (!*(&v27 + 1))
        {
          break;
        }

        ++v20;
        if (!--v21)
        {

          ++v16;
          goto LABEL_12;
        }
      }
    }

    v5 = *(&v27 + 1) == 0;
    std::__hash_table<TopoID,std::hash<TopoID>,std::equal_to<TopoID>,std::allocator<TopoID>>::~__hash_table(&v26);
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)check:(id *)a3
{
  v69[1] = *MEMORY[0x277D85DE8];
  if (!hasLoop(*self->_startNodes.__begin_))
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v60 = 0;
    v61 = &v60;
    v62 = 0x2020000000;
    v63 = 1;
    v54 = 0;
    v55 = &v54;
    v56 = 0x3032000000;
    v57 = __Block_byref_object_copy__43;
    v58 = __Block_byref_object_dispose__44;
    v59 = 0;
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __29__ICTTMergeableString_check___block_invoke;
    v50[3] = &unk_278195CA8;
    v6 = v9;
    v51 = v6;
    v52 = &v54;
    v53 = &v60;
    [(ICTTMergeableString *)self traverseUnordered:v50];
    v10 = 0;
    LODWORD(v11) = 0;
    v36 = *MEMORY[0x277CCA470];
    while (1)
    {
      v12 = [(ICTTMergeableString *)self orderedSubstrings];
      v13 = v10;
      v14 = v61;
      if (v10 >= ((v12[1] - *v12) >> 3) || (v61[3] & 1) == 0)
      {
        break;
      }

      v15 = *(*[(ICTTMergeableString *)self orderedSubstrings]+ 8 * v10);
      v16 = *v15;
      v39 = v16;
      v17 = *(v15 + 16);
      v40 = *(v15 + 8);
      v41 = v17;
      v18 = *(v15 + 24);
      v42 = v18;
      v19 = *(v15 + 40);
      v43 = *(v15 + 32);
      v44 = v19;
      v45 = *(v15 + 44);
      v49 = 0;
      v47 = 0;
      v48 = 0;
      v46 = 0;
      if ((v45 & 1) == 0)
      {
        v20 = [(ICTTMergeableString *)self attributedString];
        v11 = (v17 + v11);
        v21 = [v20 length] < v11;

        if (v21)
        {
          v22 = os_log_create("com.apple.notes", "Topotext");
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [(ICTTMergeableString *)&buf check:v38, v22];
          }

          *(v61 + 24) = 0;
          v23 = objc_alloc(MEMORY[0x277CCA9B8]);
          v66 = v36;
          v67 = @"ICTTMergeableString substring max > string max.";
          v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
          v25 = [v23 initWithDomain:@"TopoText" code:-3 userInfo:v24];
          v26 = v55[5];
          v55[5] = v25;

          v14 = v61;
          break;
        }
      }

      v10 = v13 + 1;
    }

    if (*(v14 + 24) == 1)
    {
      v27 = [(ICTTMergeableString *)self attributedString];
      v28 = [v27 length] == v11;

      if (!v28)
      {
        *(v61 + 24) = 0;
        v29 = objc_alloc(MEMORY[0x277CCA9B8]);
        v64 = v36;
        v65 = @"ICTTMergeableString length of substrings != attributedString length.";
        v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
        v31 = [v29 initWithDomain:@"TopoText" code:-4 userInfo:v30];
        v32 = v55[5];
        v55[5] = v31;

        [(ICTTMergeableString *)self dumpData];
        v33 = os_log_create("com.apple.notes", "Topotext");
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          [ICTTMergeableString check:];
        }
      }
    }

    if (a3)
    {
      v34 = v55[5];
      if (v34)
      {
        *a3 = v34;
      }
    }

    v8 = *(v61 + 24);

    _Block_object_dispose(&v54, 8);
    _Block_object_dispose(&v60, 8);
    goto LABEL_23;
  }

  if (a3)
  {
    v5 = objc_alloc(MEMORY[0x277CCA9B8]);
    v68 = *MEMORY[0x277CCA470];
    v69[0] = @"ICTTMergeableString graph has loop.";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:&v68 count:1];
    v7 = [v5 initWithDomain:@"TopoText" code:-1 userInfo:v6];
    v8 = 0;
    *a3 = v7;
LABEL_23:

    return v8 & 1;
  }

  v8 = 0;
  return v8 & 1;
}

void __29__ICTTMergeableString_check___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = *(a2 + 8);
    v9 = [*(a1 + 32) objectForKeyedSubscript:v6];
    v10 = v9;
    if (v9)
    {
      if ([v9 intersectsIndexesInRange:{v8, v7}])
      {
        v11 = objc_alloc(MEMORY[0x277CCA9B8]);
        v16 = *MEMORY[0x277CCA470];
        v17[0] = @"ICTTMergeableString graph has two characters with the same id.";
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
        v13 = [v11 initWithDomain:@"TopoText" code:-2 userInfo:v12];
        v14 = *(*(a1 + 40) + 8);
        v15 = *(v14 + 40);
        *(v14 + 40) = v13;

        *(*(*(a1 + 48) + 8) + 24) = 0;
        *a3 = 1;
      }

      else
      {
        [v10 addIndexesInRange:{v8, v7}];
      }
    }

    else
    {
      v10 = [objc_alloc(MEMORY[0x277CCAB58]) initWithIndexesInRange:{v8, v7}];
      [*(a1 + 32) setObject:? forKeyedSubscript:?];
    }
  }
}

- (void)checkTimestampLogStyleErrors:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__ICTTMergeableString_checkTimestampLogStyleErrors___block_invoke;
  v3[3] = &unk_278195CD0;
  v3[4] = self;
  v4 = a3;
  [(ICTTMergeableString *)self traverseUnordered:v3];
}

void __52__ICTTMergeableString_checkTimestampLogStyleErrors___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v4 = *a2;
    v5 = [MEMORY[0x277CCAD78] TTZero];
    v6 = [v4 isEqual:v5];

    if ((v6 & 1) == 0)
    {
      v7 = *(a2 + 8);
      v8 = *(a2 + 16);
      v9 = [*(a1 + 32) timestamp];
      v10 = [v9 clockForUUID:v4 atIndex:0];

      if (v4)
      {
        v11 = (v7 + v8 - 1);
        if (v10 <= v11)
        {
          v12 = os_log_create("com.apple.notes", "Topotext");
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            __52__ICTTMergeableString_checkTimestampLogStyleErrors___block_invoke_cold_1();
          }

          v13 = [*(a1 + 32) timestamp];
          [v13 setClock:(v11 + 1) forUUID:v4 atIndex:0];
        }
      }
    }

    v14 = *(a2 + 24);
    v15 = [MEMORY[0x277CCAD78] TTZero];
    v16 = [v14 isEqual:v15];

    if ((v16 & 1) == 0)
    {
      v17 = *(a2 + 32);
      v18 = [*(a1 + 32) timestamp];
      v19 = [v18 clockForUUID:v14 atIndex:1];

      if (v14)
      {
        if (v19 <= v17)
        {
          if (*(a1 + 40) == 1)
          {
            v20 = os_log_create("com.apple.notes", "Topotext");
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              __52__ICTTMergeableString_checkTimestampLogStyleErrors___block_invoke_cold_2();
            }
          }

          v21 = [*(a1 + 32) timestamp];
          [v21 setClock:(v17 + 1) forUUID:v14 atIndex:1];
        }
      }
    }
  }
}

- (void)dumpData
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 120);
  v4 = 134218498;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_214D51000, log, OS_LOG_TYPE_ERROR, "Dumping mergeable string data: %p %@ %@", &v4, 0x20u);
}

- (void)dumpMergeData:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMutableAttributedString *)self->_attributedString mutableCopy];
  v6 = [v4[19] mutableCopy];
  v7 = arc4random();
  v34 = v6;
  v35 = v5;
  v36 = v4;
  v8 = [(NSMutableAttributedString *)self->_attributedString length];
  if (v8)
  {
    v9 = 0;
    do
    {
      v10 = [(NSMutableAttributedString *)self->_attributedString mutableString];
      v11 = MEMORY[0x277CCACA8];
      v12 = [(NSMutableAttributedString *)self->_attributedString mutableString];
      v13 = [v11 stringWithFormat:@"%c", (v7 ^ objc_msgSend(v12, "characterAtIndex:", v9)) % 0x5E + 32];
      [v10 replaceCharactersInRange:v9 withString:{1, v13}];

      ++v9;
    }

    while (v8 != v9);
  }

  v14 = v36;
  v15 = [v36[19] length];
  if (v15)
  {
    v16 = 0;
    do
    {
      v17 = [v14[19] mutableString];
      v18 = MEMORY[0x277CCACA8];
      v19 = [v14[19] mutableString];
      v20 = [v18 stringWithFormat:@"%c", (v7 ^ objc_msgSend(v19, "characterAtIndex:", v16)) % 0x5E + 32];
      [v17 replaceCharactersInRange:v16 withString:{1, v20}];

      ++v16;
      v14 = v36;
    }

    while (v15 != v16);
  }

  v21 = [(ICTTMergeableString *)self serialize];
  v22 = [v14 serialize];
  v23 = NSTemporaryDirectory();
  v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"mergeA-%p.data", self];
  v25 = [v23 stringByAppendingPathComponent:v24];

  v26 = NSTemporaryDirectory();
  v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"mergeB-%p.data", self];
  v28 = [v26 stringByAppendingPathComponent:v27];

  [v21 writeToFile:v25 atomically:1];
  [v22 writeToFile:v28 atomically:1];
  v29 = os_log_create("com.apple.notes", "Topotext");
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    replicaUUID = self->_replicaUUID;
    *buf = 134218754;
    v38 = self;
    v39 = 2112;
    v40 = replicaUUID;
    v41 = 2112;
    v42 = v25;
    v43 = 2112;
    v44 = v28;
    _os_log_error_impl(&dword_214D51000, v29, OS_LOG_TYPE_ERROR, "Dumping merge: %p %@ %@ %@", buf, 0x2Au);
  }

  attributedString = self->_attributedString;
  self->_attributedString = v35;
  v31 = v35;

  v32 = v14[19];
  v14[19] = v34;
}

- (unint64_t)mergeWithString:(id)a3 mergeTimestamps:(BOOL)a4
{
  v86 = a4;
  v112[1] = *MEMORY[0x277D85DE8];
  v90 = a3;
  v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [v5 BOOLForKey:@"DebugDumpMergeData"];

  if (v6)
  {
    [(ICTTMergeableString *)self dumpMergeData:v90];
  }

  [(ICTTMergeableString *)self generateIdsForLocalChanges];
  [v90 generateIdsForLocalChanges];
  [v90 checkTimestampLogStyleErrors:0];
  if (![(ICTTMergeableString *)self canMergeString:v90])
  {
    v10 = 0;
    goto LABEL_122;
  }

  v7 = [(ICTTMergeableString *)self timestamp];
  v8 = [v90 timestamp];
  v9 = [v7 compareTo:v8];

  if (v9)
  {
    memset(v108, 0, sizeof(v108));
    v109 = 1065353216;
    v105 = 0u;
    v106 = 0u;
    v107 = 1065353216;
    v102 = 0u;
    v103 = 0u;
    v104 = 1065353216;
    v99 = 0u;
    v100 = 0u;
    v101 = 1065353216;
    v96 = 0u;
    v97 = 0u;
    v98 = 1065353216;
    v11 = [(NSMutableAttributedString *)self->_attributedString length];
    v12 = [v90 isFragment];
    v85 = v11;
    v13 = [(ICTTMergeableString *)self orderedSubstrings];
    v14 = *v13;
    v15 = v13[1];
    if (*v13 != v15)
    {
      v9 = &std::piecewise_construct;
      do
      {
        v16 = *v14;
        v92 = v16;
        std::__hash_table<std::__hash_value_type<TopoID,TopoSubstring *>,std::__unordered_map_hasher<TopoID,std::__hash_value_type<TopoID,TopoSubstring *>,std::hash<TopoID>,std::equal_to<TopoID>,true>,std::__unordered_map_equal<TopoID,std::__hash_value_type<TopoID,TopoSubstring *>,std::equal_to<TopoID>,std::hash<TopoID>,true>,std::allocator<std::__hash_value_type<TopoID,TopoSubstring *>>>::__emplace_unique_key_args<TopoID,std::piecewise_construct_t const&,std::tuple<TopoID const&>,std::tuple<>>(v108, v16)[4] = v16;
        if (v12)
        {
          v17 = [v90 startNodes];
          v18 = *v17;
          v19 = *(v17 + 8);
          while (v18 != v19)
          {
            v20 = *v18;
            if ([**v18 isEqual:*v16])
            {
              v21 = *(v20 + 2);
              v22 = v16[2];
              if (v21 >= v22 && v21 < v16[4] + v22)
              {
                v92 = v20;
                std::__hash_table<std::__hash_value_type<TopoID,TopoSubstring *>,std::__unordered_map_hasher<TopoID,std::__hash_value_type<TopoID,TopoSubstring *>,std::hash<TopoID>,std::equal_to<TopoID>,true>,std::__unordered_map_equal<TopoID,std::__hash_value_type<TopoID,TopoSubstring *>,std::equal_to<TopoID>,std::hash<TopoID>,true>,std::allocator<std::__hash_value_type<TopoID,TopoSubstring *>>>::__emplace_unique_key_args<TopoID,std::piecewise_construct_t const&,std::tuple<TopoID const&>,std::tuple<>>(v108, v20)[4] = v16;
              }
            }

            ++v18;
          }
        }

        ++v14;
      }

      while (v14 != v15);
    }

    v88 = [v90 orderedSubstrings];
    v23 = *v88;
    if (*v88 == v88[1])
    {
LABEL_43:
      v87 = 0;
    }

    else
    {
      while (1)
      {
        v24 = *v23;
        v25 = std::__hash_table<TopoID,std::hash<TopoID>,std::equal_to<TopoID>,std::allocator<TopoID>>::find<TopoID>(v108, *v23);
        v26 = v25;
        if (!v25)
        {
          break;
        }

        v95 = v25[4];
        v27 = *(v95 + 16);
        v28 = *(v24 + 16);
        if (v27 <= v28)
        {
          if (v27 < v28)
          {
            v92 = [(ICTTMergeableString *)self splitTopoSubstring:v24 atIndex:?];
            v23 = std::vector<TopoSubstring *>::insert(v88, v23 + 8, &v92) - 8;
          }
        }

        else
        {
          v29 = [ICTTMergeableString splitTopoSubstring:"splitTopoSubstring:atIndex:" atIndex:?];
          v94 = v29;
          v30 = *v29;
          v31 = *(v29 + 2);
          v32 = v30;
          v92 = v32;
          v93 = v31;
          v110 = &v92;
          std::__hash_table<std::__hash_value_type<TopoID,TopoSubstring *>,std::__unordered_map_hasher<TopoID,std::__hash_value_type<TopoID,TopoSubstring *>,std::hash<TopoID>,std::equal_to<TopoID>,true>,std::__unordered_map_equal<TopoID,std::__hash_value_type<TopoID,TopoSubstring *>,std::equal_to<TopoID>,std::hash<TopoID>,true>,std::allocator<std::__hash_value_type<TopoID,TopoSubstring *>>>::__emplace_unique_key_args<TopoID,std::piecewise_construct_t const&,std::tuple<TopoID&&>,std::tuple<>>(v108, &v92)[4] = v29;

          if (std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::find<TopoSubstring *>(&v96, &v95))
          {
            v92 = &v95;
            v33 = std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::__emplace_unique_key_args<TopoSubstring *,std::piecewise_construct_t const&,std::tuple<TopoSubstring * const&>,std::tuple<>>(&v96, &v95)[3];
            v92 = &v94;
            std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::__emplace_unique_key_args<TopoSubstring *,std::piecewise_construct_t const&,std::tuple<TopoSubstring * const&>,std::tuple<>>(&v96, &v94)[3] = v33;
            std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::__erase_unique<TopoSubstring *>(&v96, &v95);
          }
        }

        v34 = *(v24 + 48);
        v9 = *(v24 + 56);
        while (v34 != v9)
        {
          v35 = *v34;
          v36 = std::__hash_table<TopoID,std::hash<TopoID>,std::equal_to<TopoID>,std::allocator<TopoID>>::find<TopoID>(v108, *v34);
          v110 = 0;
          if (!v36)
          {
            operator new();
          }

          v37 = v36[4];
          v110 = v37;
          if (*(v37 + 8) != *(v35 + 8) || ([*v37 isEqual:*v35] & 1) == 0)
          {
            v38 = [ICTTMergeableString splitTopoSubstring:"splitTopoSubstring:atIndex:" atIndex:?];
            v92 = v38;
            std::__hash_table<std::__hash_value_type<TopoID,TopoSubstring *>,std::__unordered_map_hasher<TopoID,std::__hash_value_type<TopoID,TopoSubstring *>,std::hash<TopoID>,std::equal_to<TopoID>,true>,std::__unordered_map_equal<TopoID,std::__hash_value_type<TopoID,TopoSubstring *>,std::equal_to<TopoID>,std::hash<TopoID>,true>,std::allocator<std::__hash_value_type<TopoID,TopoSubstring *>>>::__emplace_unique_key_args<TopoID,std::piecewise_construct_t const&,std::tuple<TopoID const&>,std::tuple<>>(v108, v38)[4] = v38;
            v110 = v38;
          }

          v94 = v26[4];
          v39 = v94[6];
          v40 = v94[7];
          if (v39 != v40)
          {
            while (*v39 != v110)
            {
              if (++v39 == v40)
              {
                goto LABEL_38;
              }
            }
          }

          if (v39 == v40)
          {
LABEL_38:
            if (!std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::find<TopoSubstring *>(&v96, &v94))
            {
              v42 = v94[6];
              v41 = v94[7];
              v92 = &v94;
              std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::__emplace_unique_key_args<TopoSubstring *,std::piecewise_construct_t const&,std::tuple<TopoSubstring * const&>,std::tuple<>>(&v96, &v94)[3] = (v41 - v42) >> 3;
            }

            v92 = v110;
            std::vector<TopoSubstring *>::push_back[abi:ne200100]((v94 + 6), &v92);
            ++*(v92 + 18);
          }

          ++v34;
        }

        v23 += 8;
        if (v23 == v88[1])
        {
          goto LABEL_43;
        }
      }

      v43 = objc_alloc(MEMORY[0x277CCA9B8]);
      v111 = *MEMORY[0x277CCA470];
      v112[0] = @"Reached substring that is not in our graph.";
      v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v112 forKeys:&v111 count:1];
      v87 = [v43 initWithDomain:@"TopoText" code:-3 userInfo:v44];
    }

    [(ICTTMergeableString *)self invalidateCache];
    if (v87 || (v91 = 0, v45 = [(ICTTMergeableString *)self check:&v91], v87 = v91, (v45 & 1) == 0))
    {
      v78 = os_log_create("com.apple.notes", "Topotext");
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        [ICTTMergeableString mergeWithString:v87 mergeTimestamps:v78];
      }

      v79 = os_log_create("com.apple.notes", "Topotext");
      if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
      {
        [ICTTMergeableString mergeWithString:mergeTimestamps:];
      }

      for (i = v97; i; i = *i)
      {
        std::vector<TopoSubstring *>::resize((i[2] + 48), i[3]);
      }

      traverseUnorderedSimple(*self->_startNodes.__begin_, &__block_literal_global_10);
      traverseUnorderedSimple(*self->_startNodes.__begin_, &__block_literal_global_90);
      [(NSMutableAttributedString *)self->_attributedString replaceCharactersInRange:v85 withString:[(NSMutableAttributedString *)self->_attributedString length]- v85, &stru_2827172C0];
      for (j = v103; j; j = *j)
      {
        v82 = j[2];
        if (v82)
        {
          v83 = *(v82 + 48);
          if (v83)
          {
            *(v82 + 56) = v83;
            operator delete(v83);
          }

          MEMORY[0x216063B80](v82, 0x1080C40D9F1C51ELL);
        }
      }

      [(ICTTMergeableString *)self invalidateCache];
      [(ICTTMergeableString *)self coalesce];
      [(ICTTMergeableString *)self dumpMergeData:v90];
      v10 = 0;
    }

    else
    {
      v46 = *v88;
      if (*v88 != v88[1])
      {
        v9 = &v105;
        while (1)
        {
          v45 = *v46;
          v47 = std::__hash_table<TopoID,std::hash<TopoID>,std::equal_to<TopoID>,std::allocator<TopoID>>::find<TopoID>(v108, *v46)[4];
          v92 = v47;
          v48 = *(v47 + 32);
          v49 = *(v45 + 32);
          if (v48 < v49)
          {
            goto LABEL_50;
          }

          if (v48 == v49 && [*(v47 + 24) TTCompare:*(v45 + 24)] == -1)
          {
            break;
          }

LABEL_72:
          v46 += 8;
          if (v46 == v88[1])
          {
            goto LABEL_73;
          }
        }

        v47 = v92;
LABEL_50:
        if (*(v47 + 44))
        {
          if (*(v45 + 44))
          {
LABEL_60:
            if ((*(v45 + 44) & 1) == 0)
            {
              attributedString = self->_attributedString;
              if (*(v92 + 44))
              {
                v52 = ICTTBoundedCheckedCastNSUIntegerToUInt32([(NSMutableAttributedString *)self->_attributedString length]);
                *(v92 + 10) = v52;
                v53 = self->_attributedString;
                v54 = [v90 string];
                if (*(v45 + 44))
                {
                  v55 = 0;
                }

                else
                {
                  v55 = *(v45 + 16);
                }

                [(NSMutableAttributedString *)v53 ic_appendAttributedSubstring:v54 fromRange:*(v45 + 40), v55];
              }

              else
              {
                v56 = *(v92 + 10);
                v57 = *(v92 + 4);
                v54 = [v90 string];
                if (*(v45 + 44))
                {
                  v58 = 0;
                }

                else
                {
                  v58 = *(v45 + 16);
                }

                [(NSMutableAttributedString *)attributedString ic_replaceCharactersInRange:v56 withAttributedSubstring:v57 fromRange:v54, *(v45 + 40), v58];
              }
            }

            v59 = v92;
            *(v92 + 44) = *(v45 + 44);
            objc_storeStrong(v59 + 3, *(v45 + 24));
            *(v59 + 8) = *(v45 + 32);
            goto LABEL_72;
          }

          v50 = &v102;
        }

        else if (*(v45 + 44))
        {
          v50 = &v105;
        }

        else
        {
          v50 = &v99;
        }

        std::__hash_table<TopoSubstring *,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,std::allocator<TopoSubstring *>>::__emplace_unique_key_args<TopoSubstring *,TopoSubstring * const&>(v50, &v92);
        goto LABEL_60;
      }

LABEL_73:
      [(ICTTMergeableString *)self sortSplitNodes];
      [(ICTTMergeableString *)self invalidateCache];
      [v90 invalidateCache];
      [(ICTTMergeableString *)self updateAttributedStringAfterMerge];
      if (v86)
      {
        v60 = [(ICTTMergeableString *)self timestamp];
        v45 = [v90 timestamp];
        [v60 mergeWithTimestamp:v45];

        [(ICTTMergeableString *)self updateClock];
        [(ICTTMergeableString *)self checkTimestampLogStyleErrors:1];
      }

      v61 = [(ICTTMergeableString *)self delegate];
      v62 = v61;
      if (v61)
      {
        v89 = v61;
        [v61 beginEditing];
        v63 = [(ICTTMergeableString *)self orderedSubstrings];
        v64 = *v63;
        v65 = v63[1];
        if (*v63 != v65)
        {
          v66 = 0;
          v67 = 0;
          v68 = 0;
          do
          {
            v92 = *v64;
            v69 = std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::find<TopoSubstring *>(&v102, &v92);
            v70 = std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::find<TopoSubstring *>(&v105, &v92);
            v71 = v70 != 0;
            if (v69)
            {
              if ((*(v92 + 44) & 1) == 0)
              {
                if (v68)
                {
                  v72 = v67;
                }

                else
                {
                  v45 = v66;
                  v9 = 0;
                  v72 = 0;
                }

                v67 = v72 + *(v92 + 4);
                v68 = 1;
              }
            }

            else
            {
              v73 = v70;
              if (v70)
              {
                if (v68)
                {
                  v74 = v9;
                }

                else
                {
                  v45 = v66;
                  v74 = 0;
                }

                if (v68)
                {
                  v75 = v67;
                }

                else
                {
                  v75 = 0;
                }

                v76 = *(v92 + 4);
                v9 = v74 + v76;
                v67 = v75 - v76;
              }

              else if (v68)
              {
                [v89 edited:2 range:v45 changeInLength:{v9, v67}];
                v66 += v67;
              }

              if (std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::find<TopoSubstring *>(&v99, &v92))
              {
                [v89 edited:1 range:v66 changeInLength:{*(v92 + 4), 0}];
              }

              if (*(v92 + 44) == 1 && v73 == 0)
              {
                v68 = 0;
              }

              else
              {
                v66 += *(v92 + 4);
                v68 = v71;
              }
            }

            ++v64;
          }

          while (v64 != v65);
        }

        v62 = v89;
        [v89 endEditing];
      }

      if (*(&v106 + 1) | *(&v103 + 1) | *(&v100 + 1))
      {
        v10 = 2;
      }

      else
      {
        v10 = 1;
      }
    }

    std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(&v96);
    std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(&v99);
    std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(&v102);
    std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(&v105);
    std::__hash_table<TopoID,std::hash<TopoID>,std::equal_to<TopoID>,std::allocator<TopoID>>::~__hash_table(v108);

    goto LABEL_122;
  }

  v10 = 1;
LABEL_122:

  return v10;
}

void __55__ICTTMergeableString_mergeWithString_mergeTimestamps___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v3 = *(a2 + 56);
  while (v2 != v3)
  {
    v4 = *v2++;
    ++*(v4 + 72);
  }
}

- (void)traverseUnordered:(id)a3
{
  v6 = a3;
  begin = self->_startNodes.__begin_;
  end = self->_startNodes.__end_;
  while (begin != end)
  {
    traverseUnordered(*begin++, v6);
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ICTTMergeableString *)self string];
  v7 = [v3 stringWithFormat:@"<%@ %p = '%@'>", v5, self, v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  attributedString = self->_attributedString;
  v6 = [v4 attributedString];
  LOBYTE(attributedString) = [(NSMutableAttributedString *)attributedString isEqual:v6];

  v7 = (attributedString & 1) != 0 && [(ICTTMergeableString *)self graphIsEqual:v4];
  return v7;
}

- (BOOL)graphIsEqual:(id)a3
{
  v4 = a3;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 1;
  v22 = 0;
  v23 = &v22;
  v24 = 0x5812000000;
  v25 = __Block_byref_object_copy__97;
  v26 = __Block_byref_object_dispose__98;
  v27 = "";
  memset(v28, 0, sizeof(v28));
  v29 = 1065353216;
  [(ICTTMergeableString *)self coalesce];
  [v4 coalesce];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __36__ICTTMergeableString_graphIsEqual___block_invoke;
  v21[3] = &unk_278195BB8;
  v21[4] = &v22;
  [(ICTTMergeableString *)self traverseUnordered:v21];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __36__ICTTMergeableString_graphIsEqual___block_invoke_2;
  v20[3] = &unk_278195B90;
  v20[4] = &v22;
  v20[5] = &v30;
  [v4 traverseUnordered:v20];
  if (*(v31 + 24) == 1)
  {
    v5 = v23 + 8;
    do
    {
      v5 = *v5;
      if (!v5)
      {
        break;
      }

      v6 = v5[2];
      v7 = v6;
      v8 = v5[4];
      v9 = v5[5];
      if (v8)
      {
        v10 = v9 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (v10 || (v12 = *(v8 + 48), v11 = *(v8 + 56), v11 - v12 != *(v9 + 56) - *(v9 + 48)))
      {
        *(v31 + 24) = 0;

        break;
      }

      if (v11 != v12)
      {
        v13 = 0;
        if (((v11 - v12) >> 3) <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = (v11 - v12) >> 3;
        }

        while (1)
        {
          v15 = *(*(v8 + 48) + 8 * v13);
          v16 = *(*(v9 + 48) + 8 * v13);
          if (*(v15 + 8) != *(v16 + 8) || ([*v15 isEqual:*v16] & 1) == 0)
          {
            break;
          }

          if (v14 == ++v13)
          {
            goto LABEL_18;
          }
        }

        *(v31 + 24) = 0;
      }

LABEL_18:
      v17 = *(v31 + 24);
    }

    while ((v17 & 1) != 0);
  }

  v18 = *(v31 + 24);
  _Block_object_dispose(&v22, 8);
  std::__hash_table<TopoID,std::hash<TopoID>,std::equal_to<TopoID>,std::allocator<TopoID>>::~__hash_table(v28);
  _Block_object_dispose(&v30, 8);

  return v18;
}

uint64_t *__36__ICTTMergeableString_graphIsEqual___block_invoke(uint64_t a1, void *a2)
{
  std::__hash_table<std::__hash_value_type<TopoID,std::pair<TopoSubstring *,TopoSubstring *>>,std::__unordered_map_hasher<TopoID,std::__hash_value_type<TopoID,std::pair<TopoSubstring *,TopoSubstring *>>,std::hash<TopoID>,std::equal_to<TopoID>,true>,std::__unordered_map_equal<TopoID,std::__hash_value_type<TopoID,std::pair<TopoSubstring *,TopoSubstring *>>,std::equal_to<TopoID>,std::hash<TopoID>,true>,std::allocator<std::__hash_value_type<TopoID,std::pair<TopoSubstring *,TopoSubstring *>>>>::__emplace_unique_key_args<TopoID,std::piecewise_construct_t const&,std::tuple<TopoID const&>,std::tuple<>>((*(*(a1 + 32) + 8) + 48), a2)[4] = a2;
  result = std::__hash_table<std::__hash_value_type<TopoID,std::pair<TopoSubstring *,TopoSubstring *>>,std::__unordered_map_hasher<TopoID,std::__hash_value_type<TopoID,std::pair<TopoSubstring *,TopoSubstring *>>,std::hash<TopoID>,std::equal_to<TopoID>,true>,std::__unordered_map_equal<TopoID,std::__hash_value_type<TopoID,std::pair<TopoSubstring *,TopoSubstring *>>,std::equal_to<TopoID>,std::hash<TopoID>,true>,std::allocator<std::__hash_value_type<TopoID,std::pair<TopoSubstring *,TopoSubstring *>>>>::__emplace_unique_key_args<TopoID,std::piecewise_construct_t const&,std::tuple<TopoID const&>,std::tuple<>>((*(*(a1 + 32) + 8) + 48), a2);
  result[5] = 0;
  return result;
}

uint64_t *__36__ICTTMergeableString_graphIsEqual___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = std::__hash_table<TopoID,std::hash<TopoID>,std::equal_to<TopoID>,std::allocator<TopoID>>::find<TopoID>((*(*(a1 + 32) + 8) + 48), a2);
  if (result && (v7 = result, v8 = result[4], *(a2 + 32) == *(v8 + 32)) && (result = [*(a2 + 24) isEqual:*(v8 + 24)], (result & 1) != 0))
  {
    v7[5] = a2;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a3 = 1;
  }

  return result;
}

- (unint64_t)hash
{
  v2 = [(ICTTMergeableString *)self attributedString];
  v3 = [v2 hash];

  return v3;
}

- (id)dotDescription:(unint64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v5 appendFormat:@"subgraph cluster_%ld%p_%ld {\n  rankdir=LR;\n", a3, self, a3];
  if ([(ICTTMergeableString *)self isFragment])
  {
    v6 = @"<Fragment>";
  }

  else
  {
    v7 = [(ICTTMergeableString *)self string];
    v8 = [v7 string];
    v6 = [v8 description];
  }

  v9 = [(__CFString *)v6 stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];

  v10 = [(ICTTMergeableString *)self replicaUUID];
  v32 = v9;
  v11 = [v10 TTShortDescription];
  [v5 appendFormat:@"  label=%@_%ld (%ld)    '%@'\n", v11, a3, -[ICTTVectorMultiTimestamp clockForUUID:atIndex:](self->_timestamp, "clockForUUID:atIndex:", self->_replicaUUID, 0), v9];

  [v5 appendFormat:@"  color=lightgrey;\n"];
  v12 = [(ICTTMergeableString *)self orderedSubstrings];
  v13 = *v12;
  v34 = v12[1];
  if (*v12 != v34)
  {
    v33 = self;
    do
    {
      v14 = *v13;
      begin = self->_startNodes.__begin_;
      end = self->_startNodes.__end_;
      if (begin != end)
      {
        while (*begin != v14)
        {
          if (++begin == end)
          {
            goto LABEL_12;
          }
        }
      }

      if (begin == end)
      {
LABEL_12:
        v21 = self->_endNodes.__begin_;
        v22 = self->_endNodes.__end_;
        if (v21 != v22)
        {
          while (*v21 != v14)
          {
            if (++v21 == v22)
            {
              goto LABEL_18;
            }
          }
        }

        if (v21 != v22)
        {
          v17 = [*v14 TTShortDescription];
          [v5 appendFormat:@"  N%ld%p [label=End\\n%@, %d];\n", a3, v14, v17, *(v14 + 8)];
          goto LABEL_25;
        }

LABEL_18:
        v17 = &stru_2827172C0;
        if ((*(v14 + 44) & 1) == 0)
        {
          v23 = [(NSMutableAttributedString *)self->_attributedString string];
          v24 = v23;
          if (*(v14 + 44))
          {
            v25 = 0;
          }

          else
          {
            v25 = *(v14 + 16);
          }

          v17 = [v23 substringWithRange:{*(v14 + 40), v25}];
        }

        v20 = [*v14 TTShortDescription];
        v26 = *(v14 + 8);
        v27 = *(v14 + 16);
        v28 = [*(v14 + 24) TTShortDescription];
        [v5 appendFormat:@"  N%ld%p [label=%@ %@, %d-%u (%@, %d)];\n", a3, v14, v17, v20, v26, (v26 + v27 - 1), v28, *(v14 + 32)];

        self = v33;
      }

      else
      {
        v17 = *v14;
        v18 = *(v14 + 8);
        v19 = *(v14 + 16);
        v20 = [(__CFString *)v17 TTShortDescription];
        [v5 appendFormat:@"  N%ld%p [label=Start\\n%@, %d];\n", a3, v14, v20, (v18 + v19 - 1)];
      }

LABEL_25:
      v29 = *(v14 + 48);
      v30 = *(v14 + 56);
      while (v29 != v30)
      {
        [v5 appendFormat:@"  N%ld%p -> N%ld%p;\n", a3, v14, a3, *v29++];
      }

      ++v13;
    }

    while (v13 != v34);
  }

  [v5 appendString:@"}\n"];

  return v5;
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

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,-[ICTTMergeableString deleteSubstrings:withCharacterRanges:]::$_1 &,_NSRange *,0>(v12, (v12 + 16), (v12 + 32), (v12 + 48), a2[-1].n128_u64, result).n128_u64[0];
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

      v48 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[ICTTMergeableString deleteSubstrings:withCharacterRanges:]::$_1 &,_NSRange *>(a1, (v12 - 16), result);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[ICTTMergeableString deleteSubstrings:withCharacterRanges:]::$_1 &,_NSRange *>(v12, a2, v49))
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
        std::__introsort<std::_ClassicAlgPolicy,[ICTTMergeableString deleteSubstrings:withCharacterRanges:]::$_1 &,_NSRange *,false>(a1, v12 - 16, a3, a4 & 1);
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

- (ICTTMergeableString)initWithData:(id)a3 replicaID:(id)a4 fragment:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  topotext::String::String(v15);
  v10 = [v8 bytes];
  v11 = ICTTBoundedCheckedCastNSUIntegerToUInt32([v8 length]);
  if (google::protobuf::MessageLite::ParseFromArray(v15, v10, v11))
  {
    self = [(ICTTMergeableString *)self initWithArchive:v15 replicaID:v9 orderedSubstrings:0 timestamp:0 fragment:v5];
    v12 = self;
  }

  else
  {
    v13 = os_log_create("com.apple.notes", "Topotext");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ICTTMergeableString(ICTTMergeableStringPersistenceAdditions) initWithData:replicaID:fragment:];
    }

    v12 = 0;
  }

  topotext::String::~String(v15);

  return v12;
}

- (ICTTMergeableString)initWithArchive:(const void *)a3 replicaID:(id)a4 orderedSubstrings:(void *)a5 timestamp:(id)a6 fragment:(BOOL)a7
{
  v55 = *MEMORY[0x277D85DE8];
  v43 = a4;
  v44 = a6;
  v11 = [(ICTTMergeableString *)self initWithReplicaID:v43 asFragment:1];
  if (!v11)
  {
    goto LABEL_38;
  }

  if (*(a3 + 32))
  {
    v12 = objc_alloc(MEMORY[0x277CCACA8]);
    v13 = *(a3 + 5);
    v14 = *(v13 + 23);
    if (v14 < 0)
    {
      v13 = *v13;
      v14 = *(*(a3 + 5) + 8);
    }

    v15 = [v12 initWithBytes:v13 length:v14 encoding:4];
    if (v15)
    {
      v16 = v15;
      v17 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v15];
      v39 = a7;
      v40 = v16;
      [(ICTTMergeableString *)v11 setAttributedString:v17];

      v18 = *(a3 + 14);
      __p = 0;
      v52 = 0;
      v53 = 0;
      std::vector<TopoSubstring *>::reserve(&__p, v18);
      if (v18)
      {
        operator new();
      }

      v19 = v44;
      if (!v44)
      {
        v20 = [ICTTVectorMultiTimestamp alloc];
        v21 = v20;
        v22 = *(a3 + 9);
        if (!v22)
        {
          v22 = *(topotext::String::default_instance(v20) + 72);
        }

        v19 = [(ICTTVectorMultiTimestamp *)v21 initWithArchive:v22 andCapacity:2];
      }

      [(ICTTMergeableString *)v11 setTimestamp:v19];
      if (!v44)
      {
      }

      v23 = [(ICTTMergeableString *)v11 timestamp];
      v41 = [v23 sortedUUIDs];

      [v41 count];
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v24 = v41;
      v25 = [v24 countByEnumeratingWithState:&v47 objects:v54 count:16];
      if (v25)
      {
        v26 = *v48;
        while (2)
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v48 != v26)
            {
              objc_enumerationMutation(v24);
            }

            v28 = *(*(&v47 + 1) + 8 * i);
            v29 = [MEMORY[0x277CCAD78] TTZero];
            LOBYTE(v28) = [v28 isEqual:v29];

            if (v28)
            {
              v30 = 0;
              goto LABEL_27;
            }
          }

          v25 = [v24 countByEnumeratingWithState:&v47 objects:v54 count:16];
          if (v25)
          {
            continue;
          }

          break;
        }
      }

      v30 = 1;
LABEL_27:

      memset(v45, 0, sizeof(v45));
      v46 = 1065353216;
      v33 = [(ICTTMergeableString *)v11 attributedString];
      v34 = [v33 length] == 0;

      if (v34)
      {
        if (v30 && !v39)
        {
          [(ICTTMergeableString *)v11 updateClock];
          goto LABEL_32;
        }

        if (v30)
        {
          v30 = 1;
          goto LABEL_32;
        }
      }

      else
      {
        v35 = os_log_create("com.apple.notes", "Topotext");
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          [ICTTMergeableString check:];
        }
      }

      v36 = [(ICTTMergeableString *)v11 startNodes];
      v36[1] = *v36;
      v30 = 0;
LABEL_32:
      if (a5 && &__p != a5)
      {
        std::vector<TopoSubstring *>::__assign_with_size[abi:ne200100]<TopoSubstring **,TopoSubstring **>(a5, __p, v52, (v52 - __p) >> 3);
      }

      std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(v45);

      if (__p)
      {
        v52 = __p;
        operator delete(__p);
      }

      if (!v30)
      {
        v37 = 0;
        goto LABEL_39;
      }

LABEL_38:
      v37 = v11;
LABEL_39:
      v32 = v37;
      goto LABEL_40;
    }
  }

  v31 = os_log_create("com.apple.notes", "Topotext");
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    [ICTTMergeableString(ICTTMergeableStringPersistenceAdditions) initWithArchive:replicaID:orderedSubstrings:timestamp:fragment:];
  }

  v32 = 0;
LABEL_40:

  return v32;
}

- (void)saveToArchive:(void *)a3
{
  [(ICTTMergeableString *)self generateIdsForLocalChanges];
  [(ICTTMergeableString *)self coalesce];
  [(ICTTMergeableString *)self checkTimestampLogStyleErrors:1];
  v5 = [(ICTTMergeableString *)self orderedSubstrings];

  [(ICTTMergeableString *)self saveSubstrings:v5 archiveSet:0 linkSet:0 archivedString:0 toArchive:a3];
}

- (void)saveSubstrings:(void *)a3 archiveSet:(void *)a4 linkSet:(void *)a5 archivedString:(id *)a6 toArchive:(void *)a7
{
  memset(v72, 0, sizeof(v72));
  v73 = 1065353216;
  v11 = *a3;
  v12 = *(a3 + 1);
  if (*a3 != v12)
  {
    v13 = 0;
    do
    {
      v71 = *v11;
      v74 = &v71;
      *(std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned int>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned int>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned int>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned int>>>::__emplace_unique_key_args<TopoSubstring *,std::piecewise_construct_t const&,std::tuple<TopoSubstring * const&>,std::tuple<>>(v72, &v71) + 6) = v13++;
      ++v11;
    }

    while (v11 != v12);
  }

  v64 = objc_alloc_init(MEMORY[0x277CCAB48]);
  v14 = [(ICTTMergeableString *)self timestamp];
  v68 = [v14 sortedUUIDs];

  v69 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v15 = [MEMORY[0x277CCAD78] TTZero];
  [v69 setObject:&unk_282747BC8 forKeyedSubscript:v15];
  v67 = a4;

  v16 = [v68 count];
  if (v16)
  {
    v17 = 0;
    do
    {
      v18 = v17 + 1;
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17 + 1];
      v20 = [v68 objectAtIndexedSubscript:v17];
      [v69 setObject:v19 forKeyedSubscript:v20];

      v17 = v18;
    }

    while (v16 != v18);
  }

  v21 = *a3;
  v66 = *(a3 + 1);
  if (*a3 != v66)
  {
    do
    {
      v71 = *v21;
      v22 = *(a7 + 15);
      v23 = *(a7 + 14);
      if (v23 >= v22)
      {
        if (v22 == *(a7 + 16))
        {
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a7 + 48, v22 + 1);
        }

        google::protobuf::internal::GenericTypeHandler<topotext::Substring>::New();
      }

      v24 = *(a7 + 6);
      *(a7 + 14) = v23 + 1;
      v25 = *(v24 + 8 * v23);
      *(v25 + 32) |= 1u;
      v26 = *(v25 + 40);
      if (!v26)
      {
        operator new();
      }

      v27 = [v69 objectForKeyedSubscript:*v71];
      v28 = [v27 integerValue];
      *(v26 + 32) |= 1u;
      *(v26 + 40) = v28;

      *(v25 + 32) |= 1u;
      v29 = *(v25 + 40);
      if (!v29)
      {
        operator new();
      }

      v30 = *(v71 + 8);
      *(v29 + 32) |= 2u;
      *(v29 + 44) = v30;
      if (v67 && !std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::find<TopoSubstring *>(v67, &v71))
      {
        *(v25 + 32) |= 4u;
        v44 = *(v25 + 48);
        if (!v44)
        {
          operator new();
        }

        v44[8] |= 1u;
        v44[10] = 0;
        *(v25 + 32) |= 4u;
        v44[8] |= 2u;
        v44[11] = 0;
      }

      else
      {
        *(v25 + 32) |= 4u;
        v31 = *(v25 + 48);
        if (!v31)
        {
          operator new();
        }

        v32 = [v69 objectForKeyedSubscript:*(v71 + 24)];
        v33 = [v32 integerValue];
        *(v31 + 32) |= 1u;
        *(v31 + 40) = v33;

        *(v25 + 32) |= 4u;
        v34 = *(v25 + 48);
        if (!v34)
        {
          operator new();
        }

        v35 = v71;
        v36 = *(v71 + 32);
        *(v34 + 32) |= 2u;
        *(v34 + 44) = v36;
        if (*(v35 + 44) != 1)
        {
          v37 = *(v35 + 40);
          v38 = *(v35 + 16);
          v39 = [(ICTTMergeableString *)self attributedString];
          v40 = [v39 length];

          if (v38 + v37 <= v40)
          {
            v41 = [(ICTTMergeableString *)self attributedString];
            v42 = v41;
            if (*(v71 + 44))
            {
              v43 = 0;
            }

            else
            {
              v43 = *(v71 + 16);
            }

            v45 = [v41 attributedSubstringFromRange:{*(v71 + 40), v43}];
            [v64 appendAttributedString:v45];
          }

          goto LABEL_33;
        }
      }

      *(v25 + 32) |= 8u;
      *(v25 + 60) = 1;
LABEL_33:
      v46 = v71;
      v47 = *(v71 + 16);
      *(v25 + 32) |= 2u;
      *(v25 + 56) = v47;
      v48 = *(v46 + 48);
      v49 = *(v46 + 56);
      while (v48 != v49)
      {
        v70 = *v48;
        if (!a5 || std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::find<TopoSubstring *>(a5, &v70))
        {
          v74 = &v70;
          v50 = *(std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned int>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned int>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned int>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned int>>>::__emplace_unique_key_args<TopoSubstring *,std::piecewise_construct_t const&,std::tuple<TopoSubstring * const&>,std::tuple<>>(v72, &v70) + 6);
          v51 = *(v25 + 72);
          if (v51 == *(v25 + 76))
          {
            google::protobuf::RepeatedField<unsigned int>::Reserve(v25 + 64, v51 + 1);
            v51 = *(v25 + 72);
          }

          v52 = *(v25 + 64);
          *(v25 + 72) = v51 + 1;
          *(v52 + 4 * v51) = v50;
        }

        ++v48;
      }

      ++v21;
    }

    while (v21 != v66);
  }

  v53 = [v64 string];
  v54 = [v53 UTF8String];
  v55 = [v64 string];
  v56 = [v55 lengthOfBytesUsingEncoding:4];
  *(a7 + 8) |= 1u;
  if (!google::protobuf::internal::empty_string_)
  {
    __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
  }

  v57 = v56;
  v58 = *(a7 + 5);
  if (v58 == google::protobuf::internal::empty_string_)
  {
    operator new();
  }

  std::string::__assign_external(v58, v54, v57);

  if (a6)
  {
    *a6 = v64;
  }

  v59 = [(ICTTMergeableString *)self timestamp];
  v60 = [v59 isDocumentShared];

  if ((v60 & 1) == 0)
  {
    v61 = [(ICTTMergeableString *)self timestamp];
    *(a7 + 8) |= 4u;
    v62 = *(a7 + 9);
    if (!v62)
    {
      operator new();
    }

    [v61 saveToArchive:v62];
  }

  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(v72);
}

- (id)serialize
{
  topotext::String::String(v7);
  [(ICTTMergeableString *)self saveToArchive:v7];
  v3 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:topotext::String::ByteSize(v7)];
  v4 = [v3 mutableBytes];
  v5 = ICTTBoundedCheckedCastNSUIntegerToUInt32([v3 length]);
  google::protobuf::MessageLite::SerializeToArray(v7, v4, v5);
  topotext::String::~String(v7);

  return v3;
}

- (id)i_saveDeltasSinceTimestamp:(id)a3 toArchive:(void *)a4
{
  v6 = a3;
  [(ICTTMergeableString *)self generateIdsForLocalChanges];
  [(ICTTMergeableString *)self coalesce];
  v27 = self;
  v28 = a4;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  memset(v35, 0, sizeof(v35));
  v36 = 1065353216;
  memset(v33, 0, sizeof(v33));
  v34 = 1065353216;
  v7 = [(ICTTMergeableString *)self orderedSubstrings];
  v9 = *v7;
  v8 = v7[1];
  v29 = v8;
  while (v9 != v8)
  {
    v10 = *v9;
    v32 = v10;
    v11 = *v10;
    v12 = *(v10 + 8);
    LODWORD(v10) = *(v10 + 16);
    v13 = [v6 clockForUUID:v11 atIndex:0];
    v14 = [v6 clockForUUID:v11 atIndex:1];
    if (v10 + v12 >= v13 || *(v32 + 32) >= v14)
    {
      std::__hash_table<TopoSubstring *,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,std::allocator<TopoSubstring *>>::__emplace_unique_key_args<TopoSubstring *,TopoSubstring * const&>(v33, &v32);
      if (!std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::find<TopoSubstring *>(v35, &v32))
      {
        std::vector<TopoSubstring *>::push_back[abi:ne200100](&v37, &v32);
        std::__hash_table<TopoSubstring *,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,std::allocator<TopoSubstring *>>::__emplace_unique_key_args<TopoSubstring *,TopoSubstring * const&>(v35, &v32);
      }

      v23 = *(v32 + 48);
      v24 = *(v32 + 56);
      while (v23 != v24)
      {
        v31 = *v23;
        if (!std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::find<TopoSubstring *>(v35, &v31))
        {
          std::vector<TopoSubstring *>::push_back[abi:ne200100](&v37, &v31);
          std::__hash_table<TopoSubstring *,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,std::allocator<TopoSubstring *>>::__emplace_unique_key_args<TopoSubstring *,TopoSubstring * const&>(v35, &v31);
        }

        ++v23;
      }
    }

    else
    {
      v15 = *(v32 + 48);
      v16 = *(v32 + 56);
      while (v15 != v16)
      {
        v17 = *v15;
        v18 = **v15;
        v19 = *(v17 + 2);
        v20 = *(v17 + 4);
        v21 = [v6 clockForUUID:v18 atIndex:0];
        v22 = [v6 clockForUUID:v18 atIndex:1];
        if ((v20 + v19 >= v21 || *(v17 + 8) >= v22) && !std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::find<TopoSubstring *>(v35, &v32))
        {
          std::vector<TopoSubstring *>::push_back[abi:ne200100](&v37, &v32);
          std::__hash_table<TopoSubstring *,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,std::allocator<TopoSubstring *>>::__emplace_unique_key_args<TopoSubstring *,TopoSubstring * const&>(v35, &v32);
        }

        ++v15;
      }
    }

    ++v9;
    v8 = v29;
  }

  v30 = 0;
  [(ICTTMergeableString *)v27 saveSubstrings:&v37 archiveSet:v33 linkSet:v35 archivedString:&v30 toArchive:v28];
  v25 = v30;
  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(v33);
  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(v35);
  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  return v25;
}

- (id)serializeDeltaSinceTimestamp:(id)a3
{
  v4 = a3;
  if (-[ICTTMergeableString hasLocalChanges](self, "hasLocalChanges") || (-[ICTTMergeableString timestamp](self, "timestamp"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isEqual:v4], v5, (v6 & 1) == 0))
  {
    topotext::String::String(v12);
    [(ICTTMergeableString *)self saveDeltaSinceTimestamp:v4 toArchive:v12];
    v7 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:topotext::String::ByteSize(v12)];
    v8 = [v7 mutableBytes];
    v9 = ICTTBoundedCheckedCastNSUIntegerToUInt32([v7 length]);
    google::protobuf::MessageLite::SerializeToArray(v12, v8, v9);
    topotext::String::~String(v12);
  }

  else
  {
    v7 = 0;
  }

  v10 = [v7 copy];

  return v10;
}

- (ICCRTTCompatibleDocument)document
{
  v2 = objc_getAssociatedObject(self, ICTTMergeableStringICCRDataTypeICCRDocumentWeakObjectKey);
  v3 = [v2 object];

  return v3;
}

- (void)setDocument:(id)a3
{
  v9 = a3;
  v4 = [v9 replica];
  [(ICTTMergeableString *)self setReplicaUUID:v4];

  objc_opt_class();
  v5 = ICDynamicCast();
  v6 = v5;
  if (v5)
  {
    v7 = [v5 sharedTopotextTimestamp];
    [(ICTTMergeableString *)self setTimestamp:v7];

    v8 = [objc_alloc(MEMORY[0x277D36288]) initWithObject:v6];
    objc_setAssociatedObject(self, ICTTMergeableStringICCRDataTypeICCRDocumentWeakObjectKey, v8, 0x301);
  }

  else if (v9)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICTTMergeableString(ICCRDataType) setDocument:]" simulateCrash:1 showAlert:0 format:@"ICTTMergeableString document set to non-TT-compatible document."];
  }
}

- (void)mergeWith:(id)a3
{
  v8 = a3;
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Invalid merge userInfo:{classes must be equal for merge.", 0}];
      objc_exception_throw(v7);
    }

    [(ICTTMergeableString *)self mergeWithString:v8 mergeTimestamps:0];
    v4 = [(ICTTMergeableString *)self document];

    if (v4)
    {
      v5 = [(ICTTMergeableString *)self document];
      v6 = [v5 stringsWithClocksNeedingUpdating];
      [v6 addObject:self];
    }
  }
}

- (void)realizeLocalChangesIn:(id)a3
{
  [(ICTTMergeableString *)self generateIdsForLocalChanges];
  v4 = [(ICTTMergeableString *)self document];

  if (v4)
  {
    v6 = [(ICTTMergeableString *)self document];
    v5 = [v6 stringsWithClocksToResetAfterRealizingLocalChanges];
    [v5 addObject:self];
  }
}

- (void)check:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_214D51000, log, OS_LOG_TYPE_ERROR, "Corrupt mergeable string, substring max > string max.", buf, 2u);
}

- (void)mergeWithString:(uint64_t)a1 mergeTimestamps:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_214D51000, a2, OS_LOG_TYPE_ERROR, "Failed to merge strings: %@", &v2, 0xCu);
}

@end