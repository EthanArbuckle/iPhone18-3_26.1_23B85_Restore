@interface CNComposeRecipient
+ (CNComposeRecipient)composeRecipientWithAutocompleteResult:(id)a3;
+ (NSArray)readableTypeIdentifiersForItemProvider;
+ (NSArray)writableTypeIdentifiersForItemProvider;
+ (OS_os_log)namingLog;
+ (OS_os_log)os_log;
+ (id)descriptorsForRequiredKeysForContact;
+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEquivalentAddressToRecipient:(id)a3;
- (BOOL)isRemovableFromSearchResults;
- (BOOL)showsAccessoryButton;
- (BOOL)supportsPasteboardUnarchiving;
- (BOOL)wasCompleteMatch;
- (CNComposeRecipient)initWithCoder:(id)a3;
- (CNComposeRecipient)initWithContact:(id)a3 address:(id)a4 displayString:(id)a5 kind:(unint64_t)a6;
- (CNContact)contact;
- (NSPersonNameComponents)nameComponents;
- (NSString)commentedAddress;
- (NSString)compositeName;
- (NSString)description;
- (NSString)displayString;
- (NSString)label;
- (NSString)normalizedAddress;
- (NSString)pasteboardString;
- (NSString)placeholderName;
- (NSString)shortName;
- (NSString)stringForEqualityTesting;
- (NSString)uncommentedAddress;
- (NSString)unlocalizedLabel;
- (id)_unformattedAddress;
- (id)associatedHandles;
- (id)completelyMatchedAttributedStrings;
- (id)contactWithKeysToFetch:(id)a3;
- (id)fetchContactWithKeys:(id)a3;
- (id)labeledValueIdentifier;
- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4;
- (id)nameComponentsFromAddress;
- (id)nameComponentsFromContact;
- (id)unifiedHandles;
- (unint64_t)hash;
- (unint64_t)sourceType;
- (void)addRecipientToPasteboard:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAddress:(id)a3;
- (void)setDisplayString:(id)a3;
@end

@implementation CNComposeRecipient

+ (OS_os_log)os_log
{
  if (os_log_cn_once_token_5 != -1)
  {
    +[CNComposeRecipient os_log];
  }

  v3 = os_log_cn_once_object_5;

  return v3;
}

uint64_t __28__CNComposeRecipient_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts.autocomplete.ui", "compose-recipient");
  v1 = os_log_cn_once_object_5;
  os_log_cn_once_object_5 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (OS_os_log)namingLog
{
  if (namingLog_cn_once_token_6 != -1)
  {
    +[CNComposeRecipient namingLog];
  }

  v3 = namingLog_cn_once_object_6;

  return v3;
}

uint64_t __31__CNComposeRecipient_namingLog__block_invoke()
{
  v0 = os_log_create("com.apple.contacts.autocomplete.ui", "compose-recipient-naming");
  v1 = namingLog_cn_once_object_6;
  namingLog_cn_once_object_6 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)descriptorsForRequiredKeysForContact
{
  v7[4] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695C330];
  v7[0] = *MEMORY[0x1E695C208];
  v7[1] = v2;
  v3 = [MEMORY[0x1E695D148] descriptorForRequiredKeys];
  v7[2] = v3;
  v4 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
  v7[3] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:4];

  return v5;
}

- (CNComposeRecipient)initWithContact:(id)a3 address:(id)a4 displayString:(id)a5 kind:(unint64_t)a6
{
  v37 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v26.receiver = self;
  v26.super_class = CNComposeRecipient;
  v14 = [(CNComposeRecipient *)&v26 init];
  if (v14)
  {
    v15 = [objc_opt_class() namingLog];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      *buf = 138544387;
      v28 = v25;
      v29 = 2048;
      v30 = v14;
      v31 = 2113;
      v32 = v13;
      v33 = 2113;
      v34 = v12;
      v35 = 2048;
      v36 = a6;
      _os_log_debug_impl(&dword_1B8106000, v15, OS_LOG_TYPE_DEBUG, "Initializing %{public}@ %p with displayString '%{private}@', address '%{private}@' (%lu)", buf, 0x34u);
    }

    objc_storeStrong(&v14->_contact, a3);
    v16 = [v12 copy];
    inputAddress = v14->_inputAddress;
    v14->_inputAddress = v16;

    v18 = _displayableAddressOfKind(v12, a6);
    address = v14->_address;
    v14->_address = v18;

    if (v13)
    {
      v20 = [v13 copy];
    }

    else
    {
      v20 = &stru_1F3002C60;
    }

    displayString = v14->_displayString;
    v14->_displayString = &v20->isa;

    v14->_kind = a6;
    v22 = v14;
  }

  return v14;
}

