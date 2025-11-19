@interface BCSCoalesceHelper
- (BCSCoalesceHelper)initWithQOSClass:(unsigned int)a3;
- (BOOL)isDuplicateRequest:(id)a3;
- (id)dequeueCoalesceObjectsForCoalesceKey:(id)a3;
- (void)enqueueCoalesceObject:(id)a3 isDuplicateRequest:(BOOL *)a4;
@end

@implementation BCSCoalesceHelper

- (BCSCoalesceHelper)initWithQOSClass:(unsigned int)a3
{
  v11.receiver = self;
  v11.super_class = BCSCoalesceHelper;
  v4 = [(BCSCoalesceHelper *)&v11 init];
  if (v4)
  {
    v5 = objc_opt_new();
    coalesceObjectPool = v4->_coalesceObjectPool;
    v4->_coalesceObjectPool = v5;

    v7 = dispatch_queue_attr_make_with_qos_class(0, a3, -1);
    v8 = dispatch_queue_create([@"com.apple.businessservicesd.CoalesceHelperCoalesceObjectDispatchQueue" UTF8String], v7);
    coalesceHelperDispatchQueue = v4->_coalesceHelperDispatchQueue;
    v4->_coalesceHelperDispatchQueue = v8;
  }

  return v4;
}

- (void)enqueueCoalesceObject:(id)a3 isDuplicateRequest:(BOOL *)a4
{
  v6 = a3;
  if (self)
  {
    coalesceHelperDispatchQueue = self->_coalesceHelperDispatchQueue;
  }

  else
  {
    coalesceHelperDispatchQueue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__BCSCoalesceHelper_enqueueCoalesceObject_isDuplicateRequest___block_invoke;
  block[3] = &unk_278D389D0;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_sync(coalesceHelperDispatchQueue, block);
}

void __62__BCSCoalesceHelper_enqueueCoalesceObject_isDuplicateRequest___block_invoke(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = a1[4];
  v2 = a1[5];
  if (!v1)
  {
    v16 = v2;
    v6 = 0;
    goto LABEL_13;
  }

  v3 = a1[6];
  v4 = *(v1 + 8);
  v5 = v2;
  v6 = v4;
  v7 = [v5 coalesceKey];
  v8 = [v6 objectForKey:v7];

  v9 = [v8 count];
  v10 = ABSLogCommon();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      v17 = 136315138;
      v18 = "[BCSCoalesceHelper _enqueueCoalesceObject:isDuplicateRequest:inCoalesceObjectPool:]";
      _os_log_impl(&dword_242072000, v10, OS_LOG_TYPE_DEFAULT, "Coalesce Helper - Enqueue CoalesceObject to existing CoalesceObject array %s", &v17, 0xCu);
    }

    [v8 addObject:v5];
    if (!v3)
    {
      goto LABEL_12;
    }

    v12 = 1;
  }

  else
  {
    if (v11)
    {
      v17 = 136315138;
      v18 = "[BCSCoalesceHelper _enqueueCoalesceObject:isDuplicateRequest:inCoalesceObjectPool:]";
      _os_log_impl(&dword_242072000, v10, OS_LOG_TYPE_DEFAULT, "Coalesce Helper - Enqueue CoalesceObject to new CoalesceObject array %s", &v17, 0xCu);
    }

    v13 = objc_opt_new();
    [v13 addObject:v5];
    v14 = [v5 coalesceKey];
    [v6 setObject:v13 forKey:v14];

    if (!v3)
    {
      v8 = v13;
      goto LABEL_12;
    }

    v12 = 0;
    v8 = v13;
  }

  *v3 = v12;
LABEL_12:

LABEL_13:
  v15 = *MEMORY[0x277D85DE8];
}

- (id)dequeueCoalesceObjectsForCoalesceKey:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  if (self)
  {
    coalesceHelperDispatchQueue = self->_coalesceHelperDispatchQueue;
  }

  else
  {
    coalesceHelperDispatchQueue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__BCSCoalesceHelper_dequeueCoalesceObjectsForCoalesceKey___block_invoke;
  block[3] = &unk_278D389F8;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(coalesceHelperDispatchQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __58__BCSCoalesceHelper_dequeueCoalesceObjectsForCoalesceKey___block_invoke(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  if (v2)
  {
    v3 = a1[5];
    v13 = *(v2 + 8);
    v4 = v3;
    v5 = [v13 objectForKey:v4];
    v6 = [v5 copy];

    [v13 removeObjectForKey:v4];
    v7 = [v6 count];
    v8 = ABSLogCommon();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        *buf = 136315138;
        v15 = "[BCSCoalesceHelper _dequeueCoalesceObjectsForCoalesceKey:inCoalesceObjectPool:]";
        _os_log_impl(&dword_242072000, v8, OS_LOG_TYPE_DEFAULT, "Coalesce Helper - Dequeue CoalesceObject array - Found %s", buf, 0xCu);
      }
    }

    else
    {
      if (v9)
      {
        *buf = 136315138;
        v15 = "[BCSCoalesceHelper _dequeueCoalesceObjectsForCoalesceKey:inCoalesceObjectPool:]";
        _os_log_impl(&dword_242072000, v8, OS_LOG_TYPE_DEFAULT, "Coalesce Helper - Dequeue CoalesceObject array - Not Found %s", buf, 0xCu);
      }

      v8 = v6;
      v6 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v13 = 0;
    v6 = 0;
  }

  v10 = *(a1[6] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)isDuplicateRequest:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  if (self)
  {
    coalesceHelperDispatchQueue = self->_coalesceHelperDispatchQueue;
  }

  else
  {
    coalesceHelperDispatchQueue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__BCSCoalesceHelper_isDuplicateRequest___block_invoke;
  block[3] = &unk_278D389F8;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(coalesceHelperDispatchQueue, block);
  v7 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __40__BCSCoalesceHelper_isDuplicateRequest___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[1];
  }

  v3 = a1[5];
  v4 = v2;
  v6 = [v3 coalesceKey];
  v5 = [v4 objectForKey:v6];
  *(*(a1[6] + 8) + 24) = [v5 count] != 0;
}

@end