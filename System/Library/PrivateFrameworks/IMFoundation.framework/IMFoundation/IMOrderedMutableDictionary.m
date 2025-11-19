@interface IMOrderedMutableDictionary
- (BOOL)containsKey:(id)a3;
- (BOOL)containsOrderedObject:(id)a3;
- (IMOrderedMutableDictionary)init;
- (id)orderedObjectForKey:(id)a3;
- (id)orderedObjects;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)removeOrderedObjectForKey:(id)a3;
- (void)setOrderedObject:(id)a3 forKey:(id)a4;
@end

@implementation IMOrderedMutableDictionary

- (IMOrderedMutableDictionary)init
{
  v9.receiver = self;
  v9.super_class = IMOrderedMutableDictionary;
  v2 = [(IMOrderedMutableDictionary *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    dictionary = v2->_dictionary;
    v2->_dictionary = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    mutableOrderedSet = v2->_mutableOrderedSet;
    v2->_mutableOrderedSet = v5;

    orderedItems = v2->_orderedItems;
    v2->_orderedItems = 0;
  }

  return v2;
}

- (void)setOrderedObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v9 = v7;
  if (v6)
  {
    if (v7)
    {
      v10 = objc_msgSend_indexOfObject_(self->_mutableOrderedSet, v8, v7);
      mutableOrderedSet = self->_mutableOrderedSet;
      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        objc_msgSend_addObject_(self->_mutableOrderedSet, v11, v9);
      }

      else
      {
        v24 = objc_msgSend_indexSetWithIndex_(MEMORY[0x1E696AC90], v11, v10);
        v27 = objc_msgSend_count(self->_mutableOrderedSet, v25, v26);
        objc_msgSend_moveObjectsAtIndexes_toIndex_(mutableOrderedSet, v28, v24, v27 - 1);
      }

      objc_msgSend_setObject_forKey_(self->_dictionary, v13, v6, v9);
      orderedItems = self->_orderedItems;
      self->_orderedItems = 0;

      goto LABEL_19;
    }

    goto LABEL_13;
  }

  v42 = "/Library/Caches/com.apple.xbs/Sources/IMFoundation/IMFoundation/IMOrderedMutableDictionary.m";
  v43 = 0;
  v44 = "[IMOrderedMutableDictionary setOrderedObject:forKey:]";
  v45 = "[IMOrderedMutableDictionary setOrderedObject:forKey:]";
  v46 = 40;
  v14 = MEMORY[0x1E696AEC0];
  v15 = IMFileLocationTrimFileName(&v42);
  v16 = v46;
  v18 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v17, &stru_1F09D3C40);
  v20 = objc_msgSend_stringWithFormat_(v14, v19, @"Unexpected nil '%@' in %s at %s:%d. %@", @"object", "[IMOrderedMutableDictionary setOrderedObject:forKey:]", v15, v16, v18);

  v21 = IMGetAssertionFailureHandler();
  if (v21)
  {
    v21(v20);
  }

  else
  {
    v30 = objc_msgSend_warning(IMRGLog, v22, v23);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_1959D61F0();
    }
  }

  if (!v9)
  {
LABEL_13:
    v42 = "/Library/Caches/com.apple.xbs/Sources/IMFoundation/IMFoundation/IMOrderedMutableDictionary.m";
    v43 = 0;
    v44 = "[IMOrderedMutableDictionary setOrderedObject:forKey:]";
    v45 = "[IMOrderedMutableDictionary setOrderedObject:forKey:]";
    v46 = 41;
    v31 = MEMORY[0x1E696AEC0];
    v32 = IMFileLocationTrimFileName(&v42);
    v33 = v46;
    v35 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v34, &stru_1F09D3C40);
    v37 = objc_msgSend_stringWithFormat_(v31, v36, @"Unexpected nil '%@' in %s at %s:%d. %@", @"key", "[IMOrderedMutableDictionary setOrderedObject:forKey:]", v32, v33, v35);

    v38 = IMGetAssertionFailureHandler();
    if (v38)
    {
      v38(v37);
    }

    else
    {
      v41 = objc_msgSend_warning(IMRGLog, v39, v40);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_1959D61F0();
      }
    }
  }

LABEL_19:
}

- (id)orderedObjectForKey:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v19[0] = "/Library/Caches/com.apple.xbs/Sources/IMFoundation/IMFoundation/IMOrderedMutableDictionary.m";
    v19[1] = 0;
    v19[2] = "[IMOrderedMutableDictionary orderedObjectForKey:]";
    v19[3] = "[IMOrderedMutableDictionary orderedObjectForKey:]";
    v20 = 56;
    v6 = MEMORY[0x1E696AEC0];
    v7 = IMFileLocationTrimFileName(v19);
    v8 = v20;
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v9, &stru_1F09D3C40);
    v12 = objc_msgSend_stringWithFormat_(v6, v11, @"Unexpected nil '%@' in %s at %s:%d. %@", @"key", "[IMOrderedMutableDictionary orderedObjectForKey:]", v7, v8, v10);

    v13 = IMGetAssertionFailureHandler();
    if (v13)
    {
      v13(v12);
    }

    else
    {
      v16 = objc_msgSend_warning(IMRGLog, v14, v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1959D61F0();
      }
    }
  }

  v17 = objc_msgSend_objectForKey_(self->_dictionary, v4, v5);

  return v17;
}

