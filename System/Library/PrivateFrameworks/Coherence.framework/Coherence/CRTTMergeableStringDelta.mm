@interface CRTTMergeableStringDelta
- (BOOL)saveToEncoder:(id)encoder error:(id *)error;
- (_TtC9Coherence24CRTTMergeableStringDelta)initWithDecoder:(id)decoder error:(id *)error;
- (_TtC9Coherence24CRTTMergeableStringDelta)initWithDeltasTo:(id)to from:(id)from compareElements:(id)elements;
- (id).cxx_construct;
- (id)dotDescription:(unint64_t)description;
- (void)addChildTo:(const void *)to child:(const void *)child deltaCharMap:(void *)map;
- (void)addStorageTo:(void *)to fromStorage:(id)storage range:(_NSRange)range;
- (void)addSubstring:(const TopoIDRange *)substring requiresExactLength:(BOOL)length deltaCharMap:(void *)map;
- (void)compareSameSubstring:(const void *)substring toSubstring:(const void *)toSubstring from:(id)from toString:(id)string charMap:(const void *)map deltaCharMap:(void *)charMap compareElements:(id)elements;
- (void)compareSubstring:(const void *)substring toSubstring:(const void *)toSubstring fromString:(id)string toString:(id)toString charMap:(const void *)map deltaCharMap:(void *)charMap compareElements:(id)elements;
- (void)dealloc;
- (void)findAndCompareSubstring:(const void *)substring from:(id)from toString:(id)string charMap:(const void *)map deltaCharMap:(void *)charMap compareElements:(id)elements;
- (void)openTapToRadar;
- (void)openURL:(id)l;
@end

@implementation CRTTMergeableStringDelta

- (_TtC9Coherence24CRTTMergeableStringDelta)initWithDeltasTo:(id)to from:(id)from compareElements:(id)elements
{
  v89 = *MEMORY[0x1E69E9840];
  toCopy = to;
  fromCopy = from;
  v69 = fromCopy;
  elementsCopy = elements;
  v82.receiver = self;
  v82.super_class = _TtC9Coherence24CRTTMergeableStringDelta;
  v10 = [(CRTTMergeableStringDelta *)&v82 init];
  version = [fromCopy version];
  version2 = [toCopy version];
  if ([version hasDeltaTo:version2])
  {

    v13 = elementsCopy != 0;
    v14 = 1;
  }

  else
  {
    addedByVersion = [fromCopy addedByVersion];
    addedByVersion2 = [toCopy addedByVersion];
    v14 = [addedByVersion hasDeltaTo:addedByVersion2];

    v13 = elementsCopy != 0;
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
  attributedString = [toCopy attributedString];
  v66 = v13;
  coherence_emptyCopy = [attributedString Coherence_emptyCopy];
  attributedString = v10->_attributedString;
  location = &v10->_attributedString;
  v10->_attributedString = coherence_emptyCopy;

  v67 = v14;
  orderedSubstrings = [fromCopy orderedSubstrings];
  v22 = *orderedSubstrings;
  v21 = *(orderedSubstrings + 8);
  if (*orderedSubstrings == v21)
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
  for (i = *([toCopy orderedSubstrings] + 8); i != *objc_msgSend(toCopy, "orderedSubstrings"); i -= 8)
  {
    v48 = *(i - 8);
    [(CRTTMergeableStringDelta *)v10 findAndCompareSubstring:v48 from:v69 toString:toCopy charMap:&v77 deltaCharMap:&v79 compareElements:elementsCopy];
  }

  *uu2 = 0;
  *&uu2[8] = uu2;
  v87 = 0x2020000000;
  v88 = 1;
  *uu1 = 0u;
  v84 = 0u;
  v85 = 1065353216;
  attributedString2 = [toCopy attributedString];
  coherence_emptyCopy2 = [attributedString2 Coherence_emptyCopy];

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
      v74 = toCopy;
      v76 = uu2;
      v75 = coherence_emptyCopy2;
      Coherence_namespace::traverseIterative(v52, uu1, v71);
    }
  }

  objc_storeStrong(location, coherence_emptyCopy2);
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
    version3 = [v69 version];
    fromVersion = v10->_fromVersion;
    v10->_fromVersion = version3;

    addedByVersion3 = [v69 addedByVersion];
    fromAddedByVersion = v10->_fromAddedByVersion;
    v10->_fromAddedByVersion = addedByVersion3;

    version4 = [toCopy version];
    version = v10->_version;
    v10->_version = version4;

    addedByVersion4 = [toCopy addedByVersion];
    addedByVersion = v10->_addedByVersion;
    v10->_addedByVersion = addedByVersion4;

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
    array = [MEMORY[0x1E695DF70] array];
    v4 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"ComponentName" value:@"Coherence"];
    [array addObject:v4];

    v5 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"ComponentVersion" value:@"all"];
    [array addObject:v5];

    v6 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"ComponentID" value:@"941619"];
    [array addObject:v6];

    v7 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"AutoDiagnostics" value:@"1"];
    [array addObject:v7];

    v8 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"Title" value:@"CRTTMergeableStringDelta Fatal Failure"];
    [array addObject:v8];

    v9 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"Classification" value:@"Crash/Hang/Data Loss"];
    [array addObject:v9];

    v10 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"Reproducibility" value:@"Not Applicable"];
    [array addObject:v10];

    [v12 setQueryItems:array];
    v11 = [v12 URL];
    [(CRTTMergeableStringDelta *)self openURL:v11];
  }
}

