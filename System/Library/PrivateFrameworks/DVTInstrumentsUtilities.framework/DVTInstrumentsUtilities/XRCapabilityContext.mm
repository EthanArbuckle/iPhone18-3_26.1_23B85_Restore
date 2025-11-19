@interface XRCapabilityContext
+ (id)currentContextSet;
+ (void)announceUsedCapability:(id)a3 version:(unint64_t)a4;
+ (void)enterContextSet:(id)a3;
+ (void)leaveContextSet:(id)a3;
- (XRCapabilityContext)init;
- (void)addToCurrentContextSet;
- (void)announceUsedCapability:(id)a3 version:(unint64_t)a4;
- (void)dealloc;
- (void)enumerateRequiredCapabilities:(id)a3;
- (void)removeFromCurrentContextSet;
@end

@implementation XRCapabilityContext

+ (void)announceUsedCapability:(id)a3 version:(unint64_t)a4
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_24808D7B4;
  v7[3] = &unk_278EFA410;
  v8 = v5;
  v9 = a4;
  v6 = v5;
  sub_24808D558(v7);
}

+ (id)currentContextSet
{
  v5 = objc_msgSend_weakObjectsHashTable(MEMORY[0x277CCAA50], a2, v2, v3, v4);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_24808D868;
  v8[3] = &unk_278EFA438;
  v6 = v5;
  v9 = v6;
  sub_24808D558(v8);

  return v6;
}

+ (void)enterContextSet:(id)a3
{
  v3 = a3;
  v11 = sub_24808D8D0(0, v4, v5, v6, v7);
  objc_msgSend_addObject_(v11, v8, v3, v9, v10);
}

+ (void)leaveContextSet:(id)a3
{
  v3 = a3;
  v11 = sub_24808D8D0(1, v4, v5, v6, v7);
  objc_msgSend_removeObject_(v11, v8, v3, v9, v10);
}

- (XRCapabilityContext)init
{
  v8.receiver = self;
  v8.super_class = XRCapabilityContext;
  v2 = [(XRCapabilityContext *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    capabilities = v2->_capabilities;
    v2->_capabilities = v3;

    v5 = objc_opt_new();
    unimplementedResponses = v2->_unimplementedResponses;
    v2->_unimplementedResponses = v5;

    pthread_rwlock_init(&v2->_lock, 0);
  }

  return v2;
}

- (void)dealloc
{
  pthread_rwlock_destroy(&self->_lock);
  v3.receiver = self;
  v3.super_class = XRCapabilityContext;
  [(XRCapabilityContext *)&v3 dealloc];
}

- (void)announceUsedCapability:(id)a3 version:(unint64_t)a4
{
  v39 = a3;
  pthread_rwlock_rdlock(&self->_lock);
  v9 = objc_msgSend_objectForKey_(self->_capabilities, v6, v39, v7, v8);
  v13 = v9;
  if (!v9)
  {
    pthread_rwlock_unlock(&self->_lock);
    goto LABEL_5;
  }

  v14 = objc_msgSend_containsIndex_(v9, v10, a4, v11, v12);
  pthread_rwlock_unlock(&self->_lock);
  if ((v14 & 1) == 0)
  {
LABEL_5:
    pthread_rwlock_wrlock(&self->_lock);
    v18 = objc_msgSend_objectForKey_(self->_capabilities, v15, v39, v16, v17);

    if (v18)
    {
      objc_msgSend_addIndex_(v18, v19, a4, v20, v21);
      v13 = v18;
    }

    else
    {
      v22 = objc_alloc(MEMORY[0x277CCAB58]);
      v13 = objc_msgSend_initWithIndex_(v22, v23, a4, v24, v25);
      objc_msgSend_setObject_forKey_(self->_capabilities, v26, v13, v39, v27);
      v32 = objc_msgSend_applicationCapabilities(XRCapabilityRegistry, v28, v29, v30, v31);
      v36 = objc_msgSend_unimplementedRecoveryForCapability_(v32, v33, v39, v34, v35);
      objc_msgSend_setObject_forKeyedSubscript_(self->_unimplementedResponses, v37, v36, v39, v38);
    }

    pthread_rwlock_unlock(&self->_lock);
  }
}

- (void)enumerateRequiredCapabilities:(id)a3
{
  v4 = a3;
  pthread_rwlock_rdlock(&self->_lock);
  capabilities = self->_capabilities;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_24808DCA4;
  v10[3] = &unk_278EFA460;
  v10[4] = self;
  v11 = v4;
  v6 = v4;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(capabilities, v7, v10, v8, v9);
  pthread_rwlock_unlock(&self->_lock);
}

- (void)addToCurrentContextSet
{
  v9 = sub_24808DDCC(0, a2, v2, v3, v4);
  objc_msgSend_addObject_(v9, v6, self, v7, v8);
}

- (void)removeFromCurrentContextSet
{
  v9 = sub_24808DDCC(1, a2, v2, v3, v4);
  objc_msgSend_removeObject_(v9, v6, self, v7, v8);
}

@end