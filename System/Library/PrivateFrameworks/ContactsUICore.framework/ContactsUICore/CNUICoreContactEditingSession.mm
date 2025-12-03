@interface CNUICoreContactEditingSession
+ (BOOL)isEdiingStateOfContactValid:(int64_t)valid;
- (BOOL)containsAddedContactMatchingContact:(id)contact;
- (BOOL)containsRemovedContactMatchingContact:(id)contact;
- (BOOL)containsUpdatedContactMatchingContact:(id)contact;
- (BOOL)inProgress;
- (BOOL)isContactUnseen:(id)unseen;
- (BOOL)wasContactAdded:(id)added;
- (BOOL)wasContactRemoved:(id)removed;
- (BOOL)wasContactUpdated:(id)updated;
- (CNUICoreContactEditingSession)init;
- (NSArray)addedContacts;
- (NSArray)removedContacts;
- (NSArray)updatedContacts;
- (id)addedContactsMatchingContacts:(id)contacts;
- (id)applyChangesToContacts:(id)contacts;
- (id)description;
- (id)generateSaveRequest;
- (id)removedContactsMatchingContacts:(id)contacts;
- (id)updatedContactsMatchingContacts:(id)contacts;
- (int64_t)editingStateOfContact:(id)contact;
- (void)addContacts:(id)contacts;
- (void)removeContacts:(id)contacts;
- (void)updateContacts:(id)contacts;
@end

@implementation CNUICoreContactEditingSession

- (CNUICoreContactEditingSession)init
{
  v11.receiver = self;
  v11.super_class = CNUICoreContactEditingSession;
  v2 = [(CNUICoreContactEditingSession *)&v11 init];
  if (v2)
  {
    v3 = +[CNUICoreContactScratchpad emptyScratchpad];
    contactsAdded = v2->_contactsAdded;
    v2->_contactsAdded = v3;

    v5 = +[CNUICoreContactScratchpad emptyScratchpad];
    contactsUpdated = v2->_contactsUpdated;
    v2->_contactsUpdated = v5;

    v7 = +[CNUICoreContactScratchpad emptyScratchpad];
    contactsRemoved = v2->_contactsRemoved;
    v2->_contactsRemoved = v7;

    v9 = v2;
  }

  return v2;
}

- (BOOL)inProgress
{
  v3 = *MEMORY[0x1E6996560];
  contactsAdded = [(CNUICoreContactEditingSession *)self contactsAdded];
  allContacts = [contactsAdded allContacts];
  if ((*(v3 + 16))(v3, allContacts))
  {
    contactsUpdated = [(CNUICoreContactEditingSession *)self contactsUpdated];
    allContacts2 = [contactsUpdated allContacts];
    if ((*(v3 + 16))(v3, allContacts2))
    {
      contactsRemoved = [(CNUICoreContactEditingSession *)self contactsRemoved];
      allContacts3 = [contactsRemoved allContacts];
      v10 = (*(v3 + 16))(v3, allContacts3) ^ 1;
    }

    else
    {
      LOBYTE(v10) = 1;
    }
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  return v10;
}

- (void)addContacts:(id)contacts
{
  v34 = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  if (!contactsCopy)
  {
    if (CNGuardOSLog_cn_once_token_0_11 != -1)
    {
      [CNUICoreContactEditingSession addContacts:];
    }

    v5 = CNGuardOSLog_cn_once_object_0_11;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_11, OS_LOG_TYPE_FAULT))
    {
      [(CNUICoreContactEditingSession *)v5 addContacts:v6, v7, v8, v9, v10, v11, v12];
    }
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = contactsCopy;
  v14 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v26;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v25 + 1) + 8 * i);
        v19 = [(CNUICoreContactEditingSession *)self editingStateOfContact:v18, v25];
        if (v19 > 2)
        {
          if (v19 == 3)
          {
            contactsUpdated = [(CNUICoreContactEditingSession *)self contactsUpdated];
            v30 = v18;
            v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
            v24 = [contactsUpdated scratchpadByAddingContacts:v23];
            [(CNUICoreContactEditingSession *)self setContactsUpdated:v24];
          }

          else
          {
            if (v19 != 4)
            {
              goto LABEL_22;
            }

            contactsUpdated = [(CNUICoreContactEditingSession *)self contactsRemoved];
            v29 = v18;
            v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
            v24 = [contactsUpdated scratchpadByRemovingContacts:v23];
            [(CNUICoreContactEditingSession *)self setContactsRemoved:v24];
          }
        }

        else
        {
          if (v19 == 1)
          {
            contactsUpdated = [(CNUICoreContactEditingSession *)self contactsAdded];
            v32 = v18;
            v21 = MEMORY[0x1E695DEC8];
            v22 = &v32;
          }

          else
          {
            if (v19 != 2)
            {
              goto LABEL_22;
            }

            contactsUpdated = [(CNUICoreContactEditingSession *)self contactsAdded];
            v31 = v18;
            v21 = MEMORY[0x1E695DEC8];
            v22 = &v31;
          }

          v23 = [v21 arrayWithObjects:v22 count:1];
          v24 = [contactsUpdated scratchpadByAddingContacts:v23];
          [(CNUICoreContactEditingSession *)self setContactsAdded:v24];
        }

