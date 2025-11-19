@interface CDMVocTrie
+ (id)getTrieURLs:(id)a3;
- (CDMVocTrie)initWithTriePath:(id)a3;
- (id)entriesForText:(id)a3;
- (id)usoGraphForLabel:(id)a3 semantic:(id)a4;
- (int)getUsoNodeIndex:(id)a3 semantic:(id)a4;
@end

@implementation CDMVocTrie

- (int)getUsoNodeIndex:(id)a3 semantic:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if (self->vocUsoNodeIndexTrieReadOnly)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@+%@", v6, v7];
    vocUsoNodeIndexTrieReadOnly = self->vocUsoNodeIndexTrieReadOnly;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __39__CDMVocTrie_getUsoNodeIndex_semantic___block_invoke;
    v12[3] = &unk_1E862F8B0;
    v12[4] = &v13;
    [(OVMarisaTrie *)vocUsoNodeIndexTrieReadOnly lookupKey:v8 resultBlock:v12];

    v10 = *(v14 + 6);
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v13, 8);

  return v10;
}

- (id)usoGraphForLabel:(id)a3 semantic:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__8551;
  v19 = __Block_byref_object_dispose__8552;
  v20 = 0;
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@+%@", v6, v7];
  vocUsoTrieReadOnly = self->vocUsoTrieReadOnly;
  if (vocUsoTrieReadOnly)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __40__CDMVocTrie_usoGraphForLabel_semantic___block_invoke;
    v14[3] = &unk_1E862F8B0;
    v14[4] = &v15;
    [(OVMarisaTrie *)vocUsoTrieReadOnly lookupKey:v8 resultBlock:v14];
  }

  else
  {
    v10 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v22 = "[CDMVocTrie usoGraphForLabel:semantic:]";
      _os_log_debug_impl(&dword_1DC287000, v10, OS_LOG_TYPE_DEBUG, "%s no uso trie loaded", buf, 0xCu);
    }
  }

  v11 = v16[5];

  _Block_object_dispose(&v15, 8);
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

void __40__CDMVocTrie_usoGraphForLabel_semantic___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69D1260];
  v4 = a2;
  v5 = [[v3 alloc] initWithData:v4];

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(*(*(a1 + 32) + 8) + 40);
  if (!v8 || ([v8 nodes], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count"), v9, !v10))
  {
    v11 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v15 = 136315138;
      v16 = "[CDMVocTrie usoGraphForLabel:semantic:]_block_invoke";
      _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s uso graph can't be converted", &v15, 0xCu);
    }

    v12 = *(*(a1 + 32) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)entriesForText:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  vocTextTrieReadOnly = self->vocTextTrieReadOnly;
  if (vocTextTrieReadOnly && self->vocLabelTrieReadOnly)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __29__CDMVocTrie_entriesForText___block_invoke;
    v8[3] = &unk_1E862F888;
    v9 = v4;
    v10 = self;
    v11 = v5;
    [(OVMarisaTrie *)vocTextTrieReadOnly lookupKey:v9 resultBlock:v8];
  }

  return v5;
}

