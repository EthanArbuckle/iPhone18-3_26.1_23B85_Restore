@interface IMDispatchQueue
+ (id)serialQueueWithDispatchPriority:(int64_t)priority;
- (BOOL)containsOutstandingBlockForKey:(id)key;
- (id)_initWithDispatchAttr:(id)attr dispatchPriority:(int64_t)priority;
- (id)allKeysOfOutstandingBlocks;
- (int64_t)queuePriorityOfOutstandingBlockForKey:(id)key;
- (void)addBlock:(id)block withQueuePriority:(int64_t)priority forKey:(id)key;
- (void)dealloc;
- (void)removeAllOutstandingBlocks;
- (void)removeOutstandingBlockForKey:(id)key;
- (void)setQueuePriority:(int64_t)priority ofOutstandingBlockForKey:(id)key;
- (void)setSuspended:(BOOL)suspended;
@end

@implementation IMDispatchQueue

- (void)dealloc
{
  objc_msgSend_setSuspended_(self, a2, 0);
  v3.receiver = self;
  v3.super_class = IMDispatchQueue;
  [(IMDispatchQueue *)&v3 dealloc];
}

+ (id)serialQueueWithDispatchPriority:(int64_t)priority
{
  v4 = [IMDispatchQueue alloc];
  v6 = objc_msgSend__initWithDispatchAttr_dispatchPriority_(v4, v5, 0, priority);

  return v6;
}

- (id)_initWithDispatchAttr:(id)attr dispatchPriority:(int64_t)priority
{
  attrCopy = attr;
  v19.receiver = self;
  v19.super_class = IMDispatchQueue;
  v7 = [(IMDispatchQueue *)&v19 init];
  if (v7)
  {
    callBacks.version = 0;
    *&callBacks.retain = *(MEMORY[0x277CBF150] + 8);
    callBacks.copyDescription = *(MEMORY[0x277CBF150] + 24);
    callBacks.compare = _IMDispatchQueueBlockCompare;
    v8 = CFBinaryHeapCreate(0, 0, &callBacks, 0);
    objc_msgSend_setHeap_(v7, v9, v8);
    CFRelease(v8);
    v10 = dispatch_queue_create(0, attrCopy);
    v11 = dispatch_get_global_queue(priority, 0);
    dispatch_set_target_queue(v10, v11);

    objc_msgSend_setDispatchQueue_(v7, v12, v10);
    v13 = dispatch_queue_create(0, 0);
    objc_msgSend_setLockQueue_(v7, v14, v13);
    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    objc_msgSend_setDispatchQueueBlocks_(v7, v16, v15);
  }

  return v7;
}

