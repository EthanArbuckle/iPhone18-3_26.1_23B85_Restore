@interface IMDoubleLinkedList
- (BOOL)containsObject:(id)object;
- (IMDoubleLinkedList)init;
- (id)allObjects;
- (id)popObject;
- (void)appendLinkedListNode:(id)node;
- (void)appendObject:(id)object;
- (void)dealloc;
- (void)pushLinkedListNode:(id)node;
- (void)pushObject:(id)object;
- (void)removeAllObjects;
- (void)removeLinkedListNode:(id)node;
@end

@implementation IMDoubleLinkedList

- (IMDoubleLinkedList)init
{
  v3.receiver = self;
  v3.super_class = IMDoubleLinkedList;
  result = [(IMDoubleLinkedList *)&v3 init];
  if (result)
  {
    result->_count = 0;
  }

  return result;
}

- (void)dealloc
{
  objc_msgSend_removeAllObjects(self, a2, v2);
  v4.receiver = self;
  v4.super_class = IMDoubleLinkedList;
  [(IMDoubleLinkedList *)&v4 dealloc];
}

- (void)appendObject:(id)object
{
  objectCopy = object;
  v5 = [IMDoubleLinkedListNode alloc];
  v8 = objc_msgSend_initWithObject_(v5, v6, objectCopy);

  objc_msgSend_appendLinkedListNode_(self, v7, v8);
}

- (void)pushObject:(id)object
{
  objectCopy = object;
  v5 = [IMDoubleLinkedListNode alloc];
  v8 = objc_msgSend_initWithObject_(v5, v6, objectCopy);

  objc_msgSend_pushLinkedListNode_(self, v7, v8);
}

- (id)popObject
{
  last = self->_last;
  if (last)
  {
    v5 = objc_msgSend_object(last, a2, v2);
  }

  else
  {
    v5 = 0;
  }

  objc_msgSend_removeLinkedListNode_(self, a2, self->_last);

  return v5;
}

- (void)appendLinkedListNode:(id)node
{
  nodeCopy = node;
  if (!nodeCopy)
  {
    v31[0] = "/Library/Caches/com.apple.xbs/Sources/IMFoundation/IMFoundation/IMDoubleLinkedList.m";
    v31[1] = 0;
    v31[2] = "[IMDoubleLinkedList appendLinkedListNode:]";
    v31[3] = "[IMDoubleLinkedList appendLinkedListNode:]";
    v32 = 82;
    v7 = MEMORY[0x1E696AEC0];
    v8 = IMFileLocationTrimFileName(v31);
    v9 = v32;
    v11 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v10, &stru_1F09D3C40);
    v13 = objc_msgSend_stringWithFormat_(v7, v12, @"Unexpected nil '%@' in %s at %s:%d. %@", @"node", "[IMDoubleLinkedList appendLinkedListNode:]", v8, v9, v11);

    v14 = IMGetAssertionFailureHandler();
    if (v14)
    {
      v14(v13);
    }

    else
    {
      v17 = objc_msgSend_warning(IMRGLog, v15, v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1959D4E4C(v13, v17, v18, v19, v20, v21, v22, v23);
      }
    }
  }

  p_last = &self->_last;
  last = self->_last;
  if (last)
  {
    objc_msgSend_setNext_(last, v5, nodeCopy);
    objc_msgSend_setPrev_(nodeCopy, v26, *p_last);
    p_first = &self->_last;
  }

  else
  {
    objc_storeStrong(&self->_last, node);
    first = self->_first;
    if (first)
    {
      objc_msgSend_setNext_(first, v28, *p_last);
      objc_msgSend_setPrev_(*p_last, v30, self->_first);
      goto LABEL_13;
    }

    p_first = &self->_first;
  }

  objc_storeStrong(p_first, node);
LABEL_13:
  ++self->_count;
}