void __29__CDMVocTrie_entriesForText___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    *buf = 0;
    [a2 getBytes:buf length:4];
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(v4 + 16);
    v6 = *buf;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __29__CDMVocTrie_entriesForText___block_invoke_20;
    v10[3] = &unk_1E862F860;
    v10[4] = v4;
    v11 = v3;
    v12 = *(a1 + 48);
    [v5 reverseLookupKey:v6 dataLength:4 resultBlock:v10];
  }

  else
  {
    v7 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      *buf = 136315394;
      v14 = "[CDMVocTrie entriesForText:]_block_invoke";
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_1DC287000, v7, OS_LOG_TYPE_INFO, "%s [WARN]: VOC trie look up returns nil data for text:%@", buf, 0x16u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __29__CDMVocTrie_entriesForText___block_invoke_20(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (v5)
  {
    v10 = 0;
    [a3 getBytes:&v10 length:4];
    v6 = [*(*(a1 + 32) + 24) reverseLookupRow:v10];
    if (v6)
    {
      v7 = [[CDMVocEntry alloc] initWithText:*(a1 + 40) label:v5 semantic:v6];
      v8 = [*(a1 + 32) usoGraphForLabel:v5 semantic:v6];
      if (v8)
      {
        v9 = [*(a1 + 32) getUsoNodeIndex:v5 semantic:v6];
        [(CDMVocEntry *)v7 setUsoGraph:v8];
        [(CDMVocEntry *)v7 setNodeIndex:v9];
      }

      [*(a1 + 48) addObject:v7];
    }
  }
}

- (CDMVocTrie)initWithTriePath:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v35.receiver = self;
  v35.super_class = CDMVocTrie;
  v5 = [(CDMVocTrie *)&v35 init];
  if (v5)
  {
    if (!v4)
    {
      v6 = NSTemporaryDirectory();
      v4 = [v6 stringByStandardizingPath];
    }

    v7 = [CDMVocTrie getTrieURLs:v4];
    v8 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v37 = "[CDMVocTrie initWithTriePath:]";
      v38 = 2112;
      v39 = v7;
      _os_log_debug_impl(&dword_1DC287000, v8, OS_LOG_TYPE_DEBUG, "%s Reading VOC trie from %@", buf, 0x16u);
    }

    v9 = [OVMarisaTrie alloc];
    v10 = [v7 objectAtIndexedSubscript:0];
    v11 = [(OVMarisaTrie *)v9 initWithURL:v10];
    vocTextTrieReadOnly = v5->vocTextTrieReadOnly;
    v5->vocTextTrieReadOnly = v11;

    v13 = [OVMarisaTrie alloc];
    v14 = [v7 objectAtIndexedSubscript:1];
    v15 = [(OVMarisaTrie *)v13 initWithURL:v14];
    vocLabelTrieReadOnly = v5->vocLabelTrieReadOnly;
    v5->vocLabelTrieReadOnly = v15;

    v17 = [OVMarisaTrie alloc];
    v18 = [v7 objectAtIndexedSubscript:2];
    v19 = [(OVMarisaTrie *)v17 initWithURL:v18];
    vocSemanticTrieReadOnly = v5->vocSemanticTrieReadOnly;
    v5->vocSemanticTrieReadOnly = v19;

    v21 = [OVMarisaTrie alloc];
    v22 = [v7 objectAtIndexedSubscript:3];
    v23 = [(OVMarisaTrie *)v21 initWithURL:v22];
    vocUsoTrieReadOnly = v5->vocUsoTrieReadOnly;
    v5->vocUsoTrieReadOnly = v23;

    v25 = [OVMarisaTrie alloc];
    v26 = [v7 objectAtIndexedSubscript:4];
    v27 = [(OVMarisaTrie *)v25 initWithURL:v26];
    vocUsoNodeIndexTrieReadOnly = v5->vocUsoNodeIndexTrieReadOnly;
    v5->vocUsoNodeIndexTrieReadOnly = v27;

    if (!v5->vocTextTrieReadOnly || !v5->vocLabelTrieReadOnly || !v5->vocSemanticTrieReadOnly)
    {
      v31 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v37 = "[CDMVocTrie initWithTriePath:]";
        _os_log_error_impl(&dword_1DC287000, v31, OS_LOG_TYPE_ERROR, "%s [ERR]: CDMVocTrie failing to init without required assets", buf, 0xCu);
      }

      v32 = 0;
      goto LABEL_19;
    }

    if (v5->vocUsoTrieReadOnly && v5->vocUsoNodeIndexTrieReadOnly)
    {
      v29 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v37 = "[CDMVocTrie initWithTriePath:]";
        v30 = "%s CDMVocTrie Using VOC 2.0 assets that contains USO";
LABEL_22:
        _os_log_debug_impl(&dword_1DC287000, v29, OS_LOG_TYPE_DEBUG, v30, buf, 0xCu);
      }
    }

    else
    {
      v29 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v37 = "[CDMVocTrie initWithTriePath:]";
        v30 = "%s CDMVocTrie Using VOC 1.0 assets that does not contain USO, still relying on CDMVocMapper";
        goto LABEL_22;
      }
    }

    v32 = v5;
LABEL_19:

    goto LABEL_20;
  }

  v32 = 0;
LABEL_20:

  v33 = *MEMORY[0x1E69E9840];
  return v32;
}

+ (id)getTrieURLs:(id)a3
{
  v3 = a3;
  v15 = [v3 stringByAppendingPathComponent:@"vocText.trie"];
  v4 = [v3 stringByAppendingPathComponent:@"vocLabel.trie"];
  v5 = [v3 stringByAppendingPathComponent:@"vocSemantic.trie"];
  v6 = [v3 stringByAppendingPathComponent:@"vocUso.trie"];
  v7 = [v3 stringByAppendingPathComponent:@"vocUsoNodeIndex.trie"];

  v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:v15];
  v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v4];
  v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:v5];
  v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6];
  v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:v7];
  v13 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v8, v9, v10, v11, v12, 0}];

  return v13;
}

@end