+ (CNComposeRecipient)composeRecipientWithAutocompleteResult:(id)a3
{
  v3 = a3;
  if (![v3 resultType])
  {
    v7 = [v3 value];
    v8 = [v7 addressType];

    if ((v8 - 1) > 4)
    {
      v9 = 5;
    }

    else
    {
      v9 = qword_1B8155608[v8 - 1];
    }

    v10 = [v3 value];
    v11 = [v10 address];

    if (!v11 || ([v11 ea_isLegalEmailAddress] & 1) != 0)
    {
LABEL_19:
      if ([v11 length])
      {
        v6 = [[CNComposeRecipient alloc] initWithContact:0 address:v11 kind:v9];
        [(CNComposeRecipient *)v6 setAutocompleteResult:v3];
        v15 = [v3 displayName];
        [(CNComposeRecipient *)v6 setDisplayString:v15];

        v16 = [v3 value];
        v17 = [v16 identifier];
        [(CNComposeRecipient *)v6 setValueIdentifier:v17];

        v18 = [v3 value];
        v19 = [v18 label];
        [(CNComposeRecipient *)v6 setUnlocalizedLabel:v19];

        v20 = [v3 identifier];

        if (v20)
        {
          v21 = [v3 identifier];
          [(CNComposeRecipient *)v6 setContactIdentifier:v21];
        }
      }

      else
      {
        v6 = 0;
      }

      v22 = [v3 nameComponents];
      if (v22)
      {
        v23 = objc_opt_new();
        v24 = [v22 firstName];
        [v23 setGivenName:v24];

        v25 = [v22 lastName];
        [v23 setFamilyName:v25];

        v26 = [v22 nickname];
        [v23 setNickname:v26];

        v27 = [v22 nameSuffix];
        [v23 setNameSuffix:v27];

        [(CNComposeRecipient *)v6 setNameComponents:v23];
      }

      else
      {
        v28 = [v3 displayName];
        v29 = _normalizeAddressOfKind(v28, 1);
        v30 = [v11 isEqualToString:v29];

        if (v30)
        {
LABEL_28:

          goto LABEL_29;
        }

        v31 = MEMORY[0x1E6996790];
        v23 = [v3 displayName];
        v32 = [v31 componentsFromString:v23];
        [(CNComposeRecipient *)v6 setNameComponents:v32];
      }

      goto LABEL_28;
    }

    v12 = [MEMORY[0x1E695DFF8] URLWithString:v11];
    v13 = [v12 scheme];
    if ([v13 length])
    {
      if ([@"mailto" isEqualToString:v13])
      {
        v14 = [v12 resourceSpecifier];

        v9 = 0;
      }

      else
      {
        if (![@"tel" isEqualToString:v13])
        {
          if ([@"urn" isEqualToString:v13])
          {
            v9 = 4;
          }

          goto LABEL_18;
        }

        v14 = [v12 resourceSpecifier];

        v9 = 1;
      }

      v11 = v14;
    }

LABEL_18:

    goto LABEL_19;
  }

  if ([v3 resultType] == 1)
  {
    v4 = [CNComposeRecipientGroup alloc];
    v5 = [v3 displayName];
    v6 = [(CNComposeRecipientGroup *)v4 initWithChildren:0 displayString:v5];

    [(CNComposeRecipient *)v6 setAutocompleteResult:v3];
  }

  else
  {
    v6 = 0;
  }

LABEL_29:

  return v6;
}

