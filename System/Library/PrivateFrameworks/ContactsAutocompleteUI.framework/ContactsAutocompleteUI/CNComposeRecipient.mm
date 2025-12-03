@interface CNComposeRecipient
+ (CNComposeRecipient)composeRecipientWithAutocompleteResult:(id)result;
+ (NSArray)readableTypeIdentifiersForItemProvider;
+ (NSArray)writableTypeIdentifiersForItemProvider;
+ (OS_os_log)namingLog;
+ (OS_os_log)os_log;
+ (id)descriptorsForRequiredKeysForContact;
+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEquivalentAddressToRecipient:(id)recipient;
- (BOOL)isRemovableFromSearchResults;
- (BOOL)showsAccessoryButton;
- (BOOL)supportsPasteboardUnarchiving;
- (BOOL)wasCompleteMatch;
- (CNComposeRecipient)initWithCoder:(id)coder;
- (CNComposeRecipient)initWithContact:(id)contact address:(id)address displayString:(id)string kind:(unint64_t)kind;
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
- (id)contactWithKeysToFetch:(id)fetch;
- (id)fetchContactWithKeys:(id)keys;
- (id)labeledValueIdentifier;
- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler;
- (id)nameComponentsFromAddress;
- (id)nameComponentsFromContact;
- (id)unifiedHandles;
- (unint64_t)hash;
- (unint64_t)sourceType;
- (void)addRecipientToPasteboard:(id)pasteboard;
- (void)encodeWithCoder:(id)coder;
- (void)setAddress:(id)address;
- (void)setDisplayString:(id)string;
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
  descriptorForRequiredKeys = [MEMORY[0x1E695D148] descriptorForRequiredKeys];
  v7[2] = descriptorForRequiredKeys;
  v4 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
  v7[3] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:4];

  return v5;
}

- (CNComposeRecipient)initWithContact:(id)contact address:(id)address displayString:(id)string kind:(unint64_t)kind
{
  v37 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  addressCopy = address;
  stringCopy = string;
  v26.receiver = self;
  v26.super_class = CNComposeRecipient;
  v14 = [(CNComposeRecipient *)&v26 init];
  if (v14)
  {
    namingLog = [objc_opt_class() namingLog];
    if (os_log_type_enabled(namingLog, OS_LOG_TYPE_DEBUG))
    {
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      *buf = 138544387;
      v28 = v25;
      v29 = 2048;
      v30 = v14;
      v31 = 2113;
      v32 = stringCopy;
      v33 = 2113;
      v34 = addressCopy;
      v35 = 2048;
      kindCopy = kind;
      _os_log_debug_impl(&dword_1B8106000, namingLog, OS_LOG_TYPE_DEBUG, "Initializing %{public}@ %p with displayString '%{private}@', address '%{private}@' (%lu)", buf, 0x34u);
    }

    objc_storeStrong(&v14->_contact, contact);
    v16 = [addressCopy copy];
    inputAddress = v14->_inputAddress;
    v14->_inputAddress = v16;

    v18 = _displayableAddressOfKind(addressCopy, kind);
    address = v14->_address;
    v14->_address = v18;

    if (stringCopy)
    {
      v20 = [stringCopy copy];
    }

    else
    {
      v20 = &stru_1F3002C60;
    }

    displayString = v14->_displayString;
    v14->_displayString = &v20->isa;

    v14->_kind = kind;
    v22 = v14;
  }

  return v14;
}