- (void)pushLinkedListNode:(id)node
{
  nodeCopy = node;
  if (!nodeCopy)
  {
    v31[0] = "/Library/Caches/com.apple.xbs/Sources/IMFoundation/IMFoundation/IMDoubleLinkedList.m";
    v31[1] = 0;
    v31[2] = "[IMDoubleLinkedList pushLinkedListNode:]";
    v31[3] = "[IMDoubleLinkedList pushLinkedListNode:]";
    v32 = 102;
    v7 = MEMORY[0x1E696AEC0];
    v8 = IMFileLocationTrimFileName(v31);
    v9 = v32;
    v11 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v10, &stru_1F09D3C40);
    v13 = objc_msgSend_stringWithFormat_(v7, v12, @"Unexpected nil '%@' in %s at %s:%d. %@", @"node", "[IMDoubleLinkedList pushLinkedListNode:]", v8, v9, v11);

    v14 = IMGetAssertionFailureHandler();
    if (v14)
    {
      v14(v13);
    }

    else
    {
      v17 = objc_msgSend_warning(IMRGLog, v15, v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1959D4E4C(v13, v17, v18, v19, v20, v21, v22, v23);
      }
    }
  }

  p_first = &self->_first;
  first = self->_first;
  if (first)
  {
    objc_msgSend_setPrev_(first, v5, nodeCopy);
    objc_msgSend_setNext_(nodeCopy, v26, *p_first);
    p_last = &self->_first;
  }

  else
  {
    objc_storeStrong(&self->_first, node);
    last = self->_last;
    if (last)
    {
      objc_msgSend_setPrev_(last, v28, *p_first);
      objc_msgSend_setNext_(*p_first, v30, self->_last);
      goto LABEL_13;
    }

    p_last = &self->_last;
  }

  objc_storeStrong(p_last, node);
LABEL_13:
  ++self->_count;
}

- (void)removeLinkedListNode:(id)node
{
  nodeCopy = node;
  if (nodeCopy)
  {
    first = self->_first;
    if (first == nodeCopy)
    {
      v8 = objc_msgSend_next(first, v4, v5);
      v9 = self->_first;
      self->_first = v8;
    }

    last = self->_last;
    if (last == nodeCopy)
    {
      v11 = objc_msgSend_prev(last, v4, v5);
      v12 = self->_last;
      self->_last = v11;
    }

    objc_msgSend_removeFromList(nodeCopy, v4, v5);
    objc_msgSend_setObject_(nodeCopy, v13, 0);
    --self->_count;
  }

  else
  {
    v31[0] = "/Library/Caches/com.apple.xbs/Sources/IMFoundation/IMFoundation/IMDoubleLinkedList.m";
    v31[1] = 0;
    v31[2] = "[IMDoubleLinkedList removeLinkedListNode:]";
    v31[3] = "[IMDoubleLinkedList removeLinkedListNode:]";
    v32 = 122;
    v14 = MEMORY[0x1E696AEC0];
    v15 = IMFileLocationTrimFileName(v31);
    v16 = v32;
    v18 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v17, &stru_1F09D3C40);
    v20 = objc_msgSend_stringWithFormat_(v14, v19, @"Unexpected nil '%@' in %s at %s:%d. %@", @"node", "[IMDoubleLinkedList removeLinkedListNode:]", v15, v16, v18);

    v21 = IMGetAssertionFailureHandler();
    if (v21)
    {
      v21(v20);
    }

    else
    {
      v24 = objc_msgSend_warning(IMRGLog, v22, v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_1959D4E4C(v20, v24, v25, v26, v27, v28, v29, v30);
      }
    }
  }
}

- (void)removeAllObjects
{
  first = self->_first;
  if (first)
  {
    v4 = first;
    do
    {
      v5 = v4;
      v4 = objc_msgSend_next(v5, v6, v7);

      objc_msgSend_orphan(v5, v8, v9);
    }

    while (v4);
    v10 = self->_first;
    self->_first = 0;

    last = self->_last;
    self->_last = 0;

    self->_count = 0;
  }
}

- (id)allObjects
{
  if (self->_count)
  {
    v3 = objc_alloc(MEMORY[0x1E695DF70]);
    v5 = objc_msgSend_initWithCapacity_(v3, v4, self->_count);
    v6 = self->_first;
    if (v6)
    {
      v9 = v6;
      do
      {
        v10 = objc_msgSend_object(v9, v7, v8);
        objc_msgSend_addObject_(v5, v11, v10);

        v14 = objc_msgSend_next(v9, v12, v13);

        v9 = v14;
      }

      while (v14);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)containsObject:(id)object
{
  objectCopy = object;
  v7 = self->_first;
  if (v7)
  {
    while (1)
    {
      v9 = objc_msgSend_object(v7, v5, v6);
      if (v9 == objectCopy || objc_msgSend_isEqual_(objectCopy, v8, v9))
      {
        break;
      }

      v12 = objc_msgSend_next(v7, v10, v11);

      v7 = v12;
      if (!v12)
      {
        goto LABEL_7;
      }
    }

    LOBYTE(v7) = 1;
  }

LABEL_7:

  return v7;
}

@end