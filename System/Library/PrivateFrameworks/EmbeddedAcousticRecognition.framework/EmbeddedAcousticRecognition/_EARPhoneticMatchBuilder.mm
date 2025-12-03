@interface _EARPhoneticMatchBuilder
+ (BOOL)writePlaceholderFstToPath:(id)path;
+ (BOOL)writePlaceholderSymbolsToPath:(id)path;
- (BOOL)writeAlignedLFstToPath:(id)path;
- (BOOL)writeGFstsToDirectory:(id)directory;
- (BOOL)writeISymsToPath:(id)path asText:(BOOL)text;
- (BOOL)writeIndividualLGFstsToDirectory:(id)directory;
- (BOOL)writeLFstToPath:(id)path;
- (BOOL)writeLGFstToPath:(id)path;
- (BOOL)writeMetadataToPath:(id)path;
- (BOOL)writeOSymsToPath:(id)path asText:(BOOL)text quasarise:(BOOL)quasarise;
- (_EARPhoneticMatchBuilder)initWithModelRoot:(id)root jsonConfigFile:(id)file dataFeeds:(id)feeds;
- (_EARPhoneticMatchBuilder)initWithModelRoot:(id)root jsonConfigFile:(id)file dataFeedsFile:(id)feedsFile;
- (_EARPhoneticMatchBuilder)initWithNcsRoot:(id)root jsonConfigFile:(id)file dataFeeds:(id)feeds;
- (_EARPhoneticMatchBuilder)initWithNcsRoot:(id)root jsonConfigFile:(id)file dataFeedsFile:(id)feedsFile;
- (id).cxx_construct;
- (id)lFstName;
- (id)lgFstName;
- (id)osymsName;
- (shared_ptr<quasar::PMBuilder>)pmBuilder;
- (shared_ptr<quasar::TextTokenizer>)tokenizer;
- (void)buildGFsts;
@end

@implementation _EARPhoneticMatchBuilder

- (_EARPhoneticMatchBuilder)initWithModelRoot:(id)root jsonConfigFile:(id)file dataFeeds:(id)feeds
{
  v43 = *MEMORY[0x1E69E9840];
  rootCopy = root;
  fileCopy = file;
  feedsCopy = feeds;
  v26.receiver = self;
  v26.super_class = _EARPhoneticMatchBuilder;
  v9 = [(_EARPhoneticMatchBuilder *)&v26 init];
  if (v9)
  {
    [_EARQuasarTokenizer tokenizerWithModelRoot:rootCopy];
    std::shared_ptr<quasar::TextTokenizer>::operator=[abi:ne200100]<quasar::TextTokenizer,std::default_delete<quasar::TextTokenizer>,0>(&v9->_tokenizer.__ptr_, buf);
    v10 = *buf;
    *buf = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    v11 = feedsCopy;
    v24 = 0;
    v25 = 0;
    v23 = 0;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v27 objects:v42 count:16];
    if (v13)
    {
      v14 = *v28;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v27 + 1) + 8 * i);
          [v16 dataFeed];
          quasar::DataFeed::DataFeed(buf, v31);
          if (v32)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v32);
          }

          v17 = v24;
          if (v24 >= v25)
          {
            v18 = std::vector<quasar::DataFeed>::__emplace_back_slow_path<quasar::DataFeed>(&v23, buf);
          }

          else
          {
            std::allocator_traits<std::allocator<quasar::DataFeed>>::construct[abi:ne200100]<quasar::DataFeed,quasar::DataFeed,0>(&v23, v24, buf);
            v18 = v17 + 160;
          }

          v24 = v18;
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>>>::~__hash_table(&v41);
          if (v40 < 0)
          {
            operator delete(__p);
          }

          v31 = &v38;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v31);
          if (v37 < 0)
          {
            operator delete(v36);
          }

          v31 = buf;
          std::vector<quasar::DataFeedItem>::__destroy_vector::operator()[abi:ne200100](&v31);
        }

        v13 = [v12 countByEnumeratingWithState:&v27 objects:v42 count:16];
      }

      while (v13);
    }

    if (fileCopy)
    {
      [fileCopy ear_toString];
    }

    else
    {
      *buf = 0;
      v34 = 0;
      v35 = 0;
    }

    std::allocate_shared[abi:ne200100]<quasar::PMBuilder,std::allocator<quasar::PMBuilder>,std::string,std::shared_ptr<quasar::TextTokenizer> &,std::vector<quasar::DataFeed> &,0>();
  }

  v19 = 0;

  return v19;
}