- (void)openURL:(id)l
{
  lCopy = l;
  nSClassFromString(&cfstr_Uiapplication.isa) = [NSClassFromString(&cfstr_Uiapplication.isa) sharedApplication];
  v4 = nSClassFromString(&cfstr_Uiapplication.isa);
  if (nSClassFromString(&cfstr_Uiapplication.isa))
  {
    v5 = MEMORY[0x1E695DF50];
    v6 = [nSClassFromString(&cfstr_Uiapplication.isa) methodSignatureForSelector:sel_openURL_options_completionHandler_];
    v7 = [v5 invocationWithMethodSignature:v6];

    [v7 setSelector:sel_openURL_options_completionHandler_];
    [v7 setArgument:&lCopy atIndex:2];
    [v7 invokeWithTarget:v4];
  }

  nSClassFromString(&cfstr_Nsworkspace.isa) = [NSClassFromString(&cfstr_Nsworkspace.isa) sharedWorkspace];
  v9 = nSClassFromString(&cfstr_Nsworkspace.isa);
  if (nSClassFromString(&cfstr_Nsworkspace.isa))
  {
    v10 = MEMORY[0x1E695DF50];
    v11 = [nSClassFromString(&cfstr_Nsworkspace.isa) methodSignatureForSelector:sel_openURL_];
    v12 = [v10 invocationWithMethodSignature:v11];

    [v12 setSelector:sel_openURL_];
    [v12 setArgument:&lCopy atIndex:2];
    [v12 invokeWithTarget:v9];
  }
}