LABEL_22:
        [(CNUICoreContactEditingSession *)self verifyConsistencyOfEditingSessionForContact:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v15);
  }
}

- (int64_t)editingStateOfContact:(id)contact
{
  contactCopy = contact;
  v5 = [(CNUICoreContactEditingSession *)self isContactUnseen:contactCopy];
  v6 = [(CNUICoreContactEditingSession *)self wasContactAdded:contactCopy];
  v7 = [(CNUICoreContactEditingSession *)self wasContactUpdated:contactCopy];
  v8 = [(CNUICoreContactEditingSession *)self wasContactRemoved:contactCopy];

  if (v5 && !v6)
  {
    if (v8)
    {
      v9 = 1;
      if (!v5)
      {
        v9 = 2;
      }

      if (v7)
      {
        result = v9;
      }

      else
      {
        result = 5;
      }

      if (v5 || !v7)
      {
        return result;
      }

LABEL_26:
      v13 = 4;
      if (!v8)
      {
        v13 = 0;
      }

      if (v7)
      {
        return 3;
      }

      else
      {
        return v13;
      }
    }

    goto LABEL_20;
  }

  v11 = v5 || !v6;
  if (((v11 | v8) & 1) == 0)
  {
LABEL_20:
    if (v7)
    {
      return 5;
    }

LABEL_22:
    if (v5)
    {
      result = 1;
    }

    else
    {
      result = 2;
    }

    if (v5 || v6)
    {
      return result;
    }

    goto LABEL_26;
  }

  if ((v5 || !v6) && v8 && !v7)
  {
    goto LABEL_22;
  }

  v12 = 1;
  if (!v5)
  {
    v12 = 2;
  }

  if ((v11 & v8 | !v7))
  {
    result = 5;
  }

  else
  {
    result = v12;
  }

  if (((v11 & v8 | !v7 | (v5 || v6)) & 1) == 0)
  {
    goto LABEL_26;
  }

  return result;
}

- (BOOL)isContactUnseen:(id)unseen
{
  unseenCopy = unseen;
  contactsAdded = [(CNUICoreContactEditingSession *)self contactsAdded];
  if ([contactsAdded containsContact:unseenCopy])
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    contactsUpdated = [(CNUICoreContactEditingSession *)self contactsUpdated];
    if ([contactsUpdated containsContact:unseenCopy])
    {
      LOBYTE(v6) = 0;
    }

    else
    {
      contactsRemoved = [(CNUICoreContactEditingSession *)self contactsRemoved];
      v6 = [contactsRemoved containsContact:unseenCopy] ^ 1;
    }
  }

  return v6;
}

- (BOOL)wasContactAdded:(id)added
{
  addedCopy = added;
  contactsAdded = [(CNUICoreContactEditingSession *)self contactsAdded];
  v6 = [contactsAdded containsContact:addedCopy];

  return v6;
}

- (BOOL)wasContactUpdated:(id)updated
{
  updatedCopy = updated;
  contactsUpdated = [(CNUICoreContactEditingSession *)self contactsUpdated];
  v6 = [contactsUpdated containsContact:updatedCopy];

  return v6;
}

- (BOOL)wasContactRemoved:(id)removed
{
  removedCopy = removed;
  contactsRemoved = [(CNUICoreContactEditingSession *)self contactsRemoved];
  v6 = [contactsRemoved containsContact:removedCopy];

  return v6;
}

