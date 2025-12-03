@interface CUKeychainManager
- (BOOL)addItem:(id)item flags:(unsigned int)flags error:(id *)error;
- (BOOL)addOrUpdateOrReAddItem:(id)item flags:(unsigned int)flags logCategory:(LogCategory *)category logLabel:(id)label error:(id *)error;
- (BOOL)removeItemMatchingItem:(id)item flags:(unsigned int)flags error:(id *)error;
- (BOOL)updateItem:(id)item matchingItem:(id)matchingItem flags:(unsigned int)flags error:(id *)error;
- (id)_copyItemsMatchingItem:(id)item flags:(unsigned int)flags error:(id *)error;
- (id)_copyItemsMatchingItemSeparate:(id)separate flags:(unsigned int)flags error:(id *)error;
- (id)addItem:(id)item returnFlags:(unsigned int)flags error:(id *)error;
- (id)copyItemMatchingItem:(id)item flags:(unsigned int)flags error:(id *)error;
@end

@implementation CUKeychainManager

- (BOOL)updateItem:(id)item matchingItem:(id)matchingItem flags:(unsigned int)flags error:(id *)error
{
  v7 = *&flags;
  itemCopy = item;
  matchingItemCopy = matchingItem;
  secrets = [itemCopy secrets];

  v13 = [(CUKeychainManager *)self copyItemMatchingItem:matchingItemCopy flags:(secrets != 0) | v7 error:error];
  v14 = v13;
  if (v13)
  {
    [v13 _mergeItem:itemCopy];
    v15 = [v14 _attributesDictionaryWithFlags:v7 | 0x80000 error:error];
    if (v15)
    {
      v16 = [matchingItemCopy _attributesDictionaryWithFlags:v7 error:error];
      v17 = v16;
      if (v16)
      {
        v18 = SecItemUpdate(v16, v15);
        v25 = v18 == 0;
        if (error && v18)
        {
          NSErrorWithOSStatusF(v18, "SecItemUpdate failed", v19, v20, v21, v22, v23, v24, v27);
          *error = v25 = 0;
        }
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (BOOL)removeItemMatchingItem:(id)item flags:(unsigned int)flags error:(id *)error
{
  v6 = *&flags;
  v40[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  persistentRef = [itemCopy persistentRef];
  v9 = persistentRef;
  if (persistentRef)
  {
    v39 = *MEMORY[0x1E697B3C8];
    v40[0] = persistentRef;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    v11 = SecItemDelete(v10);
    v18 = v11 == 0;
    if (!error || !v11)
    {
      goto LABEL_6;
    }

    v19 = NSErrorWithOSStatusF(v11, "SecItemDelete failed", v12, v13, v14, v15, v16, v17, v38);
    goto LABEL_5;
  }

  identifier = [itemCopy identifier];
  if (identifier)
  {
    v28 = identifier;
    type = [itemCopy type];

    if (type)
    {
      v30 = [itemCopy _attributesDictionaryWithFlags:v6 error:error];
      v10 = v30;
      if (!v30)
      {
        v18 = 0;
        goto LABEL_6;
      }

      v31 = SecItemDelete(v30);
      v18 = v31 == 0;
      if (!error || !v31)
      {
        goto LABEL_6;
      }

      v19 = NSErrorWithOSStatusF(v31, "SecItemDelete failed", v32, v33, v34, v35, v36, v37, v38);
      v18 = 0;
LABEL_5:
      *error = v19;
LABEL_6:

      goto LABEL_7;
    }
  }

  if (error)
  {
    NSErrorWithOSStatusF(4294960591, "No type and ID or persistent ref", v22, v23, v24, v25, v26, v27, v38);
    *error = v18 = 0;
  }

  else
  {
    v18 = 0;
  }

LABEL_7:

  return v18;
}

- (BOOL)addOrUpdateOrReAddItem:(id)item flags:(unsigned int)flags logCategory:(LogCategory *)category logLabel:(id)label error:(id *)error
{
  v10 = *&flags;
  itemCopy = item;
  labelCopy = label;
  v54 = 0;
  v14 = [(CUKeychainManager *)self addItem:itemCopy flags:v10 error:&v54];
  v19 = v54;
  if (!v14)
  {
    v20 = objc_alloc_init(CUKeychainItem);
    accessGroup = [itemCopy accessGroup];
    [(CUKeychainItem *)v20 setAccessGroup:accessGroup];

    identifier = [itemCopy identifier];
    [(CUKeychainItem *)v20 setIdentifier:identifier];

    -[CUKeychainItem setLegacy:](v20, "setLegacy:", [itemCopy legacy]);
    -[CUKeychainItem setSyncType:](v20, "setSyncType:", [itemCopy syncType]);
    type = [itemCopy type];
    [(CUKeychainItem *)v20 setType:type];

    viewHint = [itemCopy viewHint];
    [(CUKeychainItem *)v20 setViewHint:viewHint];

    if ([v19 code] == -25299)
    {
      v53 = v19;
      v29 = [(CUKeychainManager *)self updateItem:itemCopy matchingItem:v20 flags:v10 error:&v53];
      v30 = v53;

      var0 = category->var0;
      if (v29)
      {
        if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize(category, 0x1Eu)))
        {
          LogPrintF(category, "[CUKeychainManager addOrUpdateOrReAddItem:flags:logCategory:logLabel:error:]", 0x1Eu, "%@ updated: %@\n", v31, v32, v33, v34, labelCopy);
        }

        goto LABEL_40;
      }

      if (var0 <= 90 && (var0 != -1 || _LogCategory_Initialize(category, 0x5Au)))
      {
        LogPrintF(category, "[CUKeychainManager addOrUpdateOrReAddItem:flags:logCategory:logLabel:error:]", 0x5Au, "### %@ update failed: %@, %{error}\n", v31, v32, v33, v34, labelCopy);
      }
    }

    else
    {
      if (category->var0 <= 90 && (category->var0 != -1 || _LogCategory_Initialize(category, 0x5Au)))
      {
        LogPrintF(category, "[CUKeychainManager addOrUpdateOrReAddItem:flags:logCategory:logLabel:error:]", 0x5Au, "### %@ add failed: %@, %{error}\n", v25, v26, v27, v28, labelCopy);
      }

      v30 = v19;
    }

    v52 = v30;
    v37 = [(CUKeychainManager *)self removeItemMatchingItem:v20 flags:v10 error:&v52];
    v38 = v52;

    if (!v37 && category->var0 <= 90 && (category->var0 != -1 || _LogCategory_Initialize(category, 0x5Au)))
    {
      LogPrintF(category, "[CUKeychainManager addOrUpdateOrReAddItem:flags:logCategory:logLabel:error:]", 0x5Au, "### %@ delete to re-add failed: %@, %{error}\n", v39, v40, v41, v42, labelCopy);
    }

    v51 = v38;
    v43 = [(CUKeychainManager *)self addItem:itemCopy flags:v10 error:&v51];
    v30 = v51;

    v48 = category->var0;
    if (!v43)
    {
      if (v48 <= 90 && (v48 != -1 || _LogCategory_Initialize(category, 0x5Au)))
      {
        LogPrintF(category, "[CUKeychainManager addOrUpdateOrReAddItem:flags:logCategory:logLabel:error:]", 0x5Au, "### %@ re-add failed: %@, %{error}\n", v44, v45, v46, v47, labelCopy);
      }

      if (error)
      {
        v49 = v30;
        v36 = 0;
        *error = v30;
      }

      else
      {
        v36 = 0;
      }

      goto LABEL_41;
    }

    if (v48 <= 30 && (v48 != -1 || _LogCategory_Initialize(category, 0x1Eu)))
    {
      LogPrintF(category, "[CUKeychainManager addOrUpdateOrReAddItem:flags:logCategory:logLabel:error:]", 0x1Eu, "%@ deleted and re-added: %@\n", v44, v45, v46, v47, labelCopy);
    }

LABEL_40:
    v36 = 1;
LABEL_41:

    v19 = v30;
    goto LABEL_42;
  }

  if (category->var0 <= 30 && (category->var0 != -1 || _LogCategory_Initialize(category, 0x1Eu)))
  {
    LogPrintF(category, "[CUKeychainManager addOrUpdateOrReAddItem:flags:logCategory:logLabel:error:]", 0x1Eu, "%@ added: %@\n", v15, v16, v17, v18, labelCopy);
  }

  v36 = 1;
LABEL_42:

  return v36;
}

- (id)addItem:(id)item returnFlags:(unsigned int)flags error:(id *)error
{
  v6 = *&flags;
  itemCopy = item;
  identifier = [itemCopy identifier];

  if (!identifier)
  {
    if (error)
    {
      v28 = "No identifier";
LABEL_14:
      NSErrorWithOSStatusF(4294960591, v28, v9, v10, v11, v12, v13, v14, v50);
      *error = v27 = 0;
      goto LABEL_31;
    }

LABEL_15:
    v27 = 0;
    goto LABEL_31;
  }

  type = [itemCopy type];

  if (!type)
  {
    if (error)
    {
      v28 = "No type";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (v6)
  {
    v16 = 196608;
  }

  else
  {
    v16 = 0x10000;
  }

  v17 = [itemCopy _attributesDictionaryWithFlags:v16 | v6 error:error];
  v18 = v17;
  if (v17)
  {
    result = 0;
    v19 = SecItemAdd(v17, &result);
    v26 = result;
    if (v19)
    {
      if (error)
      {
        NSErrorWithOSStatusF(v19, "SecItemAdd failed", v20, v21, v22, v23, v24, v25, v50);
        *error = v27 = 0;
LABEL_29:

        goto LABEL_30;
      }

LABEL_22:
      v27 = 0;
      goto LABEL_29;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v39 = objc_opt_class();
        v40 = NSStringFromClass(v39);
        *error = NSErrorWithOSStatusF(4294960540, "SecItemAdd returned non-dictionary (%@)", v41, v42, v43, v44, v45, v46, v40);
      }

      goto LABEL_22;
    }

    v29 = objc_alloc_init(CUKeychainItem);
    v51 = 0;
    v30 = [(CUKeychainItem *)v29 _updateWithAttributesDictionary:v26 flags:v6 error:&v51];
    v31 = v51;
    v38 = v31;
    if (v30)
    {
      v27 = v29;
LABEL_28:

      goto LABEL_29;
    }

    if (error)
    {
      if (v31)
      {
        v47 = v31;
        v27 = 0;
        *error = v38;
        goto LABEL_28;
      }

      v48 = NSErrorWithOSStatusF(4294960534, "Update item failed", v32, v33, v34, v35, v36, v37, v50);
      *error = v48;
    }

    v27 = 0;
    goto LABEL_28;
  }

  v27 = 0;
LABEL_30:

LABEL_31:

  return v27;
}

- (BOOL)addItem:(id)item flags:(unsigned int)flags error:(id *)error
{
  v6 = *&flags;
  itemCopy = item;
  identifier = [itemCopy identifier];

  if (!identifier)
  {
    if (error)
    {
      v26 = "No identifier";
LABEL_11:
      NSErrorWithOSStatusF(4294960591, v26, v9, v10, v11, v12, v13, v14, v28);
      *error = v25 = 0;
      goto LABEL_15;
    }

LABEL_12:
    v25 = 0;
    goto LABEL_15;
  }

  type = [itemCopy type];

  if (!type)
  {
    if (error)
    {
      v26 = "No type";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v16 = [itemCopy _attributesDictionaryWithFlags:v6 error:error];
  v17 = v16;
  if (v16)
  {
    v18 = SecItemAdd(v16, 0);
    v25 = v18 == 0;
    if (error && v18)
    {
      NSErrorWithOSStatusF(v18, "SecItemAdd failed", v19, v20, v21, v22, v23, v24, v28);
      *error = v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

LABEL_15:
  return v25;
}

- (id)_copyItemsMatchingItemSeparate:(id)separate flags:(unsigned int)flags error:(id *)error
{
  v6 = *&flags;
  v51 = *MEMORY[0x1E69E9840];
  separateCopy = separate;
  v9 = [(CUKeychainManager *)self _copyItemsMatchingItem:separateCopy flags:v6 & 0xFFFFFFFE error:error];
  v10 = v9;
  if (v9)
  {
    if ([v9 count])
    {
      errorCopy = error;
      v11 = objc_alloc_init(CUKeychainItem);
      accessGroup = [separateCopy accessGroup];
      [(CUKeychainItem *)v11 setAccessGroup:accessGroup];

      -[CUKeychainItem setLegacy:](v11, "setLegacy:", [separateCopy legacy]);
      -[CUKeychainItem setSyncType:](v11, "setSyncType:", [separateCopy syncType]);
      type = [separateCopy type];
      [(CUKeychainItem *)v11 setType:type];

      viewHint = [separateCopy viewHint];
      [(CUKeychainItem *)v11 setViewHint:viewHint];

      v42 = separateCopy;
      type2 = [separateCopy type];

      v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v41 = v10;
      v16 = v10;
      v17 = [v16 countByEnumeratingWithState:&v46 objects:v50 count:16];
      if (v17)
      {
        v18 = v17;
        v43 = 0;
        v19 = *v47;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v47 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v46 + 1) + 8 * i);
            identifier = [v21 identifier];

            if (identifier)
            {
              identifier2 = [v21 identifier];
              [(CUKeychainItem *)v11 setIdentifier:identifier2];

              if (!type2)
              {
                type3 = [v21 type];
                [(CUKeychainItem *)v11 setType:type3];
              }

              viewHint2 = [v21 viewHint];
              [(CUKeychainItem *)v11 setViewHint:viewHint2];

              v45 = 0;
              v26 = [(CUKeychainManager *)self copyItemMatchingItem:v11 flags:v6 error:&v45];
              v27 = v45;
              v28 = v27;
              if (v26)
              {
                [v44 addObject:v26];
              }

              else if (!v43)
              {
                v43 = v27;
              }
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v46 objects:v50 count:16];
        }

        while (v18);
      }

      else
      {
        v43 = 0;
      }

      if ([v44 count])
      {
        v29 = [v44 copy];
        v10 = v41;
        separateCopy = v42;
        v35 = v43;
LABEL_29:

        goto LABEL_30;
      }

      v10 = v41;
      separateCopy = v42;
      v36 = errorCopy;
      v35 = v43;
      if (errorCopy)
      {
        if (v43)
        {
          v37 = v43;
          v29 = 0;
          *errorCopy = v43;
          goto LABEL_29;
        }

        v38 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "No data-accessible items", v30, v31, v32, v33, v34, errorCopy);
        *v36 = v38;
      }

      v29 = 0;
      goto LABEL_29;
    }

    v29 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v29 = 0;
  }

LABEL_30:

  return v29;
}

- (id)_copyItemsMatchingItem:(id)item flags:(unsigned int)flags error:(id *)error
{
  v6 = *&flags;
  v67 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  persistentRef = [itemCopy persistentRef];
  if (persistentRef)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v9 setObject:persistentRef forKeyedSubscript:*MEMORY[0x1E697B3C8]];
    [v9 setObject:*MEMORY[0x1E697B268] forKeyedSubscript:*MEMORY[0x1E697B260]];
    [v9 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B310]];
    if ((v6 & 8) != 0)
    {
      [v9 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B320]];
    }

    if (v6)
    {
      [v9 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B318]];
    }

LABEL_10:
    result = 0;
    LODWORD(v11) = SecItemCopyMatching(v9, &result);
    v18 = result;
    if (result)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v56 = v9;
        v57 = persistentRef;
        v58 = itemCopy;
        v59 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v19 = v18;
        v20 = [v19 countByEnumeratingWithState:&v61 objects:v66 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v62;
LABEL_14:
          v23 = 0;
          while (1)
          {
            if (*v62 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v61 + 1) + 8 * v23);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v25 = objc_alloc_init(CUKeychainItem);
              v60 = 0;
              v26 = [(CUKeychainItem *)v25 _updateWithAttributesDictionary:v24 flags:v6 error:&v60];
              v27 = v60;
              v34 = v27;
              if (v26)
              {
                [v59 addObject:v25];
              }

              else if ((v6 & 2) == 0)
              {
                persistentRef = v57;
                itemCopy = v58;
                v9 = v56;
                if (error)
                {
                  if (v27)
                  {
                    v52 = v27;
                    *error = v34;
                  }

                  else
                  {
                    v53 = NSErrorWithOSStatusF(4294960534, "Update item failed", v28, v29, v30, v31, v32, v33, v55);
                    *error = v53;
                  }
                }

LABEL_43:
                goto LABEL_44;
              }
            }

            else if ((v6 & 2) == 0)
            {
              persistentRef = v57;
              itemCopy = v58;
              v9 = v56;
              if (error)
              {
                v45 = objc_opt_class();
                v25 = NSStringFromClass(v45);
                *error = NSErrorWithOSStatusF(4294960540, "SecItemCopyMatching array contained non-dictionary (%@)", v46, v47, v48, v49, v50, v51, v25);
                goto LABEL_43;
              }

LABEL_44:

              v36 = 0;
              v35 = v59;
              goto LABEL_45;
            }

            if (v21 == ++v23)
            {
              v21 = [v19 countByEnumeratingWithState:&v61 objects:v66 count:16];
              if (v21)
              {
                goto LABEL_14;
              }

              break;
            }
          }
        }

        v35 = v59;
        v36 = [v59 copy];
        persistentRef = v57;
        itemCopy = v58;
        v9 = v56;
