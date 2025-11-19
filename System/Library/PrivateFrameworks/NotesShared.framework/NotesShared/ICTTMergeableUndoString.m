@interface ICTTMergeableUndoString
- (TopoIDRange)insertAttributedString:(SEL)a3 after:(id)a4 before:(void *)a5;
- (void)addUndoCommand:(id)a3;
- (void)deleteSubstrings:(void *)a3 withCharacterRanges:(void *)a4;
- (void)undeleteSubstrings:(void *)a3;
@end

@implementation ICTTMergeableUndoString

- (void)addUndoCommand:(id)a3
{
  v7 = a3;
  v4 = [(ICTTMergeableString *)self objectsNeedingUpdatedRanges];
  [v4 addObject:v7];

  v5 = [(ICTTMergeableString *)self delegate];
  [v5 addUndoCommand:v7];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 postNotificationName:ICTTMergeableUndoStringDidAddUndoNotification object:self];
}

- (void)deleteSubstrings:(void *)a3 withCharacterRanges:(void *)a4
{
  v7 = [(ICTTMergeableString *)self delegate];
  if (v7)
  {
    v8 = v7;
    v9 = [(ICTTMergeableString *)self delegate];
    v10 = [v9 wantsUndoCommands];

    if (v10)
    {
      v11 = objc_alloc_init(ICTTMergeableStringUndoEditCommand);
      v12 = *a3;
      v13 = *(a3 + 1);
      while (v12 != v13)
      {
        v14 = *v12;
        if ((*(*v12 + 44) & 1) == 0)
        {
          v15 = [(ICTTMergeableStringUndoEditCommand *)v11 insertStrings];
          v16 = [(ICTTMergeableString *)self attributedString];
          v17 = v16;
          if (*(v14 + 44))
          {
            v18 = 0;
          }

          else
          {
            v18 = *(v14 + 16);
          }

          v19 = [v16 attributedSubstringFromRange:{*(v14 + 40), v18}];
          v22 = *v14;
          v20 = *(v14 + 16);
          v23 = *(v14 + 8);
          v24 = v20;
          v25 = v19;
          std::vector<std::pair<TopoIDRange,NSAttributedString * {__strong}>>::push_back[abi:ne200100](v15, &v22);
        }

        ++v12;
      }

      [(ICTTMergeableUndoString *)self addUndoCommand:v11];
    }
  }

  v21.receiver = self;
  v21.super_class = ICTTMergeableUndoString;
  [(ICTTMergeableString *)&v21 deleteSubstrings:a3 withCharacterRanges:a4];
}

- (void)undeleteSubstrings:(void *)a3
{
  v5 = [(ICTTMergeableString *)self delegate];
  if (v5)
  {
    v6 = v5;
    v7 = [(ICTTMergeableString *)self delegate];
    v8 = [v7 wantsUndoCommands];

    if (v8)
    {
      v9 = objc_alloc_init(ICTTMergeableStringUndoEditCommand);
      v10 = *a3;
      v11 = *(a3 + 1);
      while (v10 != v11)
      {
        *&v46 = *v10;
        v12 = *(v10 + 16);
        DWORD2(v46) = *(v10 + 8);
        LODWORD(v47) = v12;
        *(&v47 + 1) = *(v10 + 24);
        if (*(&v47 + 1))
        {
          std::vector<TopoIDRange>::push_back[abi:ne200100](-[ICTTMergeableStringUndoEditCommand deleteRanges](v9, "deleteRanges"), &v46);
          v13 = *(&v47 + 1);
        }

        else
        {
          v13 = 0;
        }

        v10 += 32;
      }

      v14 = [(ICTTMergeableStringUndoEditCommand *)v9 deleteRanges];
      if (v14[1] == *v14)
      {

        return;
      }

      [(ICTTMergeableUndoString *)self addUndoCommand:v9];
    }
  }

  v46 = 0u;
  v47 = 0u;
  v48 = 1065353216;
  v15 = *a3;
  v38 = *(a3 + 1);
  if (*a3 != v38)
  {
    do
    {
      v16 = *v15;
      v17 = *(v15 + 8);
      v18 = *(v15 + 16);
      v19 = *(v15 + 24);
      if (v19)
      {
        __p = 0;
        v44 = 0;
        v45 = 0;
        v20 = v16;
        v40 = v20;
        v41 = v17;
        v42 = v18;
        if (self)
        {
          [(ICTTMergeableString *)self getSubstrings:&__p forTopoIDRange:&v40];
        }

        else
        {
        }

        v21 = v44;
        while (v21 != __p)
        {
          v23 = *(v21 - 1);
          v21 -= 8;
          v22 = v23;
          v39 = v23;
          if (*(v23 + 44) == 1)
          {
            v24 = *(v22 + 8);
            v25 = *(v22 + 16);
            v26 = [(ICTTMergeableString *)self attributedString];
            v27 = [v19 attributedSubstringFromRange:{(v24 - v17), v25}];
            [v26 insertAttributedString:v27 atIndex:*(v39 + 40)];

            *(v39 + 44) = 0;
            v28 = [MEMORY[0x277CCAD78] CR_unserialized];
            v29 = *(v39 + 24);
            *(v39 + 24) = v28;

            std::__hash_table<TopoSubstring *,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,std::allocator<TopoSubstring *>>::__emplace_unique_key_args<TopoSubstring *,TopoSubstring * const&>(&v46, &v39);
          }
        }

        [(ICTTMergeableString *)self updateSubstringIndexes];
        if (__p)
        {
          v44 = __p;
          operator delete(__p);
        }
      }

      v15 += 32;
    }

    while (v15 != v38);
  }

  v30 = [(ICTTMergeableString *)self delegate];

  if (v30)
  {
    v31 = [(ICTTMergeableString *)self orderedSubstrings];
    v32 = *v31;
    v33 = v31[1];
    if (*v31 != v33)
    {
      v34 = 0;
      do
      {
        __p = *v32;
        if (std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::find<TopoSubstring *>(&v46, &__p))
        {
          v35 = *(__p + 4);
          v36 = [(ICTTMergeableString *)self delegate];
          [v36 edited:2 range:v34 changeInLength:{0, v35}];
        }

        if (*(__p + 44))
        {
          v37 = 0;
        }

        else
        {
          v37 = *(__p + 4);
        }

        v34 += v37;
        ++v32;
      }

      while (v32 != v33);
    }
  }

  [(ICTTMergeableString *)self setHasLocalChanges:1];
  [(ICTTMergeableString *)self coalesce];
  [(ICTTMergeableString *)self updateSubstringIndexes];
  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(&v46);
}

- (TopoIDRange)insertAttributedString:(SEL)a3 after:(id)a4 before:(void *)a5
{
  v13.receiver = self;
  v13.super_class = ICTTMergeableUndoString;
  result = [(TopoIDRange *)&v13 insertAttributedString:a4 after:a5 before:a6];
  if (retstr->var1)
  {
    result = [(ICTTMergeableString *)self delegate];
    v9 = result;
    if (result)
    {
      v10 = [(ICTTMergeableString *)self delegate];
      v11 = [v10 wantsUndoCommands];

      if (v11)
      {
        v12 = objc_alloc_init(ICTTMergeableStringUndoEditCommand);
        std::vector<TopoIDRange>::push_back[abi:ne200100](-[ICTTMergeableStringUndoEditCommand deleteRanges](v12, "deleteRanges"), retstr);
        [(ICTTMergeableUndoString *)self addUndoCommand:v12];
      }
    }
  }

  return result;
}

@end