+ (BOOL)isEdiingStateOfContactValid:(int64_t)valid
{
  if (valid)
  {
    v3 = valid == 5;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

- (void)updateContacts:(id)contacts
{
  v40 = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  if (!contactsCopy)
  {
    if (CNGuardOSLog_cn_once_token_0_11 != -1)
    {
      [CNUICoreContactEditingSession addContacts:];
    }

    v5 = CNGuardOSLog_cn_once_object_0_11;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_11, OS_LOG_TYPE_FAULT))
    {
      [(CNUICoreContactEditingSession *)v5 updateContacts:v6, v7, v8, v9, v10, v11, v12];
    }
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = contactsCopy;
  v14 = [v13 countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v31;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v31 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v30 + 1) + 8 * i);
        v19 = [(CNUICoreContactEditingSession *)self editingStateOfContact:v18, v30];
        if (v19 > 2)
        {
          if (v19 == 3)
          {
            contactsUpdated = [(CNUICoreContactEditingSession *)self contactsUpdated];
            v36 = v18;
            v28 = MEMORY[0x1E695DEC8];
            v29 = &v36;
            goto LABEL_21;
          }

          if (v19 != 4)
          {
            goto LABEL_23;
          }

          contactsRemoved = [(CNUICoreContactEditingSession *)self contactsRemoved];
          v35 = v18;
          v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
          v25 = [contactsRemoved scratchpadByRemovingContacts:v24];
          [(CNUICoreContactEditingSession *)self setContactsRemoved:v25];

          contactsUpdated = [(CNUICoreContactEditingSession *)self contactsAdded];
          v34 = v18;
          v21 = MEMORY[0x1E695DEC8];
          v22 = &v34;
        }

        else
        {
          if (v19 == 1)
          {
            contactsUpdated = [(CNUICoreContactEditingSession *)self contactsUpdated];
            v38 = v18;
            v28 = MEMORY[0x1E695DEC8];
            v29 = &v38;
LABEL_21:
            v26 = [v28 arrayWithObjects:v29 count:1];
            v27 = [contactsUpdated scratchpadByAddingContacts:v26];
            [(CNUICoreContactEditingSession *)self setContactsUpdated:v27];
            goto LABEL_22;
          }

          if (v19 != 2)
          {
            goto LABEL_23;
          }

          contactsUpdated = [(CNUICoreContactEditingSession *)self contactsAdded];
          v37 = v18;
          v21 = MEMORY[0x1E695DEC8];
          v22 = &v37;
        }

        v26 = [v21 arrayWithObjects:v22 count:1];
        v27 = [contactsUpdated scratchpadByAddingContacts:v26];
        [(CNUICoreContactEditingSession *)self setContactsAdded:v27];
LABEL_22:

LABEL_23:
        [(CNUICoreContactEditingSession *)self verifyConsistencyOfEditingSessionForContact:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v15);
  }
}

- (void)removeContacts:(id)contacts
{
  v38 = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  if (!contactsCopy)
  {
    if (CNGuardOSLog_cn_once_token_0_11 != -1)
    {
      [CNUICoreContactEditingSession addContacts:];
    }

    v5 = CNGuardOSLog_cn_once_object_0_11;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_11, OS_LOG_TYPE_FAULT))
    {
      [(CNUICoreContactEditingSession *)v5 removeContacts:v6, v7, v8, v9, v10, v11, v12];
    }
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v13 = contactsCopy;
  v14 = [v13 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v29;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v28 + 1) + 8 * i);
        v19 = [(CNUICoreContactEditingSession *)self editingStateOfContact:v18, v28];
        if (v19 > 2)
        {
          if (v19 == 3)
          {
            contactsUpdated = [(CNUICoreContactEditingSession *)self contactsUpdated];
            v34 = v18;
            v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
            v27 = [contactsUpdated scratchpadByRemovingContacts:v26];
            [(CNUICoreContactEditingSession *)self setContactsUpdated:v27];

            contactsRemoved = [(CNUICoreContactEditingSession *)self contactsRemoved];
            v33 = v18;
            v23 = MEMORY[0x1E695DEC8];
            v24 = &v33;
          }

          else
          {
            if (v19 != 4)
            {
              goto LABEL_22;
            }

            contactsRemoved = [(CNUICoreContactEditingSession *)self contactsRemoved];
            v32 = v18;
            v23 = MEMORY[0x1E695DEC8];
            v24 = &v32;
          }
        }

        else
        {
          if (v19 != 1)
          {
            if (v19 != 2)
            {
              goto LABEL_22;
            }

            contactsRemoved = [(CNUICoreContactEditingSession *)self contactsAdded];
            v35 = v18;
            v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
            v22 = [contactsRemoved scratchpadByRemovingContacts:v21];
            [(CNUICoreContactEditingSession *)self setContactsAdded:v22];
            goto LABEL_21;
          }

          contactsRemoved = [(CNUICoreContactEditingSession *)self contactsRemoved];
          v36 = v18;
          v23 = MEMORY[0x1E695DEC8];
          v24 = &v36;
        }

        v21 = [v23 arrayWithObjects:v24 count:1];
        v22 = [contactsRemoved scratchpadByAddingContacts:v21];
        [(CNUICoreContactEditingSession *)self setContactsRemoved:v22];