- (CNComposeRecipient)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contact"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contactIdentifier"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"address"];
  v8 = [v4 decodeIntegerForKey:@"kind"];

  v9 = [(CNComposeRecipient *)self initWithContact:v5 address:v7 kind:v8];
  [(CNComposeRecipient *)v9 setContactIdentifier:v6];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_contact || self->_contactIdentifier)
  {
    [v4 encodeObject:? forKey:?];
  }

  v5 = [(CNComposeRecipient *)self inputAddress];

  if (v5)
  {
    v6 = [(CNComposeRecipient *)self inputAddress];
    [v9 encodeObject:v6 forKey:@"address"];
  }

  kind = self->_kind;
  v8 = v9;
  if (kind)
  {
    [v9 encodeInteger:kind forKey:@"kind"];
    v8 = v9;
  }
}

- (void)addRecipientToPasteboard:(id)a3
{
  v4 = MEMORY[0x1E696ACC8];
  v5 = a3;
  v6 = [v4 archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  v7 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__CNComposeRecipient_addRecipientToPasteboard___block_invoke;
  v9[3] = &unk_1E7CD2508;
  v10 = v6;
  v8 = v6;
  [v7 registerDataRepresentationForTypeIdentifier:@"kCNPasteboardTypeComposeRecipient" visibility:0 loadHandler:v9];
  [v5 addObject:v7];
}

- (id)contactWithKeysToFetch:(id)a3
{
  v4 = a3;
  if (![(CNContact *)self->_contact areKeysAvailable:v4])
  {
    v5 = [(CNComposeRecipient *)self fetchContactWithKeys:v4];
    contact = self->_contact;
    self->_contact = v5;
  }

  v7 = self->_contact;
  v8 = v7;

  return v7;
}

- (CNContact)contact
{
  contact = self->_contact;
  if (!contact || (+[CNComposeRecipient descriptorsForRequiredKeysForContact], v4 = objc_claimAutoreleasedReturnValue(), v5 = [(CNContact *)contact areKeysAvailable:v4], v4, !v5))
  {
    v6 = +[CNComposeRecipient descriptorsForRequiredKeysForContact];
    v7 = [(CNComposeRecipient *)self fetchContactWithKeys:v6];
    v8 = self->_contact;
    self->_contact = v7;
  }

  v9 = self->_contact;

  return v9;
}

- (id)fetchContactWithKeys:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  autocompleteResult = self->_autocompleteResult;
  if (autocompleteResult)
  {
    v17 = 0;
    v6 = [(CNAutocompleteResult *)autocompleteResult contactWithKeysToFetch:v4 error:&v17];
    v7 = v17;
    if (v6)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = self->_contactIdentifier;
  if (!v8)
  {
    contact = self->_contact;
    if (!contact || ![(CNContact *)contact hasBeenPersisted]|| ([(CNContact *)self->_contact identifier], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v6 = 0;
      if (!v7)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }
  }

  v9 = v8;
  v10 = CNAutocompleteSharedContactStore();
  v16 = v7;
  v6 = [v10 unifiedContactWithIdentifier:v9 keysToFetch:v4 error:&v16];
  v11 = v16;

  v7 = v11;
LABEL_7:
  if (!v7)
  {
    goto LABEL_11;
  }

LABEL_8:
  v12 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v7 localizedDescription];
    *buf = 134218242;
    v19 = self;
    v20 = 2112;
    v21 = v13;
    _os_log_impl(&dword_1B8106000, v12, OS_LOG_TYPE_DEFAULT, "Error fetching contact for recipient: %p, %@", buf, 0x16u);
  }

LABEL_11:

  return v6;
}

- (unint64_t)sourceType
{
  v2 = [(CNComposeRecipient *)self autocompleteResult];
  v3 = [v2 sourceType];

  return v3;
}

- (NSString)displayString
{
  if (self->_displayString)
  {
    return self->_displayString;
  }

  else
  {
    return &stru_1F3002C60;
  }
}

- (void)setDisplayString:(id)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = &stru_1F3002C60;
  }

  objc_storeStrong(&self->_displayString, v3);
}

- (BOOL)isRemovableFromSearchResults
{
  v3 = [(CNComposeRecipient *)self sourceType]& 5;
  v4 = [(CNComposeRecipient *)self sourceType];
  result = 0;
  if (v3)
  {
    if ((v4 & 2) == 0)
    {
      return ![(CNComposeRecipient *)self isMemberOfGroup];
    }
  }

  return result;
}

