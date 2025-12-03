@interface CKDMMCSItemGroupSet
+ (BOOL)item:(id)item matchesItem:(id)matchesItem;
+ (unint64_t)hashOfItem:(id)item;
- (CKDMMCSItemGroupSet)init;
- (CKDMMCSItemGroupSet)initWithItems:(id)items;
- (NSError)error;
- (id)CKPropertiesDescription;
- (void)addItem:(id)item;
- (void)setCloneContext:(id)context;
@end

@implementation CKDMMCSItemGroupSet

+ (unint64_t)hashOfItem:(id)item
{
  itemCopy = item;
  v6 = objc_msgSend_contentBaseURL(itemCopy, v4, v5);
  v9 = objc_msgSend_hash(v6, v7, v8);
  v12 = objc_msgSend_owner(itemCopy, v10, v11);
  v15 = objc_msgSend_hash(v12, v13, v14) ^ v9;
  v18 = objc_msgSend_requestor(itemCopy, v16, v17);

  v21 = objc_msgSend_hash(v18, v19, v20);
  return v15 ^ v21;
}

+ (BOOL)item:(id)item matchesItem:(id)matchesItem
{
  itemCopy = item;
  matchesItemCopy = matchesItem;
  v9 = objc_msgSend_contentBaseURL(itemCopy, v7, v8);
  v12 = objc_msgSend_contentBaseURL(matchesItemCopy, v10, v11);
  if (CKObjectsAreBothNilOrEqual())
  {
    v15 = objc_msgSend_owner(itemCopy, v13, v14);
    v18 = objc_msgSend_owner(matchesItemCopy, v16, v17);
    if (CKObjectsAreBothNilOrEqual())
    {
      v21 = objc_msgSend_requestor(itemCopy, v19, v20);
      v24 = objc_msgSend_requestor(matchesItemCopy, v22, v23);
      if (CKObjectsAreBothNilOrEqual())
      {
        v32 = objc_msgSend_downloadPreauthorization(itemCopy, v25, v26);
        v29 = objc_msgSend_downloadPreauthorization(matchesItemCopy, v27, v28);
        v30 = CKObjectsAreBothNilOrEqual();
      }

      else
      {
        v30 = 0;
      }
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (CKDMMCSItemGroupSet)init
{
  v6.receiver = self;
  v6.super_class = CKDMMCSItemGroupSet;
  v2 = [(CKDMMCSItemGroupSet *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    itemsGroups = v2->_itemsGroups;
    v2->_itemsGroups = v3;
  }

  return v2;
}

- (CKDMMCSItemGroupSet)initWithItems:(id)items
{
  v22 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v7 = objc_msgSend_init(self, v5, v6);
  if (v7)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = itemsCopy;
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v17, v21, 16);
    if (v10)
    {
      v12 = v10;
      v13 = *v18;
      do
      {
        v14 = 0;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v8);
          }

          objc_msgSend_addItem_(v7, v11, *(*(&v17 + 1) + 8 * v14++), v17);
        }

        while (v12 != v14);
        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v17, v21, 16);
      }

      while (v12);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)CKPropertiesDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_msgSend_allItemGroups(self, a2, v2);
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"itemGroups=%@", v4);

  return v6;
}

- (NSError)error
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = objc_msgSend_allItemGroups(self, v4, v5, 0);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v25, v29, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v26;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        v15 = objc_msgSend_error(v14, v9, v10);

        if (v15)
        {
          v16 = objc_msgSend_error(v14, v9, v10);
          objc_msgSend_addObject_(v3, v17, v16);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v25, v29, 16);
    }

    while (v11);
  }

  if (objc_msgSend_count(v3, v18, v19))
  {
    v22 = objc_msgSend_anyObject(v3, v20, v21);
  }

  else
  {
    v22 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (void)addItem:(id)item
{
  itemCopy = item;
  v5 = self->_lastGroup;
  if (!v5 || (objc_msgSend_item_matchesItem_(CKDMMCSItemGroupSet, v4, itemCopy, v5) & 1) == 0)
  {
    v7 = [CKDMMCSItemGroup alloc];
    v9 = objc_msgSend_initWithItem_(v7, v8, itemCopy);

    v11 = objc_msgSend_member_(self->_itemsGroups, v10, v9);
    v13 = v11;
    if (v11)
    {
      v14 = v11;

      v9 = v14;
    }

    else
    {
      objc_msgSend_addObject_(self->_itemsGroups, v12, v9);
    }

    v5 = v9;
  }

  objc_msgSend_addItem_(v5, v6, itemCopy);
  lastGroup = self->_lastGroup;
  self->_lastGroup = v5;
}

- (void)setCloneContext:(id)context
{
  contextCopy = context;
  v5 = contextCopy;
  if (contextCopy)
  {
    itemsGroups = self->_itemsGroups;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_22513F6D0;
    v8[3] = &unk_2785466B8;
    v9 = contextCopy;
    objc_msgSend_enumerateObjectsUsingBlock_(itemsGroups, v7, v8);
  }
}

@end