LABEL_21:

LABEL_22:
        [(CNUICoreContactEditingSession *)self verifyConsistencyOfEditingSessionForContact:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v15);
  }
}

- (NSArray)addedContacts
{
  contactsAdded = [(CNUICoreContactEditingSession *)self contactsAdded];
  allContacts = [contactsAdded allContacts];
  allObjects = [allContacts allObjects];

  return allObjects;
}

- (NSArray)updatedContacts
{
  contactsUpdated = [(CNUICoreContactEditingSession *)self contactsUpdated];
  allContacts = [contactsUpdated allContacts];
  allObjects = [allContacts allObjects];

  return allObjects;
}

- (NSArray)removedContacts
{
  contactsRemoved = [(CNUICoreContactEditingSession *)self contactsRemoved];
  allContacts = [contactsRemoved allContacts];
  allObjects = [allContacts allObjects];

  return allObjects;
}

- (BOOL)containsAddedContactMatchingContact:(id)contact
{
  contactCopy = contact;
  addedContacts = [(CNUICoreContactEditingSession *)self addedContacts];
  v6 = [addedContacts _cn_indexBy:kCNUICoreContactToIdentifier];
  identifier = [contactCopy identifier];

  v8 = [v6 objectForKeyedSubscript:identifier];
  LOBYTE(contactCopy) = v8 != 0;

  return contactCopy;
}

- (BOOL)containsUpdatedContactMatchingContact:(id)contact
{
  contactCopy = contact;
  updatedContacts = [(CNUICoreContactEditingSession *)self updatedContacts];
  v6 = [updatedContacts _cn_indexBy:kCNUICoreContactToIdentifier];
  identifier = [contactCopy identifier];

  v8 = [v6 objectForKeyedSubscript:identifier];
  LOBYTE(contactCopy) = v8 != 0;

  return contactCopy;
}

- (BOOL)containsRemovedContactMatchingContact:(id)contact
{
  contactCopy = contact;
  removedContacts = [(CNUICoreContactEditingSession *)self removedContacts];
  v6 = [removedContacts _cn_indexBy:kCNUICoreContactToIdentifier];
  identifier = [contactCopy identifier];

  v8 = [v6 objectForKeyedSubscript:identifier];
  LOBYTE(contactCopy) = v8 != 0;

  return contactCopy;
}

- (id)addedContactsMatchingContacts:(id)contacts
{
  contactsCopy = contacts;
  addedContacts = [(CNUICoreContactEditingSession *)self addedContacts];
  v6 = [addedContacts _cn_indexBy:kCNUICoreContactToIdentifier];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__CNUICoreContactEditingSession_addedContactsMatchingContacts___block_invoke;
  v10[3] = &unk_1E76E8198;
  v11 = v6;
  v7 = v6;
  v8 = [contactsCopy _cn_compactMap:v10];

  return v8;
}

id __63__CNUICoreContactEditingSession_addedContactsMatchingContacts___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

- (id)updatedContactsMatchingContacts:(id)contacts
{
  contactsCopy = contacts;
  updatedContacts = [(CNUICoreContactEditingSession *)self updatedContacts];
  v6 = [updatedContacts _cn_indexBy:kCNUICoreContactToIdentifier];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__CNUICoreContactEditingSession_updatedContactsMatchingContacts___block_invoke;
  v10[3] = &unk_1E76E8198;
  v11 = v6;
  v7 = v6;
  v8 = [contactsCopy _cn_compactMap:v10];

  return v8;
}

