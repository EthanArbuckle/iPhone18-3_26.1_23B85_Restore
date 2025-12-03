@interface OVMarisaTrie
- (BOOL)lookupRow:(id)row outIdx:(int64_t *)idx;
- (BOOL)reverseLookupKey:(int)key dataLength:(unint64_t)length resultBlock:(id)block;
- (OVMarisaTrie)init;
- (OVMarisaTrie)initWithURL:(id)l;
- (id).cxx_construct;
- (id)reverseLookupRow:(int)row;
- (void)addKey:(id)key payload:(id)payload;
- (void)addRow:(id)row;
- (void)enumerateAllEntriesWithBlock:(id)block;
- (void)enumerateAllRowsWithBlock:(id)block;
- (void)lookupKey:(id)key resultBlock:(id)block;
- (void)lookupPrefix:(id)prefix resultBlock:(id)block;
- (void)writeToURL:(id)l;
@end

@implementation OVMarisaTrie

- (OVMarisaTrie)init
{
  v3.receiver = self;
  v3.super_class = OVMarisaTrie;
  return [(OVMarisaTrie *)&v3 init];
}

- (id).cxx_construct
{
  marisa::Trie::Trie(&self->trie);
  marisa::Keyset::Keyset(&self->keyset);
  return self;
}

- (BOOL)reverseLookupKey:(int)key dataLength:(unint64_t)length resultBlock:(id)block
{
  v17 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  marisa::Agent::Agent(v14);
  marisa::Agent::set_query(v14);
  marisa::Trie::reverse_lookup(&self->trie, v14);
  v8 = v15;
  v9 = v16;
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v15 length:v16 + ~length encoding:4];
  v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v8 + v9 - length length:length];
  blockCopy[2](blockCopy, v10, v11);

  marisa::Agent::~Agent(v14);
  v12 = *MEMORY[0x1E69E9840];
  return 1;
}

- (id)reverseLookupRow:(int)row
{
  v10 = *MEMORY[0x1E69E9840];
  marisa::Agent::Agent(v7);
  marisa::Agent::set_query(v7);
  marisa::Trie::reverse_lookup(&self->trie, v7);
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v8 length:v9 encoding:4];
  marisa::Agent::~Agent(v7);
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)lookupPrefix:(id)prefix resultBlock:(id)block
{
  prefixCopy = prefix;
  blockCopy = block;
  marisa::Agent::Agent(v19);
  marisa::Agent::set_query(v19, [prefixCopy UTF8String]);
  while (marisa::Trie::predictive_search(&self->trie, v19))
  {
    v8 = __s;
    v10 = v21;
    v9 = v22;
    v11 = strchr(__s, 255);
    __p[0] = 0;
    __p[1] = 0;
    v18 = 0;
    if (v11)
    {
      std::string::basic_string[abi:ne200100](&__dst, v8, v11 - v8);
    }

    else
    {
      std::string::basic_string[abi:ne200100](&__dst, v8, v10);
    }

    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = __dst;
    v18 = v16;
    v12 = objc_autoreleasePoolPush();
    if (v18 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v13];
    blockCopy[2](blockCopy, v14, v9);

    objc_autoreleasePoolPop(v12);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }
  }

  marisa::Agent::~Agent(v19);
}

- (void)lookupKey:(id)key resultBlock:(id)block
{
  v28 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  blockCopy = block;
  marisa::Agent::Agent(v20);
  v8 = [keyCopy dataUsingEncoding:4];
  v19 = [v8 mutableCopy];

  if (v19)
  {
    v9 = [v19 length];
    *buf = 255;
    [v19 appendBytes:buf length:2];
    v10 = v19;
    marisa::Agent::set_query(v20, [v19 bytes]);
    while (marisa::Trie::predictive_search(&self->trie, v20))
    {
      v11 = v21;
      v12 = v22;
      v13 = v23;
      v14 = objc_autoreleasePoolPush();
      v15 = [MEMORY[0x1E695DEF0] dataWithBytes:v11 + v9 + 1 length:~v9 + v12];
      blockCopy[2](blockCopy, v15, v13);

      objc_autoreleasePoolPop(v14);
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v25 = "[OVMarisaTrie lookupKey:resultBlock:]";
      v26 = 2112;
      v27 = keyCopy;
      _os_log_impl(&dword_1DC287000, v17, OS_LOG_TYPE_INFO, "%s [WARN]: Unable to convert NSString to UTF8 NSData. String is:%@", buf, 0x16u);
    }

    blockCopy[2](blockCopy, 0, 0);
    objc_autoreleasePoolPop(v16);
  }

  marisa::Agent::~Agent(v20);
  v18 = *MEMORY[0x1E69E9840];
}

- (BOOL)lookupRow:(id)row outIdx:(int64_t *)idx
{
  rowCopy = row;
  marisa::Agent::Agent(v10);
  marisa::Agent::set_query(v10, [rowCopy UTF8String]);
  v7 = marisa::Trie::lookup(&self->trie, v10);
  v8 = v7 ^ 1;
  if (!idx)
  {
    v8 = 1;
  }

  if ((v8 & 1) == 0)
  {
    *idx = v10[9];
  }

  marisa::Agent::~Agent(v10);

  return v7;
}