LABEL_45:

        goto LABEL_46;
      }

      if (error)
      {
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        *error = NSErrorWithOSStatusF(4294960540, "SecItemCopyMatching returned non-array (%@)", v39, v40, v41, v42, v43, v44, v38);
      }
    }

    else if (error)
    {
      if (v11)
      {
        v11 = v11;
      }

      else
      {
        v11 = 4294941996;
      }

      NSErrorWithOSStatusF(v11, "SecItemCopyMatching failed", v12, v13, v14, v15, v16, v17, v55);
      *error = v36 = 0;
      goto LABEL_46;
    }

    v36 = 0;
LABEL_46:

    goto LABEL_47;
  }

  if (v6)
  {
    v10 = 458752;
  }

  else
  {
    v10 = 327680;
  }

  v9 = [itemCopy _attributesDictionaryWithFlags:v10 | (v6 & 8) error:error];
  if (v9)
  {
    goto LABEL_10;
  }

  v36 = 0;
LABEL_47:

  return v36;
}

- (id)copyItemMatchingItem:(id)item flags:(unsigned int)flags error:(id *)error
{
  v6 = *&flags;
  itemCopy = item;
  persistentRef = [itemCopy persistentRef];
  if (persistentRef)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v9 setObject:persistentRef forKeyedSubscript:*MEMORY[0x1E697B3C8]];
    [v9 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B310]];
    if ((v6 & 8) != 0)
    {
      [v9 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B320]];
    }

    if (v6)
    {
      [v9 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B318]];
    }