- (_TtC9Coherence24CRTTMergeableStringDelta)initWithDecoder:(id)decoder error:(id *)error
{
  decoderCopy = decoder;
  v24.receiver = self;
  v24.super_class = _TtC9Coherence24CRTTMergeableStringDelta;
  v7 = [(CRTTMergeableStringDelta *)&v24 init];
  v8 = [decoderCopy storageWithError:error];
  attributedString = v7->_attributedString;
  v7->_attributedString = v8;

  if (!v7->_attributedString)
  {
    goto LABEL_12;
  }

  v7->_renameGeneration = +[_TtC9Coherence19CRGlobalContextObjC renameGeneration];
  v10 = [decoderCopy versionWithError:error];
  version = v7->_version;
  v7->_version = v10;

  v12 = [decoderCopy addedByVersionWithError:error];
  addedByVersion = v7->_addedByVersion;
  v7->_addedByVersion = v12;

  v14 = [decoderCopy fromVersionWithError:error];
  fromVersion = v7->_fromVersion;
  v7->_fromVersion = v14;

  v16 = [decoderCopy fromAddedByVersionWithError:error];
  fromAddedByVersion = v7->_fromAddedByVersion;
  v7->_fromAddedByVersion = v16;

  if (!v7->_version)
  {
    goto LABEL_12;
  }

  if (v7->_addedByVersion && v7->_fromVersion && v7->_fromAddedByVersion)
  {
    substringCount = [decoderCopy substringCount];
    std::vector<Coherence_namespace::TopoSubstring *>::reserve(&v7->orderedSubstrings.__begin_, substringCount);
    if (substringCount)
    {
      operator new();
    }

    attributedString = [(CRTTMergeableStringDelta *)v7 attributedString];
    v19 = Coherence_namespace::decodeSubstrings(0, [attributedString length], decoderCopy, &v7->orderedSubstrings, 0, 0, error);

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

- (BOOL)saveToEncoder:(id)encoder error:(id *)error
{
  encoderCopy = encoder;
  memset(v32, 0, sizeof(v32));
  v33 = 1065353216;
  orderedSubstrings = [(CRTTMergeableStringDelta *)self orderedSubstrings];
  v8 = *orderedSubstrings;
  v9 = orderedSubstrings[1];
  if (*orderedSubstrings != v9)
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

  orderedSubstrings2 = [(CRTTMergeableStringDelta *)self orderedSubstrings];
  v12 = *orderedSubstrings2;
  v13 = orderedSubstrings2[1];
  if (*orderedSubstrings2 != v13)
  {
    while (1)
    {
      v14 = *v12;
      v15 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:*v12];
      [encoderCopy setCharWithId:v15 clock:*(v14 + 20)];
      [encoderCopy setWithLength:*(v14 + 24)];
      if (*(v14 + 84) == -1)
      {
        break;
      }

      if (*(v14 + 40) == *(v14 + 32))
      {
        v16 = 1;
LABEL_9:
        [encoderCopy setWithContentOptions:v16];
      }

      v18 = *(v14 + 32);
      v17 = *(v14 + 40);
      while (v18 != v17)
      {
        if (*(v18 + 16) == -1)
        {
          v19 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v18];
          [encoderCopy addRemovedAddedById:v19 clock:*(v18 + 20)];
        }

        else
        {
          v19 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v18];
          [encoderCopy addAddedById:v19 clock:*(v18 + 20)];
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

        [encoderCopy addChildWithId:*(v22 + 6)];
        ++v20;
      }

      [encoderCopy finishSubstring];

      if (++v12 == v13)
      {
        goto LABEL_21;
      }
    }

    v16 = 2;
    goto LABEL_9;
  }

LABEL_21:
  attributedString = [(CRTTMergeableStringDelta *)self attributedString];
  [encoderCopy setStorage:attributedString error:v30];

  if (v30 && *v30)
  {
    v24 = 0;
  }

  else
  {
    version = [(CRTTMergeableStringDelta *)self version];
    [encoderCopy setWithVersion:version];

    addedByVersion = [(CRTTMergeableStringDelta *)self addedByVersion];
    [encoderCopy setWithAddedByVersion:addedByVersion];

    fromVersion = [(CRTTMergeableStringDelta *)self fromVersion];
    [encoderCopy setFromVersion:fromVersion];

    fromAddedByVersion = [(CRTTMergeableStringDelta *)self fromAddedByVersion];
    [encoderCopy setFromAddedByVersion:fromAddedByVersion];

    v24 = 1;
  }

  std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::~__hash_table(v32);

  return v24;
}

