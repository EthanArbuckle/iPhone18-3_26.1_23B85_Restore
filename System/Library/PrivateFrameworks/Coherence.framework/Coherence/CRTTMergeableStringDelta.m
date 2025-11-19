@interface CRTTMergeableStringDelta
- (BOOL)saveToEncoder:(id)a3 error:(id *)a4;
- (_TtC9Coherence24CRTTMergeableStringDelta)initWithDecoder:(id)a3 error:(id *)a4;
- (_TtC9Coherence24CRTTMergeableStringDelta)initWithDeltasTo:(id)a3 from:(id)a4 compareElements:(id)a5;
- (id).cxx_construct;
- (id)dotDescription:(unint64_t)a3;
- (void)addChildTo:(const void *)a3 child:(const void *)a4 deltaCharMap:(void *)a5;
- (void)addStorageTo:(void *)a3 fromStorage:(id)a4 range:(_NSRange)a5;
- (void)addSubstring:(const TopoIDRange *)a3 requiresExactLength:(BOOL)a4 deltaCharMap:(void *)a5;
- (void)compareSameSubstring:(const void *)a3 toSubstring:(const void *)a4 from:(id)a5 toString:(id)a6 charMap:(const void *)a7 deltaCharMap:(void *)a8 compareElements:(id)a9;
- (void)compareSubstring:(const void *)a3 toSubstring:(const void *)a4 fromString:(id)a5 toString:(id)a6 charMap:(const void *)a7 deltaCharMap:(void *)a8 compareElements:(id)a9;
- (void)dealloc;
- (void)findAndCompareSubstring:(const void *)a3 from:(id)a4 toString:(id)a5 charMap:(const void *)a6 deltaCharMap:(void *)a7 compareElements:(id)a8;
- (void)openTapToRadar;
- (void)openURL:(id)a3;
@end

@implementation CRTTMergeableStringDelta

- (_TtC9Coherence24CRTTMergeableStringDelta)initWithDeltasTo:(id)a3 from:(id)a4 compareElements:(id)a5
{
  v89 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v69 = v9;
  v70 = a5;
  v82.receiver = self;
  v82.super_class = _TtC9Coherence24CRTTMergeableStringDelta;
  v10 = [(CRTTMergeableStringDelta *)&v82 init];
  v11 = [v9 version];
  v12 = [v8 version];
  if ([v11 hasDeltaTo:v12])
  {

    v13 = v70 != 0;
    v14 = 1;
  }

  else
  {
    v15 = [v9 addedByVersion];
    v16 = [v8 addedByVersion];
    v14 = [v15 hasDeltaTo:v16];

    v13 = v70 != 0;
    if (!(v13 | v14 & 1))
    {
      v61 = 0;
      goto LABEL_52;
    }
  }

  v79 = 0u;
  v80 = 0u;
  v81 = 1065353216;
  v78[0] = 0;
  v78[1] = 0;
  v77 = v78;
  v17 = [v8 attributedString];
  v66 = v13;
  v18 = [v17 Coherence_emptyCopy];
  attributedString = v10->_attributedString;
  location = &v10->_attributedString;
  v10->_attributedString = v18;

  v67 = v14;
  v20 = [v9 orderedSubstrings];
  v22 = *v20;
  v21 = *(v20 + 8);
  if (*v20 == v21)
  {
    goto LABEL_33;
  }

  do
  {
    v23 = *v22;
    v24 = v78[0];
    if (!v78[0])
    {
      goto LABEL_31;
    }

    v25 = v78;
    while (1)
    {
      while (1)
      {
        v26 = v24;
        v27 = *(v23 + 16);
        v28 = *(v23 + 20);
        *uu1 = *v23;
        v29 = *(v23 + 24);
        *uu2 = *(v26 + 2);
        v30 = *(v26 + 12);
        v31 = *(v26 + 13);
        v32 = *(v26 + 14);
        v35 = v29 != 0;
        v33 = v29 - 1;
        if (!v35)
        {
          v33 = 0;
        }

        LODWORD(v84) = v27;
        DWORD1(v84) = v33 + v28;
        v34 = v32 - 1;
        if (!v32)
        {
          v34 = 0;
        }

        LODWORD(v87) = v30;
        HIDWORD(v87) = v34 + v31;
        v35 = v27 >= v30;
        if (v27 != v30)
        {
          break;
        }

        v36 = uuid_compare(uu1, uu2);
        if (!v36)
        {
          v35 = DWORD1(v84) >= HIDWORD(v87);
          break;
        }

        if (v36 != -1)
        {
          goto LABEL_14;
        }

LABEL_24:
        v24 = *v26;
        v25 = v26;
        if (!*v26)
        {
          goto LABEL_31;
        }
      }

      if (!v35)
      {
        goto LABEL_24;
      }

LABEL_14:
      *uu1 = *(v26 + 2);
      v37 = *(v26 + 12);
      v38 = *(v26 + 13);
      LODWORD(v84) = v37;
      v39 = *(v26 + 14);
      v40 = *(v23 + 16);
      v41 = *(v23 + 20);
      *uu2 = *v23;
      v42 = *(v23 + 24);
      v35 = v39 != 0;
      v43 = v39 - 1;
      if (!v35)
      {
        v43 = 0;
      }

      DWORD1(v84) = v43 + v38;
      v44 = v42 - 1;
      if (!v42)
      {
        v44 = 0;
      }

      LODWORD(v87) = v40;
      HIDWORD(v87) = v44 + v41;
      v45 = v37 >= v40;
      if (v37 == v40)
      {
        v46 = uuid_compare(uu1, uu2);
        if (v46)
        {
          if (v46 != -1)
          {
            break;
          }

          goto LABEL_28;
        }

        v45 = DWORD1(v84) >= HIDWORD(v87);
      }

      if (v45)
      {
        break;
      }

LABEL_28:
      v25 = (v26 + 1);
      v24 = v26[1];
      if (!v24)
      {
        goto LABEL_31;
      }
    }

    if (!*v25)
    {
LABEL_31:
      operator new();
    }

    (*v25)[8] = v23;
    ++v22;
  }

  while (v22 != v21);
LABEL_33:
  for (i = *([v8 orderedSubstrings] + 8); i != *objc_msgSend(v8, "orderedSubstrings"); i -= 8)
  {
    v48 = *(i - 8);
    [(CRTTMergeableStringDelta *)v10 findAndCompareSubstring:v48 from:v69 toString:v8 charMap:&v77 deltaCharMap:&v79 compareElements:v70];
  }

  *uu2 = 0;
  *&uu2[8] = uu2;
  v87 = 0x2020000000;
  v88 = 1;
  *uu1 = 0u;
  v84 = 0u;
  v85 = 1065353216;
  v49 = [v8 attributedString];
  v50 = [v49 Coherence_emptyCopy];

  std::vector<Coherence_namespace::TopoSubstring *>::reserve(&v10->orderedSubstrings.__begin_, *(&v80 + 1));
  for (j = v80; j; j = *j)
  {
    v52 = j[5];
    if (!*(v52 + 80))
    {
      v71[0] = MEMORY[0x1E69E9820];
      v71[1] = 3221225472;
      v71[2] = __66__CRTTMergeableStringDelta_initWithDeltasTo_from_compareElements___block_invoke;
      v71[3] = &unk_1E7A126F8;
      v72 = v10;
      v73 = v69;
      v74 = v8;
      v76 = uu2;
      v75 = v50;
      Coherence_namespace::traverseIterative(v52, uu1, v71);
    }
  }

  objc_storeStrong(location, v50);
  if ((*(*&uu2[8] + 24) & 1) == 0 || !((v10->orderedSubstrings.__end_ != v10->orderedSubstrings.__begin_) | v67 & 1))
  {
    goto LABEL_50;
  }

  if (!v66 || [*location length])
  {
    goto LABEL_44;
  }

  begin = v10->orderedSubstrings.__begin_;
  end = v10->orderedSubstrings.__end_;
  if (begin != end)
  {
    while (*(*begin + 5) == *(*begin + 4))
    {
      v61 = 0;
      if (++begin == end)
      {
        goto LABEL_51;
      }
    }

LABEL_44:
    v53 = [v69 version];
    fromVersion = v10->_fromVersion;
    v10->_fromVersion = v53;

    v55 = [v69 addedByVersion];
    fromAddedByVersion = v10->_fromAddedByVersion;
    v10->_fromAddedByVersion = v55;

    v57 = [v8 version];
    version = v10->_version;
    v10->_version = v57;

    v59 = [v8 addedByVersion];
    addedByVersion = v10->_addedByVersion;
    v10->_addedByVersion = v59;

    v10->_renameGeneration = +[_TtC9Coherence19CRGlobalContextObjC renameGeneration];
    v61 = v10;
  }

  else
  {
LABEL_50:
    v61 = 0;
  }

LABEL_51:

  std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::~__hash_table(uu1);
  _Block_object_dispose(uu2, 8);
  std::__tree<std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,std::__map_value_compare<Coherence_namespace::TopoIDRange,std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,Coherence_namespace::$_0,true>,std::allocator<std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>>>::destroy(v78[0]);
  std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::~__hash_table(&v79);
LABEL_52:

  v64 = *MEMORY[0x1E69E9840];
  return v61;
}

