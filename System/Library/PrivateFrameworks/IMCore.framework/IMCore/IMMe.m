@interface IMMe
+ (id)firstNameFromFallbackUserName;
+ (id)imHandleForService:(id)a3;
+ (id)lastNameFromFallbackUserName;
+ (id)me;
- (BOOL)addIMHandle:(id)a3;
- (BOOL)addLoginIMHandle:(id)a3;
- (BOOL)isIMHandleLoginIMHandle:(id)a3;
- (BOOL)removeIMHandle:(id)a3;
- (BOOL)removeLoginIMHandle:(id)a3;
- (IMHandle)bestIMHandle;
- (IMMe)init;
- (NSArray)emails;
- (NSString)email;
- (NSString)firstName;
- (NSString)fullName;
- (NSString)lastName;
- (NSString)nickname;
- (id)_imHandlesWithIDs:(id)a3 onAccount:(id)a4;
- (id)description;
- (void)myPictureChanged;
- (void)rebuildIMHandles;
- (void)resetABPerson;
- (void)setCNContact:(id)a3;
@end

@implementation IMMe

+ (id)me
{
  v3 = qword_1ED7677E8;
  if (!qword_1ED7677E8)
  {
    v4 = objc_alloc_init(a1);
    v5 = qword_1ED7677E8;
    qword_1ED7677E8 = v4;

    if (qword_1ED7677E8)
    {
      v8 = objc_msgSend_sharedInstance(MEMORY[0x1E69A7FD0], v6, v7);
      v10 = objc_msgSend_fetchMeContactWithKeys_(v8, v9, MEMORY[0x1E695E0F0]);

      objc_msgSend_setCNContact_(qword_1ED7677E8, v11, v10);
      v3 = qword_1ED7677E8;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (IMMe)init
{
  v8.receiver = self;
  v8.super_class = IMMe;
  v2 = [(IMMe *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    cnIMHandles = v2->_cnIMHandles;
    v2->_cnIMHandles = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    loginIMHandles = v2->_loginIMHandles;
    v2->_loginIMHandles = v5;
  }

  return v2;
}

- (void)rebuildIMHandles
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  cnIMHandles = self->_cnIMHandles;
  self->_cnIMHandles = v3;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = objc_msgSend_sharedInstance(IMAccountController, v5, v6, 0);
  v9 = objc_msgSend_activeAccountsForService_(v7, v8, 0);

  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v23, v27, 16);
  if (v11)
  {
    v14 = v11;
    v15 = *v24;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v9);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        v18 = objc_msgSend_login(v17, v12, v13);
        v20 = objc_msgSend_imHandleWithID_(v17, v19, v18);

        if (v20)
        {
          objc_msgSend_addObject_(self->_cnIMHandles, v21, v20);
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v23, v27, 16);
    }

    while (v14);
  }

  v22 = *MEMORY[0x1E69E9840];
}

+ (id)firstNameFromFallbackUserName
{
  v3 = objc_msgSend_fallbackUserName(IMMe, a2, v2);
  v5 = objc_msgSend_componentsSeparatedByString_(v3, v4, @" ");
  v8 = objc_msgSend___imFirstObject(v5, v6, v7);

  return v8;
}

+ (id)lastNameFromFallbackUserName
{
  v3 = objc_msgSend_fallbackUserName(IMMe, a2, v2);
  v5 = objc_msgSend_componentsSeparatedByString_(v3, v4, @" ");
  v8 = objc_msgSend_mutableCopy(v5, v6, v7);

  objc_msgSend_removeFirstObject(v8, v9, v10);
  v12 = objc_msgSend_componentsJoinedByString_(v8, v11, @" ");

  return v12;
}

- (id)_imHandlesWithIDs:(id)a3 onAccount:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (objc_msgSend_count(v5, v8, v9))
  {
    v11 = 0;
    do
    {
      v12 = objc_msgSend_objectAtIndex_(v5, v10, v11);
      v14 = objc_msgSend_imHandleWithID_(v6, v13, v12);

      if (v14)
      {
        objc_msgSend_addObject_(v7, v15, v14);
      }

      ++v11;
    }

    while (v11 < objc_msgSend_count(v5, v16, v17));
  }

  return v7;
}

- (void)resetABPerson
{
  cnFirstName = self->_cnFirstName;
  self->_cnFirstName = 0;

  cnLastName = self->_cnLastName;
  self->_cnLastName = 0;

  cnFullName = self->_cnFullName;
  self->_cnFullName = 0;

  cnEmails = self->_cnEmails;
  self->_cnEmails = 0;

  cnNickname = self->_cnNickname;
  self->_cnNickname = 0;

  objc_msgSend_rebuildIMHandles(self, v8, v9);
  v13 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v10, v11);
  objc_msgSend___mainThreadPostNotificationName_object_(v13, v12, @"__kIMMeChangedNotification", 0);
}