- (void)addSubstring:(const TopoIDRange *)substring requiresExactLength:(BOOL)length deltaCharMap:(void *)map
{
  lengthCopy = length;
  v8 = std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoID,std::pair<Coherence_namespace::TopoSubstring *,Coherence_namespace::TopoSubstring *>>,std::__unordered_map_hasher<Coherence_namespace::TopoID,std::__hash_value_type<Coherence_namespace::TopoID,std::pair<Coherence_namespace::TopoSubstring *,Coherence_namespace::TopoSubstring *>>,std::hash<Coherence_namespace::TopoID>,std::equal_to<Coherence_namespace::TopoID>,true>,std::__unordered_map_equal<Coherence_namespace::TopoID,std::__hash_value_type<Coherence_namespace::TopoID,std::pair<Coherence_namespace::TopoSubstring *,Coherence_namespace::TopoSubstring *>>,std::equal_to<Coherence_namespace::TopoID>,std::hash<Coherence_namespace::TopoID>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoID,std::pair<Coherence_namespace::TopoSubstring *,Coherence_namespace::TopoSubstring *>>>>::find<Coherence_namespace::TopoID>(map, substring);
  if (!v8)
  {
    operator new();
  }

  v9 = v8;
  v10 = v8[5];
  if (lengthCopy && Coherence_namespace::TopoIDRange::operator!=(v8[5], substring->charID.replica.uuid))
  {
    if (*(v10 + 5) != *(v10 + 4) || *(v10 + 8) != *(v10 + 7))
    {
      [CRTTMergeableStringDelta addSubstring:requiresExactLength:deltaCharMap:];
    }

    std::__hash_table<Coherence_namespace::TopoSubstring *,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::allocator<Coherence_namespace::TopoSubstring *>>::erase(map, v9);
    v11 = *&substring->charID.replica.uuid[12];
    *v10 = *substring->charID.replica.uuid;
    *(v10 + 12) = v11;
    std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoID,Coherence_namespace::TopoSubstring *>,std::__unordered_map_hasher<Coherence_namespace::TopoID,std::__hash_value_type<Coherence_namespace::TopoID,Coherence_namespace::TopoSubstring *>,std::hash<Coherence_namespace::TopoID>,std::equal_to<Coherence_namespace::TopoID>,true>,std::__unordered_map_equal<Coherence_namespace::TopoID,std::__hash_value_type<Coherence_namespace::TopoID,Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoID>,std::hash<Coherence_namespace::TopoID>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoID,Coherence_namespace::TopoSubstring *>>>::__emplace_unique_key_args<Coherence_namespace::TopoID,std::piecewise_construct_t const&,std::tuple<Coherence_namespace::TopoID const&>,std::tuple<>>(map, v10)[5] = v10;
  }

  return v10;
}

- (void)addChildTo:(const void *)to child:(const void *)child deltaCharMap:(void *)map
{
  v8 = [(CRTTMergeableStringDelta *)self addSubstring:to requiresExactLength:1 deltaCharMap:?];
  v9 = [(CRTTMergeableStringDelta *)self addSubstring:child requiresExactLength:0 deltaCharMap:map];
  std::vector<Coherence_namespace::TopoSubstring *>::push_back[abi:ne200100](v8 + 56, &v9);
  ++v9[20];
}

