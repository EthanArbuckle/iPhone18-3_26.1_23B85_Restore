@interface TESTriggerPhraseCollection
- (BOOL)_shouldRecompileTrie:(id)a3;
- (TESTriggerPhraseCollection)initWithLocale:(id)a3;
- (id).cxx_construct;
- (id)_dispatchQueue;
- (id)_trieBlobURL;
- (void)_buildAndLoadTrie;
- (void)_loadTrie;
- (void)dealloc;
- (void)enumerateMatchStringsInString:(id)a3 searchRange:(_NSRange)a4 usingBlock:(id)a5;
- (void)waitForSync;
@end

@implementation TESTriggerPhraseCollection

- (TESTriggerPhraseCollection)initWithLocale:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = TESTriggerPhraseCollection;
  v5 = [(TESTriggerPhraseCollection *)&v15 init];
  if (v5)
  {
    v6 = [v4 copy];
    v7 = *(v5 + 13);
    *(v5 + 13) = v6;

    v8 = [TESTriggerPhraseLoader alloc];
    v9 = [(TESTriggerPhraseCollection *)v5 locale];
    v10 = [v9 localeIdentifier];
    v11 = [(TESTriggerPhraseLoader *)v8 initWithLocaleIdentifier:v10];
    v12 = *(v5 + 14);
    *(v5 + 14) = v11;

    v13 = *(v5 + 1);
    *(v5 + 1) = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    [(TESTriggerPhraseCollection *)v5 _loadTrie];
  }

  return v5;
}

- (id)_dispatchQueue
{
  if ([TESTriggerPhraseCollection _dispatchQueue]::onceToken != -1)
  {
    [TESTriggerPhraseCollection _dispatchQueue];
  }

  v3 = [TESTriggerPhraseCollection _dispatchQueue]::__queue;

  return v3;
}

uint64_t __44__TESTriggerPhraseCollection__dispatchQueue__block_invoke()
{
  [TESTriggerPhraseCollection _dispatchQueue]::__queue = dispatch_queue_create("com.apple.EmojiFoundation.triggers-collection", 0);

  return MEMORY[0x1EEE66BB8]();
}

- (void)dealloc
{
  v3 = *(self + 1);
  if (v3)
  {
    *(self + 1) = 0;
    (*(*v3 + 8))(v3, a2);
  }

  v4.receiver = self;
  v4.super_class = TESTriggerPhraseCollection;
  [(TESTriggerPhraseCollection *)&v4 dealloc];
}