void __66__CRTTMergeableStringDelta_initWithDeltasTo_from_compareElements___block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = a2;
  std::vector<Coherence_namespace::TopoSubstring *>::push_back[abi:ne200100](*(a1 + 32) + 8, &v14);
  v3 = *(v14 + 24);
  if (v3)
  {
    v4 = *(v14 + 84);
    if (v4 != -1)
    {
      v5 = [*(a1 + 32) attributedString];
      v6 = [v5 length];

      if (v4 + v3 <= v6)
      {
        v9 = [*(a1 + 56) length];
        v10 = *(a1 + 56);
        v11 = [*(a1 + 32) attributedString];
        [v10 Coherence_appendStorage:v11 fromRange:{*(v14 + 84), *(v14 + 24)}];

        *(v14 + 84) = v9;
      }

      else
      {
        v12 = *(a1 + 40);
        v13 = *(a1 + 48);
        os_state_add_handler();
        v7 = MEMORY[0x1E69E9C10];
        v8 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v7, 0x90u))
        {
          __66__CRTTMergeableStringDelta_initWithDeltasTo_from_compareElements___block_invoke_cold_1();
        }

        os_state_remove_handler();
        if (os_variant_has_internal_diagnostics())
        {
          [*(a1 + 32) openTapToRadar];
        }

        *(*(*(a1 + 64) + 8) + 24) = 0;
      }
    }
  }
}