+ (CNComposeRecipient)composeRecipientWithAutocompleteResult:(id)result
{
  resultCopy = result;
  if (![resultCopy resultType])
  {
    value = [resultCopy value];
    addressType = [value addressType];

    if ((addressType - 1) > 4)
    {
      v9 = 5;
    }

    else
    {
      v9 = qword_1B8155608[addressType - 1];
    }

    value2 = [resultCopy value];
    address = [value2 address];

    if (!address || ([address ea_isLegalEmailAddress] & 1) != 0)
    {
LABEL_19:
      if ([address length])
      {
        v6 = [[CNComposeRecipient alloc] initWithContact:0 address:address kind:v9];
        [(CNComposeRecipient *)v6 setAutocompleteResult:resultCopy];
        displayName = [resultCopy displayName];
        [(CNComposeRecipient *)v6 setDisplayString:displayName];

        value3 = [resultCopy value];
        identifier = [value3 identifier];
        [(CNComposeRecipient *)v6 setValueIdentifier:identifier];

        value4 = [resultCopy value];
        label = [value4 label];
        [(CNComposeRecipient *)v6 setUnlocalizedLabel:label];

        identifier2 = [resultCopy identifier];

        if (identifier2)
        {
          identifier3 = [resultCopy identifier];
          [(CNComposeRecipient *)v6 setContactIdentifier:identifier3];
        }
      }

      else
      {
        v6 = 0;
      }

      nameComponents = [resultCopy nameComponents];
      if (nameComponents)
      {
        displayName3 = objc_opt_new();
        firstName = [nameComponents firstName];
        [displayName3 setGivenName:firstName];

        lastName = [nameComponents lastName];
        [displayName3 setFamilyName:lastName];

        nickname = [nameComponents nickname];
        [displayName3 setNickname:nickname];

        nameSuffix = [nameComponents nameSuffix];
        [displayName3 setNameSuffix:nameSuffix];

        [(CNComposeRecipient *)v6 setNameComponents:displayName3];
      }

      else
      {
        displayName2 = [resultCopy displayName];
        v29 = _normalizeAddressOfKind(displayName2, 1);
        v30 = [address isEqualToString:v29];

        if (v30)
        {
LABEL_28:

          goto LABEL_29;
        }

        v31 = MEMORY[0x1E6996790];
        displayName3 = [resultCopy displayName];
        v32 = [v31 componentsFromString:displayName3];
        [(CNComposeRecipient *)v6 setNameComponents:v32];
      }

      goto LABEL_28;
    }

    v12 = [MEMORY[0x1E695DFF8] URLWithString:address];
    scheme = [v12 scheme];
    if ([scheme length])
    {
      if ([@"mailto" isEqualToString:scheme])
      {
        resourceSpecifier = [v12 resourceSpecifier];

        v9 = 0;
      }

      else
      {
        if (![@"tel" isEqualToString:scheme])
        {
          if ([@"urn" isEqualToString:scheme])
          {
            v9 = 4;
          }

          goto LABEL_18;
        }

        resourceSpecifier = [v12 resourceSpecifier];

        v9 = 1;
      }

      address = resourceSpecifier;
    }

LABEL_18:

    goto LABEL_19;
  }

  if ([resultCopy resultType] == 1)
  {
    v4 = [CNComposeRecipientGroup alloc];
    displayName4 = [resultCopy displayName];
    v6 = [(CNComposeRecipientGroup *)v4 initWithChildren:0 displayString:displayName4];

    [(CNComposeRecipient *)v6 setAutocompleteResult:resultCopy];
  }

  else
  {
    v6 = 0;
  }

LABEL_29:

  return v6;
}

- (CNComposeRecipient)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contact"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contactIdentifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"address"];
  v8 = [coderCopy decodeIntegerForKey:@"kind"];

  v9 = [(CNComposeRecipient *)self initWithContact:v5 address:v7 kind:v8];
  [(CNComposeRecipient *)v9 setContactIdentifier:v6];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v9 = coderCopy;
  if (self->_contact || self->_contactIdentifier)
  {
    [coderCopy encodeObject:? forKey:?];
  }

  inputAddress = [(CNComposeRecipient *)self inputAddress];

  if (inputAddress)
  {
    inputAddress2 = [(CNComposeRecipient *)self inputAddress];
    [v9 encodeObject:inputAddress2 forKey:@"address"];
  }

  kind = self->_kind;
  v8 = v9;
  if (kind)
  {
    [v9 encodeInteger:kind forKey:@"kind"];
    v8 = v9;
  }
}