- (_EARPhoneticMatchBuilder)initWithModelRoot:(id)root jsonConfigFile:(id)file dataFeedsFile:(id)feedsFile
{
  v19 = *MEMORY[0x1E69E9840];
  rootCopy = root;
  fileCopy = file;
  feedsFileCopy = feedsFile;
  v15.receiver = self;
  v15.super_class = _EARPhoneticMatchBuilder;
  v11 = [(_EARPhoneticMatchBuilder *)&v15 init];
  if (v11)
  {
    [_EARQuasarTokenizer tokenizerWithModelRoot:rootCopy];
    std::shared_ptr<quasar::TextTokenizer>::operator=[abi:ne200100]<quasar::TextTokenizer,std::default_delete<quasar::TextTokenizer>,0>(&v11->_tokenizer.__ptr_, buf);
    v12 = *buf;
    *buf = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    if (fileCopy)
    {
      [fileCopy ear_toString];
      if (!feedsFileCopy)
      {
        goto LABEL_8;
      }
    }

    else
    {
      *buf = 0;
      v17 = 0;
      v18 = 0;
      if (!feedsFileCopy)
      {
LABEL_8:
        std::allocate_shared[abi:ne200100]<quasar::PMBuilder,std::allocator<quasar::PMBuilder>,std::string,std::shared_ptr<quasar::TextTokenizer> &,std::string,0>();
      }
    }

    [feedsFileCopy ear_toString];
    goto LABEL_8;
  }

  v13 = 0;

  return v13;
}

- (_EARPhoneticMatchBuilder)initWithNcsRoot:(id)root jsonConfigFile:(id)file dataFeeds:(id)feeds
{
  fileCopy = file;
  feedsCopy = feeds;
  stringByDeletingLastPathComponent = [root stringByDeletingLastPathComponent];
  v11 = [(_EARPhoneticMatchBuilder *)self initWithModelRoot:stringByDeletingLastPathComponent jsonConfigFile:fileCopy dataFeeds:feedsCopy];

  return v11;
}

- (_EARPhoneticMatchBuilder)initWithNcsRoot:(id)root jsonConfigFile:(id)file dataFeedsFile:(id)feedsFile
{
  fileCopy = file;
  feedsFileCopy = feedsFile;
  stringByDeletingLastPathComponent = [root stringByDeletingLastPathComponent];
  v11 = [(_EARPhoneticMatchBuilder *)self initWithModelRoot:stringByDeletingLastPathComponent jsonConfigFile:fileCopy dataFeedsFile:feedsFileCopy];

  return v11;
}

- (BOOL)writeAlignedLFstToPath:(id)path
{
  __p[3] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  ptr = self->_pmBuilder.__ptr_;
  if (pathCopy)
  {
    [pathCopy ear_toString];
  }

  else
  {
    memset(__p, 0, 24);
  }

  quasar::PMBuilder::writeAlignedLFst(ptr, __p);
}

- (BOOL)writeLGFstToPath:(id)path
{
  __p[3] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  ptr = self->_pmBuilder.__ptr_;
  if (pathCopy)
  {
    [pathCopy ear_toString];
  }

  else
  {
    memset(__p, 0, 24);
  }

  quasar::PMBuilder::writeLGFst(ptr, __p);
}