- (void)findAndCompareSubstring:(const void *)substring from:(id)from toString:(id)string charMap:(const void *)map deltaCharMap:(void *)charMap compareElements:(id)elements
{
  v54 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  stringCopy = string;
  elementsCopy = elements;
  v49 = *substring;
  v50 = *(substring + 4);
  v14 = *(map + 1);
  if (!v14)
  {
    v27 = fromCopy;
    goto LABEL_26;
  }

  v15 = *(substring + 5);
  v16 = (map + 8);
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
  v27 = fromCopy;
  if (v16 != (map + 8) && (!Coherence_namespace::TopoIDRange::operator!=(v16[8], substring) || Coherence_namespace::TopoIDRange::intersects(v16[8], substring)))
  {
    [(CRTTMergeableStringDelta *)self compareSubstring:substring toSubstring:v16[8] fromString:fromCopy toString:stringCopy charMap:map deltaCharMap:charMap compareElements:elementsCopy];
    goto LABEL_39;
  }

LABEL_26:
  v28 = [(CRTTMergeableStringDelta *)self addSubstring:substring requiresExactLength:1 deltaCharMap:charMap];
  v29 = v28;
  if (v28 != substring)
  {
    std::vector<Coherence_namespace::TopoID>::__assign_with_size[abi:ne200100]<Coherence_namespace::TopoID*,Coherence_namespace::TopoID*>(v28 + 4, *(substring + 4), *(substring + 5), 0xAAAAAAAAAAAAAAABLL * ((*(substring + 5) - *(substring + 4)) >> 3));
  }

  std::vector<Coherence_namespace::TopoSubstring *>::reserve(v29 + 7, (*(substring + 8) - *(substring + 7)) >> 3);
  v30 = *(substring + 7);
  for (i = *(substring + 8); v30 != i; ++v30)
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
    [(CRTTMergeableStringDelta *)self addChildTo:substring child:uu1 deltaCharMap:charMap];
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

  if (*(substring + 5) != *(substring + 4))
  {
    attributedString = [stringCopy attributedString];
    if (*(substring + 5) == *(substring + 4))
    {
      v35 = 0;
    }

    else
    {
      v35 = *(substring + 6);
    }

    [(CRTTMergeableStringDelta *)self addStorageTo:v29 fromStorage:attributedString range:*(substring + 21), v35];
  }

LABEL_39:

  v36 = *MEMORY[0x1E69E9840];
}

- (void)addStorageTo:(void *)to fromStorage:(id)storage range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  storageCopy = storage;
  v9 = [(CRTTMergeableStringStorage *)self->_attributedString length];
  *(to + 21) = Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v9, v10);
  [(CRTTMergeableStringStorage *)self->_attributedString Coherence_appendStorage:storageCopy fromRange:location, length];
}

