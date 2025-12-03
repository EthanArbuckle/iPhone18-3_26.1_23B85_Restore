@interface IMFocusStateSnapshot
+ (id)_dndContactHandleForAddress:(id)address;
- (BOOL)_overlapsConversationWithHandles:(id)handles;
- (BOOL)matchesConversationWithHandleStrings:(id)strings;
- (BOOL)matchesConversationWithHandles:(id)handles;
- (IMFocusStateSnapshot)initWithConfiguration:(id)configuration;
@end

@implementation IMFocusStateSnapshot

- (IMFocusStateSnapshot)initWithConfiguration:(id)configuration
{
  v57 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v53.receiver = self;
  v53.super_class = IMFocusStateSnapshot;
  v5 = [(IMFocusStateSnapshot *)&v53 init];
  if (!v5)
  {
    goto LABEL_35;
  }

  v5->_configurationType = [configurationCopy senderConfigurationType];
  v39 = [MEMORY[0x1E695DFA8] set];
  v6 = [MEMORY[0x1E695DFA8] set];
  senderConfigurationType = [configurationCopy senderConfigurationType];
  v36 = v5;
  v37 = configurationCopy;
  if (senderConfigurationType)
  {
    if (senderConfigurationType != 1)
    {
      v10 = 0;
      goto LABEL_8;
    }

    senderConfiguration = [configurationCopy senderConfiguration];
    deniedContacts = [senderConfiguration deniedContacts];
  }

  else
  {
    senderConfiguration = [configurationCopy senderConfiguration];
    deniedContacts = [senderConfiguration allowedContacts];
  }

  v10 = deniedContacts;

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
        contactIdentifier = [v14 contactIdentifier];

        if (contactIdentifier)
        {
          contactIdentifier2 = [v14 contactIdentifier];
          [v39 addObject:contactIdentifier2];
        }

        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        phoneNumbers = [v14 phoneNumbers];
        v18 = [phoneNumbers countByEnumeratingWithState:&v45 objects:v55 count:16];
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
                objc_enumerationMutation(phoneNumbers);
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

            v19 = [phoneNumbers countByEnumeratingWithState:&v45 objects:v55 count:16];
          }

          while (v19);
        }

        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        emailAddresses = [v14 emailAddresses];
        v27 = [emailAddresses countByEnumeratingWithState:&v41 objects:v54 count:16];
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
                objc_enumerationMutation(emailAddresses);
              }

              [v6 addObject:*(*(&v41 + 1) + 8 * k)];
            }

            v28 = [emailAddresses countByEnumeratingWithState:&v41 objects:v54 count:16];
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

  configurationCopy = v37;
LABEL_35:

  return v5;
}

+ (id)_dndContactHandleForAddress:(id)address
{
  addressCopy = address;
  if ([addressCopy _appearsToBeEmail])
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = objc_alloc_init(MEMORY[0x1AC570AA0](@"DNDMutableContactHandle", @"DoNotDisturb"));
  [v5 setValue:addressCopy];

  [v5 setType:v4];
  v6 = [v5 copy];

  return v6;
}

- (BOOL)matchesConversationWithHandleStrings:(id)strings
{
  v19 = *MEMORY[0x1E69E9840];
  stringsCopy = strings;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(stringsCopy, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = stringsCopy;
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

- (BOOL)matchesConversationWithHandles:(id)handles
{
  handlesCopy = handles;
  configurationType = [(IMFocusStateSnapshot *)self configurationType];
  if (configurationType == 1)
  {
    handles = [(IMFocusStateSnapshot *)self handles];
    v9 = [handles count];

    if (v9)
    {
      LODWORD(self) = ![(IMFocusStateSnapshot *)self _overlapsConversationWithHandles:handlesCopy];
      goto LABEL_9;
    }

LABEL_7:
    LOBYTE(self) = 1;
    goto LABEL_9;
  }

  if (configurationType)
  {
    goto LABEL_7;
  }

  handles2 = [(IMFocusStateSnapshot *)self handles];
  v7 = [handles2 count];

  if (v7)
  {
    LOBYTE(self) = [(IMFocusStateSnapshot *)self _overlapsConversationWithHandles:handlesCopy];
  }

  else
  {
    LOBYTE(self) = 0;
  }

LABEL_9:

  return self;
}

- (BOOL)_overlapsConversationWithHandles:(id)handles
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  handlesCopy = handles;
  v5 = [handlesCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(handlesCopy);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        contactIdentifier = [v9 contactIdentifier];
        if (!contactIdentifier || (v11 = contactIdentifier, -[IMFocusStateSnapshot contactIdentifiers](self, "contactIdentifiers"), v12 = objc_claimAutoreleasedReturnValue(), [v9 contactIdentifier], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "containsObject:", v13), v13, v12, v11, (v14 & 1) == 0))
        {
          handles = [(IMFocusStateSnapshot *)self handles];
          value = [v9 value];
          v17 = [handles containsObject:value];

          if ((v17 & 1) == 0)
          {
            continue;
          }
        }

        v18 = 1;
        goto LABEL_14;
      }

      v6 = [handlesCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
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