char *__66__CRTTMergeableStringDelta_initWithDeltasTo_from_compareElements___block_invoke_2(uint64_t a1)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = MEMORY[0x1E696AE40];
  v11[0] = @"from";
  v4 = [*(a1 + 32) dotDescription:0];
  v11[1] = @"to";
  v12[0] = v4;
  v5 = [*(a1 + 40) dotDescription:1];
  v12[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v7 = [v3 dataWithPropertyList:v6 format:200 options:0 error:0];

  v8 = malloc_type_malloc([v7 length] + 200, 0x1000040BEF03554uLL);
  *v8 = 1;
  *(v8 + 1) = [v7 length];
  [v7 getBytes:v8 + 200 range:{0, objc_msgSend(v7, "length")}];
  strlcpy(v8 + 136, [@"CRTTMergeableStringDelta.init" UTF8String], 0x40uLL);

  objc_autoreleasePoolPop(v2);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)dealloc
{
  begin = self->orderedSubstrings.__begin_;
  for (i = self->orderedSubstrings.__end_; begin != i; ++begin)
  {
    v5 = *begin;
    if (*begin)
    {
      v6 = *(v5 + 7);
      if (v6)
      {
        *(v5 + 8) = v6;
        operator delete(v6);
      }

      v7 = *(v5 + 4);
      if (v7)
      {
        *(v5 + 5) = v7;
        operator delete(v7);
      }

      MEMORY[0x1B26FCDB0](v5, 0x10A0C409FE6E197);
    }
  }

  v8.receiver = self;
  v8.super_class = _TtC9Coherence24CRTTMergeableStringDelta;
  [(CRTTMergeableStringDelta *)&v8 dealloc];
}

- (void)openTapToRadar
{
  if (([CRTTMergeableStringDelta openTapToRadar]::hasAlreadyFiled & 1) == 0)
  {
    [CRTTMergeableStringDelta openTapToRadar]::hasAlreadyFiled = 1;
    v12 = objc_alloc_init(MEMORY[0x1E696AF20]);
    [v12 setScheme:@"tap-to-radar"];
    [v12 setHost:@"new"];
    v3 = [MEMORY[0x1E695DF70] array];
    v4 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"ComponentName" value:@"Coherence"];
    [v3 addObject:v4];

    v5 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"ComponentVersion" value:@"all"];
    [v3 addObject:v5];

    v6 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"ComponentID" value:@"941619"];
    [v3 addObject:v6];

    v7 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"AutoDiagnostics" value:@"1"];
    [v3 addObject:v7];

    v8 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"Title" value:@"CRTTMergeableStringDelta Fatal Failure"];
    [v3 addObject:v8];

    v9 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"Classification" value:@"Crash/Hang/Data Loss"];
    [v3 addObject:v9];

    v10 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"Reproducibility" value:@"Not Applicable"];
    [v3 addObject:v10];

    [v12 setQueryItems:v3];
    v11 = [v12 URL];
    [(CRTTMergeableStringDelta *)self openURL:v11];
  }
}

- (void)openURL:(id)a3
{
  v13 = a3;
  v3 = [NSClassFromString(&cfstr_Uiapplication.isa) sharedApplication];
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x1E695DF50];
    v6 = [v3 methodSignatureForSelector:sel_openURL_options_completionHandler_];
    v7 = [v5 invocationWithMethodSignature:v6];

    [v7 setSelector:sel_openURL_options_completionHandler_];
    [v7 setArgument:&v13 atIndex:2];
    [v7 invokeWithTarget:v4];
  }

  v8 = [NSClassFromString(&cfstr_Nsworkspace.isa) sharedWorkspace];
  v9 = v8;
  if (v8)
  {
    v10 = MEMORY[0x1E695DF50];
    v11 = [v8 methodSignatureForSelector:sel_openURL_];
    v12 = [v10 invocationWithMethodSignature:v11];

    [v12 setSelector:sel_openURL_];
    [v12 setArgument:&v13 atIndex:2];
    [v12 invokeWithTarget:v9];
  }
}

- (_TtC9Coherence24CRTTMergeableStringDelta)initWithDecoder:(id)a3 error:(id *)a4
{
  v6 = a3;
  v24.receiver = self;
  v24.super_class = _TtC9Coherence24CRTTMergeableStringDelta;
  v7 = [(CRTTMergeableStringDelta *)&v24 init];
  v8 = [v6 storageWithError:a4];
  attributedString = v7->_attributedString;
  v7->_attributedString = v8;

  if (!v7->_attributedString)
  {
    goto LABEL_12;
  }

  v7->_renameGeneration = +[_TtC9Coherence19CRGlobalContextObjC renameGeneration];
  v10 = [v6 versionWithError:a4];
  version = v7->_version;
  v7->_version = v10;

  v12 = [v6 addedByVersionWithError:a4];
  addedByVersion = v7->_addedByVersion;
  v7->_addedByVersion = v12;

  v14 = [v6 fromVersionWithError:a4];
  fromVersion = v7->_fromVersion;
  v7->_fromVersion = v14;

  v16 = [v6 fromAddedByVersionWithError:a4];
  fromAddedByVersion = v7->_fromAddedByVersion;
  v7->_fromAddedByVersion = v16;

  if (!v7->_version)
  {
    goto LABEL_12;
  }

  if (v7->_addedByVersion && v7->_fromVersion && v7->_fromAddedByVersion)
  {
    v23 = [v6 substringCount];
    std::vector<Coherence_namespace::TopoSubstring *>::reserve(&v7->orderedSubstrings.__begin_, v23);
    if (v23)
    {
      operator new();
    }

    v18 = [(CRTTMergeableStringDelta *)v7 attributedString];
    v19 = Coherence_namespace::decodeSubstrings(0, [v18 length], v6, &v7->orderedSubstrings, 0, 0, a4);

    if (v19)
    {
      v20 = v7;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;
  }

  else
  {
LABEL_12:
    v21 = 0;
  }

  return v21;
}

- (BOOL)saveToEncoder:(id)a3 error:(id *)a4
{
  v6 = a3;
  memset(v32, 0, sizeof(v32));
  v33 = 1065353216;
  v7 = [(CRTTMergeableStringDelta *)self orderedSubstrings];
  v8 = *v7;
  v9 = v7[1];
  if (*v7 != v9)
  {
    v10 = 0;
    do
    {
      v31 = *v8;
      v34 = &v31;
      *(std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::__emplace_unique_key_args<Coherence_namespace::TopoSubstring const*,std::piecewise_construct_t const&,std::tuple<Coherence_namespace::TopoSubstring const* const&>,std::tuple<>>(v32, &v31) + 6) = v10++;
      ++v8;
    }

    while (v8 != v9);
  }

  v11 = [(CRTTMergeableStringDelta *)self orderedSubstrings];
  v12 = *v11;
  v13 = v11[1];
  if (*v11 != v13)
  {
    while (1)
    {
      v14 = *v12;
      v15 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:*v12];
      [v6 setCharWithId:v15 clock:*(v14 + 20)];
      [v6 setWithLength:*(v14 + 24)];
      if (*(v14 + 84) == -1)
      {
        break;
      }

      if (*(v14 + 40) == *(v14 + 32))
      {
        v16 = 1;
LABEL_9:
        [v6 setWithContentOptions:v16];
      }

      v18 = *(v14 + 32);
      v17 = *(v14 + 40);
      while (v18 != v17)
      {
        if (*(v18 + 16) == -1)
        {
          v19 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v18];
          [v6 addRemovedAddedById:v19 clock:*(v18 + 20)];
        }

        else
        {
          v19 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v18];
          [v6 addAddedById:v19 clock:*(v18 + 20)];
        }

        v18 += 24;
      }

      v20 = *(v14 + 56);
      v21 = *(v14 + 64);
      while (v20 != v21)
      {
        v34 = *v20;
        v22 = std::__hash_table<Coherence_namespace::TopoSubstring *,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::allocator<Coherence_namespace::TopoSubstring *>>::find<Coherence_namespace::TopoSubstring *>(v32, &v34);
        if (!v22)
        {
          __assert_rtn("[CRTTMergeableStringDelta saveToEncoder:error:]", "CRTTMergeableStringDelta.mm", 294, "it != substringIndexes.end()");
        }

        [v6 addChildWithId:*(v22 + 6)];
        ++v20;
      }

      [v6 finishSubstring];

      if (++v12 == v13)
      {
        goto LABEL_21;
      }
    }

    v16 = 2;
    goto LABEL_9;
  }

