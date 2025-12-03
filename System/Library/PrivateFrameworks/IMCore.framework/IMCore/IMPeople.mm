@interface IMPeople
- (BOOL)addIMHandle:(id)handle;
- (BOOL)addPeopleFromArray:(id)array skipMe:(BOOL)me;
- (BOOL)removeIMHandle:(id)handle;
- (BOOL)removePeopleFromArray:(id)array;
- (NSArray)groups;
- (NSMutableArray)people;
- (unint64_t)count;
- (void)_addedPeople:(id)people;
- (void)addedIMHandle:(id)handle;
- (void)dealloc;
- (void)endCoalescedChanges;
- (void)imHandle:(id)handle buddyStatusChanged:(BOOL)changed;
- (void)removeNotificationObserver:(id)observer;
- (void)removedIMHandle:(id)handle;
@end

@implementation IMPeople

- (void)dealloc
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, v2);
  objc_msgSend_removeObserver_name_object_(v4, v5, self, 0, 0);

  v6.receiver = self;
  v6.super_class = IMPeople;
  [(IMPeople *)&v6 dealloc];
}

- (void)removeNotificationObserver:(id)observer
{
  v4 = MEMORY[0x1E696AD88];
  observerCopy = observer;
  v8 = objc_msgSend_defaultCenter(v4, v6, v7);
  objc_msgSend_removeObserver_name_object_(v8, v9, observerCopy, @"__kIMPeopleAddedNotification", self);

  v12 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v10, v11);
  objc_msgSend_removeObserver_name_object_(v12, v13, observerCopy, @"__kIMPeopleRemovedNotification", self);

  v17 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v14, v15);
  objc_msgSend_removeObserver_name_object_(v17, v16, observerCopy, @"__kIMPeopleChangedNotification", self);
}

- (unint64_t)count
{
  if (objc_msgSend_hidePeople(self, a2, v2))
  {
    return 0;
  }

  people = self->_people;

  return objc_msgSend_count(people, v4, v5);
}

- (NSArray)groups
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = self->_people;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v27, v32, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v28;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        if (objc_msgSend_isBuddy(v12, v7, v8))
        {
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v13 = objc_msgSend_groupsArray(v12, v7, v8, 0);
          v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v23, v31, 16);
          if (v15)
          {
            v17 = v15;
            v18 = *v24;
            do
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v24 != v18)
                {
                  objc_enumerationMutation(v13);
                }

                v20 = *(*(&v23 + 1) + 8 * j);
                if ((objc_msgSend_containsObject_(v3, v16, v20) & 1) == 0)
                {
                  objc_msgSend_addObject_(v3, v16, v20);
                }
              }

              v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v23, v31, 16);
            }

            while (v17);
          }
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v27, v32, 16);
    }

    while (v9);
  }

  v21 = *MEMORY[0x1E69E9840];

  return v3;
}

- (NSMutableArray)people
{
  if (objc_msgSend_hidePeople(self, a2, v2))
  {
    v6 = objc_msgSend_array(MEMORY[0x1E695DEC8], v4, v5);
  }

  else
  {
    v6 = self->_people;
  }

  return v6;
}

- (void)addedIMHandle:(id)handle
{
  handleCopy = handle;
  if ((objc_msgSend_hidePeople(self, v4, v5) & 1) == 0)
  {
    v6 = MEMORY[0x1E695DF20];
    v7 = IMSingleObjectArray();
    v9 = objc_msgSend_dictionaryWithObject_forKey_(v6, v8, v7, @"__kIMPeopleChangedUserInfoKey");

    v12 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v10, v11);
    objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v12, v13, @"__kIMPeopleAddedNotification", self, v9);
  }
}

- (void)_addedPeople:(id)people
{
  peopleCopy = people;
  if ((objc_msgSend_hidePeople(self, v4, v5) & 1) == 0)
  {
    v7 = objc_msgSend_dictionaryWithObject_forKey_(MEMORY[0x1E695DF20], v6, peopleCopy, @"__kIMPeopleChangedUserInfoKey");
    v10 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v8, v9);
    objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v10, v11, @"__kIMPeopleAddedNotification", self, v7);
  }
}

- (void)removedIMHandle:(id)handle
{
  handleCopy = handle;
  if ((objc_msgSend_hidePeople(self, v4, v5) & 1) == 0)
  {
    v6 = MEMORY[0x1E695DF20];
    v7 = IMSingleObjectArray();
    v9 = objc_msgSend_dictionaryWithObject_forKey_(v6, v8, v7, @"__kIMPeopleChangedUserInfoKey");

    v12 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v10, v11);
    objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v12, v13, @"__kIMPeopleRemovedNotification", self, v9);
  }
}

