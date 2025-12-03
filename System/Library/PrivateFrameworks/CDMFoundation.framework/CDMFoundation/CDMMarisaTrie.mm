@interface CDMMarisaTrie
- (BOOL)_loadTrie;
- (BOOL)createFromEntries:(id)entries withHashValue:(id)value;
- (BOOL)hasEntry:(id)entry;
- (BOOL)hasPrefix:(id)prefix;
- (CDMMarisaTrie)initWithFilePath:(id)path versionNumber:(id)number;
- (NSNumber)hashValue;
- (id)_readCachedNumberValueForKey:(id)key;
- (id)traversePrefix:(id)prefix;
- (void)dealloc;
@end

@implementation CDMMarisaTrie

- (id)_readCachedNumberValueForKey:(id)key
{
  v16 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v5 = [(CDMMarisaTrie *)self traversePrefix:keyCopy];
  if ([v5 count] == 1)
  {
    firstObject = [v5 firstObject];
    v7 = [firstObject substringFromIndex:{objc_msgSend(keyCopy, "length")}];

    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{strtoull(objc_msgSend(v7, "UTF8String"), 0, 0)}];
  }

  else
  {
    v9 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = 136315394;
      v13 = "[CDMMarisaTrie _readCachedNumberValueForKey:]";
      v14 = 2112;
      v15 = keyCopy;
      _os_log_impl(&dword_1DC287000, v9, OS_LOG_TYPE_INFO, "%s WARNING: Failed to find entry for key: %@", &v12, 0x16u);
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BOOL)_loadTrie
{
  v8 = *MEMORY[0x1E69E9840];
  marisa::Trie::clear(&self->_readOnlyTrie);
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [defaultManager fileExistsAtPath:self->_filePath];

  if (v4)
  {
    marisa::Trie::mmap(&self->_readOnlyTrie, [(NSString *)self->_filePath UTF8String]);
  }

  v5 = marisa::Trie::empty(&self->_readOnlyTrie);
  v6 = *MEMORY[0x1E69E9840];
  return v5 ^ 1;
}

- (id)traversePrefix:(id)prefix
{
  prefixCopy = prefix;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:4];
  marisa::Agent::Agent(v9);
  marisa::Agent::set_query(v9, [prefixCopy UTF8String]);
  while (marisa::Trie::predictive_search(&self->_readOnlyTrie, v9))
  {
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = [v6 initWithBytes:v9[3] length:v10 encoding:4];
    [v5 addObject:v7];
  }

  marisa::Agent::~Agent(v9);

  return v5;
}

- (BOOL)hasPrefix:(id)prefix
{
  prefixCopy = prefix;
  marisa::Agent::Agent(v6);
  marisa::Agent::set_query(v6, [prefixCopy UTF8String]);
  LOBYTE(self) = marisa::Trie::predictive_search(&self->_readOnlyTrie, v6);
  marisa::Agent::~Agent(v6);

  return self;
}

- (BOOL)hasEntry:(id)entry
{
  entryCopy = entry;
  marisa::Agent::Agent(v6);
  marisa::Agent::set_query(v6, [entryCopy UTF8String]);
  LOBYTE(self) = marisa::Trie::lookup(&self->_readOnlyTrie, v6);
  marisa::Agent::~Agent(v6);

  return self;
}

- (BOOL)createFromEntries:(id)entries withHashValue:(id)value
{
  v32 = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
  valueCopy = value;
  marisa::Keyset::Keyset(v27);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = entriesCopy;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v9)
  {
    v10 = *v24;
    do
    {
      v11 = 0;
      do
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v8);
        }

        marisa::Keyset::push_back(v27, [*(*(&v23 + 1) + 8 * v11++) UTF8String]);
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v9);
  }

  v12 = MEMORY[0x1E696AEC0];
  v13 = [@"~~_ver_~~%@" copy];
  v14 = [v12 stringWithFormat:v13, self->_versionNumber];

  v15 = MEMORY[0x1E696AEC0];
  v16 = [@"~~_hash_~~%@" copy];
  valueCopy = [v15 stringWithFormat:v16, valueCopy];

  v18 = v14;
  marisa::Keyset::push_back(v27, [v14 UTF8String]);
  v19 = valueCopy;
  marisa::Keyset::push_back(v27, [valueCopy UTF8String]);
  marisa::Trie::Trie(v30);
  marisa::Trie::build(v30, v27);
  marisa::Trie::save(v30, [(NSString *)self->_filePath UTF8String]);
  marisa::Trie::clear(v30);
  MEMORY[0x1E1297700](v30);
  _loadTrie = [(CDMMarisaTrie *)self _loadTrie];

  marisa::scoped_array<marisa::scoped_array<marisa::Key>>::~scoped_array(v29);
  marisa::scoped_array<marisa::scoped_array<char>>::~scoped_array(v28);
  marisa::scoped_array<marisa::scoped_array<char>>::~scoped_array(v27);

  v21 = *MEMORY[0x1E69E9840];
  return _loadTrie;
}

- (NSNumber)hashValue
{
  v3 = [@"~~_hash_~~" copy];
  v4 = [(CDMMarisaTrie *)self _readCachedNumberValueForKey:v3];

  return v4;
}

- (void)dealloc
{
  marisa::Trie::clear(&self->_readOnlyTrie);
  v3.receiver = self;
  v3.super_class = CDMMarisaTrie;
  [(CDMMarisaTrie *)&v3 dealloc];
}

- (CDMMarisaTrie)initWithFilePath:(id)path versionNumber:(id)number
{
  v21 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  numberCopy = number;
  v18.receiver = self;
  v18.super_class = CDMMarisaTrie;
  v8 = [(CDMMarisaTrie *)&v18 init];
  if (v8)
  {
    v9 = [pathCopy copy];
    filePath = v8->_filePath;
    v8->_filePath = v9;

    v11 = [numberCopy copy];
    versionNumber = v8->_versionNumber;
    v8->_versionNumber = v11;

    if ([(CDMMarisaTrie *)v8 _loadTrie])
    {
      v13 = [@"~~_ver_~~" copy];
      v14 = [(CDMMarisaTrie *)v8 _readCachedNumberValueForKey:v13];

      if (![(NSNumber *)v8->_versionNumber isEqualToNumber:v14])
      {
        v15 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v20 = "[CDMMarisaTrie initWithFilePath:versionNumber:]";
          _os_log_impl(&dword_1DC287000, v15, OS_LOG_TYPE_INFO, "%s WARNING : Version mismatch", buf, 0xCu);
        }

        marisa::Trie::clear(&v8->_readOnlyTrie);
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v8;
}

@end