LABEL_21:
  v23 = [(CRTTMergeableStringDelta *)self attributedString];
  [v6 setStorage:v23 error:v30];

  if (v30 && *v30)
  {
    v24 = 0;
  }

  else
  {
    v25 = [(CRTTMergeableStringDelta *)self version];
    [v6 setWithVersion:v25];

    v26 = [(CRTTMergeableStringDelta *)self addedByVersion];
    [v6 setWithAddedByVersion:v26];

    v27 = [(CRTTMergeableStringDelta *)self fromVersion];
    [v6 setFromVersion:v27];

    v28 = [(CRTTMergeableStringDelta *)self fromAddedByVersion];
    [v6 setFromAddedByVersion:v28];

    v24 = 1;
  }

  std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::~__hash_table(v32);

  return v24;
}

- (void)addSubstring:(const TopoIDRange *)a3 requiresExactLength:(BOOL)a4 deltaCharMap:(void *)a5
{
  v6 = a4;
  v8 = std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoID,std::pair<Coherence_namespace::TopoSubstring *,Coherence_namespace::TopoSubstring *>>,std::__unordered_map_hasher<Coherence_namespace::TopoID,std::__hash_value_type<Coherence_namespace::TopoID,std::pair<Coherence_namespace::TopoSubstring *,Coherence_namespace::TopoSubstring *>>,std::hash<Coherence_namespace::TopoID>,std::equal_to<Coherence_namespace::TopoID>,true>,std::__unordered_map_equal<Coherence_namespace::TopoID,std::__hash_value_type<Coherence_namespace::TopoID,std::pair<Coherence_namespace::TopoSubstring *,Coherence_namespace::TopoSubstring *>>,std::equal_to<Coherence_namespace::TopoID>,std::hash<Coherence_namespace::TopoID>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoID,std::pair<Coherence_namespace::TopoSubstring *,Coherence_namespace::TopoSubstring *>>>>::find<Coherence_namespace::TopoID>(a5, a3);
  if (!v8)
  {
    operator new();
  }

  v9 = v8;
  v10 = v8[5];
  if (v6 && Coherence_namespace::TopoIDRange::operator!=(v8[5], a3->charID.replica.uuid))
  {
    if (*(v10 + 5) != *(v10 + 4) || *(v10 + 8) != *(v10 + 7))
    {
      [CRTTMergeableStringDelta addSubstring:requiresExactLength:deltaCharMap:];
    }

    std::__hash_table<Coherence_namespace::TopoSubstring *,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::allocator<Coherence_namespace::TopoSubstring *>>::erase(a5, v9);
    v11 = *&a3->charID.replica.uuid[12];
    *v10 = *a3->charID.replica.uuid;
    *(v10 + 12) = v11;
    std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoID,Coherence_namespace::TopoSubstring *>,std::__unordered_map_hasher<Coherence_namespace::TopoID,std::__hash_value_type<Coherence_namespace::TopoID,Coherence_namespace::TopoSubstring *>,std::hash<Coherence_namespace::TopoID>,std::equal_to<Coherence_namespace::TopoID>,true>,std::__unordered_map_equal<Coherence_namespace::TopoID,std::__hash_value_type<Coherence_namespace::TopoID,Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoID>,std::hash<Coherence_namespace::TopoID>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoID,Coherence_namespace::TopoSubstring *>>>::__emplace_unique_key_args<Coherence_namespace::TopoID,std::piecewise_construct_t const&,std::tuple<Coherence_namespace::TopoID const&>,std::tuple<>>(a5, v10)[5] = v10;
  }

  return v10;
}