- (void)compareSameSubstring:(const void *)substring toSubstring:(const void *)toSubstring from:(id)from toString:(id)string charMap:(const void *)map deltaCharMap:(void *)charMap compareElements:(id)elements
{
  v91 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  stringCopy = string;
  elementsCopy = elements;
  if (*(toSubstring + 6))
  {
    v13 = *(toSubstring + 5);
    v14 = *(toSubstring + 4);
    v64 = v14;
    for (i = 0; v14 != v13; v14 += 24)
    {
      v16 = *v14;
      *&src[16] = *(v14 + 2);
      *src = v16;
      if (std::__find[abi:ne200100]<Coherence_namespace::TopoID const*,Coherence_namespace::TopoID const*,Coherence_namespace::TopoID,std::__identity>(*(substring + 4), *(substring + 5), src) == *(substring + 5))
      {
        addedByVersion = [stringCopy addedByVersion];
        v18 = Coherence_namespace::TopoID::objc(src);
        v19 = [addedByVersion contains:v18];

        if (v19)
        {
          if (!i)
          {
            i = [(CRTTMergeableStringDelta *)self addSubstring:substring requiresExactLength:1 deltaCharMap:charMap];
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

    v21 = *(substring + 4);
    v20 = *(substring + 5);
    if (v21 != v20)
    {
      obj = v13;
      do
      {
        v22 = *v21;
        *&src[16] = *(v21 + 2);
        *src = v22;
        if (std::__find[abi:ne200100]<Coherence_namespace::TopoID const*,Coherence_namespace::TopoID const*,Coherence_namespace::TopoID,std::__identity>(*(toSubstring + 4), *(toSubstring + 5), src) == *(toSubstring + 5))
        {
          addedByVersion2 = [fromCopy addedByVersion];
          v24 = Coherence_namespace::TopoID::objc(src);
          v25 = [addedByVersion2 contains:v24];

          if ((v25 & 1) == 0)
          {
            if (!i)
            {
              i = [(CRTTMergeableStringDelta *)self addSubstring:substring requiresExactLength:1 deltaCharMap:charMap];
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
      if (*(substring + 5) != *(substring + 4))
      {
        if (v13 == v64)
        {
          if (!i)
          {
            i = [(CRTTMergeableStringDelta *)self addSubstring:substring requiresExactLength:1 deltaCharMap:charMap];
          }

          attributedString = [stringCopy attributedString];
          v44 = *(substring + 21);
          if (*(substring + 5) != *(substring + 4))
          {
            v45 = *(substring + 6);
          }

          [(CRTTMergeableStringDelta *)self addStorageTo:i fromStorage:attributedString range:?];
        }

        else
        {
          if (!elementsCopy)
          {
            goto LABEL_53;
          }

          v65 = (*(elementsCopy + 2))(elementsCopy, *(substring + 21), *(substring + 6), *(toSubstring + 21), *(toSubstring + 6));
          if ([v65 count] && i)
          {
            attributedString2 = [stringCopy attributedString];
            if (*(substring + 5) == *(substring + 4))
            {
              v42 = 0;
            }

            else
            {
              v42 = *(substring + 6);
            }

            [(CRTTMergeableStringDelta *)self addStorageTo:i fromStorage:attributedString2 range:*(substring + 21), v42];
          }

          else
          {
            v74 = 0u;
            v75 = 0u;
            v72 = 0u;
            v73 = 0u;
            attributedString2 = v65;
            obja = attributedString2;
            v46 = [attributedString2 countByEnumeratingWithState:&v72 objects:v85 count:16];
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

                  rangeValue = [*(*(&v72 + 1) + 8 * j) rangeValue];
                  v51 = v50;
                  v52 = *(substring + 4);
                  v53 = rangeValue - *(substring + 21) + *(substring + 5);
                  *src = *substring;
                  *&src[16] = v52;
                  *&src[20] = v53;
                  *&src[24] = v50;
                  v54 = [(CRTTMergeableStringDelta *)self addSubstring:src requiresExactLength:1 deltaCharMap:charMap];
                  attributedString3 = [stringCopy attributedString];
                  [(CRTTMergeableStringDelta *)self addStorageTo:v54 fromStorage:attributedString3 range:rangeValue, v51];
                }

                attributedString2 = obja;
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
  v56 = *(substring + 7);
  for (k = *(substring + 8); v56 != k; ++v56)
  {
    v58 = *v56;
    v59 = *(toSubstring + 7);
    v60 = *(toSubstring + 8);
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
    [(CRTTMergeableStringDelta *)self addChildTo:substring child:src deltaCharMap:charMap];
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

- (void)compareSubstring:(const void *)substring toSubstring:(const void *)toSubstring fromString:(id)string toString:(id)toString charMap:(const void *)map deltaCharMap:(void *)charMap compareElements:(id)elements
{
  v36 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  toStringCopy = toString;
  elementsCopy = elements;
  if (Coherence_namespace::TopoIDRange::operator==(toSubstring, substring))
  {
    [(CRTTMergeableStringDelta *)self compareSameSubstring:substring toSubstring:toSubstring from:stringCopy toString:toStringCopy charMap:map deltaCharMap:charMap compareElements:elementsCopy];
  }

  else
  {
    v18 = *(toSubstring + 5);
    v19 = *(substring + 5);
    if (v18 == v19)
    {
      if (*(toSubstring + 6) <= *(substring + 6))
      {
        *v28 = *substring;
        *&v28[12] = *(substring + 12);
        v30 = 0;
        v31 = 0;
        v29 = 0;
        std::vector<Coherence_namespace::TopoID>::__init_with_size[abi:ne200100]<Coherence_namespace::TopoID*,Coherence_namespace::TopoID*>(&v29, *(substring + 4), *(substring + 5), 0xAAAAAAAAAAAAAAABLL * ((*(substring + 5) - *(substring + 4)) >> 3));
        v32 = 0;
        v33 = 0;
        v34 = 0;
        std::vector<Coherence_namespace::TopoSubstring *>::__init_with_size[abi:ne200100]<Coherence_namespace::TopoSubstring **,Coherence_namespace::TopoSubstring **>(&v32, *(substring + 7), *(substring + 8), (*(substring + 8) - *(substring + 7)) >> 3);
        v35 = *(substring + 10);
        v22 = 0;
        uuid_clear(uu);
        v23 = 0;
        *v24 = 0u;
        *__p = 0u;
        v26 = 0u;
        v27 = 0;
        Coherence_namespace::TopoSubstring::splitAt(v28, *(toSubstring + 6), uu);
        [(CRTTMergeableStringDelta *)self compareSubstring:v28 toSubstring:toSubstring fromString:stringCopy toString:toStringCopy charMap:map deltaCharMap:charMap compareElements:elementsCopy];
        [(CRTTMergeableStringDelta *)self findAndCompareSubstring:uu from:stringCopy toString:toStringCopy charMap:map deltaCharMap:charMap compareElements:elementsCopy];
      }

      else
      {
        *v28 = *toSubstring;
        *&v28[12] = *(toSubstring + 12);
        v30 = 0;
        v31 = 0;
        v29 = 0;
        std::vector<Coherence_namespace::TopoID>::__init_with_size[abi:ne200100]<Coherence_namespace::TopoID*,Coherence_namespace::TopoID*>(&v29, *(toSubstring + 4), *(toSubstring + 5), 0xAAAAAAAAAAAAAAABLL * ((*(toSubstring + 5) - *(toSubstring + 4)) >> 3));
        v32 = 0;
        v33 = 0;
        v34 = 0;
        std::vector<Coherence_namespace::TopoSubstring *>::__init_with_size[abi:ne200100]<Coherence_namespace::TopoSubstring **,Coherence_namespace::TopoSubstring **>(&v32, *(toSubstring + 7), *(toSubstring + 8), (*(toSubstring + 8) - *(toSubstring + 7)) >> 3);
        v35 = *(toSubstring + 10);
        v22 = 0;
        uuid_clear(uu);
        v23 = 0;
        *v24 = 0u;
        *__p = 0u;
        v26 = 0u;
        v27 = 0;
        Coherence_namespace::TopoSubstring::splitAt(v28, *(substring + 6), uu);
        [(CRTTMergeableStringDelta *)self compareSubstring:substring toSubstring:v28 fromString:stringCopy toString:toStringCopy charMap:map deltaCharMap:charMap compareElements:elementsCopy];
      }
    }

    else if (v18 >= v19)
    {
      *v28 = *substring;
      *&v28[12] = *(substring + 12);
      v30 = 0;
      v31 = 0;
      v29 = 0;
      std::vector<Coherence_namespace::TopoID>::__init_with_size[abi:ne200100]<Coherence_namespace::TopoID*,Coherence_namespace::TopoID*>(&v29, *(substring + 4), *(substring + 5), 0xAAAAAAAAAAAAAAABLL * ((*(substring + 5) - *(substring + 4)) >> 3));
      v32 = 0;
      v33 = 0;
      v34 = 0;
      std::vector<Coherence_namespace::TopoSubstring *>::__init_with_size[abi:ne200100]<Coherence_namespace::TopoSubstring **,Coherence_namespace::TopoSubstring **>(&v32, *(substring + 7), *(substring + 8), (*(substring + 8) - *(substring + 7)) >> 3);
      v35 = *(substring + 10);
      v22 = 0;
      uuid_clear(uu);
      v23 = 0;
      *v24 = 0u;
      *__p = 0u;
      v26 = 0u;
      v27 = 0;
      Coherence_namespace::TopoSubstring::splitAt(v28, *(toSubstring + 5) - *(substring + 5), uu);
      [(CRTTMergeableStringDelta *)self findAndCompareSubstring:v28 from:stringCopy toString:toStringCopy charMap:map deltaCharMap:charMap compareElements:elementsCopy];
      [(CRTTMergeableStringDelta *)self compareSubstring:uu toSubstring:toSubstring fromString:stringCopy toString:toStringCopy charMap:map deltaCharMap:charMap compareElements:elementsCopy];
    }

    else
    {
      *v28 = *toSubstring;
      *&v28[12] = *(toSubstring + 12);
      v30 = 0;
      v31 = 0;
      v29 = 0;
      std::vector<Coherence_namespace::TopoID>::__init_with_size[abi:ne200100]<Coherence_namespace::TopoID*,Coherence_namespace::TopoID*>(&v29, *(toSubstring + 4), *(toSubstring + 5), 0xAAAAAAAAAAAAAAABLL * ((*(toSubstring + 5) - *(toSubstring + 4)) >> 3));
      v32 = 0;
      v33 = 0;
      v34 = 0;
      std::vector<Coherence_namespace::TopoSubstring *>::__init_with_size[abi:ne200100]<Coherence_namespace::TopoSubstring **,Coherence_namespace::TopoSubstring **>(&v32, *(toSubstring + 7), *(toSubstring + 8), (*(toSubstring + 8) - *(toSubstring + 7)) >> 3);
      v35 = *(toSubstring + 10);
      v22 = 0;
      uuid_clear(uu);
      v23 = 0;
      *v24 = 0u;
      *__p = 0u;
      v26 = 0u;
      v27 = 0;
      Coherence_namespace::TopoSubstring::splitAt(v28, *(substring + 5) - *(toSubstring + 5), uu);
      [(CRTTMergeableStringDelta *)self compareSubstring:substring toSubstring:uu fromString:stringCopy toString:toStringCopy charMap:map deltaCharMap:charMap compareElements:elementsCopy];
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

- (id)dotDescription:(unint64_t)description
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  fromVersion = [(CRTTMergeableStringDelta *)self fromVersion];
  version = [(CRTTMergeableStringDelta *)self version];
  [v5 appendFormat:@"subgraph cluster_%ld%p_%ld from:%@ to:%@ {\n  rankdir=LR;\n", description, self, description, fromVersion, version];

  attributedString = [(CRTTMergeableStringDelta *)self attributedString];
  v9 = [attributedString description];

  v10 = [v9 stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];

  [v5 appendFormat:@"  label='%@'\n", v10];
  [v5 appendFormat:@"  color=lightgrey;\n"];
  v34 = v10;
  begin = self->orderedSubstrings.__begin_;
  selfCopy = self;
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

      [v5 appendFormat:v14, description, v12];
LABEL_16:
      v30 = *(v12 + 7);
      v31 = *(v12 + 8);
      while (v30 != v31)
      {
        [v5 appendFormat:@"  N%ld%p -> N%ld%p;\n", description, v12, description, *v30++];
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

    attributedString = selfCopy->_attributedString;
    if (objc_opt_respondsToSelector())
    {
      v17 = MEMORY[0x1E696AEC0];
      string = [(CRTTMergeableStringStorage *)selfCopy->_attributedString string];
      v19 = [string substringWithRange:{*(v12 + 21), *(v12 + 6)}];
      v36 = [v17 stringWithFormat:@"%@", v19];
    }

    else
    {
      v20 = selfCopy->_attributedString;
      objc_opt_class();
      v36 = @"?";
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_12;
      }

      v21 = MEMORY[0x1E696AEC0];
      string = [(CRTTMergeableStringStorage *)selfCopy->_attributedString substringWithRange:*(v12 + 21), *(v12 + 6)];
      v36 = [v21 stringWithFormat:@"%@", string];
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
      coherence_shortDescription = [v26 Coherence_shortDescription];
      [v22 appendFormat:@"%@.%d, %d ", coherence_shortDescription, v39, HIDWORD(v39)];

      v23 = (v23 + 24);
    }

    v28 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v12];
    coherence_shortDescription2 = [v28 Coherence_shortDescription];
    [v5 appendFormat:@"  N%ld%p [label=%@ %@.%d, %d-%u (%@)];\n", description, v12, v36, coherence_shortDescription2, *(v12 + 4), *(v12 + 5), (*(v12 + 5) + *(v12 + 6) - 1), v22];

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