- (void)addRecipientToPasteboard:(id)pasteboard
{
  v4 = MEMORY[0x1E696ACC8];
  pasteboardCopy = pasteboard;
  v6 = [v4 archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  v7 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__CNComposeRecipient_addRecipientToPasteboard___block_invoke;
  v9[3] = &unk_1E7CD2508;
  v10 = v6;
  v8 = v6;
  [v7 registerDataRepresentationForTypeIdentifier:@"kCNPasteboardTypeComposeRecipient" visibility:0 loadHandler:v9];
  [pasteboardCopy addObject:v7];
}

- (id)contactWithKeysToFetch:(id)fetch
{
  fetchCopy = fetch;
  if (![(CNContact *)self->_contact areKeysAvailable:fetchCopy])
  {
    v5 = [(CNComposeRecipient *)self fetchContactWithKeys:fetchCopy];
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

- (id)fetchContactWithKeys:(id)keys
{
  v22 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  autocompleteResult = self->_autocompleteResult;
  if (autocompleteResult)
  {
    v17 = 0;
    v6 = [(CNAutocompleteResult *)autocompleteResult contactWithKeysToFetch:keysCopy error:&v17];
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
  v6 = [v10 unifiedContactWithIdentifier:v9 keysToFetch:keysCopy error:&v16];
  v11 = v16;

  v7 = v11;
LABEL_7:
  if (!v7)
  {
    goto LABEL_11;
  }

LABEL_8:
  os_log = [objc_opt_class() os_log];
  if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEFAULT))
  {
    localizedDescription = [v7 localizedDescription];
    *buf = 134218242;
    selfCopy = self;
    v20 = 2112;
    v21 = localizedDescription;
    _os_log_impl(&dword_1B8106000, os_log, OS_LOG_TYPE_DEFAULT, "Error fetching contact for recipient: %p, %@", buf, 0x16u);
  }

LABEL_11:

  return v6;
}

- (unint64_t)sourceType
{
  autocompleteResult = [(CNComposeRecipient *)self autocompleteResult];
  sourceType = [autocompleteResult sourceType];

  return sourceType;
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

- (void)setDisplayString:(id)string
{
  if (string)
  {
    stringCopy = string;
  }

  else
  {
    stringCopy = &stru_1F3002C60;
  }

  objc_storeStrong(&self->_displayString, stringCopy);
}

- (BOOL)isRemovableFromSearchResults
{
  v3 = [(CNComposeRecipient *)self sourceType]& 5;
  sourceType = [(CNComposeRecipient *)self sourceType];
  result = 0;
  if (v3)
  {
    if ((sourceType & 2) == 0)
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
  selfCopy = self;
  v7[1] = *MEMORY[0x1E69E9840];
  searchTerm = [(CNComposeRecipientOriginContext *)self->_originContext searchTerm];
  v7[0] = selfCopy;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v6 = 0;
  LOBYTE(selfCopy) = _fastCountOfCompleteMatches(searchTerm, v4, &v6) != 0;

  return selfCopy;
}

- (id)completelyMatchedAttributedStrings
{
  v13[1] = *MEMORY[0x1E69E9840];
  cachedMatchedStrings = self->_cachedMatchedStrings;
  if (!cachedMatchedStrings)
  {
    searchTerm = [(CNComposeRecipientOriginContext *)self->_originContext searchTerm];
    v13[0] = self;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v11 = 0;
    v12 = 0;
    v6 = _sortedArrayByRelevancy(searchTerm, v5, &v12, &v11);
    v7 = v12;
    v8 = v11;

    v9 = self->_cachedMatchedStrings;
    self->_cachedMatchedStrings = v8;

    cachedMatchedStrings = self->_cachedMatchedStrings;
  }

  return cachedMatchedStrings;
}

- (void)setAddress:(id)address
{
  v4 = [address copy];
  inputAddress = self->_inputAddress;
  self->_inputAddress = v4;

  uncommentedAddress = [(CNComposeRecipient *)self uncommentedAddress];
  v7 = _displayableAddressOfKind(uncommentedAddress, self->_kind);
  address = self->_address;
  self->_address = v7;

  compositeName = self->_compositeName;
  self->_compositeName = 0;

  shortName = self->_shortName;
  self->_shortName = 0;
}

- (NSString)normalizedAddress
{
  uncommentedAddress = [(CNComposeRecipient *)self uncommentedAddress];
  v4 = _normalizeAddressOfKind(uncommentedAddress, self->_kind);

  return v4;
}

- (id)unifiedHandles
{
  cachedHandles = self->_cachedHandles;
  if (!cachedHandles)
  {
    v4 = objc_alloc(MEMORY[0x1E695DFD8]);
    associatedHandles = [(CNComposeRecipient *)self associatedHandles];
    v6 = [v4 initWithArray:associatedHandles];
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
    emailAddresses = [v5 emailAddresses];
    normalizedAddress2 = [emailAddresses _cn_map:&__block_literal_global_79];

    phoneNumbers = [v5 phoneNumbers];
    v9 = [phoneNumbers _cn_map:&__block_literal_global_81];

    normalizedAddress = [(CNComposeRecipient *)self normalizedAddress];
    v15 = normalizedAddress;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
    v12 = [normalizedAddress2 arrayByAddingObjectsFromArray:v9];
    v13 = [v11 arrayByAddingObjectsFromArray:v12];
  }

  else
  {
    normalizedAddress2 = [(CNComposeRecipient *)self normalizedAddress];
    v16 = normalizedAddress2;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
  }

  return v13;
}

- (NSString)commentedAddress
{
  if (self->_kind)
  {
    address = [(CNComposeRecipient *)self address];
  }

  else
  {
    uncommentedAddress = [(CNComposeRecipient *)self uncommentedAddress];
    v5 = [CNComposeRecipientNamer nameForComposeRecipient:2147483615 sources:?];
    if (uncommentedAddress && [uncommentedAddress length] && v5 && objc_msgSend(v5, "length"))
    {
      v6 = [MEMORY[0x1E699AFC0] formattedAddressWithName:v5 email:uncommentedAddress useQuotes:1];
    }

    else
    {
      v6 = uncommentedAddress;
    }

    address = v6;
    if (!v6)
    {
      address = [(CNComposeRecipient *)self inputAddress];

      if (address)
      {
        inputAddress = [(CNComposeRecipient *)self inputAddress];
        ea_uncommentedAddress = [inputAddress ea_uncommentedAddress];

        inputAddress2 = [(CNComposeRecipient *)self inputAddress];
        ea_addressComment = [inputAddress2 ea_addressComment];

        address = [MEMORY[0x1E699AFC0] formattedAddressWithName:ea_addressComment email:ea_uncommentedAddress useQuotes:1];
      }
    }
  }

  return address;
}

- (NSString)label
{
  label = self->_label;
  if (!label)
  {
    unlocalizedLabel = [(CNComposeRecipient *)self unlocalizedLabel];
    if (unlocalizedLabel)
    {
      contact = [(CNComposeRecipient *)self contact];

      if (contact)
      {
        v6 = [MEMORY[0x1E695CEE0] localizedStringForLabel:unlocalizedLabel];
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
  contact = [(CNComposeRecipient *)self contact];

  if (contact)
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
  sourceType = [(CNComposeRecipient *)self sourceType];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (sourceType == 1)
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
    nameComponentsFromAddress = [(CNComposeRecipient *)self nameComponentsFromAddress];
    v4 = nameComponentsFromAddress;
    if (nameComponentsFromAddress)
    {
      v7 = nameComponentsFromAddress;
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
    ea_addressComment = [(NSString *)address ea_addressComment];
    v6 = ea_addressComment;
    if (ea_addressComment && ([ea_addressComment isEqualToString:self->_address] & 1) == 0)
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
  inputAddress = [(CNComposeRecipient *)self inputAddress];

  if (inputAddress)
  {
    kind = self->_kind;
    inputAddress2 = [(CNComposeRecipient *)self inputAddress];
    stringValue = inputAddress2;
    if (!kind)
    {
      ea_uncommentedAddress = [inputAddress2 ea_uncommentedAddress];

      stringValue = ea_uncommentedAddress;
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
        phoneNumbers = [v10 phoneNumbers];
        v12 = [phoneNumbers countByEnumeratingWithState:&v32 objects:v37 count:16];
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
                objc_enumerationMutation(phoneNumbers);
              }

              v16 = *(*(&v32 + 1) + 8 * i);
              identifier = [v16 identifier];
              v18 = [identifier isEqualToString:self->_valueIdentifier];

              if (v18)
              {
                value = [v16 value];
                stringValue = [value stringValue];

                goto LABEL_27;
              }
            }

            v13 = [phoneNumbers countByEnumeratingWithState:&v32 objects:v37 count:16];
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
        phoneNumbers = [v10 emailAddresses];
        v19 = [phoneNumbers countByEnumeratingWithState:&v28 objects:v36 count:16];
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
                objc_enumerationMutation(phoneNumbers);
              }

              v23 = *(*(&v28 + 1) + 8 * j);
              identifier2 = [v23 identifier];
              v25 = [identifier2 isEqualToString:self->_valueIdentifier];

              if (v25)
              {
                stringValue = [v23 value];
                goto LABEL_27;
              }
            }

            v20 = [phoneNumbers countByEnumeratingWithState:&v28 objects:v36 count:16];
            if (v20)
            {
              continue;
            }

            break;
          }
        }
      }

      stringValue = 0;
LABEL_27:
    }

    else
    {
      stringValue = 0;
    }
  }

  return stringValue;
}

- (NSString)stringForEqualityTesting
{
  address = [(CNComposeRecipient *)self address];
  if ((*(*MEMORY[0x1E6996568] + 16))())
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", self];

    address = v4;
  }

  return address;
}