- (void)enumerateMatchStringsInString:(id)a3 searchRange:(_NSRange)a4 usingBlock:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v26 = a5;
  std::mutex::lock((self + 40));
  if (*(self + 1))
  {
    v28 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v27 = [MEMORY[0x1E696AB08] punctuationCharacterSet];
    v10 = [v9 length];
    if (v10 >= length)
    {
      v11 = length;
    }

    else
    {
      v11 = v10;
    }

    if (location < [v9 length])
    {
      v34 = 0;
      memset(&v33, 0, sizeof(v33));
      if (location < v11)
      {
        while (1)
        {
          (*(**(self + 1) + 104))(&v31);
          v12 = location;
          while (1)
          {
            if (((*(**(self + 1) + 112))(*(self + 1), &v31) & 1) == 0)
            {
LABEL_34:
              v24 = 0;
              goto LABEL_35;
            }

            v13 = [(TESTriggerPhraseCollection *)self locale];
            v14 = [v9 getLowercaseCharacterAt:v12 locale:v13];

            v15 = [v14 length];
            size = HIBYTE(v33.__r_.__value_.__r.__words[2]);
            v17 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
            if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              size = v33.__r_.__value_.__l.__size_;
            }

            if (v15 > size)
            {
              std::basic_string<char16_t>::resize(&v33, v15, 0);
              v17 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
            }

            if (v17 >= 0)
            {
              v18 = &v33;
            }

            else
            {
              v18 = v33.__r_.__value_.__r.__words[0];
            }

            [v14 getCharacters:v18];
            (*(**(self + 1) + 120))(&v29);
            v31 = v29;
            std::string::operator=(&v32, &__p);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            LOWORD(v29) = 0;
            if ((*(**(self + 1) + 128))(*(self + 1), &v31, &v29))
            {
              break;
            }

            v19 = v12 + 1;
LABEL_33:

            v12 = v19;
            if (v19 >= v11)
            {
              goto LABEL_34;
            }
          }

          v19 = v12 + 1;
          if (v12 + 1 == v11)
          {
            v20 = 0;
            if (!location)
            {
              goto LABEL_28;
            }
          }

          else
          {
            v21 = [v9 characterAtIndex:v12 + 1];
            if ([v28 characterIsMember:v21])
            {
              v20 = 1;
              if (!location)
              {
                goto LABEL_28;
              }
            }

            else
            {
              v20 = [v27 characterIsMember:v21];
              if (!location)
              {
                goto LABEL_28;
              }
            }
          }

          v22 = [v9 characterAtIndex:location - 1];
          if (([v28 characterIsMember:v22] & 1) == 0)
          {
            v23 = [v27 characterIsMember:v22];
            goto LABEL_30;
          }

LABEL_28:
          v23 = 1;
LABEL_30:
          if (!((v19 == v11) | v20 & 1))
          {
            goto LABEL_33;
          }

          if (!v23)
          {
            goto LABEL_33;
          }

          v26[2](v26, location, v12 - location + 1, v29, &v34);
          if (!v34)
          {
            goto LABEL_33;
          }

          v24 = 1;
LABEL_35:
          if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v32.__r_.__value_.__l.__data_);
          }

          if (++location == v11)
          {
            v25 = 1;
          }

          else
          {
            v25 = v24;
          }

          if (v25)
          {
            if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v33.__r_.__value_.__l.__data_);
            }

            break;
          }
        }
      }
    }
  }

  std::mutex::unlock((self + 40));
}

- (void)waitForSync
{
  v3 = [(TESTriggerPhraseCollection *)self _dispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__TESTriggerPhraseCollection_waitForSync__block_invoke;
  block[3] = &unk_1E7A5F990;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __41__TESTriggerPhraseCollection_waitForSync__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = emf_logging_get_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) locale];
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&dword_1AF04E000, v2, OS_LOG_TYPE_INFO, "[TESTriggerPhraseCollection] preheat for %{public}@", &v4, 0xCu);
  }
}

- (id)_trieBlobURL
{
  v3 = CEM::copyLibraryKeyboardDirectoryURL(self);
  v4 = [(TESTriggerPhraseCollection *)self locale];
  v5 = [v4 languageCode];

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"TextEffectPhrases_%@.dat", v5];
  v7 = [(__CFURL *)v3 URLByAppendingPathComponent:v6];

  return v7;
}

- (BOOL)_shouldRecompileTrie:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DEF0] SHA224ChecksumSize];
  v6 = [v4 subdataWithRange:{0, v5}];
  v7 = [(TESTriggerPhraseCollection *)self triggerPhraseLoader];
  v8 = [v7 plistPath];

  if (v8)
  {
    v9 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v8];
    v10 = v9;
    if (v9 && (v11 = [v9 length], v11 >= objc_msgSend(MEMORY[0x1E695DEF0], "SHA224ChecksumSize")))
    {
      v13 = [v10 subdataWithRange:{0, v5}];
      v12 = [v6 isEqualToData:v13] ^ 1;
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (void)_loadTrie
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1AF04E000, a2, OS_LOG_TYPE_ERROR, "Failed to open file for serialized trie: %{public}@", &v2, 0xCu);
}