- (void)removeOrderedObjectForKey:(id)a3
{
  v5 = a3;
  if (v5)
  {
    objc_msgSend_removeObject_(self->_mutableOrderedSet, v4, v5);
    objc_msgSend_removeObjectForKey_(self->_dictionary, v6, v5);
    orderedItems = self->_orderedItems;
    self->_orderedItems = 0;
  }

  else
  {
    v19[0] = "/Library/Caches/com.apple.xbs/Sources/IMFoundation/IMFoundation/IMOrderedMutableDictionary.m";
    v19[1] = 0;
    v19[2] = "[IMOrderedMutableDictionary removeOrderedObjectForKey:]";
    v19[3] = "[IMOrderedMutableDictionary removeOrderedObjectForKey:]";
    v20 = 61;
    v8 = MEMORY[0x1E696AEC0];
    v9 = IMFileLocationTrimFileName(v19);
    v10 = v20;
    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v11, &stru_1F09D3C40);
    v14 = objc_msgSend_stringWithFormat_(v8, v13, @"Unexpected nil '%@' in %s at %s:%d. %@", @"key", "[IMOrderedMutableDictionary removeOrderedObjectForKey:]", v9, v10, v12);

    v15 = IMGetAssertionFailureHandler();
    if (v15)
    {
      v15(v14);
    }

    else
    {
      v18 = objc_msgSend_warning(IMRGLog, v16, v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1959D61F0();
      }
    }
  }
}

- (id)orderedObjects
{
  orderedItems = self->_orderedItems;
  if (!orderedItems)
  {
    v5 = objc_msgSend_array(self->_mutableOrderedSet, a2, v2);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1959C3AC0;
    v10[3] = &unk_1E74399B0;
    v10[4] = self;
    v7 = objc_msgSend___imArrayByApplyingBlock_(v5, v6, v10);
    v8 = self->_orderedItems;
    self->_orderedItems = v7;

    orderedItems = self->_orderedItems;
  }

  return orderedItems;
}

- (BOOL)containsOrderedObject:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v22[0] = "/Library/Caches/com.apple.xbs/Sources/IMFoundation/IMFoundation/IMOrderedMutableDictionary.m";
    v22[1] = 0;
    v22[2] = "[IMOrderedMutableDictionary containsOrderedObject:]";
    v22[3] = "[IMOrderedMutableDictionary containsOrderedObject:]";
    v23 = 79;
    v7 = MEMORY[0x1E696AEC0];
    v8 = IMFileLocationTrimFileName(v22);
    v9 = v23;
    v11 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v10, &stru_1F09D3C40);
    v13 = objc_msgSend_stringWithFormat_(v7, v12, @"Unexpected nil '%@' in %s at %s:%d. %@", @"anObject", "[IMOrderedMutableDictionary containsOrderedObject:]", v8, v9, v11);

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
        sub_1959D61F0();
      }
    }
  }

  v18 = objc_msgSend_allValues(self->_dictionary, v4, v5);
  v20 = objc_msgSend_containsObject_(v18, v19, v6);

  return v20;
}

- (BOOL)containsKey:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v19[0] = "/Library/Caches/com.apple.xbs/Sources/IMFoundation/IMFoundation/IMOrderedMutableDictionary.m";
    v19[1] = 0;
    v19[2] = "[IMOrderedMutableDictionary containsKey:]";
    v19[3] = "[IMOrderedMutableDictionary containsKey:]";
    v20 = 84;
    v6 = MEMORY[0x1E696AEC0];
    v7 = IMFileLocationTrimFileName(v19);
    v8 = v20;
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v9, &stru_1F09D3C40);
    v12 = objc_msgSend_stringWithFormat_(v6, v11, @"Unexpected nil '%@' in %s at %s:%d. %@", @"key", "[IMOrderedMutableDictionary containsKey:]", v7, v8, v10);

    v13 = IMGetAssertionFailureHandler();
    if (v13)
    {
      v13(v12);
    }

    else
    {
      v16 = objc_msgSend_warning(IMRGLog, v14, v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1959D61F0();
      }
    }
  }

  v17 = objc_msgSend_containsObject_(self->_mutableOrderedSet, v4, v5);

  return v17;
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v8 = objc_msgSend_orderedObjects(self, a2, a3);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, a3, a4, a5);

  return v10;
}

@end