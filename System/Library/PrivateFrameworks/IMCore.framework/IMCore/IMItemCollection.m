@interface IMItemCollection
- (IMItemCollection)initWithChatItems:(id)a3 range:(_NSRange)a4;
- (id)_firstObject;
- (id)_initWithChatItems:(id)a3 extraItems:(id)a4 reversed:(BOOL)a5;
- (id)_lastObject;
- (id)firstObject;
- (id)lastObject;
- (id)reversed;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)addItem:(id)a3;
@end

@implementation IMItemCollection

- (IMItemCollection)initWithChatItems:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v13.receiver = self;
  v13.super_class = IMItemCollection;
  v9 = [(IMItemCollection *)&v13 init];
  if (v9)
  {
    v10 = objc_msgSend_subarrayWithRange_(v7, v8, location, length);
    chatItems = v9->_chatItems;
    v9->_chatItems = v10;
  }

  return v9;
}

- (id)_initWithChatItems:(id)a3 extraItems:(id)a4 reversed:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v18.receiver = self;
  v18.super_class = IMItemCollection;
  v11 = [(IMItemCollection *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_chatItems, a3);
    v15 = objc_msgSend_mutableCopy(v10, v13, v14);
    extraItems = v12->_extraItems;
    v12->_extraItems = v15;

    v12->_isReversed = a5;
  }

  return v12;
}

- (id)_firstObject
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = self->_chatItems;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v19, v23, 16);
  if (v5)
  {
    v8 = v5;
    v9 = *v20;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v20 != v9)
      {
        objc_enumerationMutation(v3);
      }

      v11 = objc_msgSend__parentItem(*(*(&v19 + 1) + 8 * v10), v6, v7, v19);
      if (v11)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v19, v23, 16);
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    v3 = objc_msgSend_extraItems(self, v12, v13);
    v11 = objc_msgSend_firstObject(v3, v14, v15);
  }

  v16 = v11;

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)firstObject
{
  v4 = objc_msgSend_reversed(self, a2, v2);

  if (v4)
  {
    objc_msgSend__lastObject(self, v5, v6);
  }

  else
  {
    objc_msgSend__firstObject(self, v5, v6);
  }
  v7 = ;

  return v7;
}

- (id)reversed
{
  v3 = [IMItemCollection alloc];
  v5 = objc_msgSend__initWithChatItems_extraItems_reversed_(v3, v4, self->_chatItems, self->_extraItems, !self->_isReversed);

  return v5;
}

- (void)addItem:(id)a3
{
  v10 = a3;
  if (!self->_extraItems)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    extraItems = self->_extraItems;
    self->_extraItems = v6;
  }

  v8 = objc_msgSend_extraItems(self, v4, v5);
  objc_msgSend_addObject_(v8, v9, v10);
}

- (id)_lastObject
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_extraItems(self, a2, v2);
  v7 = objc_msgSend_lastObject(v4, v5, v6);

  if (!v7)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = objc_msgSend_reverseObjectEnumerator(self->_chatItems, v8, v9, 0);
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v22, v26, 16);
    if (v12)
    {
      v15 = v12;
      v16 = *v23;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v10);
          }

          v18 = objc_msgSend__parentItem(*(*(&v22 + 1) + 8 * i), v13, v14);
          if (v18)
          {
            v7 = v18;
            goto LABEL_12;
          }
        }

        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v22, v26, 16);
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v7 = 0;
LABEL_12:
  }

  v19 = v7;

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)lastObject
{
  if (objc_msgSend_isReversed(self, a2, v2))
  {
    objc_msgSend__firstObject(self, v4, v5);
  }

  else
  {
    objc_msgSend__lastObject(self, v4, v5);
  }
  v6 = ;

  return v6;
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  if (a3->var0)
  {
    v9 = a3->var3[1];
  }

  else
  {
    v10 = objc_msgSend_extraItems(self, a2, a3, a4, a5);
    v13 = objc_msgSend_copy(v10, v11, v12);
    v14 = v13;
    v15 = MEMORY[0x1E695E0F0];
    if (v13)
    {
      v15 = v13;
    }

    v16 = v15;

    a3->var2 = self;
    a3->var3[0] = objc_msgSend_count(self->_chatItems, v17, v18);
    v9 = v16;
    a3->var3[1] = v9;
    a3->var3[2] = objc_msgSend_count(v9, v19, v20);
    a3->var3[3] = 0;
    a3->var3[4] = objc_msgSend_isReversed(self, v21, v22);
    a3->var0 = 1;
  }

  v23 = a3->var3[3];
  v24 = a3->var3[2] + a3->var3[0];
  if (v23 >= v24)
  {
    CFRelease(a3->var3[1]);
    v37 = 0;
    goto LABEL_20;
  }

  v25 = a3->var3[4];
  do
  {
    a3->var3[3] = v23 + 1;
    if (v25)
    {
      v26 = a3->var3[2];
      if (v23 >= v26)
      {
        v23 = a3->var3[0] + ~v23 + v26;
LABEL_15:
        v31 = objc_msgSend_objectAtIndexedSubscript_(self->_chatItems, v8, v23);
        *a4 = objc_msgSend__parentItem(v31, v33, v34);
        v32 = objc_msgSend__parentItem(v31, v35, v36);

        goto LABEL_16;
      }

      v27 = v26 + ~v23;
      objc_msgSend_getObjects_range_(v9, v8, a4, v27, 1);
    }

    else
    {
      v29 = a3->var3[0];
      v27 = v23 - v29;
      if (v23 < v29)
      {
        goto LABEL_15;
      }

      objc_msgSend_getObjects_range_(v9, v8, a4, v27, 1);
    }

    *a4 = objc_msgSend_objectAtIndexedSubscript_(v9, v28, v27);
    v31 = objc_msgSend_objectAtIndexedSubscript_(v9, v30, v27);
    v32 = v31;
LABEL_16:

    if (v32)
    {
      break;
    }

    v23 = a3->var3[3];
  }

  while (v23 < v24);
  v37 = v32 != 0;
  a3->var1 = a4;
LABEL_20:

  return v37;
}

@end