- (BOOL)writeOSymsToPath:(id)path asText:(BOOL)text quasarise:(BOOL)quasarise
{
  quasariseCopy = quasarise;
  textCopy = text;
  v16[19] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v9 = pathCopy;
  if (textCopy)
  {
    quasar::PMBuilder::getOsyms(self->_pmBuilder.__ptr_, quasariseCopy, __p);
    if (v9)
    {
      [v9 ear_toString];
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
    }

    fst::SymbolTable::WriteText(__p, &v13);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(v13);
    }

    fst::SymbolTable::~SymbolTable(__p);
  }

  else
  {
    if (pathCopy)
    {
      [pathCopy ear_toString];
    }

    else
    {
      __p[0] = 0;
      __p[1] = 0;
      v12 = 0;
    }

    std::ofstream::basic_ofstream(&v13);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }

    quasar::PMBuilder::getOsyms(self->_pmBuilder.__ptr_, quasariseCopy, __p);
    quasar::PMBuilder::writeSymsQuasarMap(__p);
    fst::SymbolTable::~SymbolTable(__p);
    v13 = *MEMORY[0x1E69E54D0];
    *(&v13 + *(v13 - 3)) = *(MEMORY[0x1E69E54D0] + 24);
    MEMORY[0x1B8C84A00](&v14);
    std::ostream::~ostream();
    MEMORY[0x1B8C85200](v16);
  }

  return 1;
}

- (BOOL)writeISymsToPath:(id)path asText:(BOOL)text
{
  textCopy = text;
  v14 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  ptr = self->_pmBuilder.__ptr_;
  if (textCopy)
  {
    MultiChainMultiAudioBuffer = quasar::SpeechRequestData::getMultiChainMultiAudioBuffer(ptr);
    if (pathCopy)
    {
      [pathCopy ear_toString];
    }

    else
    {
      __p = 0;
      v12 = 0;
      v13 = 0;
    }

    fst::SymbolTable::WriteText(MultiChainMultiAudioBuffer, &__p);
  }

  else
  {
    v9 = quasar::SpeechRequestData::getMultiChainMultiAudioBuffer(ptr);
    if (pathCopy)
    {
      [pathCopy ear_toString];
    }

    else
    {
      __p = 0;
      v12 = 0;
      v13 = 0;
    }

    fst::SymbolTable::Write(v9, &__p);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }

  return 1;
}

- (BOOL)writeGFstsToDirectory:(id)directory
{
  v20 = *MEMORY[0x1E69E9840];
  directoryCopy = directory;
  SectionNames = quasar::PMBuilder::getSectionNames(self->_pmBuilder.__ptr_);
  v6 = EARHelpers::NSArrayOfStringFromVectorOfString(SectionNames);
  quasar::Bitmap::~Bitmap(self->_pmBuilder.__ptr_);
  v8 = *v7;
  v9 = v7[1];
  if (*v7 != v9)
  {
    v10 = 0;
    v11 = *v7;
    do
    {
      v12 = MEMORY[0x1E696AEC0];
      v13 = [v6 objectAtIndexedSubscript:v10];
      v14 = [v12 stringWithFormat:@"%@.G.fst", v13];

      v15 = [directoryCopy stringByAppendingPathComponent:v14];
      v16 = v15;
      if (v15)
      {
        [v15 ear_toString];
      }

      else
      {
        __p[0] = 0;
        __p[1] = 0;
        v19 = 0;
      }

      (*(*v11 + 104))(v11, __p);
      if (SHIBYTE(v19) < 0)
      {
        operator delete(__p[0]);
      }

      ++v10;
      v11 += 16;
      v8 += 16;
    }

    while (v11 != v9);
  }

  return 1;
}