- (void)setCNContact:(id)a3
{
  v5 = a3;
  cnContact = self->_cnContact;
  p_cnContact = &self->_cnContact;
  if (cnContact != v5)
  {
    v12 = v5;
    objc_storeStrong(p_cnContact, a3);
    v10 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v8, v9);
    objc_msgSend___mainThreadPostNotificationName_object_(v10, v11, @"__kIMMeChangedNotification", 0);

    v5 = v12;
  }
}

- (BOOL)addLoginIMHandle:(id)a3
{
  v4 = a3;
  if ((objc_msgSend_containsObjectIdenticalTo_(self->_loginIMHandles, v5, v4) & 1) == 0)
  {
    objc_msgSend_addObject_(self->_loginIMHandles, v6, v4);
  }

  return 1;
}

- (BOOL)removeLoginIMHandle:(id)a3
{
  v4 = a3;
  if (objc_msgSend_containsObjectIdenticalTo_(self->_loginIMHandles, v5, v4))
  {
    objc_msgSend_removeObject_(self->_loginIMHandles, v6, v4);
    v9 = objc_msgSend_sharedInstance(IMHandleRegistrar, v7, v8);
    objc_msgSend_unregisterIMHandle_(v9, v10, v4);

    v13 = objc_msgSend_sharedInstance(IMHandleRegistrar, v11, v12);
    v15 = objc_msgSend_cnContactWithKeys_(v4, v14, MEMORY[0x1E695E0F0]);
    v18 = objc_msgSend_identifier(v15, v16, v17);
    objc_msgSend_removeHandleFromCNIDMap_withCNID_(v13, v19, v4, v18);
  }

  return 1;
}

- (BOOL)addIMHandle:(id)a3
{
  v4 = a3;
  if ((objc_msgSend_containsObjectIdenticalTo_(self->_cnIMHandles, v5, v4) & 1) == 0)
  {
    objc_msgSend_addObject_(self->_cnIMHandles, v6, v4);
    if ((objc_msgSend_hasLocation(v4, v7, v8) & 1) == 0)
    {
      v11 = objc_msgSend_dependentIMHandles(v4, v9, v10);
      v14 = objc_msgSend_count(v11, v12, v13);
      if (v14 >= 1)
      {
        v16 = (v14 & 0x7FFFFFFF) + 1;
        do
        {
          v17 = objc_msgSend_objectAtIndex_(v11, v15, v16 - 2);
          objc_msgSend_addIMHandle_(self, v18, v17);

          --v16;
        }

        while (v16 > 1);
      }
    }
  }

  return 0;
}

- (BOOL)isIMHandleLoginIMHandle:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = self->_loginIMHandles;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v29, v33, 16);
  v8 = 0;
  if (v7)
  {
    v9 = *v30;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      do
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v8 = *(*(&v29 + 1) + 8 * v10);

        v14 = objc_msgSend_service(v8, v12, v13, v29);
        v17 = objc_msgSend_service(v4, v15, v16);

        if (v14 == v17)
        {
          v20 = objc_msgSend_ID(v4, v18, v19);
          v23 = objc_msgSend_ID(v8, v21, v22);
          v25 = objc_msgSend_equalID_andID_(v14, v24, v20, v23);

          if (v25)
          {
            LOBYTE(v7) = 1;
            goto LABEL_12;
          }
        }

        ++v10;
        v11 = v8;
      }

      while (v7 != v10);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v26, &v29, v33, 16);
      if (v7)
      {
        continue;
      }

      break;
    }

    v14 = v8;
    v8 = 0;
LABEL_12:
  }

  v27 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)removeIMHandle:(id)a3
{
  v4 = a3;
  if (objc_msgSend_containsObjectIdenticalTo_(self->_cnIMHandles, v5, v4))
  {
    objc_msgSend_removeObject_(self->_cnIMHandles, v6, v4);
    if ((objc_msgSend_hasLocation(v4, v7, v8) & 1) == 0)
    {
      v11 = objc_msgSend_dependentIMHandles(v4, v9, v10);
      v14 = objc_msgSend_count(v11, v12, v13);
      if (v14 >= 1)
      {
        v16 = (v14 & 0x7FFFFFFF) + 1;
        do
        {
          v17 = objc_msgSend_objectAtIndex_(v11, v15, v16 - 2);
          objc_msgSend_removeIMHandle_(self, v18, v17);

          --v16;
        }

        while (v16 > 1);
      }
    }
  }

  return 0;
}

- (NSString)nickname
{
  v4 = objc_msgSend_cnContact(self, a2, v2);

  if (v4)
  {
    v7 = MEMORY[0x1E69A7FD0];
    v8 = objc_msgSend_cnContact(self, v5, v6);
    v10 = objc_msgSend_nickNameForCNContact_(v7, v9, v8);
    cnNickname = self->_cnNickname;
    self->_cnNickname = v10;
  }

  if (!objc_msgSend_length(self->_cnNickname, v5, v6))
  {
    v14 = objc_msgSend_firstName(self, v12, v13);
    v15 = self->_cnNickname;
    self->_cnNickname = v14;
  }

  v16 = self->_cnNickname;

  return v16;
}

