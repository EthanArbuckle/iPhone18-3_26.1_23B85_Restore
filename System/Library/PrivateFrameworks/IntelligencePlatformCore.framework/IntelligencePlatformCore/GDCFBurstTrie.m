@interface GDCFBurstTrie
- (GDCFBurstTrie)initWithPath:(id)a3;
- (unsigned)payloadForString:(id)a3;
- (unsigned)payloadForString:(id)a3 range:(_NSRange)a4;
- (unsigned)payloadForUTF8String:(const char *)a3 length:(unint64_t)a4;
- (void)dealloc;
@end

@implementation GDCFBurstTrie

- (unsigned)payloadForUTF8String:(const char *)a3 length:(unint64_t)a4
{
  if (!a3)
  {
    return 0;
  }

  trie = self->_trie;
  if (CFBurstTrieContainsUTF8String())
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

- (unsigned)payloadForString:(id)a3 range:(_NSRange)a4
{
  v5 = objc_msgSend_substringWithRange_(a3, a2, a4.location, a4.length);
  LODWORD(self) = objc_msgSend_payloadForString_(self, v6, v5, v7);

  return self;
}

- (unsigned)payloadForString:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v8 = objc_msgSend_length(v4, v5, v6, v7);
  if (CFStringGetCStringPtr(v4, 0x600u))
  {
    trie = self->_trie;
LABEL_3:
    CFBurstTrieContainsUTF8String();
    goto LABEL_4;
  }

  if (v8 <= 0xFF)
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    *__s = 0u;
    v16 = 0u;
    if (objc_msgSend_getCString_maxLength_encoding_(v4, v9, __s, 385, 4))
    {
      v13 = self->_trie;
      strlen(__s);
      goto LABEL_3;
    }
  }

  if (v4)
  {
    v14 = self->_trie;
    CFBurstTrieContains();
  }

LABEL_4:

  v11 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)dealloc
{
  if (self->_trie)
  {
    CFBurstTrieRelease();
  }

  v3.receiver = self;
  v3.super_class = GDCFBurstTrie;
  [(GDCFBurstTrie *)&v3 dealloc];
}

- (GDCFBurstTrie)initWithPath:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (!v8)
  {
    v14 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v5, v6, v7);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v14, v15, a2, self, @"GDCFBurstTrie.m", 32, @"Invalid parameter not satisfying: %@", @"path");
  }

  v16.receiver = self;
  v16.super_class = GDCFBurstTrie;
  v9 = [(GDCFBurstTrie *)&v16 init];
  if (v9 && (v10 = CFBurstTrieCreateFromFile(), (v9->_trie = v10) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v8;
      _os_log_error_impl(&dword_1C43F8000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Could not open trie: %@", buf, 0xCu);
    }

    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

@end