- (BOOL)showsAccessoryButton
{
  if ([(CNComposeRecipient *)self isSuggestedRecipient])
  {
    return 1;
  }

  return [(CNComposeRecipient *)self isRemovableFromSearchResults];
}

- (BOOL)wasCompleteMatch
{
  v2 = self;
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = [(CNComposeRecipientOriginContext *)self->_originContext searchTerm];
  v7[0] = v2;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v6 = 0;
  LOBYTE(v2) = _fastCountOfCompleteMatches(v3, v4, &v6) != 0;

  return v2;
}

- (id)completelyMatchedAttributedStrings
{
  v13[1] = *MEMORY[0x1E69E9840];
  cachedMatchedStrings = self->_cachedMatchedStrings;
  if (!cachedMatchedStrings)
  {
    v4 = [(CNComposeRecipientOriginContext *)self->_originContext searchTerm];
    v13[0] = self;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v11 = 0;
    v12 = 0;
    v6 = _sortedArrayByRelevancy(v4, v5, &v12, &v11);
    v7 = v12;
    v8 = v11;

    v9 = self->_cachedMatchedStrings;
    self->_cachedMatchedStrings = v8;

    cachedMatchedStrings = self->_cachedMatchedStrings;
  }

  return cachedMatchedStrings;
}

- (void)setAddress:(id)a3
{
  v4 = [a3 copy];
  inputAddress = self->_inputAddress;
  self->_inputAddress = v4;

  v6 = [(CNComposeRecipient *)self uncommentedAddress];
  v7 = _displayableAddressOfKind(v6, self->_kind);
  address = self->_address;
  self->_address = v7;

  compositeName = self->_compositeName;
  self->_compositeName = 0;

  shortName = self->_shortName;
  self->_shortName = 0;
}

- (NSString)normalizedAddress
{
  v3 = [(CNComposeRecipient *)self uncommentedAddress];
  v4 = _normalizeAddressOfKind(v3, self->_kind);

  return v4;
}

- (id)unifiedHandles
{
  cachedHandles = self->_cachedHandles;
  if (!cachedHandles)
  {
    v4 = objc_alloc(MEMORY[0x1E695DFD8]);
    v5 = [(CNComposeRecipient *)self associatedHandles];
    v6 = [v4 initWithArray:v5];
    v7 = self->_cachedHandles;
    self->_cachedHandles = v6;

    cachedHandles = self->_cachedHandles;
  }

  return cachedHandles;
}

- (id)associatedHandles
{
  v17[2] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695C330];
  v17[0] = *MEMORY[0x1E695C208];
  v17[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v5 = [(CNComposeRecipient *)self contactWithKeysToFetch:v4];

  if (v5)
  {
    v6 = [v5 emailAddresses];
    v7 = [v6 _cn_map:&__block_literal_global_79];

    v8 = [v5 phoneNumbers];
    v9 = [v8 _cn_map:&__block_literal_global_81];

    v10 = [(CNComposeRecipient *)self normalizedAddress];
    v15 = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
    v12 = [v7 arrayByAddingObjectsFromArray:v9];
    v13 = [v11 arrayByAddingObjectsFromArray:v12];
  }

  else
  {
    v7 = [(CNComposeRecipient *)self normalizedAddress];
    v16 = v7;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
  }

  return v13;
}

- (NSString)commentedAddress
{
  if (self->_kind)
  {
    v3 = [(CNComposeRecipient *)self address];
  }

  else
  {
    v4 = [(CNComposeRecipient *)self uncommentedAddress];
    v5 = [CNComposeRecipientNamer nameForComposeRecipient:2147483615 sources:?];
    if (v4 && [v4 length] && v5 && objc_msgSend(v5, "length"))
    {
      v6 = [MEMORY[0x1E699AFC0] formattedAddressWithName:v5 email:v4 useQuotes:1];
    }

    else
    {
      v6 = v4;
    }

    v3 = v6;
    if (!v6)
    {
      v3 = [(CNComposeRecipient *)self inputAddress];

      if (v3)
      {
        v7 = [(CNComposeRecipient *)self inputAddress];
        v8 = [v7 ea_uncommentedAddress];

        v9 = [(CNComposeRecipient *)self inputAddress];
        v10 = [v9 ea_addressComment];

        v3 = [MEMORY[0x1E699AFC0] formattedAddressWithName:v10 email:v8 useQuotes:1];
      }
    }
  }

  return v3;
}