LABEL_10:
    result = 0;
    LODWORD(v11) = SecItemCopyMatching(v9, &result);
    v18 = result;
    if (result)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = objc_alloc_init(CUKeychainItem);
        v42 = 0;
        v20 = [(CUKeychainItem *)v19 _updateWithAttributesDictionary:v18 flags:v6 error:&v42];
        v21 = v42;
        v28 = v21;
        if (v20)
        {
          v29 = v19;
LABEL_28:

          goto LABEL_29;
        }

        if (error)
        {
          if (v21)
          {
            v38 = v21;
            v29 = 0;
            *error = v28;
            goto LABEL_28;
          }

          v39 = NSErrorWithOSStatusF(4294960534, "Update item failed", v22, v23, v24, v25, v26, v27, v41);
          *error = v39;
        }

        v29 = 0;
        goto LABEL_28;
      }

      if (error)
      {
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        *error = NSErrorWithOSStatusF(4294960540, "SecItemCopyMatching returned non-dictionary (%@)", v32, v33, v34, v35, v36, v37, v31);
      }
    }

    else if (error)
    {
      if (v11)
      {
        v11 = v11;
      }

      else
      {
        v11 = 4294941996;
      }

      NSErrorWithOSStatusF(v11, "SecItemCopyMatching failed", v12, v13, v14, v15, v16, v17, v41);
      *error = v29 = 0;
      goto LABEL_29;
    }

    v29 = 0;
LABEL_29:

    goto LABEL_30;
  }

  if (v6)
  {
    v10 = 196608;
  }

  else
  {
    v10 = 0x10000;
  }

  v9 = [itemCopy _attributesDictionaryWithFlags:v10 | (v6 & 8) error:error];
  if (v9)
  {
    goto LABEL_10;
  }

  v29 = 0;
LABEL_30:

  return v29;
}

@end