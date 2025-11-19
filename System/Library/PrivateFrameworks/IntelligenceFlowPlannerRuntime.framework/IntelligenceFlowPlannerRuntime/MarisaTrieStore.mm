@interface MarisaTrieStore
+ (id)logContext;
- (BOOL)lookupRow:(id)a3 outIdx:(int64_t *)a4;
- (BOOL)reverseLookupKey:(int)a3 dataLength:(unint64_t)a4 resultBlock:(id)a5;
- (MarisaTrieStore)init;
- (MarisaTrieStore)initWithURL:(id)a3;
- (id).cxx_construct;
- (id)reverseLookupRow:(int)a3;
- (void)addKey:(id)a3 payload:(id)a4;
- (void)addRow:(id)a3;
- (void)enumerateAllEntriesWithBlock:(id)a3;
- (void)enumerateAllRowsWithBlock:(id)a3;
- (void)lookupKey:(id)a3 resultBlock:(id)a4;
- (void)lookupPrefix:(id)a3 resultBlock:(id)a4;
- (void)writeToURL:(id)a3;
@end

@implementation MarisaTrieStore

- (id).cxx_construct
{
  marisa::Trie::Trie(&self->trie);
  marisa::Keyset::Keyset(&self->keyset);
  return self;
}

- (BOOL)reverseLookupKey:(int)a3 dataLength:(unint64_t)a4 resultBlock:(id)a5
{
  v7 = a5;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  marisa::Agent::Agent(&v17);
  marisa::Agent::set_query(&v17);
  marisa::Trie::reverse_lookup(&self->trie, &v17);
  v8 = *(&v18 + 1);
  v9 = v19;
  v10 = objc_alloc(MEMORY[0x277CCACA8]);
  v12 = objc_msgSend_initWithBytes_length_encoding_(v10, v11, v8, v9 + ~a4, 4);
  v13 = objc_alloc(MEMORY[0x277CBEA90]);
  v15 = objc_msgSend_initWithBytes_length_(v13, v14, v8 + v9 - a4, a4);
  v7[2](v7, v12, v15);

  marisa::Agent::~Agent(&v17);
  return 1;
}

- (id)reverseLookupRow:(int)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  marisa::Agent::Agent(&v11);
  marisa::Agent::set_query(&v11);
  marisa::Trie::reverse_lookup(&self->trie, &v11);
  v4 = *(&v12 + 1);
  v5 = v13;
  v6 = objc_alloc(MEMORY[0x277CCACA8]);
  v8 = objc_msgSend_initWithBytes_length_encoding_(v6, v7, v4, v5, 4);
  marisa::Agent::~Agent(&v11);
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)lookupPrefix:(id)a3 resultBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  *__s = 0u;
  v25 = 0u;
  v23 = 0u;
  marisa::Agent::Agent(&v23);
  v8 = v6;
  v11 = objc_msgSend_UTF8String(v8, v9, v10);
  marisa::Agent::set_query(&v23, v11);
  while (marisa::Trie::predictive_search(&self->trie, &v23))
  {
    v12 = __s[1];
    v14 = v25;
    v13 = DWORD1(v25);
    v15 = strchr(__s[1], 255);
    __p[0] = 0;
    __p[1] = 0;
    v22 = 0;
    if (v15)
    {
      sub_22C8FED7C(&__dst, v12, v15 - v12);
    }

    else
    {
      sub_22C8FED7C(&__dst, v12, v14);
    }

    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = __dst;
    v22 = v20;
    v17 = objc_autoreleasePoolPush();
    if (v22 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, __p[0]);
    }
    v18 = ;
    v7[2](v7, v18, v13);

    objc_autoreleasePoolPop(v17);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p[0]);
    }
  }

  marisa::Agent::~Agent(&v23);
}