- (void)endCoalescedChanges
{
  p_coalesceCount = &self->_coalesceCount;
  coalesceCount = self->_coalesceCount;
  if (!coalesceCount)
  {
    sub_1A84E065C(a2, self, p_coalesceCount, &v11);
    coalesceCount = v11;
  }

  v6 = coalesceCount - 1;
  *p_coalesceCount = v6;
  if (!v6 && (objc_msgSend_hidePeople(self, a2, v2) & 1) == 0)
  {
    v10 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v7, v8);
    objc_msgSend___mainThreadPostNotificationName_object_(v10, v9, @"__kIMPeopleChangedNotification", self);
  }
}

- (BOOL)addIMHandle:(id)handle
{
  handleCopy = handle;
  v7 = objc_msgSend_containsObjectIdenticalTo_(self->_people, v5, handleCopy);
  if ((v7 & 1) == 0)
  {
    people = self->_people;
    if (!people)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v10 = self->_people;
      self->_people = v9;

      people = self->_people;
    }

    objc_msgSend_addObject_(people, v6, handleCopy);
    if ((objc_msgSend_coalescingChanges(self, v11, v12) & 1) == 0)
    {
      objc_msgSend_addedIMHandle_(self, v13, handleCopy);
    }
  }

  return v7 ^ 1;
}

- (BOOL)removeIMHandle:(id)handle
{
  handleCopy = handle;
  v7 = objc_msgSend_containsObjectIdenticalTo_(self->_people, v5, handleCopy);
  if (v7)
  {
    objc_msgSend_removeObject_(self->_people, v6, handleCopy);
    if ((objc_msgSend_coalescingChanges(self, v8, v9) & 1) == 0)
    {
      objc_msgSend_removedIMHandle_(self, v10, handleCopy);
    }

    if (!objc_msgSend_count(self->_people, v10, v11))
    {
      people = self->_people;
      self->_people = 0;
    }
  }

  return v7;
}

- (BOOL)removePeopleFromArray:(id)array
{
  v31 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v7 = objc_msgSend_count(self->_people, v5, v6);
  objc_msgSend_removeObjectsInArray_(self->_people, v8, arrayCopy);
  v13 = objc_msgSend_count(arrayCopy, v9, v10);
  if (v13 < v7)
  {
    if ((objc_msgSend_coalescingChanges(self, v11, v12) & 1) == 0)
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v16 = arrayCopy;
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v26, v30, 16);
      if (v18)
      {
        v20 = v18;
        v21 = *v27;
        do
        {
          v22 = 0;
          do
          {
            if (*v27 != v21)
            {
              objc_enumerationMutation(v16);
            }

            objc_msgSend_removedIMHandle_(self, v19, *(*(&v26 + 1) + 8 * v22++), v26);
          }

          while (v20 != v22);
          v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v26, v30, 16);
        }

        while (v20);
      }
    }

    if (!objc_msgSend_count(self->_people, v14, v15, v26))
    {
      people = self->_people;
      self->_people = 0;
    }
  }

  v24 = *MEMORY[0x1E69E9840];
  return v13 < v7;
}

- (BOOL)addPeopleFromArray:(id)array skipMe:(BOOL)me
{
  meCopy = me;
  v39 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v9 = objc_msgSend_count(arrayCopy, v7, v8);
  v10 = objc_alloc(MEMORY[0x1E695DF70]);
  v12 = objc_msgSend_initWithCapacity_(v10, v11, v9);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v13 = arrayCopy;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v34, v38, 16);
  if (v15)
  {
    v17 = v15;
    v18 = *v35;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v35 != v18)
        {
          objc_enumerationMutation(v13);
        }

        v20 = *(*(&v34 + 1) + 8 * i);
        if ((objc_msgSend_containsObjectIdenticalTo_(self->_people, v16, v20, v34) & 1) == 0 && (!meCopy || (objc_msgSend_isLoginIMHandle(v20, v16, v21) & 1) == 0))
        {
          objc_msgSend_addObject_(v12, v16, v20);
        }
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v34, v38, 16);
    }

    while (v17);
  }

  v25 = objc_msgSend_count(v12, v22, v23);
  if (v25)
  {
    people = self->_people;
    if (!people)
    {
      v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v28 = self->_people;
      self->_people = v27;

      people = self->_people;
    }

    objc_msgSend_addObjectsFromArray_(people, v24, v12, v34);
    if ((objc_msgSend_coalescingChanges(self, v29, v30) & 1) == 0)
    {
      objc_msgSend__addedPeople_(self, v31, v12);
    }
  }

  v32 = *MEMORY[0x1E69E9840];
  return v25 != 0;
}

- (void)imHandle:(id)handle buddyStatusChanged:(BOOL)changed
{
  changedCopy = changed;
  handleCopy = handle;
  if ((objc_msgSend_isLoginIMHandle(handleCopy, v6, v7) & 1) == 0)
  {
    if (changedCopy)
    {
      objc_msgSend_addIMHandle_(self, v8, handleCopy);
    }

    else
    {
      objc_msgSend_removeIMHandle_(self, v8, handleCopy);
    }
  }
}

@end