- (void)addChildTo:(const void *)a3 child:(const void *)a4 deltaCharMap:(void *)a5
{
  v8 = [(CRTTMergeableStringDelta *)self addSubstring:a3 requiresExactLength:1 deltaCharMap:?];
  v9 = [(CRTTMergeableStringDelta *)self addSubstring:a4 requiresExactLength:0 deltaCharMap:a5];
  std::vector<Coherence_namespace::TopoSubstring *>::push_back[abi:ne200100](v8 + 56, &v9);
  ++v9[20];
}

- (void)findAndCompareSubstring:(const void *)a3 from:(id)a4 toString:(id)a5 charMap:(const void *)a6 deltaCharMap:(void *)a7 compareElements:(id)a8
{
  v54 = *MEMORY[0x1E69E9840];
  v37 = a4;
  v39 = a5;
  v38 = a8;
  v49 = *a3;
  v50 = *(a3 + 4);
  v14 = *(a6 + 1);
  if (!v14)
  {
    v27 = v37;
    goto LABEL_26;
  }

  v15 = *(a3 + 5);
  v16 = (a6 + 8);
  do
  {
    *uu1 = *(v14 + 32);
    v17 = *(v14 + 48);
    v18 = *(v14 + 52);
    v19 = *(v14 + 56);
    *uu2 = v49;
    v20 = v19 != 0;
    v21 = v19 - 1;
    if (!v20)
    {
      v21 = 0;
    }

    *&uu1[16] = v17;
    *&uu1[20] = v21 + v18;
    v52 = v50;
    v53 = v15;
    if (v17 != v50)
    {
      if (v17 < v50)
      {
        v23 = -1;
      }

      else
      {
        v23 = 1;
      }

      goto LABEL_11;
    }

    v22 = uuid_compare(uu1, uu2);
    if (v22)
    {
      v23 = v22;
LABEL_11:
      v24 = v23 == -1;
      goto LABEL_12;
    }

    v24 = *&uu1[20] < v53;
LABEL_12:
    v25 = !v24;
    if (v24)
    {
      v26 = 8;
    }

    else
    {
      v26 = 0;
    }

    if (v25)
    {
      v16 = v14;
    }

    v14 = *(v14 + v26);
  }

  while (v14);
  v27 = v37;
  if (v16 != (a6 + 8) && (!Coherence_namespace::TopoIDRange::operator!=(v16[8], a3) || Coherence_namespace::TopoIDRange::intersects(v16[8], a3)))
  {
    [(CRTTMergeableStringDelta *)self compareSubstring:a3 toSubstring:v16[8] fromString:v37 toString:v39 charMap:a6 deltaCharMap:a7 compareElements:v38];
    goto LABEL_39;
  }

LABEL_26:
  v28 = [(CRTTMergeableStringDelta *)self addSubstring:a3 requiresExactLength:1 deltaCharMap:a7];
  v29 = v28;
  if (v28 != a3)
  {
    std::vector<Coherence_namespace::TopoID>::__assign_with_size[abi:ne200100]<Coherence_namespace::TopoID*,Coherence_namespace::TopoID*>(v28 + 4, *(a3 + 4), *(a3 + 5), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 5) - *(a3 + 4)) >> 3));
  }

  std::vector<Coherence_namespace::TopoSubstring *>::reserve(v29 + 7, (*(a3 + 8) - *(a3 + 7)) >> 3);
  v30 = *(a3 + 7);
  for (i = *(a3 + 8); v30 != i; ++v30)
  {
    v32 = *v30;
    v33 = **v30;
    *&uu1[12] = *(*v30 + 12);
    *uu1 = v33;
    v42 = 0;
    v43 = 0;
    v41 = 0;
    std::vector<Coherence_namespace::TopoID>::__init_with_size[abi:ne200100]<Coherence_namespace::TopoID*,Coherence_namespace::TopoID*>(&v41, *(v32 + 4), *(v32 + 5), 0xAAAAAAAAAAAAAAABLL * ((*(v32 + 5) - *(v32 + 4)) >> 3));
    __p = 0;
    v45 = 0;
    v47 = 0;
    v46 = 0;
    v48 = *(v32 + 21);
    [(CRTTMergeableStringDelta *)self addChildTo:a3 child:uu1 deltaCharMap:a7];
    if (__p)
    {
      v45 = __p;
      operator delete(__p);
    }

    if (v41)
    {
      v42 = v41;
      operator delete(v41);
    }
  }

  if (*(a3 + 5) != *(a3 + 4))
  {
    v34 = [v39 attributedString];
    if (*(a3 + 5) == *(a3 + 4))
    {
      v35 = 0;
    }

    else
    {
      v35 = *(a3 + 6);
    }

    [(CRTTMergeableStringDelta *)self addStorageTo:v29 fromStorage:v34 range:*(a3 + 21), v35];
  }

LABEL_39:

  v36 = *MEMORY[0x1E69E9840];
}

- (void)addStorageTo:(void *)a3 fromStorage:(id)a4 range:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v11 = a4;
  v9 = [(CRTTMergeableStringStorage *)self->_attributedString length];
  *(a3 + 21) = Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v9, v10);
  [(CRTTMergeableStringStorage *)self->_attributedString Coherence_appendStorage:v11 fromRange:location, length];
}

