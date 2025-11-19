@interface IMFocusStateSnapshot
+ (id)_dndContactHandleForAddress:(id)a3;
- (BOOL)_overlapsConversationWithHandles:(id)a3;
- (BOOL)matchesConversationWithHandleStrings:(id)a3;
- (BOOL)matchesConversationWithHandles:(id)a3;
- (IMFocusStateSnapshot)initWithConfiguration:(id)a3;
@end

@implementation IMFocusStateSnapshot

- (IMFocusStateSnapshot)initWithConfiguration:(id)a3
{
  v57 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v53.receiver = self;
  v53.super_class = IMFocusStateSnapshot;
  v5 = [(IMFocusStateSnapshot *)&v53 init];
  if (!v5)
  {
    goto LABEL_35;
  }

  v5->_configurationType = [v4 senderConfigurationType];
  v39 = [MEMORY[0x1E695DFA8] set];
  v6 = [MEMORY[0x1E695DFA8] set];
  v7 = [v4 senderConfigurationType];
  v36 = v5;
  v37 = v4;
  if (v7)
  {
    if (v7 != 1)
    {
      v10 = 0;
      goto LABEL_8;
    }

    v8 = [v4 senderConfiguration];
    v9 = [v8 deniedContacts];
  }

  else
  {
    v8 = [v4 senderConfiguration];
    v9 = [v8 allowedContacts];
  }

  v10 = v9;

LABEL_8:
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v10;
  v11 = [obj countByEnumeratingWithState:&v49 objects:v56 count:16];
  if (v11)
  {
    v12 = v11;
    v40 = *v50;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v50 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v49 + 1) + 8 * i);
        v15 = [v14 contactIdentifier];

        if (v15)
        {
          v16 = [v14 contactIdentifier];
          [v39 addObject:v16];
        }

        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v17 = [v14 phoneNumbers];
        v18 = [v17 countByEnumeratingWithState:&v45 objects:v55 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v46;
          do
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v46 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v45 + 1) + 8 * j);
              v23 = IMNormalizePhoneNumber(v22);
              v24 = v23;
              if (v23)
              {
                v25 = v23;
              }

              else
              {
                v25 = v22;
              }

              [v6 addObject:v25];
            }

            v19 = [v17 countByEnumeratingWithState:&v45 objects:v55 count:16];
          }

          while (v19);
        }

        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v26 = [v14 emailAddresses];
        v27 = [v26 countByEnumeratingWithState:&v41 objects:v54 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v42;
          do
          {
            for (k = 0; k != v28; ++k)
            {
              if (*v42 != v29)
              {
                objc_enumerationMutation(v26);
              }

              [v6 addObject:*(*(&v41 + 1) + 8 * k)];
            }

            v28 = [v26 countByEnumeratingWithState:&v41 objects:v54 count:16];
          }

          while (v28);
        }
      }

      v12 = [obj countByEnumeratingWithState:&v49 objects:v56 count:16];
    }

    while (v12);
  }

  v31 = [v39 copy];
  v5 = v36;
  contactIdentifiers = v36->_contactIdentifiers;
  v36->_contactIdentifiers = v31;

  v33 = [v6 copy];
  handles = v36->_handles;
  v36->_handles = v33;

  v4 = v37;
LABEL_35:

  return v5;
}

+ (id)_dndContactHandleForAddress:(id)a3
{
  v3 = a3;
  if ([v3 _appearsToBeEmail])
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = objc_alloc_init(MEMORY[0x1AC570AA0](@"DNDMutableContactHandle", @"DoNotDisturb"));
  [v5 setValue:v3];

  [v5 setType:v4];
  v6 = [v5 copy];

  return v6;
}

- (BOOL)matchesConversationWithHandleStrings:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [IMFocusStateSnapshot _dndContactHandleForAddress:*(*(&v14 + 1) + 8 * v10), v14];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [(IMFocusStateSnapshot *)self matchesConversationWithHandles:v5];
  return v12;
}

- (BOOL)matchesConversationWithHandles:(id)a3
{
  v4 = a3;
  v5 = [(IMFocusStateSnapshot *)self configurationType];
  if (v5 == 1)
  {
    v8 = [(IMFocusStateSnapshot *)self handles];
    v9 = [v8 count];

    if (v9)
    {
      LODWORD(self) = ![(IMFocusStateSnapshot *)self _overlapsConversationWithHandles:v4];
      goto LABEL_9;
    }

LABEL_7:
    LOBYTE(self) = 1;
    goto LABEL_9;
  }

  if (v5)
  {
    goto LABEL_7;
  }

  v6 = [(IMFocusStateSnapshot *)self handles];
  v7 = [v6 count];

  if (v7)
  {
    LOBYTE(self) = [(IMFocusStateSnapshot *)self _overlapsConversationWithHandles:v4];
  }

  else
  {
    LOBYTE(self) = 0;
  }

LABEL_9:

  return self;
}

- (BOOL)_overlapsConversationWithHandles:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = [v9 contactIdentifier];
        if (!v10 || (v11 = v10, -[IMFocusStateSnapshot contactIdentifiers](self, "contactIdentifiers"), v12 = objc_claimAutoreleasedReturnValue(), [v9 contactIdentifier], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "containsObject:", v13), v13, v12, v11, (v14 & 1) == 0))
        {
          v15 = [(IMFocusStateSnapshot *)self handles];
          v16 = [v9 value];
          v17 = [v15 containsObject:v16];

          if ((v17 & 1) == 0)
          {
            continue;
          }
        }

        v18 = 1;
        goto LABEL_14;
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
      v18 = 0;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v18 = 0;
  }

LABEL_14:

  return v18;
}

@end