@interface IMMultiQueue
- (BOOL)_addBlock:(id)a3 withGUID:(id)a4 forKey:(id)a5 description:(id)a6;
- (BOOL)addBlock:(id)a3 forKey:(id)a4 description:(id)a5;
- (BOOL)addBlock:(id)a3 withTimeout:(double)a4 forKey:(id)a5 description:(id)a6;
- (IMMultiQueue)initWithQueue:(id)a3;
- (id)loggableOverview;
- (id)loggableOverviewForKey:(id)a3;
- (void)_popEnqueuedBlockWithGUID:(id)a3 key:(id)a4;
@end

@implementation IMMultiQueue

- (IMMultiQueue)initWithQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IMMultiQueue;
  v6 = [(IMMultiQueue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
  }

  return v7;
}

- (void)_popEnqueuedBlockWithGUID:(id)a3 key:(id)a4
{
  v29 = a4;
  queueMap = self->_queueMap;
  v7 = a3;
  v9 = objc_msgSend_objectForKey_(queueMap, v8, v29);
  v12 = objc_msgSend_lastObject(v9, v10, v11);
  v15 = objc_msgSend_GUID(v12, v13, v14);

  if (v15 == v7)
  {
    objc_msgSend_removeLastObject(v9, v16, v17);
    if (objc_msgSend_count(v9, v18, v19))
    {
      v22 = objc_msgSend_lastObject(v9, v20, v21);
      v25 = objc_msgSend_block(v22, v23, v24);
      v25[2]();
    }

    else
    {
      objc_msgSend_removeObjectForKey_(self->_queueMap, v20, v29);
    }

    if (!objc_msgSend_count(self->_queueMap, v26, v27))
    {
      v28 = self->_queueMap;
      self->_queueMap = 0;
    }
  }
}

- (BOOL)addBlock:(id)a3 withTimeout:(double)a4 forKey:(id)a5 description:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  dispatch_assert_queue_V2(self->_queue);
  v15 = 0;
  if (v10 && v11)
  {
    v16 = objc_msgSend_copyStringGUID(MEMORY[0x1E696AEC0], v13, v14);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1959CD3B4;
    block[3] = &unk_1E7439C40;
    block[4] = self;
    v23 = v16;
    v17 = v11;
    v24 = v17;
    v26 = a4;
    v25 = v10;
    v18 = v16;
    v19 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, block);
    v15 = objc_msgSend__addBlock_withGUID_forKey_description_(self, v20, v19, v18, v17, v12);
  }

  return v15;
}

- (BOOL)addBlock:(id)a3 forKey:(id)a4 description:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(self->_queue);
  v13 = 0;
  if (v8 && v9)
  {
    v14 = objc_msgSend_copyStringGUID(MEMORY[0x1E696AEC0], v11, v12);
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = sub_1959CD764;
    v23 = &unk_1E7439C68;
    v24 = self;
    v25 = v14;
    v15 = v9;
    v26 = v15;
    v27 = v8;
    v16 = v14;
    v17 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, &v20);
    v13 = objc_msgSend__addBlock_withGUID_forKey_description_(self, v18, v17, v16, v15, v10, v20, v21, v22, v23, v24);
  }

  return v13;
}

- (BOOL)_addBlock:(id)a3 withGUID:(id)a4 forKey:(id)a5 description:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17 = objc_msgSend_objectForKey_(self->_queueMap, v14, v12);
  if (!v17)
  {
    if (!self->_queueMap)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      queueMap = self->_queueMap;
      self->_queueMap = Mutable;
    }

    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    objc_msgSend_setObject_forKey_(self->_queueMap, v20, v17, v12);
  }

  v23 = objc_msgSend_count(v17, v15, v16);
  if (v23)
  {
    v24 = objc_msgSend_copy(v10, v21, v22);

    v25 = [IMMultiQueueItem alloc];
    v26 = _Block_copy(v24);
    v28 = objc_msgSend_initWithBlock_GUID_description_(v25, v27, v26, v11, v13);

    objc_msgSend_insertObject_atIndex_(v17, v29, v28, 0);
    v10 = v24;
  }

  else
  {
    v30 = [IMMultiQueueItem alloc];
    v28 = objc_msgSend_initWithBlock_GUID_description_(v30, v31, 0, v11, v13);
    objc_msgSend_insertObject_atIndex_(v17, v32, v28, 0);
    v10[2](v10);
  }

  return v23 != 0;
}

- (id)loggableOverview
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DF70];
  v5 = objc_msgSend_count(self->_queueMap, a2, v2);
  v7 = objc_msgSend_arrayWithCapacity_(v4, v6, v5);
  v8 = objc_autoreleasePoolPush();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = self->_queueMap;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v20, v24, 16);
  if (v11)
  {
    v13 = v11;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v16 = objc_msgSend_loggableOverviewForKey_(self, v12, *(*(&v20 + 1) + 8 * i), v20);
        objc_msgSend_addObject_(v7, v17, v16);
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v20, v24, 16);
    }

    while (v13);
  }

  objc_autoreleasePoolPop(v8);
  v18 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)loggableOverviewForKey:(id)a3
{
  queueMap = self->_queueMap;
  v4 = a3;
  v6 = objc_msgSend_objectForKey_(queueMap, v5, v4);
  v7 = objc_alloc(MEMORY[0x1E696AEC0]);
  v10 = objc_msgSend_count(v6, v8, v9);
  v13 = objc_msgSend_lastObject(v6, v11, v12);
  v16 = objc_msgSend_describer(v13, v14, v15);
  v18 = objc_msgSend_initWithFormat_(v7, v17, @"<%@  ->  count: %ld,  current: %@>", v4, v10, v16);

  return v18;
}

@end