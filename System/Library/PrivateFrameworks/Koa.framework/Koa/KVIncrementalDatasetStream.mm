@interface KVIncrementalDatasetStream
- (BOOL)addOrUpdateCascadeItem:(id)item error:(id *)error;
- (BOOL)addOrUpdateItem:(id)item error:(id *)error;
- (BOOL)removeItemWithItemId:(id)id error:(id *)error;
- (unint64_t)priorVersion;
@end

@implementation KVIncrementalDatasetStream

- (BOOL)removeItemWithItemId:(id)id error:(id *)error
{
  idCopy = id;
  v12 = objc_msgSend_donation(self, v7, v8, v9, v10, v11);
  v20 = 0;
  v16 = objc_msgSend_removeItemWithSourceItemIdentifier_error_(v12, v13, idCopy, &v20, v14, v15);

  v17 = v20;
  if ((v16 & 1) == 0)
  {
    v18 = sub_2559CA340(v17);
    if (error && v18)
    {
      v18 = v18;
      *error = v18;
    }
  }

  return v16;
}

- (BOOL)addOrUpdateItem:(id)item error:(id *)error
{
  v11 = objc_msgSend__cascadeItemFromItem_error_(self, a2, item, error, v4, v5);
  if (v11)
  {
    updated = objc_msgSend_addOrUpdateCascadeItem_error_(self, v8, v11, error, v9, v10);
  }

  else
  {
    updated = 0;
  }

  return updated;
}

- (BOOL)addOrUpdateCascadeItem:(id)item error:(id *)error
{
  itemCopy = item;
  v12 = objc_msgSend_donation(self, v7, v8, v9, v10, v11);
  v20 = 0;
  updated = objc_msgSend_addOrUpdateItem_error_(v12, v13, itemCopy, &v20, v14, v15);

  v17 = v20;
  if ((updated & 1) == 0)
  {
    v18 = sub_2559CA340(v17);
    if (error && v18)
    {
      v18 = v18;
      *error = v18;
    }
  }

  return updated;
}

- (unint64_t)priorVersion
{
  v6 = objc_msgSend_donation(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_priorVersion(v6, v7, v8, v9, v10, v11);

  return v12;
}

@end