- (void)compareSameSubstring:(const void *)a3 toSubstring:(const void *)a4 from:(id)a5 toString:(id)a6 charMap:(const void *)a7 deltaCharMap:(void *)a8 compareElements:(id)a9
{
  v91 = *MEMORY[0x1E69E9840];
  v67 = a5;
  v70 = a6;
  v66 = a9;
  if (*(a4 + 6))
  {
    v13 = *(a4 + 5);
    v14 = *(a4 + 4);
    v64 = v14;
    for (i = 0; v14 != v13; v14 += 24)
    {
      v16 = *v14;
      *&src[16] = *(v14 + 2);
      *src = v16;
      if (std::__find[abi:ne200100]<Coherence_namespace::TopoID const*,Coherence_namespace::TopoID const*,Coherence_namespace::TopoID,std::__identity>(*(a3 + 4), *(a3 + 5), src) == *(a3 + 5))
      {
        v17 = [v70 addedByVersion];
        v18 = Coherence_namespace::TopoID::objc(src);
        v19 = [v17 contains:v18];

        if (v19)
        {
          if (!i)
          {
            i = [(CRTTMergeableStringDelta *)self addSubstring:a3 requiresExactLength:1 deltaCharMap:a8];
          }

          v87 = -1;
          uuid_copy(dst, src);
          v88 = *dst;
          v89 = v87;
          v90 = *&src[20];
          std::vector<Coherence_namespace::TopoID>::push_back[abi:ne200100]((i + 4), &v88);
        }
      }
    }

    v21 = *(a3 + 4);
    v20 = *(a3 + 5);
    if (v21 != v20)
    {
      obj = v13;
      do
      {
        v22 = *v21;
        *&src[16] = *(v21 + 2);
        *src = v22;
        if (std::__find[abi:ne200100]<Coherence_namespace::TopoID const*,Coherence_namespace::TopoID const*,Coherence_namespace::TopoID,std::__identity>(*(a4 + 4), *(a4 + 5), src) == *(a4 + 5))
        {
          v23 = [v67 addedByVersion];
          v24 = Coherence_namespace::TopoID::objc(src);
          v25 = [v23 contains:v24];

          if ((v25 & 1) == 0)
          {
            if (!i)
            {
              i = [(CRTTMergeableStringDelta *)self addSubstring:a3 requiresExactLength:1 deltaCharMap:a8];
            }

            v27 = i[5];
            v26 = i[6];
            if (v27 >= v26)
            {
              v30 = i[4];
              v31 = 0xAAAAAAAAAAAAAAABLL * ((v27 - v30) >> 3);
              v32 = v31 + 1;
              if (v31 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                std::vector<Coherence_namespace::TopoSubstring *>::__throw_length_error[abi:ne200100]();
              }

              v33 = 0xAAAAAAAAAAAAAAABLL * ((v26 - v30) >> 3);
              if (2 * v33 > v32)
              {
                v32 = 2 * v33;
              }

              if (v33 >= 0x555555555555555)
              {
                v34 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v34 = v32;
              }

              if (v34)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<Coherence_namespace::TopoID>>((i + 4), v34);
              }

              v35 = 24 * v31;
              v36 = *src;
              *(v35 + 16) = *&src[16];
              *v35 = v36;
              v29 = 24 * v31 + 24;
              v37 = i[4];
              v38 = i[5] - v37;
              v39 = 24 * v31 - v38;
              memcpy((v35 - v38), v37, v38);
              v40 = i[4];
              i[4] = v39;
              i[5] = v29;
              i[6] = 0;
              if (v40)
              {
                operator delete(v40);
              }

              v13 = obj;
            }

            else
            {
              v28 = *src;
              *(v27 + 16) = *&src[16];
              *v27 = v28;
              v29 = v27 + 24;
            }

            i[5] = v29;
          }
        }

        v21 = (v21 + 24);
      }

      while (v21 != v20);
      if (*(a3 + 5) != *(a3 + 4))
      {
        if (v13 == v64)
        {
          if (!i)
          {
            i = [(CRTTMergeableStringDelta *)self addSubstring:a3 requiresExactLength:1 deltaCharMap:a8];
          }

          v43 = [v70 attributedString];
          v44 = *(a3 + 21);
          if (*(a3 + 5) != *(a3 + 4))
          {
            v45 = *(a3 + 6);
          }

          [(CRTTMergeableStringDelta *)self addStorageTo:i fromStorage:v43 range:?];
        }

        else
        {
          if (!v66)
          {
            goto LABEL_53;
          }

          v65 = (*(v66 + 2))(v66, *(a3 + 21), *(a3 + 6), *(a4 + 21), *(a4 + 6));
          if ([v65 count] && i)
          {
            v41 = [v70 attributedString];
            if (*(a3 + 5) == *(a3 + 4))
            {
              v42 = 0;
            }

            else
            {
              v42 = *(a3 + 6);
            }

            [(CRTTMergeableStringDelta *)self addStorageTo:i fromStorage:v41 range:*(a3 + 21), v42];
          }

          else
          {
            v74 = 0u;
            v75 = 0u;
            v72 = 0u;
            v73 = 0u;
            v41 = v65;
            obja = v41;
            v46 = [v41 countByEnumeratingWithState:&v72 objects:v85 count:16];
            if (v46)
            {
              v47 = *v73;
              do
              {
                for (j = 0; j != v46; ++j)
                {
                  if (*v73 != v47)
                  {
                    objc_enumerationMutation(obja);
                  }

                  v49 = [*(*(&v72 + 1) + 8 * j) rangeValue];
                  v51 = v50;
                  v52 = *(a3 + 4);
                  v53 = v49 - *(a3 + 21) + *(a3 + 5);
                  *src = *a3;
                  *&src[16] = v52;
                  *&src[20] = v53;
                  *&src[24] = v50;
                  v54 = [(CRTTMergeableStringDelta *)self addSubstring:src requiresExactLength:1 deltaCharMap:a8];
                  v55 = [v70 attributedString];
                  [(CRTTMergeableStringDelta *)self addStorageTo:v54 fromStorage:v55 range:v49, v51];
                }

                v41 = obja;
                v46 = [obja countByEnumeratingWithState:&v72 objects:v85 count:16];
              }

              while (v46);
            }
          }
        }
      }
    }
  }

