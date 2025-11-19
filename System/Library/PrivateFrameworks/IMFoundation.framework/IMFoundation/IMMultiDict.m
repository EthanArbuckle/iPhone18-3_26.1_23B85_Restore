@interface IMMultiDict
- (IMMultiDict)init;
- (NSArray)allKeys;
- (id)dequeueObjectForKey:(id)a3;
- (id)description;
- (id)headObjectForKey:(id)a3;
- (id)objectsForKey:(id)a3;
- (id)peekObjectForKey:(id)a3;
- (id)popObjectForKey:(id)a3;
- (unint64_t)countForKey:(id)a3;
- (void)enumerateKeysAndObjectsUsingBlock:(id)a3;
- (void)pushObject:(id)a3 forKey:(id)a4;
- (void)removeAllObjects;
- (void)removeObject:(id)a3 forKey:(id)a4;
- (void)removeObjectsForKey:(id)a3;
@end

@implementation IMMultiDict

- (IMMultiDict)init
{
  v6.receiver = self;
  v6.super_class = IMMultiDict;
  v2 = [(IMMultiDict *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    dictionary = v2->_dictionary;
    v2->_dictionary = v3;
  }

  return v2;
}

- (id)description
{
  v3 = objc_msgSend_dictionary(self, a2, v2);
  v6 = objc_msgSend_description(v3, v4, v5);

  return v6;
}

- (void)pushObject:(id)a3 forKey:(id)a4
{
  v15 = a3;
  v6 = a4;
  ++self->_count;
  v9 = objc_msgSend_dictionary(self, v7, v8);
  v13 = objc_msgSend_objectForKey_(v9, v10, v6);
  if (!v13)
  {
    v13 = objc_msgSend_array(MEMORY[0x1E695DF70], v11, v12);
    objc_msgSend_setObject_forKey_(v9, v14, v13, v6);
  }

  objc_msgSend_addObject_(v13, v11, v15);
}

- (id)peekObjectForKey:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_dictionary(self, v5, v6);
  v9 = objc_msgSend_objectForKey_(v7, v8, v4);

  v12 = objc_msgSend_lastObject(v9, v10, v11);

  return v12;
}

- (id)popObjectForKey:(id)a3
{
  count = self->_count;
  if (count)
  {
    self->_count = count - 1;
  }

  v5 = a3;
  v8 = objc_msgSend_dictionary(self, v6, v7);
  v10 = objc_msgSend_objectForKey_(v8, v9, v5);

  v15 = objc_msgSend_lastObject(v10, v11, v12);
  if (v15)
  {
    objc_msgSend_removeLastObject(v10, v13, v14);
  }

  return v15;
}

- (id)headObjectForKey:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_dictionary(self, v5, v6);
  v9 = objc_msgSend_objectForKey_(v7, v8, v4);

  if (objc_msgSend_count(v9, v10, v11))
  {
    v13 = objc_msgSend_objectAtIndex_(v9, v12, 0);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)dequeueObjectForKey:(id)a3
{
  --self->_count;
  v4 = a3;
  v7 = objc_msgSend_dictionary(self, v5, v6);
  v9 = objc_msgSend_objectForKey_(v7, v8, v4);

  if (objc_msgSend_count(v9, v10, v11))
  {
    v13 = objc_msgSend_objectAtIndex_(v9, v12, 0);
    objc_msgSend_removeObjectAtIndex_(v9, v14, 0);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)objectsForKey:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_dictionary(self, v5, v6);
  v9 = objc_msgSend_objectForKey_(v7, v8, v4);

  return v9;
}

- (void)removeObjectsForKey:(id)a3
{
  v4 = a3;
  v12 = objc_msgSend_dictionary(self, v5, v6);
  v8 = objc_msgSend_objectForKey_(v12, v7, v4);
  self->_count -= objc_msgSend_count(v8, v9, v10);

  objc_msgSend_removeObjectForKey_(v12, v11, v4);
}

- (void)removeAllObjects
{
  self->_count = 0;
  v5 = objc_msgSend_dictionary(self, a2, v2);
  objc_msgSend_removeAllObjects(v5, v3, v4);
}

- (void)removeObject:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = objc_msgSend_dictionary(self, v8, v9);
  v13 = objc_msgSend_objectForKey_(v10, v11, v6);

  objc_msgSend_removeObject_(v13, v12, v7);
}

- (unint64_t)countForKey:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_dictionary(self, v5, v6);
  v9 = objc_msgSend_objectForKey_(v7, v8, v4);

  v12 = objc_msgSend_count(v9, v10, v11);
  return v12;
}

- (void)enumerateKeysAndObjectsUsingBlock:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_dictionary(self, v5, v6);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1959D3210;
  v10[3] = &unk_1E7439D80;
  v11 = v4;
  v8 = v4;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v7, v9, v10);
}

- (NSArray)allKeys
{
  v4 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, v2);
  v7 = objc_msgSend_dictionary(self, v5, v6);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1959D33F4;
  v11[3] = &unk_1E7439DA8;
  v8 = v4;
  v12 = v8;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v7, v9, v11);

  return v8;
}

@end