- (void)enumerateAllRowsWithBlock:(id)block
{
  v21 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  marisa::Agent::Agent(v15);
  v5 = 0;
  *&v6 = 136315394;
  v14 = v6;
  while (v5 < marisa::Trie::size(&self->trie))
  {
    marisa::Agent::set_query(v15);
    marisa::Trie::reverse_lookup(&self->trie, v15);
    v7 = v16;
    v9 = v17;
    v8 = v18;
    v10 = objc_autoreleasePoolPush();
    std::string::basic_string[abi:ne200100](&__p, v7, v9);
    if (v20 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{p_p, v14}];
    blockCopy[2](blockCopy, v12, v8);

    if (v20 < 0)
    {
      operator delete(__p);
    }

    objc_autoreleasePoolPop(v10);
    ++v5;
  }

  marisa::Agent::~Agent(v15);

  v13 = *MEMORY[0x1E69E9840];
}

- (void)enumerateAllEntriesWithBlock:(id)block
{
  v24 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  marisa::Agent::Agent(v18);
  v5 = 0;
  *&v6 = 136315394;
  v17 = v6;
  while (v5 < marisa::Trie::size(&self->trie))
  {
    marisa::Agent::set_query(v18);
    marisa::Trie::reverse_lookup(&self->trie, v18);
    v7 = __s;
    v8 = v20;
    v9 = v21;
    v10 = strchr(__s, -1);
    v11 = objc_autoreleasePoolPush();
    v12 = v10 - v7;
    std::string::basic_string[abi:ne200100](&__p, v7, v10 - v7);
    if (v23 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{p_p, v17}];
    v15 = [MEMORY[0x1E695DEF0] dataWithBytes:&v7[v12 + 1] length:~v12 + v8];
    blockCopy[2](blockCopy, v14, v15, v9);

    if (v23 < 0)
    {
      operator delete(__p);
    }

    objc_autoreleasePoolPop(v11);
    ++v5;
  }

  marisa::Agent::~Agent(v18);

  v16 = *MEMORY[0x1E69E9840];
}

- (void)writeToURL:(id)l
{
  lCopy = l;
  marisa::Trie::build(&self->trie, &self->keyset);
  path = [lCopy path];
  marisa::Trie::save(&self->trie, [path UTF8String]);
}

- (void)addRow:(id)row
{
  rowCopy = row;
  uTF8String = [rowCopy UTF8String];
  v6 = strlen(uTF8String);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v10 = v6;
  if (v6)
  {
    memmove(&__dst, uTF8String, v6);
  }

  *(&__dst + v7) = 0;
  if (v10 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  marisa::Keyset::push_back(&self->keyset, p_dst, 1.0);
  if (v10 < 0)
  {
    operator delete(__dst);
  }
}

- (void)addKey:(id)key payload:(id)payload
{
  keyCopy = key;
  payloadCopy = payload;
  v8 = objc_alloc(MEMORY[0x1E695DF88]);
  v9 = [keyCopy dataUsingEncoding:4];
  v10 = [v8 initWithData:v9];

  v12 = -1;
  [v10 appendBytes:&v12 length:1];
  if (payloadCopy && [payloadCopy length])
  {
    [v10 appendData:payloadCopy];
  }

  bytes = [v10 bytes];
  [v10 length];
  marisa::Keyset::push_back(&self->keyset, bytes, 1.0);
}

- (OVMarisaTrie)initWithURL:(id)l
{
  v26 = *MEMORY[0x1E69E9840];
  lCopy = l;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [lCopy path];
  v7 = [defaultManager fileExistsAtPath:path];

  if (v7)
  {
    v19.receiver = self;
    v19.super_class = OVMarisaTrie;
    v8 = [(OVMarisaTrie *)&v19 init];
    if (v8)
    {
      path2 = [lCopy path];
      v10 = path2;
      marisa::Trie::mmap(&v8->trie, [path2 UTF8String]);

      v11 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        lastPathComponent = [lCopy lastPathComponent];
        v13 = marisa::Trie::num_keys(&v8->trie);
        *buf = 136315650;
        v21 = "[OVMarisaTrie initWithURL:]";
        v22 = 2112;
        v23 = lastPathComponent;
        v24 = 2048;
        v25 = v13;
        _os_log_impl(&dword_1DC287000, v11, OS_LOG_TYPE_INFO, "%s OVMarisaTrie %@ loaded {count: %lu}", buf, 0x20u);
      }
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    v15 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      path3 = [lCopy path];
      *buf = 136315394;
      v21 = "[OVMarisaTrie initWithURL:]";
      v22 = 2112;
      v23 = path3;
      _os_log_impl(&dword_1DC287000, v15, OS_LOG_TYPE_INFO, "%s [WARN]: Unable to locate marisa trie {path: %@}", buf, 0x16u);
    }

    selfCopy = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

@end