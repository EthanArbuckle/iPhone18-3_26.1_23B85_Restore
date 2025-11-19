@interface XRExpiredPidCacheServiceProtected
- (XRExpiredPidCacheServiceProtected)init;
- (void)_performOnCache:(id)a3;
@end

@implementation XRExpiredPidCacheServiceProtected

- (XRExpiredPidCacheServiceProtected)init
{
  v8.receiver = self;
  v8.super_class = XRExpiredPidCacheServiceProtected;
  v2 = [(XRExpiredPidCacheServiceProtected *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("Expired Pid Cache", 0);
    cacheQ = v2->_cacheQ;
    v2->_cacheQ = v3;

    v5 = objc_alloc_init(_XRExpiredPidCache);
    cache = v2->_cache;
    v2->_cache = v5;
  }

  return v2;
}

- (void)_performOnCache:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_247F6AB9C;
  v15 = sub_247F6ABAC;
  v16 = 0;
  cacheQ = self->_cacheQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247F6ABB4;
  block[3] = &unk_278EF0F70;
  v6 = v4;
  block[4] = self;
  v9 = v6;
  v10 = &v11;
  dispatch_sync(cacheQ, block);
  v7 = v12[5];
  if (v7)
  {
    objc_exception_throw(v7);
  }

  _Block_object_dispose(&v11, 8);
}

@end