- (void)addBlock:(id)block withQueuePriority:(int64_t)priority forKey:(id)key
{
  blockCopy = block;
  keyCopy = key;
  v12 = objc_msgSend_dispatchQueue(self, v10, v11);
  v15 = objc_msgSend_lockQueue(self, v13, v14);
  v18 = objc_msgSend_heap(self, v16, v17);
  v21 = objc_msgSend_dispatchQueueBlocks(self, v19, v20);
  v23 = v21;
  if (!v18 || !v21)
  {
    objc_msgSend_raise_format_(MEMORY[0x277CBEAD8], v22, *MEMORY[0x277CBE658], @"Tried to add block for key %@ to a cancelled IMDispatchQueue.", keyCopy);
  }

  if (priority == 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_msgSend_raise_format_(MEMORY[0x277CBEAD8], v22, *MEMORY[0x277CBE660], @"Tried to add block for key %@ to IMDispatchQueue with priority NSNotFound, which is reserved.", keyCopy);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2547FC9D4;
  block[3] = &unk_279788F80;
  v40 = blockCopy;
  priorityCopy = priority;
  v36 = keyCopy;
  selfCopy = self;
  v24 = v23;
  v38 = v24;
  v25 = v18;
  v39 = v25;
  v26 = keyCopy;
  v27 = blockCopy;
  dispatch_async(v15, block);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_2547FCAA8;
  v31[3] = &unk_279788FD0;
  v32 = v15;
  v33 = v25;
  v34 = v24;
  v28 = v24;
  v29 = v25;
  v30 = v15;
  dispatch_async(v12, v31);
}

- (void)setQueuePriority:(int64_t)priority ofOutstandingBlockForKey:(id)key
{
  keyCopy = key;
  v9 = objc_msgSend_lockQueue(self, v7, v8);
  v12 = objc_msgSend_dispatchQueueBlocks(self, v10, v11);
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_2547FCBD0;
  v25 = sub_2547FCBFC;
  v26 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2547FCE20;
  block[3] = &unk_279788FA8;
  v13 = v12;
  v18 = v13;
  v14 = keyCopy;
  v19 = v14;
  v20 = &v21;
  dispatch_sync(v9, block);
  objc_msgSend_removeOutstandingBlockForKey_(self, v15, v14);
  objc_msgSend_addBlock_withQueuePriority_forKey_(self, v16, v22[5], priority, v14);

  _Block_object_dispose(&v21, 8);
}

- (int64_t)queuePriorityOfOutstandingBlockForKey:(id)key
{
  keyCopy = key;
  v7 = objc_msgSend_lockQueue(self, v5, v6);
  v10 = objc_msgSend_dispatchQueueBlocks(self, v8, v9);
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0x7FFFFFFFFFFFFFFFLL;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2547FCFA8;
  block[3] = &unk_279788FA8;
  v16 = v10;
  v17 = keyCopy;
  v18 = &v19;
  v11 = keyCopy;
  v12 = v10;
  dispatch_sync(v7, block);
  v13 = v20[3];

  _Block_object_dispose(&v19, 8);
  return v13;
}

- (id)allKeysOfOutstandingBlocks
{
  v4 = objc_msgSend_lockQueue(self, a2, v2);
  v7 = objc_msgSend_dispatchQueueBlocks(self, v5, v6);
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_2547FD134;
  v18 = sub_2547FD144;
  v19 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2547FD14C;
  v11[3] = &unk_279788FF8;
  v12 = v7;
  v13 = &v14;
  v8 = v7;
  dispatch_sync(v4, v11);
  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

- (BOOL)containsOutstandingBlockForKey:(id)key
{
  keyCopy = key;
  v7 = objc_msgSend_lockQueue(self, v5, v6);
  v10 = objc_msgSend_dispatchQueueBlocks(self, v8, v9);
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2547FD2BC;
  block[3] = &unk_279788FA8;
  v16 = v10;
  v17 = keyCopy;
  v18 = &v19;
  v11 = keyCopy;
  v12 = v10;
  dispatch_sync(v7, block);
  v13 = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  return v13;
}

- (void)removeOutstandingBlockForKey:(id)key
{
  keyCopy = key;
  v7 = objc_msgSend_lockQueue(self, v5, v6);
  v10 = objc_msgSend_dispatchQueueBlocks(self, v8, v9);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2547FD3E8;
  v13[3] = &unk_279789020;
  v14 = v10;
  v15 = keyCopy;
  v11 = keyCopy;
  v12 = v10;
  dispatch_async(v7, v13);
}

- (void)removeAllOutstandingBlocks
{
  v4 = objc_msgSend_lockQueue(self, a2, v2);
  v7 = objc_msgSend_dispatchQueueBlocks(self, v5, v6);
  v10 = objc_msgSend_heap(self, v8, v9);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2547FD520;
  v13[3] = &unk_279789020;
  v14 = v10;
  v15 = v7;
  v11 = v7;
  v12 = v10;
  dispatch_async(v4, v13);
}

- (void)setSuspended:(BOOL)suspended
{
  if (self->_suspended != suspended)
  {
    self->_suspended = suspended;
    dispatchQueue = self->_dispatchQueue;
    if (suspended)
    {
      dispatch_suspend(dispatchQueue);
    }

    else
    {
      dispatch_resume(dispatchQueue);
    }
  }
}

@end