- (NSString)label
{
  label = self->_label;
  if (!label)
  {
    v4 = [(CNComposeRecipient *)self unlocalizedLabel];
    if (v4)
    {
      v5 = [(CNComposeRecipient *)self contact];

      if (v5)
      {
        v6 = [MEMORY[0x1E695CEE0] localizedStringForLabel:v4];
        v7 = self->_label;
        self->_label = v6;
      }
    }

    label = self->_label;
  }

  return label;
}

- (NSString)unlocalizedLabel
{
  v3 = [(CNComposeRecipient *)self contact];

  if (v3)
  {
    v4 = self->_unlocalizedLabel;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)compositeName
{
  v3 = self->_compositeName;
  if (!v3)
  {
    v3 = [CNComposeRecipientNamer nameForComposeRecipient:?];
    v4 = [(NSString *)v3 copy];
    compositeName = self->_compositeName;
    self->_compositeName = v4;
  }

  return v3;
}

- (NSString)shortName
{
  v3 = self->_shortName;
  if (!v3)
  {
    v3 = [CNComposeRecipientShortNamer shortNameForComposeRecipient:?];
    v4 = [(NSString *)v3 copy];
    shortName = self->_shortName;
    self->_shortName = v4;
  }

  return v3;
}

- (NSString)placeholderName
{
  v2 = [(CNComposeRecipient *)self sourceType];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (v2 == 1)
  {
    v5 = @"RECENT_PLACEHOLDER_NAME";
  }

  else
  {
    v5 = @"PLACEHOLDER_NAME";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_1F3002C60 table:@"Localized"];

  return v6;
}

- (NSPersonNameComponents)nameComponents
{
  v3 = self->_nameComponents;
  if (v3 || ([(CNComposeRecipient *)self nameComponentsFromContact], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
  }

  else
  {
    v6 = [(CNComposeRecipient *)self nameComponentsFromAddress];
    v4 = v6;
    if (v6)
    {
      v7 = v6;
    }
  }

  return v4;
}

- (id)nameComponentsFromContact
{
  if (self->_contact)
  {
    v3 = [MEMORY[0x1E696ADF0] componentsForContact:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)nameComponentsFromAddress
{
  address = self->_address;
  if (address && !self->_kind)
  {
    v5 = [(NSString *)address ea_addressComment];
    v6 = v5;
    if (v5 && ([v5 isEqualToString:self->_address] & 1) == 0)
    {
      v7 = objc_alloc_init(MEMORY[0x1E696ADF8]);
      v4 = [v7 personNameComponentsFromString:v6];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)uncommentedAddress
{
  v38[2] = *MEMORY[0x1E69E9840];
  v3 = [(CNComposeRecipient *)self inputAddress];

  if (v3)
  {
    kind = self->_kind;
    v5 = [(CNComposeRecipient *)self inputAddress];
    v6 = v5;
    if (!kind)
    {
      v7 = [v5 ea_uncommentedAddress];

      v6 = v7;
    }
  }

  else
  {
    v8 = *MEMORY[0x1E695C330];
    v38[0] = *MEMORY[0x1E695C208];
    v38[1] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
    v10 = [(CNComposeRecipient *)self contactWithKeysToFetch:v9];

    if (v10)
    {
      if (self->_kind == 1)
      {
        v34 = 0uLL;
        v35 = 0uLL;
        v32 = 0uLL;
        v33 = 0uLL;
        v11 = [v10 phoneNumbers];
        v12 = [v11 countByEnumeratingWithState:&v32 objects:v37 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v33;
          while (2)
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v33 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v32 + 1) + 8 * i);
              v17 = [v16 identifier];
              v18 = [v17 isEqualToString:self->_valueIdentifier];

              if (v18)
              {
                v26 = [v16 value];
                v6 = [v26 stringValue];

                goto LABEL_27;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v32 objects:v37 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }
      }

      else
      {
        v30 = 0uLL;
        v31 = 0uLL;
        *(&v28 + 1) = 0;
        v29 = 0uLL;
        v11 = [v10 emailAddresses];
        v19 = [v11 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v29;
          while (2)
          {
            for (j = 0; j != v20; ++j)
            {
              if (*v29 != v21)
              {
                objc_enumerationMutation(v11);
              }

              v23 = *(*(&v28 + 1) + 8 * j);
              v24 = [v23 identifier];
              v25 = [v24 isEqualToString:self->_valueIdentifier];

              if (v25)
              {
                v6 = [v23 value];
                goto LABEL_27;
              }
            }

            v20 = [v11 countByEnumeratingWithState:&v28 objects:v36 count:16];
            if (v20)
            {
              continue;
            }

            break;
          }
        }
      }

      v6 = 0;
LABEL_27:
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (NSString)stringForEqualityTesting
{
  v3 = [(CNComposeRecipient *)self address];
  if ((*(*MEMORY[0x1E6996568] + 16))())
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", self];

    v3 = v4;
  }

  return v3;
}

- (NSString)pasteboardString
{
  v3 = [(CNComposeRecipient *)self uncommentedAddress];
  if (!v3)
  {
    v3 = [(CNComposeRecipient *)self address];
    if (!v3)
    {
      v3 = [(CNComposeRecipient *)self compositeName];
    }
  }

  return v3;
}

- (BOOL)supportsPasteboardUnarchiving
{
  v3 = [(CNComposeRecipient *)self contact];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(CNComposeRecipient *)self inputAddress];
    if (v5)
    {
      v4 = 1;
    }

    else
    {
      v4 = [(CNComposeRecipient *)self isGroup];
    }
  }

  return v4;
}

- (id)_unformattedAddress
{
  v3 = [(CNComposeRecipient *)self uncommentedAddress];
  if (self->_kind == 1)
  {
    v4 = UIUnformattedPhoneNumberFromString();

    v3 = v4;
  }

  return v3;
}

- (id)labeledValueIdentifier
{
  v17[1] = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2;
  v15 = __Block_byref_object_dispose__2;
  v16 = 0;
  v17[0] = *MEMORY[0x1E695C208];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v4 = [(CNComposeRecipient *)self contactWithKeysToFetch:v3];

  if (v4)
  {
    v5 = [(CNComposeRecipient *)self inputAddress];
    v6 = v5 == 0;

    if (!v6)
    {
      v7 = [v4 emailAddresses];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __44__CNComposeRecipient_labeledValueIdentifier__block_invoke;
      v10[3] = &unk_1E7CD2550;
      v10[4] = self;
      v10[5] = &v11;
      [v7 enumerateObjectsUsingBlock:v10];
    }
  }

  v8 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v8;
}

void __44__CNComposeRecipient_labeledValueIdentifier__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v6 = [v12 value];
  v7 = [*(a1 + 32) inputAddress];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    v9 = [v12 identifier];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    *a4 = 1;
  }
}

- (BOOL)isEquivalentAddressToRecipient:(id)a3
{
  v4 = a3;
  v5 = [(CNComposeRecipient *)self kind];
  if (v5 == [(CNComposeRecipient *)v4 kind])
  {
    if (self == v4)
    {
      v13 = 1;
    }

    else
    {
      if ([(CNComposeRecipient *)self kind])
      {
        if ([(CNComposeRecipient *)self kind]== 1)
        {
          v6 = MEMORY[0x1E695CF50];
          v7 = [(CNComposeRecipient *)self address];
          v8 = [v6 phoneNumberWithStringValue:v7];

          v9 = MEMORY[0x1E695CF50];
          v10 = [(CNComposeRecipient *)v4 address];
          v11 = [v9 phoneNumberWithStringValue:v10];

          v12 = [v8 isEqual:v11];
        }

        else
        {
          v8 = [(CNComposeRecipient *)v4 normalizedAddress];
          v11 = [(CNComposeRecipient *)self normalizedAddress];
          v12 = [v8 isEqualToString:v11];
        }
      }

      else
      {
        v8 = [(CNComposeRecipient *)self address];
        v11 = [(CNComposeRecipient *)v4 address];
        v12 = [v8 _cn_caseInsensitiveIsEqual:v11];
      }

      v13 = v12;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 && ([(CNComposeRecipient *)self address], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, [(CNComposeRecipient *)v4 address], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
    {
      v8 = [(CNComposeRecipient *)v4 address];
      v9 = [(CNComposeRecipient *)self address];
      v10 = [v9 ea_isEqualToEmailAddress:v8];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(CNComposeRecipient *)self address];

  if (v3)
  {
    v4 = [(CNComposeRecipient *)self address];
    v5 = [v4 hash];

    return v5;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CNComposeRecipient;
    return [(CNComposeRecipient *)&v7 hash];
  }
}

- (NSString)description
{
  v3 = [MEMORY[0x1E695DF70] array];
  if (([(CNComposeRecipient *)self sourceType]& 2) != 0)
  {
    [v3 addObject:@"Contact"];
  }

  if (([(CNComposeRecipient *)self sourceType]& 0x10) != 0)
  {
    [v3 addObject:@"Prediction"];
  }

  if (([(CNComposeRecipient *)self sourceType]& 1) != 0)
  {
    [v3 addObject:@"Recent"];
  }

  if (([(CNComposeRecipient *)self sourceType]& 0x48) != 0)
  {
    [v3 addObject:@"Server"];
  }

  if (([(CNComposeRecipient *)self sourceType]& 4) != 0)
  {
    [v3 addObject:@"Suggestion"];
  }

  if (![(CNComposeRecipient *)self sourceType])
  {
    [v3 addObject:@"<undefined>"];
  }

  v4 = [v3 componentsJoinedByString:@"+"];
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [(CNComposeRecipient *)self displayString];
  v9 = [(CNComposeRecipient *)self address];
  v10 = [v5 stringWithFormat:@"<%@: %p displayString: %@; address: %@; autocompleteSource: %@>", v7, self, v8, v9, v4];;

  return v10;
}

+ (NSArray)readableTypeIdentifiersForItemProvider
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"com.apple.contactsui.composerecipient";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5
{
  v7 = a3;
  if (!UTTypeConformsTo(a4, @"com.apple.contactsui.composerecipient"))
  {
    v8 = 0;
    if (!a5)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v12 = 0;
  v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:&v12];
  v9 = v12;
  if (v9)
  {
    v10 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CNComposeRecipient(NSItemProvider) objectWithItemProviderData:v9 typeIdentifier:v10 error:?];
    }
  }

  if (a5)
  {
LABEL_9:
    if (!v8)
    {
      *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    }
  }

LABEL_11:

  return v8;
}

+ (NSArray)writableTypeIdentifiersForItemProvider
{
  v2 = [MEMORY[0x1E695DF70] array];
  [v2 addObject:@"com.apple.contactsui.composerecipient"];
  [v2 addObject:*MEMORY[0x1E69638D8]];
  v3 = [MEMORY[0x1E696AEC0] writableTypeIdentifiersForItemProvider];
  [v2 addObjectsFromArray:v3];

  return v2;
}

- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4
{
  v21[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(__CFString *)v6 isEqualToString:@"com.apple.contactsui.composerecipient"])
  {
    v8 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
    v7[2](v7, v8, 0);
    goto LABEL_3;
  }

  if (!UTTypeConformsTo(v6, *MEMORY[0x1E6963870]))
  {
    if (!UTTypeConformsTo(v6, *MEMORY[0x1E69638D8]))
    {
      v7[2](v7, 0, 0);
      goto LABEL_4;
    }

    v12 = [(CNComposeRecipient *)self contact];
    v13 = v12;
    if (v12)
    {
      v8 = v12;
    }

    else
    {
      v14 = MEMORY[0x1E695CD58];
      v15 = [(CNComposeRecipient *)self commentedAddress];
      v8 = [v14 em_contactFromEmailAddress:v15];
    }

    v16 = MEMORY[0x1E695CE30];
    v21[0] = v8;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    v20 = 0;
    v18 = [v16 dataWithContacts:v17 error:&v20];
    v19 = v20;

    (v7)[2](v7, v18, v19);
LABEL_3:

LABEL_4:
    v9 = 0;
    goto LABEL_7;
  }

  v10 = [(CNComposeRecipient *)self commentedAddress];
  v9 = [v10 loadDataWithTypeIdentifier:v6 forItemProviderCompletionHandler:v7];

LABEL_7:

  return v9;
}

@end