- (NSString)firstName
{
  v4 = objc_msgSend_cnContact(self, a2, v2);

  if (v4)
  {
    v7 = MEMORY[0x1E69A7FD0];
    v8 = objc_msgSend_cnContact(self, v5, v6);
    v10 = objc_msgSend_firstNameForCNContact_(v7, v9, v8);
    cnFirstName = self->_cnFirstName;
    self->_cnFirstName = v10;
  }

  v12 = self->_cnFirstName;
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = objc_msgSend_firstNameFromFallbackUserName(IMMe, v5, v6);
  }

  return v13;
}

- (NSArray)emails
{
  if (!self->_cnEmails)
  {
    v4 = objc_msgSend_cnContact(self, a2, v2);

    if (v4)
    {
      v7 = MEMORY[0x1E69A7FD0];
      v8 = objc_msgSend_cnContact(self, v5, v6);
      v10 = objc_msgSend_emailsForCNContact_(v7, v9, v8);
      cnEmails = self->_cnEmails;
      self->_cnEmails = v10;
    }
  }

  v12 = self->_cnEmails;

  return v12;
}

- (NSString)email
{
  v3 = objc_msgSend_emails(self, a2, v2);
  if (objc_msgSend_count(v3, v4, v5))
  {
    v8 = objc_msgSend___imFirstObject(v3, v6, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)lastName
{
  v4 = objc_msgSend_cnContact(self, a2, v2);

  if (v4)
  {
    v7 = MEMORY[0x1E69A7FD0];
    v8 = objc_msgSend_cnContact(self, v5, v6);
    v10 = objc_msgSend_lastNameForCNContact_(v7, v9, v8);
    cnLastName = self->_cnLastName;
    self->_cnLastName = v10;
  }

  v12 = self->_cnLastName;
  if (!v12)
  {
    v13 = objc_msgSend_lastNameFromFallbackUserName(IMMe, v5, v6);
    v14 = self->_cnLastName;
    self->_cnLastName = v13;

    v12 = self->_cnLastName;
  }

  return v12;
}

- (NSString)fullName
{
  v4 = objc_msgSend_cnContact(self, a2, v2);

  if (v4)
  {
    v7 = MEMORY[0x1E69A7FD0];
    v8 = objc_msgSend_cnContact(self, v5, v6);
    v10 = objc_msgSend_fullNameForCNContact_(v7, v9, v8);
    cnFullName = self->_cnFullName;
    self->_cnFullName = v10;
  }

  v12 = self->_cnFullName;
  if (!v12)
  {
    v13 = objc_msgSend_fallbackUserName(IMMe, v5, v6);
    v14 = self->_cnFullName;
    self->_cnFullName = v13;

    v12 = self->_cnFullName;
  }

  if (objc_msgSend_length(v12, v5, v6))
  {
    v17 = self->_cnFullName;
  }

  else
  {
    v17 = objc_msgSend_fallbackUserName(IMMe, v15, v16);
  }

  return v17;
}

+ (id)imHandleForService:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = objc_msgSend_me(IMMe, v4, v5, 0);
  v9 = objc_msgSend_imHandles(v6, v7, v8);

  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v20, v24, 16);
  if (v13)
  {
    v14 = *v21;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        v17 = objc_msgSend_service(v16, v11, v12);

        if (v17 == v3)
        {
          v13 = v16;
          goto LABEL_11;
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v20, v24, 16);
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v18 = *MEMORY[0x1E69E9840];

  return v13;
}

- (IMHandle)bestIMHandle
{
  v4 = objc_msgSend_sharedInstance(IMAccountController, a2, v2);
  v6 = objc_msgSend_bestConnectedAccountForService_(v4, v5, 0);

  if (v6 || (objc_msgSend_sharedInstance(IMAccountController, v7, v8), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend_bestActiveAccountForService_(v9, v10, 0), v6 = objc_claimAutoreleasedReturnValue(), v9, v6))
  {
    v11 = objc_msgSend_login(v6, v7, v8);
    v13 = objc_msgSend_imHandleWithID_(v6, v12, v11);
  }

  else
  {
    v6 = objc_msgSend_imHandles(self, v7, v8);
    v13 = objc_msgSend_bestIMHandleInArray_(IMHandle, v15, v6);
  }

  return v13;
}

- (void)myPictureChanged
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, v2);
  objc_msgSend___mainThreadPostNotificationName_object_(v4, v5, @"__kIMHandlePictureChangedNotification", 0);

  v9 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v6, v7);
  objc_msgSend___mainThreadPostNotificationName_object_(v9, v8, @"__kIMMePictureChangedNotification", self);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_cnContact(self, v6, v7);
  v10 = objc_msgSend_stringWithFormat_(v3, v9, @"<%@> (CNContact: %@)", v5, v8);

  return v10;
}

@end