- (void)_buildAndLoadTrie
{
  v3 = [(TESTriggerPhraseCollection *)self _dispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__TESTriggerPhraseCollection__buildAndLoadTrie__block_invoke;
  block[3] = &unk_1E7A5F990;
  block[4] = self;
  dispatch_async(v3, block);
}

void __47__TESTriggerPhraseCollection__buildAndLoadTrie__block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) triggerPhraseLoader];
  v2 = [v1 items];

  v39[0] = 0;
  v39[1] = 0;
  v38 = v39;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v3 = [v2 allKeys];
  v4 = [v3 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v4)
  {
    v5 = *v35;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v35 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v34 + 1) + 8 * i);
        v8 = [v2 objectForKeyedSubscript:v7];
        v9 = [TESLocaleData textEffectTypeForAnimationName:v8];

        v10 = [v7 lowercaseString];
        CEM::getUTF16StringFromCFString(v10, &__p);
        LOWORD(__src) = v9;
        std::__tree<std::__value_type<std::basic_string<char16_t>,unsigned short>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,unsigned short>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,unsigned short>>>::__emplace_unique_key_args<std::basic_string<char16_t>,std::basic_string<char16_t> const&,unsigned short>(&v38, &__p);
        if (SHIBYTE(v33) < 0)
        {
          operator delete(__p);
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v4);
  }

  __p = 0;
  v32 = 0;
  v33 = 0;
  __src = 0;
  v29 = 0;
  v30 = 0;
  v11 = v38;
  if (v38 != v39)
  {
    do
    {
      v12 = v32;
      if (v32 >= v33)
      {
        v14 = std::vector<std::basic_string<char16_t>>::__emplace_back_slow_path<std::basic_string<char16_t> const&>(&__p, v11 + 2);
      }

      else
      {
        if (*(v11 + 55) < 0)
        {
          std::basic_string<char16_t>::__init_copy_ctor_external(v32, *(v11 + 4), *(v11 + 5));
        }

        else
        {
          v13 = v11[2];
          v32->__r_.__value_.__r.__words[2] = *(v11 + 6);
          *&v12->__r_.__value_.__l.__data_ = v13;
        }

        v14 = v12 + 1;
      }

      v32 = v14;
      v15 = v29;
      if (v29 >= v30)
      {
        v17 = __src;
        v18 = v29 - __src;
        v19 = (v29 - __src) >> 1;
        if (v19 <= -2)
        {
          std::vector<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
        }

        if (v30 - __src <= v19 + 1)
        {
          v20 = v19 + 1;
        }

        else
        {
          v20 = v30 - __src;
        }

        if (v30 - __src >= 0x7FFFFFFFFFFFFFFELL)
        {
          v21 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v20;
        }

        if (v21)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<char16_t>>(&__src, v21);
        }

        v22 = (2 * v19);
        v23 = &v22[-((v29 - __src) >> 1)];
        *v22 = *(v11 + 28);
        v16 = (v22 + 1);
        memcpy(v23, v17, v18);
        v24 = __src;
        __src = v23;
        v29 = v16;
        v30 = 0;
        if (v24)
        {
          operator delete(v24);
        }
      }

      else
      {
        *v29 = *(v11 + 28);
        v16 = v15 + 2;
      }

      v29 = v16;
      v25 = *(v11 + 1);
      if (v25)
      {
        do
        {
          v26 = v25;
          v25 = *v25;
        }

        while (v25);
      }

      else
      {
        do
        {
          v26 = *(v11 + 2);
          v27 = *v26 == v11;
          v11 = v26;
        }

        while (!v27);
      }

      v11 = v26;
    }

    while (v26 != v39);
  }

  operator new();
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 5) = 850045863;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 12) = 0;
  return self;
}

void __47__TESTriggerPhraseCollection__buildAndLoadTrie__block_invoke_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1AF04E000, log, OS_LOG_TYPE_ERROR, "Failed to compile the trie for locale: %{public}@", buf, 0xCu);
}

void __47__TESTriggerPhraseCollection__buildAndLoadTrie__block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1AF04E000, a2, OS_LOG_TYPE_ERROR, "Failed to open file path for trie serialization: %{public}@", &v2, 0xCu);
}

@end