- (NSString)pasteboardString
{
  uncommentedAddress = [(CNComposeRecipient *)self uncommentedAddress];
  if (!uncommentedAddress)
  {
    uncommentedAddress = [(CNComposeRecipient *)self address];
    if (!uncommentedAddress)
    {
      uncommentedAddress = [(CNComposeRecipient *)self compositeName];
    }
  }

  return uncommentedAddress;
}

- (BOOL)supportsPasteboardUnarchiving
{
  contact = [(CNComposeRecipient *)self contact];
  if (contact)
  {
    isGroup = 1;
  }

  else
  {
    inputAddress = [(CNComposeRecipient *)self inputAddress];
    if (inputAddress)
    {
      isGroup = 1;
    }

    else
    {
      isGroup = [(CNComposeRecipient *)self isGroup];
    }
  }

  return isGroup;
}

- (id)_unformattedAddress
{
  uncommentedAddress = [(CNComposeRecipient *)self uncommentedAddress];
  if (self->_kind == 1)
  {
    v4 = UIUnformattedPhoneNumberFromString();

    uncommentedAddress = v4;
  }

  return uncommentedAddress;
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
    inputAddress = [(CNComposeRecipient *)self inputAddress];
    v6 = inputAddress == 0;

    if (!v6)
    {
      emailAddresses = [v4 emailAddresses];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __44__CNComposeRecipient_labeledValueIdentifier__block_invoke;
      v10[3] = &unk_1E7CD2550;
      v10[4] = self;
      v10[5] = &v11;
      [emailAddresses enumerateObjectsUsingBlock:v10];
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

- (BOOL)isEquivalentAddressToRecipient:(id)recipient
{
  recipientCopy = recipient;
  kind = [(CNComposeRecipient *)self kind];
  if (kind == [(CNComposeRecipient *)recipientCopy kind])
  {
    if (self == recipientCopy)
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
          address = [(CNComposeRecipient *)self address];
          normalizedAddress = [v6 phoneNumberWithStringValue:address];

          v9 = MEMORY[0x1E695CF50];
          address2 = [(CNComposeRecipient *)recipientCopy address];
          normalizedAddress2 = [v9 phoneNumberWithStringValue:address2];

          v12 = [normalizedAddress isEqual:normalizedAddress2];
        }

        else
        {
          normalizedAddress = [(CNComposeRecipient *)recipientCopy normalizedAddress];
          normalizedAddress2 = [(CNComposeRecipient *)self normalizedAddress];
          v12 = [normalizedAddress isEqualToString:normalizedAddress2];
        }
      }

      else
      {
        normalizedAddress = [(CNComposeRecipient *)self address];
        normalizedAddress2 = [(CNComposeRecipient *)recipientCopy address];
        v12 = [normalizedAddress _cn_caseInsensitiveIsEqual:normalizedAddress2];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 && ([(CNComposeRecipient *)self address], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, [(CNComposeRecipient *)equalCopy address], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
    {
      address = [(CNComposeRecipient *)equalCopy address];
      address2 = [(CNComposeRecipient *)self address];
      v10 = [address2 ea_isEqualToEmailAddress:address];
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
  address = [(CNComposeRecipient *)self address];

  if (address)
  {
    address2 = [(CNComposeRecipient *)self address];
    v5 = [address2 hash];

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
  array = [MEMORY[0x1E695DF70] array];
  if (([(CNComposeRecipient *)self sourceType]& 2) != 0)
  {
    [array addObject:@"Contact"];
  }

  if (([(CNComposeRecipient *)self sourceType]& 0x10) != 0)
  {
    [array addObject:@"Prediction"];
  }

  if (([(CNComposeRecipient *)self sourceType]& 1) != 0)
  {
    [array addObject:@"Recent"];
  }

  if (([(CNComposeRecipient *)self sourceType]& 0x48) != 0)
  {
    [array addObject:@"Server"];
  }

  if (([(CNComposeRecipient *)self sourceType]& 4) != 0)
  {
    [array addObject:@"Suggestion"];
  }

  if (![(CNComposeRecipient *)self sourceType])
  {
    [array addObject:@"<undefined>"];
  }

  v4 = [array componentsJoinedByString:@"+"];
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  displayString = [(CNComposeRecipient *)self displayString];
  address = [(CNComposeRecipient *)self address];
  v10 = [v5 stringWithFormat:@"<%@: %p displayString: %@; address: %@; autocompleteSource: %@>", v7, self, displayString, address, v4];;

  return v10;
}

+ (NSArray)readableTypeIdentifiersForItemProvider
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"com.apple.contactsui.composerecipient";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error
{
  dataCopy = data;
  if (!UTTypeConformsTo(identifier, @"com.apple.contactsui.composerecipient"))
  {
    v8 = 0;
    if (!error)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v12 = 0;
  v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:&v12];
  v9 = v12;
  if (v9)
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      [CNComposeRecipient(NSItemProvider) objectWithItemProviderData:v9 typeIdentifier:os_log error:?];
    }
  }

  if (error)
  {
LABEL_9:
    if (!v8)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    }
  }

LABEL_11:

  return v8;
}

+ (NSArray)writableTypeIdentifiersForItemProvider
{
  array = [MEMORY[0x1E695DF70] array];
  [array addObject:@"com.apple.contactsui.composerecipient"];
  [array addObject:*MEMORY[0x1E69638D8]];
  writableTypeIdentifiersForItemProvider = [MEMORY[0x1E696AEC0] writableTypeIdentifiersForItemProvider];
  [array addObjectsFromArray:writableTypeIdentifiersForItemProvider];

  return array;
}

- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler
{
  v21[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  handlerCopy = handler;
  if ([(__CFString *)identifierCopy isEqualToString:@"com.apple.contactsui.composerecipient"])
  {
    v8 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
    handlerCopy[2](handlerCopy, v8, 0);
    goto LABEL_3;
  }

  if (!UTTypeConformsTo(identifierCopy, *MEMORY[0x1E6963870]))
  {
    if (!UTTypeConformsTo(identifierCopy, *MEMORY[0x1E69638D8]))
    {
      handlerCopy[2](handlerCopy, 0, 0);
      goto LABEL_4;
    }

    contact = [(CNComposeRecipient *)self contact];
    v13 = contact;
    if (contact)
    {
      v8 = contact;
    }

    else
    {
      v14 = MEMORY[0x1E695CD58];
      commentedAddress = [(CNComposeRecipient *)self commentedAddress];
      v8 = [v14 em_contactFromEmailAddress:commentedAddress];
    }

    v16 = MEMORY[0x1E695CE30];
    v21[0] = v8;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    v20 = 0;
    v18 = [v16 dataWithContacts:v17 error:&v20];
    v19 = v20;

    (handlerCopy)[2](handlerCopy, v18, v19);
LABEL_3:

LABEL_4:
    v9 = 0;
    goto LABEL_7;
  }

  commentedAddress2 = [(CNComposeRecipient *)self commentedAddress];
  v9 = [commentedAddress2 loadDataWithTypeIdentifier:identifierCopy forItemProviderCompletionHandler:handlerCopy];

LABEL_7:

  return v9;
}

@end