LABEL_53:
  v56 = *(a3 + 7);
  for (k = *(a3 + 8); v56 != k; ++v56)
  {
    v58 = *v56;
    v59 = *(a4 + 7);
    v60 = *(a4 + 8);
    while (v59 != v60)
    {
      v61 = *v59;
      if (*(v58 + 5) == *(*v59 + 20) && *(v58 + 4) == *(v61 + 16) && !uuid_compare(v58, v61))
      {
        goto LABEL_64;
      }

      ++v59;
    }

    v62 = *v58;
    *&src[12] = *(v58 + 12);
    *src = v62;
    v78 = 0;
    v79 = 0;
    v77 = 0;
    std::vector<Coherence_namespace::TopoID>::__init_with_size[abi:ne200100]<Coherence_namespace::TopoID*,Coherence_namespace::TopoID*>(&v77, *(v58 + 4), *(v58 + 5), 0xAAAAAAAAAAAAAAABLL * ((*(v58 + 5) - *(v58 + 4)) >> 3));
    __p = 0;
    v81 = 0;
    v83 = 0;
    v82 = 0;
    v84 = *(v58 + 21);
    [(CRTTMergeableStringDelta *)self addChildTo:a3 child:src deltaCharMap:a8];
    if (__p)
    {
      v81 = __p;
      operator delete(__p);
    }

    if (v77)
    {
      v78 = v77;
      operator delete(v77);
    }

LABEL_64:
    ;
  }

  v63 = *MEMORY[0x1E69E9840];
}