- (BOOL)writeLFstToPath:(id)path
{
  v9 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  TagSequence = quasar::CommandTagging::getTagSequence(self->_pmBuilder.__ptr_);
  if (pathCopy)
  {
    [pathCopy ear_toString];
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v8 = 0;
  }

  (*(*TagSequence + 104))(TagSequence, __p);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  return 1;
}

- (BOOL)writeIndividualLGFstsToDirectory:(id)directory
{
  v20 = *MEMORY[0x1E69E9840];
  directoryCopy = directory;
  SectionNames = quasar::PMBuilder::getSectionNames(self->_pmBuilder.__ptr_);
  v6 = EARHelpers::NSArrayOfStringFromVectorOfString(SectionNames);
  IndividualLGFsts = quasar::PMBuilder::getIndividualLGFsts(self->_pmBuilder.__ptr_);
  v8 = *IndividualLGFsts;
  v9 = IndividualLGFsts[1];
  if (*IndividualLGFsts != v9)
  {
    v10 = 0;
    v11 = *IndividualLGFsts;
    do
    {
      v12 = MEMORY[0x1E696AEC0];
      v13 = [v6 objectAtIndexedSubscript:v10];
      v14 = [v12 stringWithFormat:@"%@.LG.fst", v13];

      v15 = [directoryCopy stringByAppendingPathComponent:v14];
      v16 = v15;
      if (v15)
      {
        [v15 ear_toString];
      }

      else
      {
        __p[0] = 0;
        __p[1] = 0;
        v19 = 0;
      }

      (*(*v11 + 104))(v11, __p);
      if (SHIBYTE(v19) < 0)
      {
        operator delete(__p[0]);
      }

      ++v10;
      v11 += 16;
      v8 += 16;
    }

    while (v11 != v9);
  }

  return 1;
}

- (BOOL)writeMetadataToPath:(id)path
{
  pathCopy = path;
  if (pathCopy)
  {
    [pathCopy ear_toString];
  }

  quasar::PMBuilder::writeMetadata();
}

+ (BOOL)writePlaceholderFstToPath:(id)path
{
  v5 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::VectorFst();
}

+ (BOOL)writePlaceholderSymbolsToPath:(id)path
{
  v6 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  fst::SymbolTable::SymbolTable(v5);
}

- (id)lgFstName
{
  v2 = MEMORY[0x1E696AEC0];
  LGFstName = quasar::PMBuilder::getLGFstName(self->_pmBuilder.__ptr_);
  if (*(LGFstName + 23) >= 0)
  {
    v4 = LGFstName;
  }

  else
  {
    v4 = *LGFstName;
  }

  return [v2 stringWithUTF8String:v4];
}

- (id)lFstName
{
  v2 = MEMORY[0x1E696AEC0];
  LFstName = quasar::PMBuilder::getLFstName(self->_pmBuilder.__ptr_);
  if (*(LFstName + 23) >= 0)
  {
    v4 = LFstName;
  }

  else
  {
    v4 = *LFstName;
  }

  return [v2 stringWithUTF8String:v4];
}

- (id)osymsName
{
  v2 = MEMORY[0x1E696AEC0];
  OsymsName = quasar::PMBuilder::getOsymsName(self->_pmBuilder.__ptr_);
  if (*(OsymsName + 23) >= 0)
  {
    v4 = OsymsName;
  }

  else
  {
    v4 = *OsymsName;
  }

  return [v2 stringWithUTF8String:v4];
}

- (shared_ptr<quasar::TextTokenizer>)tokenizer
{
  cntrl = self->_tokenizer.__cntrl_;
  *v2 = self->_tokenizer.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (shared_ptr<quasar::PMBuilder>)pmBuilder
{
  cntrl = self->_pmBuilder.__cntrl_;
  *v2 = self->_pmBuilder.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

- (void)buildGFsts
{
  if (self)
  {
    OUTLINED_FUNCTION_2(&dword_1B501D000, a2, a3, "Internal unknown exception", a5, a6, a7, a8, 0);
  }
}

@end