- (void)lookupKey:(id)a3 resultBlock:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  marisa::Agent::Agent(&v32);
  v9 = objc_msgSend_dataUsingEncoding_(v6, v8, 4);
  v31 = objc_msgSend_mutableCopy(v9, v10, v11);

  if (v31)
  {
    v14 = objc_msgSend_length(v31, v12, v13);
    *buf = 255;
    objc_msgSend_appendBytes_length_(v31, v15, buf, 2);
    v16 = v31;
    v19 = objc_msgSend_bytes(v31, v17, v18);
    marisa::Agent::set_query(&v32, v19);
    while (marisa::Trie::predictive_search(&self->trie, &v32))
    {
      v20 = *(&v33 + 1);
      v21 = v34;
      v22 = DWORD1(v34);
      v23 = objc_autoreleasePoolPush();
      v25 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v24, v20 + v14 + 1, ~v14 + v21);
      v7[2](v7, v25, v22);

      objc_autoreleasePoolPop(v23);
    }
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v29 = objc_msgSend_logContext(MarisaTrieStore, v27, v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v36 = v6;
      _os_log_error_impl(&dword_22C366000, v29, OS_LOG_TYPE_ERROR, "Unable to convert NSString to UTF8 NSData. String is:%@", buf, 0xCu);
    }

    v7[2](v7, 0, 0);
    objc_autoreleasePoolPop(v26);
  }

  marisa::Agent::~Agent(&v32);
  v30 = *MEMORY[0x277D85DE8];
}

- (BOOL)lookupRow:(id)a3 outIdx:(int64_t *)a4
{
  v6 = a3;
  v15 = 0u;
  memset(v14, 0, sizeof(v14));
  marisa::Agent::Agent(v14);
  v7 = v6;
  v10 = objc_msgSend_UTF8String(v7, v8, v9);
  marisa::Agent::set_query(v14, v10);
  v11 = marisa::Trie::lookup(&self->trie, v14);
  v12 = v11 ^ 1;
  if (!a4)
  {
    v12 = 1;
  }

  if ((v12 & 1) == 0)
  {
    *a4 = DWORD1(v15);
  }

  marisa::Agent::~Agent(v14);

  return v11;
}

- (void)enumerateAllRowsWithBlock:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  marisa::Agent::Agent(&v15);
  v5 = 0;
  *&v6 = 138543362;
  v14 = v6;
  while (v5 < marisa::Trie::size(&self->trie))
  {
    marisa::Agent::set_query(&v15);
    marisa::Trie::reverse_lookup(&self->trie, &v15);
    v7 = *(&v16 + 1);
    v9 = v17;
    v8 = DWORD1(v17);
    v10 = objc_autoreleasePoolPush();
    __p[0] = 0;
    __p[1] = 0;
    v19 = 0;
    sub_22C8FED7C(__p, v7, v9);
    if (v19 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, __p, v14);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, __p[0], v14);
    }
    v12 = ;
    v4[2](v4, v12, v8);

    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }

    objc_autoreleasePoolPop(v10);
    ++v5;
  }

  marisa::Agent::~Agent(&v15);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)enumerateAllEntriesWithBlock:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  *__s = 0u;
  v21 = 0u;
  v19 = 0u;
  marisa::Agent::Agent(&v19);
  v5 = 0;
  *&v6 = 138543362;
  v18 = v6;
  while (v5 < marisa::Trie::size(&self->trie))
  {
    marisa::Agent::set_query(&v19);
    marisa::Trie::reverse_lookup(&self->trie, &v19);
    v7 = __s[1];
    v8 = v21;
    v9 = DWORD1(v21);
    v10 = strchr(__s[1], -1);
    v11 = objc_autoreleasePoolPush();
    v12 = v10 - v7;
    __p[0] = 0;
    __p[1] = 0;
    v23 = 0;
    sub_22C8FED7C(__p, v7, v10 - v7);
    if (v23 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, __p, v18);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, __p[0], v18);
    }
    v14 = ;
    v16 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v15, &v7[v12 + 1], ~v12 + v8);
    v4[2](v4, v14, v16, v9);

    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p[0]);
    }

    objc_autoreleasePoolPop(v11);
    ++v5;
  }

  marisa::Agent::~Agent(&v19);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)writeToURL:(id)a3
{
  v11 = a3;
  marisa::Trie::build(&self->trie, &self->keyset);
  v6 = objc_msgSend_path(v11, v4, v5);
  v7 = v6;
  v10 = objc_msgSend_UTF8String(v7, v8, v9);
  marisa::Trie::save(&self->trie, v10);
}