- (void)compareSubstring:(const void *)a3 toSubstring:(const void *)a4 fromString:(id)a5 toString:(id)a6 charMap:(const void *)a7 deltaCharMap:(void *)a8 compareElements:(id)a9
{
  v36 = *MEMORY[0x1E69E9840];
  v15 = a5;
  v16 = a6;
  v17 = a9;
  if (Coherence_namespace::TopoIDRange::operator==(a4, a3))
  {
    [(CRTTMergeableStringDelta *)self compareSameSubstring:a3 toSubstring:a4 from:v15 toString:v16 charMap:a7 deltaCharMap:a8 compareElements:v17];
  }

  else
  {
    v18 = *(a4 + 5);
    v19 = *(a3 + 5);
    if (v18 == v19)
    {
      if (*(a4 + 6) <= *(a3 + 6))
      {
        *v28 = *a3;
        *&v28[12] = *(a3 + 12);
        v30 = 0;
        v31 = 0;
        v29 = 0;
        std::vector<Coherence_namespace::TopoID>::__init_with_size[abi:ne200100]<Coherence_namespace::TopoID*,Coherence_namespace::TopoID*>(&v29, *(a3 + 4), *(a3 + 5), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 5) - *(a3 + 4)) >> 3));
        v32 = 0;
        v33 = 0;
        v34 = 0;
        std::vector<Coherence_namespace::TopoSubstring *>::__init_with_size[abi:ne200100]<Coherence_namespace::TopoSubstring **,Coherence_namespace::TopoSubstring **>(&v32, *(a3 + 7), *(a3 + 8), (*(a3 + 8) - *(a3 + 7)) >> 3);
        v35 = *(a3 + 10);
        v22 = 0;
        uuid_clear(uu);
        v23 = 0;
        *v24 = 0u;
        *__p = 0u;
        v26 = 0u;
        v27 = 0;
        Coherence_namespace::TopoSubstring::splitAt(v28, *(a4 + 6), uu);
        [(CRTTMergeableStringDelta *)self compareSubstring:v28 toSubstring:a4 fromString:v15 toString:v16 charMap:a7 deltaCharMap:a8 compareElements:v17];
        [(CRTTMergeableStringDelta *)self findAndCompareSubstring:uu from:v15 toString:v16 charMap:a7 deltaCharMap:a8 compareElements:v17];
      }

      else
      {
        *v28 = *a4;
        *&v28[12] = *(a4 + 12);
        v30 = 0;
        v31 = 0;
        v29 = 0;
        std::vector<Coherence_namespace::TopoID>::__init_with_size[abi:ne200100]<Coherence_namespace::TopoID*,Coherence_namespace::TopoID*>(&v29, *(a4 + 4), *(a4 + 5), 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 5) - *(a4 + 4)) >> 3));
        v32 = 0;
        v33 = 0;
        v34 = 0;
        std::vector<Coherence_namespace::TopoSubstring *>::__init_with_size[abi:ne200100]<Coherence_namespace::TopoSubstring **,Coherence_namespace::TopoSubstring **>(&v32, *(a4 + 7), *(a4 + 8), (*(a4 + 8) - *(a4 + 7)) >> 3);
        v35 = *(a4 + 10);
        v22 = 0;
        uuid_clear(uu);
        v23 = 0;
        *v24 = 0u;
        *__p = 0u;
        v26 = 0u;
        v27 = 0;
        Coherence_namespace::TopoSubstring::splitAt(v28, *(a3 + 6), uu);
        [(CRTTMergeableStringDelta *)self compareSubstring:a3 toSubstring:v28 fromString:v15 toString:v16 charMap:a7 deltaCharMap:a8 compareElements:v17];
      }
    }

    else if (v18 >= v19)
    {
      *v28 = *a3;
      *&v28[12] = *(a3 + 12);
      v30 = 0;
      v31 = 0;
      v29 = 0;
      std::vector<Coherence_namespace::TopoID>::__init_with_size[abi:ne200100]<Coherence_namespace::TopoID*,Coherence_namespace::TopoID*>(&v29, *(a3 + 4), *(a3 + 5), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 5) - *(a3 + 4)) >> 3));
      v32 = 0;
      v33 = 0;
      v34 = 0;
      std::vector<Coherence_namespace::TopoSubstring *>::__init_with_size[abi:ne200100]<Coherence_namespace::TopoSubstring **,Coherence_namespace::TopoSubstring **>(&v32, *(a3 + 7), *(a3 + 8), (*(a3 + 8) - *(a3 + 7)) >> 3);
      v35 = *(a3 + 10);
      v22 = 0;
      uuid_clear(uu);
      v23 = 0;
      *v24 = 0u;
      *__p = 0u;
      v26 = 0u;
      v27 = 0;
      Coherence_namespace::TopoSubstring::splitAt(v28, *(a4 + 5) - *(a3 + 5), uu);
      [(CRTTMergeableStringDelta *)self findAndCompareSubstring:v28 from:v15 toString:v16 charMap:a7 deltaCharMap:a8 compareElements:v17];
      [(CRTTMergeableStringDelta *)self compareSubstring:uu toSubstring:a4 fromString:v15 toString:v16 charMap:a7 deltaCharMap:a8 compareElements:v17];
    }

    else
    {
      *v28 = *a4;
      *&v28[12] = *(a4 + 12);
      v30 = 0;
      v31 = 0;
      v29 = 0;
      std::vector<Coherence_namespace::TopoID>::__init_with_size[abi:ne200100]<Coherence_namespace::TopoID*,Coherence_namespace::TopoID*>(&v29, *(a4 + 4), *(a4 + 5), 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 5) - *(a4 + 4)) >> 3));
      v32 = 0;
      v33 = 0;
      v34 = 0;
      std::vector<Coherence_namespace::TopoSubstring *>::__init_with_size[abi:ne200100]<Coherence_namespace::TopoSubstring **,Coherence_namespace::TopoSubstring **>(&v32, *(a4 + 7), *(a4 + 8), (*(a4 + 8) - *(a4 + 7)) >> 3);
      v35 = *(a4 + 10);
      v22 = 0;
      uuid_clear(uu);
      v23 = 0;
      *v24 = 0u;
      *__p = 0u;
      v26 = 0u;
      v27 = 0;
      Coherence_namespace::TopoSubstring::splitAt(v28, *(a3 + 5) - *(a4 + 5), uu);
      [(CRTTMergeableStringDelta *)self compareSubstring:a3 toSubstring:uu fromString:v15 toString:v16 charMap:a7 deltaCharMap:a8 compareElements:v17];
    }

    if (__p[1])
    {
      *&v26 = __p[1];
      operator delete(__p[1]);
    }

    if (v24[0])
    {
      v24[1] = v24[0];
      operator delete(v24[0]);
    }

    if (v32)
    {
      v33 = v32;
      operator delete(v32);
    }

    if (v29)
    {
      v30 = v29;
      operator delete(v29);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (id)dotDescription:(unint64_t)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v6 = [(CRTTMergeableStringDelta *)self fromVersion];
  v7 = [(CRTTMergeableStringDelta *)self version];
  [v5 appendFormat:@"subgraph cluster_%ld%p_%ld from:%@ to:%@ {\n  rankdir=LR;\n", a3, self, a3, v6, v7];

  v8 = [(CRTTMergeableStringDelta *)self attributedString];
  v9 = [v8 description];

  v10 = [v9 stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];

  [v5 appendFormat:@"  label='%@'\n", v10];
  [v5 appendFormat:@"  color=lightgrey;\n"];
  v34 = v10;
  begin = self->orderedSubstrings.__begin_;
  v35 = self;
  end = self->orderedSubstrings.__end_;
  if (begin != end)
  {
    while (1)
    {
      v12 = *begin;
      isStartNode = Coherence_namespace::TopoSubstring::isStartNode(*begin);
      v14 = @"  N%ld%p [label=Start];\n";
      if (!isStartNode)
      {
        isEndNode = Coherence_namespace::TopoSubstring::isEndNode(v12);
        v14 = @"  N%ld%p [label=End];\n";
        if (!isEndNode)
        {
          break;
        }
      }

      [v5 appendFormat:v14, a3, v12];
LABEL_16:
      v30 = *(v12 + 7);
      v31 = *(v12 + 8);
      while (v30 != v31)
      {
        [v5 appendFormat:@"  N%ld%p -> N%ld%p;\n", a3, v12, a3, *v30++];
      }

      if (++begin == end)
      {
        goto LABEL_20;
      }
    }

    if (*(v12 + 21) == -1)
    {
      v36 = &stru_1F23CB0F8;
      goto LABEL_12;
    }

    attributedString = v35->_attributedString;
    if (objc_opt_respondsToSelector())
    {
      v17 = MEMORY[0x1E696AEC0];
      v18 = [(CRTTMergeableStringStorage *)v35->_attributedString string];
      v19 = [v18 substringWithRange:{*(v12 + 21), *(v12 + 6)}];
      v36 = [v17 stringWithFormat:@"%@", v19];
    }

    else
    {
      v20 = v35->_attributedString;
      objc_opt_class();
      v36 = @"?";
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_12;
      }

      v21 = MEMORY[0x1E696AEC0];
      v18 = [(CRTTMergeableStringStorage *)v35->_attributedString substringWithRange:*(v12 + 21), *(v12 + 6)];
      v36 = [v21 stringWithFormat:@"%@", v18];
    }

LABEL_12:
    v22 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v23 = *(v12 + 4);
    v24 = *(v12 + 5);
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

    v28 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v12];
    v29 = [v28 Coherence_shortDescription];
    [v5 appendFormat:@"  N%ld%p [label=%@ %@.%d, %d-%u (%@)];\n", a3, v12, v36, v29, *(v12 + 4), *(v12 + 5), (*(v12 + 5) + *(v12 + 6) - 1), v22];

    goto LABEL_16;
  }

LABEL_20:
  [v5 appendString:@"}\n"];

  v32 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end