id __65__CNUICoreContactEditingSession_updatedContactsMatchingContacts___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

- (id)removedContactsMatchingContacts:(id)contacts
{
  contactsCopy = contacts;
  removedContacts = [(CNUICoreContactEditingSession *)self removedContacts];
  v6 = [removedContacts _cn_indexBy:kCNUICoreContactToIdentifier];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__CNUICoreContactEditingSession_removedContactsMatchingContacts___block_invoke;
  v10[3] = &unk_1E76E8198;
  v11 = v6;
  v7 = v6;
  v8 = [contactsCopy _cn_compactMap:v10];

  return v8;
}

id __65__CNUICoreContactEditingSession_removedContactsMatchingContacts___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

- (id)generateSaveRequest
{
  v3 = objc_alloc_init(MEMORY[0x1E695CF88]);
  addedContacts = [(CNUICoreContactEditingSession *)self addedContacts];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __52__CNUICoreContactEditingSession_generateSaveRequest__block_invoke;
  v17[3] = &unk_1E76E8560;
  v5 = v3;
  v18 = v5;
  [addedContacts _cn_each:v17];

  updatedContacts = [(CNUICoreContactEditingSession *)self updatedContacts];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __52__CNUICoreContactEditingSession_generateSaveRequest__block_invoke_2;
  v15[3] = &unk_1E76E8560;
  v7 = v5;
  v16 = v7;
  [updatedContacts _cn_each:v15];

  removedContacts = [(CNUICoreContactEditingSession *)self removedContacts];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __52__CNUICoreContactEditingSession_generateSaveRequest__block_invoke_3;
  v13[3] = &unk_1E76E8560;
  v9 = v7;
  v14 = v9;
  [removedContacts _cn_each:v13];

  v10 = v14;
  v11 = v9;

  return v9;
}

void __52__CNUICoreContactEditingSession_generateSaveRequest__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 mutableCopy];
  [v2 addContact:v3 toContainerWithIdentifier:0];
}

void __52__CNUICoreContactEditingSession_generateSaveRequest__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 mutableCopy];
  [v2 updateContact:v3];
}

void __52__CNUICoreContactEditingSession_generateSaveRequest__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 mutableCopy];
  [v2 deleteContact:v3];
}

- (id)applyChangesToContacts:(id)contacts
{
  contactsCopy = contacts;
  if ((*(*MEMORY[0x1E6996530] + 16))())
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  else
  {
    removedContacts = [(CNUICoreContactEditingSession *)self removedContacts];
    v7 = [removedContacts _cn_indexBy:kCNUICoreContactToIdentifier];

    updatedContacts = [(CNUICoreContactEditingSession *)self updatedContacts];
    v9 = [updatedContacts _cn_indexBy:kCNUICoreContactToIdentifier];

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __56__CNUICoreContactEditingSession_applyChangesToContacts___block_invoke;
    v21[3] = &unk_1E76E81C0;
    v22 = v7;
    v10 = v7;
    v11 = [contactsCopy _cn_filter:v21];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __56__CNUICoreContactEditingSession_applyChangesToContacts___block_invoke_2;
    v19 = &unk_1E76E8198;
    v20 = v9;
    v12 = v9;
    v13 = [v11 _cn_map:&v16];
    v14 = [(CNUICoreContactEditingSession *)self addedContacts:v16];
    v5 = [v13 arrayByAddingObjectsFromArray:v14];
  }

  return v5;
}

BOOL __56__CNUICoreContactEditingSession_applyChangesToContacts___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = v4 == 0;

  return v5;
}

void *__56__CNUICoreContactEditingSession_applyChangesToContacts___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [v2 objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  v8 = v7;

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  contactsAdded = [(CNUICoreContactEditingSession *)self contactsAdded];
  allContacts = [contactsAdded allContacts];
  v6 = [v3 appendObject:allContacts withName:@"contactsAdded"];

  contactsUpdated = [(CNUICoreContactEditingSession *)self contactsUpdated];
  allContacts2 = [contactsUpdated allContacts];
  v9 = [v3 appendObject:allContacts2 withName:@"contactsUpdated"];

  contactsRemoved = [(CNUICoreContactEditingSession *)self contactsRemoved];
  allContacts3 = [contactsRemoved allContacts];
  v12 = [v3 appendObject:allContacts3 withName:@"contactsRemoved"];

  build = [v3 build];

  return build;
}

@end