- (void)addRow:(id)a3
{
  v4 = a3;
  __dst[0] = 0;
  __dst[1] = 0;
  v13 = 0;
  v5 = v4;
  v8 = objc_msgSend_UTF8String(v5, v6, v7);
  v9 = strlen(v8);
  if (v9 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_22C8FEE2C();
  }

  v10 = v9;
  if (v9 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v13) = v9;
  if (v9)
  {
    memmove(__dst, v8, v9);
  }

  *(__dst + v10) = 0;
  if (v13 >= 0)
  {
    v11 = __dst;
  }

  else
  {
    v11 = __dst[0];
  }

  marisa::Keyset::push_back(&self->keyset, v11, 1.0);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__dst[0]);
  }
}

- (void)addKey:(id)a3 payload:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x277CBEB28]);
  v10 = objc_msgSend_dataUsingEncoding_(v6, v9, 4);
  v12 = objc_msgSend_initWithData_(v8, v11, v10);

  v23 = -1;
  objc_msgSend_appendBytes_length_(v12, v13, &v23, 1);
  if (v7 && objc_msgSend_length(v7, v14, v15))
  {
    objc_msgSend_appendData_(v12, v16, v7);
  }

  v17 = v12;
  v20 = objc_msgSend_bytes(v17, v18, v19);
  objc_msgSend_length(v12, v21, v22);
  marisa::Keyset::push_back(&self->keyset, v20, 1.0);
}

- (MarisaTrieStore)init
{
  v3.receiver = self;
  v3.super_class = MarisaTrieStore;
  return [(MarisaTrieStore *)&v3 init];
}

- (MarisaTrieStore)initWithURL:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v5, v6);
  v10 = objc_msgSend_path(v4, v8, v9);
  v12 = objc_msgSend_fileExistsAtPath_(v7, v11, v10);

  if (v12)
  {
    v37.receiver = self;
    v37.super_class = MarisaTrieStore;
    v17 = [(MarisaTrieStore *)&v37 init];
    if (v17)
    {
      v18 = objc_msgSend_path(v4, v15, v16);
      v19 = v18;
      v22 = objc_msgSend_UTF8String(v18, v20, v21);
      marisa::Trie::mmap(&v17->trie, v22);

      v25 = objc_msgSend_logContext(MarisaTrieStore, v23, v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v28 = objc_msgSend_lastPathComponent(v4, v26, v27);
        v29 = marisa::Trie::num_keys(&v17->trie);
        *buf = 138412546;
        v39 = v28;
        v40 = 2048;
        v41 = v29;
        _os_log_impl(&dword_22C366000, v25, OS_LOG_TYPE_INFO, "MarisaTrieStore %@ loaded {count: %lu}", buf, 0x16u);
      }
    }

    self = v17;
    v30 = self;
  }

  else
  {
    v31 = objc_msgSend_logContext(MarisaTrieStore, v13, v14);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v36 = objc_msgSend_path(v4, v32, v33);
      *buf = 138412290;
      v39 = v36;
      _os_log_error_impl(&dword_22C366000, v31, OS_LOG_TYPE_ERROR, "Unable to locate marisa trie {path: %@}", buf, 0xCu);
    }

    v30 = 0;
  }

  v34 = *MEMORY[0x277D85DE8];
  return v30;
}

+ (id)logContext
{
  if (qword_281435850 != -1)
  {
    dispatch_once(&qword_281435850, &unk_283FC3FA0);
  }

  v3 = qword_281435858;

  return v3;
}

@end