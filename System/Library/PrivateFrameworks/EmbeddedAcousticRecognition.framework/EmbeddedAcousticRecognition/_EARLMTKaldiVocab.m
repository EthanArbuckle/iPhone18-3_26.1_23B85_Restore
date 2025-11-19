@interface _EARLMTKaldiVocab
+ (void)initialize;
- (_EARLMTKaldiVocab)initWithContentsOfUrl:(id)a3 outError:(id *)a4;
- (id).cxx_construct;
- (unint64_t)indexForWord:(id)a3;
@end

@implementation _EARLMTKaldiVocab

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = os_log_create("com.apple.speech.languagemodeltraining", "_EARLMTKaldiVocab");
    v3 = sLog;
    sLog = v2;
  }
}

- (_EARLMTKaldiVocab)initWithContentsOfUrl:(id)a3 outError:(id *)a4
{
  v72[1] = *MEMORY[0x1E69E9840];
  v29 = a3;
  v67.receiver = self;
  v67.super_class = _EARLMTKaldiVocab;
  v6 = [(_EARLMTKaldiVocab *)&v67 init];
  if (!v6)
  {
    goto LABEL_21;
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithContentsOfURL:v29 encoding:4 error:a4];
  if (!v7)
  {
    goto LABEL_20;
  }

  v27 = v7;
  v8 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v28 = [v7 componentsSeparatedByCharactersInSet:v8];

  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy__4;
  v65 = __Block_byref_object_dispose__4;
  v66 = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__4;
  v59 = __Block_byref_object_dispose__4;
  v60 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__4;
  v53 = __Block_byref_object_dispose__4;
  v54 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__4;
  v47 = __Block_byref_object_dispose__4;
  v48 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __52___EARLMTKaldiVocab_initWithContentsOfUrl_outError___block_invoke;
  v32[3] = &unk_1E7C1A7A0;
  v34 = &v43;
  v35 = &v39;
  v36 = &v49;
  v37 = &v61;
  v38 = &v55;
  v9 = v6;
  v33 = v9;
  [v28 enumerateObjectsUsingBlock:v32];
  v10 = v40[3];
  size = v9->_w2i.__table_.__size_;
  v12 = MEMORY[0x1E696A578];
  if (v10 != size)
  {
    v13 = MEMORY[0x1E696ABC0];
    v71 = *MEMORY[0x1E696A578];
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"VocabSize in the file %lu does not match total vocabulary in file %lu", v10, size];
    v72[0] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v72 forKeys:&v71 count:1];
    v16 = [v13 errorWithDomain:@"com.apple.siri.languagemodeltraining" code:151 userInfo:v15];
    v17 = v44[5];
    v44[5] = v16;
  }

  if (!v50[5] || !v62[5] || !v56[5])
  {
    v18 = MEMORY[0x1E696ABC0];
    v69 = *v12;
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"One of <UnknownWord>, <BeginOfSentenceWord> or <EndOfSentenceWord> symbols are missing from file:%@", v29];
    v70 = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
    v21 = [v18 errorWithDomain:@"com.apple.siri.languagemodeltraining" code:151 userInfo:v20];
    v22 = v44[5];
    v44[5] = v21;
  }

  v23 = v44[5];
  if (v23)
  {
    if (a4)
    {
      v24 = v23;
      *a4 = v23;
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, [v50[5] UTF8String]);
    v68 = __p;
    v9->_unkIndex = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v9->_w2i.__table_.__bucket_list_.__ptr_, __p)[5];
    if (v31 < 0)
    {
      operator delete(__p[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, [v56[5] UTF8String]);
    v68 = __p;
    v9->_eosIndex = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v9->_w2i.__table_.__bucket_list_.__ptr_, __p)[5];
    if (v31 < 0)
    {
      operator delete(__p[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, [v62[5] UTF8String]);
    v68 = __p;
    v9->_bosIndex = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v9->_w2i.__table_.__bucket_list_.__ptr_, __p)[5];
    if (v31 < 0)
    {
      operator delete(__p[0]);
    }

    objc_storeStrong(&v9->_eosToken, v56[5]);
  }

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v43, 8);

  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v55, 8);

  _Block_object_dispose(&v61, 8);
  if (v23)
  {
LABEL_20:
    v25 = 0;
  }

  else
  {
LABEL_21:
    v25 = v6;
  }

  return v25;
}

- (unint64_t)indexForWord:(id)a3
{
  v4 = a3;
  std::string::basic_string[abi:ne200100]<0>(__p, [v4 UTF8String]);
  if (std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(&self->_w2i.__table_.__bucket_list_.__ptr_, __p))
  {
    v10 = __p;
    p_unkIndex = (std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&self->_w2i.__table_.__bucket_list_.__ptr_, __p) + 5);
  }

  else
  {
    p_unkIndex = &self->_unkIndex;
  }

  v6 = *p_unkIndex;
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

- (id).cxx_construct
{
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 18) = 1065353216;
  return self;
}

@end