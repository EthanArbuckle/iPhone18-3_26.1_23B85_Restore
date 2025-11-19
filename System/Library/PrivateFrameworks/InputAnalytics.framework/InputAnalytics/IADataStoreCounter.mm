@interface IADataStoreCounter
- (BOOL)decrement;
- (BOOL)destroy;
- (BOOL)persist;
@end

@implementation IADataStoreCounter

- (BOOL)persist
{
  v4 = objc_msgSend_datastoreHandle(self, a2, v2);
  if (!v4)
  {
    v7 = sub_1D4621008();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1D462DE58(self, v7, v18);
    }

    goto LABEL_8;
  }

  v21.receiver = self;
  v21.super_class = IADataStoreCounter;
  if (![(IADataStoreObject *)&v21 persist])
  {
    v7 = sub_1D4621008();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1D462DFA4(self, v7, v19);
    }

LABEL_8:
    v17 = 0;
    goto LABEL_9;
  }

  v7 = objc_msgSend_defaultsHandle(v4, v5, v6);
  v10 = objc_msgSend_count(self, v8, v9);
  v13 = objc_msgSend_name(self, v11, v12);
  v15 = objc_msgSend_stringByAppendingString_(v13, v14, @"_count");
  objc_msgSend_setInteger_forKey_(v7, v16, v10, v15);

  v17 = 1;
LABEL_9:

  return v17;
}

- (BOOL)destroy
{
  v4 = objc_msgSend_datastoreHandle(self, a2, v2);
  if (!v4)
  {
    v7 = sub_1D4621008();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1D462DE58(self, v7, v15);
    }

    goto LABEL_8;
  }

  v18.receiver = self;
  v18.super_class = IADataStoreCounter;
  if (![(IADataStoreObject *)&v18 destroy])
  {
    v7 = sub_1D4621008();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1D462E028(self, v7, v16);
    }

LABEL_8:
    v14 = 0;
    goto LABEL_9;
  }

  v7 = objc_msgSend_defaultsHandle(v4, v5, v6);
  v10 = objc_msgSend_name(self, v8, v9);
  v12 = objc_msgSend_stringByAppendingString_(v10, v11, @"_count");
  objc_msgSend_removeObjectForKey_(v7, v13, v12);

  v14 = 1;
LABEL_9:

  return v14;
}

- (BOOL)decrement
{
  if (objc_msgSend_count(self, a2, v2))
  {
    --self->_count;

    return objc_msgSend_persist(self, v4, v5);
  }

  else
  {
    v7 = sub_1D4621008();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1D462E0AC(self, v7, v8);
    }

    return 0;
  }
}

@end