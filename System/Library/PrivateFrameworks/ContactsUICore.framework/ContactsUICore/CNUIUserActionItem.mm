@interface CNUIUserActionItem
+ (CNLSApplicationWorkspace)workspace;
+ (id)_voiceItemWithLabel:(id)label targetStringValue:(id)value propertyKey:(id)key dialRequest:(id)request bundleIdentifier:(id)identifier group:(int64_t)group options:(unint64_t)options;
+ (id)_voiceItemWithLabel:(id)label targetStringValue:(id)value propertyKey:(id)key userActivity:(id)activity bundleIdentifier:(id)identifier group:(int64_t)group options:(unint64_t)options;
+ (id)actionItemForContactProperty:(id)property actionType:(id)type bundleIdentifier:(id)identifier callProviderManager:(id)manager;
+ (id)emailItemWithLabel:(id)label targetStringValue:(id)value url:(id)url bundleIdentifier:(id)identifier;
+ (id)emailItemWithLabel:(id)label targetStringValue:(id)value userActivity:(id)activity bundleIdentifier:(id)identifier;
+ (id)itemWithContact:(id)contact;
+ (id)itemWithType:(id)type contactProperty:(id)property bundleIdentifier:(id)identifier dialRequest:(id)request group:(int64_t)group options:(unint64_t)options;
+ (id)itemWithType:(id)type contactProperty:(id)property bundleIdentifier:(id)identifier dialRequest:(id)request isSuggested:(BOOL)suggested options:(unint64_t)options isEligibleDefaultApp:(BOOL)app;
+ (id)itemWithType:(id)type contactProperty:(id)property bundleIdentifier:(id)identifier url:(id)url group:(int64_t)group options:(unint64_t)options;
+ (id)itemWithType:(id)type contactProperty:(id)property bundleIdentifier:(id)identifier url:(id)url isSensitive:(BOOL)sensitive group:(int64_t)group options:(unint64_t)options;
+ (id)itemWithType:(id)type contactProperty:(id)property bundleIdentifier:(id)identifier userActivity:(id)activity group:(int64_t)group options:(unint64_t)options;
+ (id)itemWithType:(id)type contactProperty:(id)property bundleIdentifier:(id)identifier userActivity:(id)activity isSuggested:(BOOL)suggested options:(unint64_t)options;
+ (id)payItemWithLabel:(id)label targetStringValue:(id)value url:(id)url bundleIdentifier:(id)identifier;
+ (id)payItemWithLabel:(id)label targetStringValue:(id)value userActivity:(id)activity bundleIdentifier:(id)identifier;
+ (id)textItemWithLabel:(id)label targetPhoneNumber:(id)number url:(id)url bundleIdentifier:(id)identifier group:(int64_t)group options:(unint64_t)options;
+ (id)textItemWithLabel:(id)label targetStringValue:(id)value url:(id)url bundleIdentifier:(id)identifier group:(int64_t)group options:(unint64_t)options;
+ (id)textItemWithLabel:(id)label targetStringValue:(id)value userActivity:(id)activity bundleIdentifier:(id)identifier group:(int64_t)group options:(unint64_t)options;
+ (id)thirdPartyCallActionItemForHandle:(id)handle contactProperty:(id)property actionType:(id)type bundleIdentifier:(id)identifier callProviderManager:(id)manager;
+ (id)ttyItemWithLabel:(id)label targetStringValue:(id)value url:(id)url bundleIdentifier:(id)identifier;
+ (id)ttyRelayItemWithLabel:(id)label targetStringValue:(id)value url:(id)url bundleIdentifier:(id)identifier;
+ (id)videoItemWithLabel:(id)label targetStringValue:(id)value dialRequest:(id)request bundleIdentifier:(id)identifier group:(int64_t)group options:(unint64_t)options;
+ (id)videoItemWithLabel:(id)label targetStringValue:(id)value url:(id)url bundleIdentifier:(id)identifier group:(int64_t)group options:(unint64_t)options;
+ (id)videoItemWithLabel:(id)label targetStringValue:(id)value userActivity:(id)activity bundleIdentifier:(id)identifier group:(int64_t)group options:(unint64_t)options;
+ (id)voiceItemWithLabel:(id)label targetStringValue:(id)value url:(id)url bundleIdentifier:(id)identifier group:(int64_t)group options:(unint64_t)options;
- (BOOL)isEqual:(id)equal;
- (BOOL)isHandledByFirstPartyApp;
- (BOOL)runningOniPad;
- (BOOL)shouldCurateIfPerformed;
- (BOOL)shouldUseApplicationNameForLabel;
- (CNContact)contact;
- (CNUIUserActionItem)initWithItem:(id)item contactProperty:(id)property;
- (CNUIUserActionItem)initWithType:(id)type contactProperty:(id)property bundleIdentifier:(id)identifier group:(int64_t)group options:(unint64_t)options;
- (NSString)applicationName;
- (NSString)label;
- (NSString)sanitizedTargetHandle;
- (NSString)targetHandle;
- (id)curateActionWithContext:(id)context withKeysToFetch:(id)fetch;
- (id)description;
- (id)performActionWithContext:(id)context;
- (id)url;
- (unint64_t)hash;
- (void)associateWithRecentContactMetadata:(id)metadata;
@end

@implementation CNUIUserActionItem

- (NSString)targetHandle
{
  if (targetHandle_cn_once_token_1 != -1)
  {
    [CNUIUserActionItem targetHandle];
  }

  v3 = targetHandle_cn_once_object_1;
  contactProperty = [(CNUIUserActionItem *)self contactProperty];
  v5 = [contactProperty key];
  v6 = [v3 objectForKeyedSubscript:v5];

  contactProperty2 = [(CNUIUserActionItem *)self contactProperty];
  value = [contactProperty2 value];
  v9 = (v6)[2](v6, value);

  return v9;
}

- (NSString)label
{
  if ([(CNUIUserActionItem *)self shouldUseApplicationNameForLabel])
  {
    applicationName = [(CNUIUserActionItem *)self applicationName];
  }

  else
  {
    contactProperty = [(CNUIUserActionItem *)self contactProperty];
    applicationName = [contactProperty label];
  }

  return applicationName;
}

- (BOOL)shouldUseApplicationNameForLabel
{
  bundleIdentifier = [(CNUIUserActionItem *)self bundleIdentifier];
  v4 = [bundleIdentifier hasPrefix:*MEMORY[0x1E695C118]];

  if (v4)
  {
    return 1;
  }

  bundleIdentifier2 = [(CNUIUserActionItem *)self bundleIdentifier];
  if ([bundleIdentifier2 hasPrefix:@"com.apple.Chatterbox"])
  {

    return 1;
  }

  bundleIdentifier3 = [(CNUIUserActionItem *)self bundleIdentifier];
  v7 = [bundleIdentifier3 hasPrefix:@"com.apple.Speakerbox"];

  if (v7)
  {
    return 1;
  }

  return ![(CNUIUserActionItem *)self isHandledByFirstPartyApp];
}

- (BOOL)isHandledByFirstPartyApp
{
  bundleIdentifier = [(CNUIUserActionItem *)self bundleIdentifier];
  v3 = [bundleIdentifier hasPrefix:@"com.apple"];

  return v3;
}

- (NSString)sanitizedTargetHandle
{
  contactProperty = [(CNUIUserActionItem *)self contactProperty];
  v6 = [contactProperty key];
  v7 = [v6 isEqualToString:*MEMORY[0x1E695C330]];
  if ((v7 & 1) != 0 || (-[CNUIUserActionItem contactProperty](self, "contactProperty"), v2 = objc_claimAutoreleasedReturnValue(), [v2 key], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E695C3D0])))
  {
    targetHandle = [(CNUIUserActionItem *)self targetHandle];
    _cn_requiresPhoneNumberSanitizing = [targetHandle _cn_requiresPhoneNumberSanitizing];

    if (v7)
    {

      if (!_cn_requiresPhoneNumberSanitizing)
      {
        goto LABEL_9;
      }

LABEL_7:
      targetHandle2 = [(CNUIUserActionItem *)self targetHandle];
      _cn_stringBySanitizingPhoneNumber = [targetHandle2 _cn_stringBySanitizingPhoneNumber];

      goto LABEL_10;
    }

    if (_cn_requiresPhoneNumberSanitizing)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

LABEL_9:
  _cn_stringBySanitizingPhoneNumber = [(CNUIUserActionItem *)self targetHandle];
LABEL_10:

  return _cn_stringBySanitizingPhoneNumber;
}

+ (id)itemWithType:(id)type contactProperty:(id)property bundleIdentifier:(id)identifier url:(id)url group:(int64_t)group options:(unint64_t)options
{
  urlCopy = url;
  identifierCopy = identifier;
  propertyCopy = property;
  typeCopy = type;
  v17 = [[_CNUIUserActionURLItem alloc] initWithType:typeCopy contactProperty:propertyCopy bundleIdentifier:identifierCopy url:urlCopy group:group options:options];

  return v17;
}

+ (id)itemWithType:(id)type contactProperty:(id)property bundleIdentifier:(id)identifier url:(id)url isSensitive:(BOOL)sensitive group:(int64_t)group options:(unint64_t)options
{
  sensitiveCopy = sensitive;
  urlCopy = url;
  identifierCopy = identifier;
  propertyCopy = property;
  typeCopy = type;
  v18 = [[_CNUIUserActionURLItem alloc] initWithType:typeCopy contactProperty:propertyCopy bundleIdentifier:identifierCopy url:urlCopy isSensitive:sensitiveCopy group:group options:options];

  return v18;
}

+ (id)payItemWithLabel:(id)label targetStringValue:(id)value url:(id)url bundleIdentifier:(id)identifier
{
  v29[1] = *MEMORY[0x1E69E9840];
  urlCopy = url;
  identifierCopy = identifier;
  v11 = MEMORY[0x1E695CF18];
  valueCopy = value;
  labelCopy = label;
  v14 = objc_alloc_init(v11);
  v15 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:labelCopy value:valueCopy];

  v29[0] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
  [v14 setEmailAddresses:v16];

  v17 = MEMORY[0x1E695CE08];
  v18 = *MEMORY[0x1E695C208];
  emailAddresses = [v14 emailAddresses];
  firstObject = [emailAddresses firstObject];
  identifier = [firstObject identifier];
  v22 = [v17 contactPropertyWithContactNoCopy:v14 propertyKey:v18 identifier:identifier];

  v23 = [_CNUIUserActionURLItem alloc];
  v24 = v23;
  v25 = *MEMORY[0x1E695C188];
  if (urlCopy)
  {
    v26 = [MEMORY[0x1E6996720] futureWithResult:urlCopy];
    v27 = [(_CNUIUserActionURLItem *)v24 initWithType:v25 contactProperty:v22 bundleIdentifier:identifierCopy url:v26 isSensitive:1 group:9 options:0];
  }

  else
  {
    v27 = [(_CNUIUserActionURLItem *)v23 initWithType:v25 contactProperty:v22 bundleIdentifier:identifierCopy url:0 isSensitive:1 group:9 options:0];
  }

  return v27;
}

+ (id)emailItemWithLabel:(id)label targetStringValue:(id)value url:(id)url bundleIdentifier:(id)identifier
{
  v29[1] = *MEMORY[0x1E69E9840];
  urlCopy = url;
  identifierCopy = identifier;
  v11 = MEMORY[0x1E695CF18];
  valueCopy = value;
  labelCopy = label;
  v14 = objc_alloc_init(v11);
  v15 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:labelCopy value:valueCopy];

  v29[0] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
  [v14 setEmailAddresses:v16];

  v17 = MEMORY[0x1E695CE08];
  v18 = *MEMORY[0x1E695C208];
  emailAddresses = [v14 emailAddresses];
  firstObject = [emailAddresses firstObject];
  identifier = [firstObject identifier];
  v22 = [v17 contactPropertyWithContactNoCopy:v14 propertyKey:v18 identifier:identifier];

  v23 = [_CNUIUserActionURLItem alloc];
  v24 = v23;
  v25 = *MEMORY[0x1E695C170];
  if (urlCopy)
  {
    v26 = [MEMORY[0x1E6996720] futureWithResult:urlCopy];
    v27 = [(_CNUIUserActionURLItem *)v24 initWithType:v25 contactProperty:v22 bundleIdentifier:identifierCopy url:v26 group:8 options:0];
  }

  else
  {
    v27 = [(_CNUIUserActionURLItem *)v23 initWithType:*MEMORY[0x1E695C170] contactProperty:v22 bundleIdentifier:identifierCopy url:0 group:8 options:0];
  }

  return v27;
}

+ (id)textItemWithLabel:(id)label targetStringValue:(id)value url:(id)url bundleIdentifier:(id)identifier group:(int64_t)group options:(unint64_t)options
{
  v33[1] = *MEMORY[0x1E69E9840];
  urlCopy = url;
  identifierCopy = identifier;
  v15 = MEMORY[0x1E695CF18];
  valueCopy = value;
  labelCopy = label;
  v18 = objc_alloc_init(v15);
  v19 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:labelCopy value:valueCopy];

  v33[0] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  [v18 setEmailAddresses:v20];

  v21 = MEMORY[0x1E695CE08];
  v22 = *MEMORY[0x1E695C208];
  emailAddresses = [v18 emailAddresses];
  firstObject = [emailAddresses firstObject];
  identifier = [firstObject identifier];
  v26 = [v21 contactPropertyWithContactNoCopy:v18 propertyKey:v22 identifier:identifier];

  v27 = [_CNUIUserActionURLItem alloc];
  v28 = v27;
  v29 = *MEMORY[0x1E695C178];
  if (urlCopy)
  {
    v30 = [MEMORY[0x1E6996720] futureWithResult:urlCopy];
    v31 = [(_CNUIUserActionURLItem *)v28 initWithType:v29 contactProperty:v26 bundleIdentifier:identifierCopy url:v30 group:group options:options];
  }

  else
  {
    v31 = [(_CNUIUserActionURLItem *)v27 initWithType:*MEMORY[0x1E695C178] contactProperty:v26 bundleIdentifier:identifierCopy url:0 group:group options:options];
  }

  return v31;
}

+ (id)textItemWithLabel:(id)label targetPhoneNumber:(id)number url:(id)url bundleIdentifier:(id)identifier group:(int64_t)group options:(unint64_t)options
{
  v35[1] = *MEMORY[0x1E69E9840];
  urlCopy = url;
  identifierCopy = identifier;
  v15 = MEMORY[0x1E695CF18];
  numberCopy = number;
  labelCopy = label;
  v18 = objc_alloc_init(v15);
  v19 = MEMORY[0x1E695CEE0];
  v20 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:numberCopy];

  v21 = [v19 labeledValueWithLabel:labelCopy value:v20];

  v35[0] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
  [v18 setPhoneNumbers:v22];

  v23 = MEMORY[0x1E695CE08];
  v24 = *MEMORY[0x1E695C330];
  phoneNumbers = [v18 phoneNumbers];
  firstObject = [phoneNumbers firstObject];
  identifier = [firstObject identifier];
  v28 = [v23 contactPropertyWithContactNoCopy:v18 propertyKey:v24 identifier:identifier];

  v29 = [_CNUIUserActionURLItem alloc];
  v30 = v29;
  v31 = *MEMORY[0x1E695C178];
  if (urlCopy)
  {
    v32 = [MEMORY[0x1E6996720] futureWithResult:urlCopy];
    v33 = [(_CNUIUserActionURLItem *)v30 initWithType:v31 contactProperty:v28 bundleIdentifier:identifierCopy url:v32 group:group options:options];
  }

  else
  {
    v33 = [(_CNUIUserActionURLItem *)v29 initWithType:*MEMORY[0x1E695C178] contactProperty:v28 bundleIdentifier:identifierCopy url:0 group:group options:options];
  }

  return v33;
}

+ (id)videoItemWithLabel:(id)label targetStringValue:(id)value url:(id)url bundleIdentifier:(id)identifier group:(int64_t)group options:(unint64_t)options
{
  v33[1] = *MEMORY[0x1E69E9840];
  urlCopy = url;
  identifierCopy = identifier;
  v15 = MEMORY[0x1E695CF18];
  valueCopy = value;
  labelCopy = label;
  v18 = objc_alloc_init(v15);
  v19 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:labelCopy value:valueCopy];

  v33[0] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  [v18 setEmailAddresses:v20];

  v21 = MEMORY[0x1E695CE08];
  v22 = *MEMORY[0x1E695C208];
  emailAddresses = [v18 emailAddresses];
  firstObject = [emailAddresses firstObject];
  identifier = [firstObject identifier];
  v26 = [v21 contactPropertyWithContactNoCopy:v18 propertyKey:v22 identifier:identifier];

  v27 = [_CNUIUserActionURLItem alloc];
  v28 = v27;
  v29 = *MEMORY[0x1E695C1B8];
  if (urlCopy)
  {
    v30 = [MEMORY[0x1E6996720] futureWithResult:urlCopy];
    v31 = [(_CNUIUserActionURLItem *)v28 initWithType:v29 contactProperty:v26 bundleIdentifier:identifierCopy url:v30 group:group options:options];
  }

  else
  {
    v31 = [(_CNUIUserActionURLItem *)v27 initWithType:*MEMORY[0x1E695C1B8] contactProperty:v26 bundleIdentifier:identifierCopy url:0 group:group options:options];
  }

  return v31;
}

+ (id)voiceItemWithLabel:(id)label targetStringValue:(id)value url:(id)url bundleIdentifier:(id)identifier group:(int64_t)group options:(unint64_t)options
{
  v35[1] = *MEMORY[0x1E69E9840];
  urlCopy = url;
  identifierCopy = identifier;
  v15 = MEMORY[0x1E695CF18];
  valueCopy = value;
  labelCopy = label;
  v18 = objc_alloc_init(v15);
  v19 = MEMORY[0x1E695CEE0];
  v20 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:valueCopy];

  v21 = [v19 labeledValueWithLabel:labelCopy value:v20];

  v35[0] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
  [v18 setPhoneNumbers:v22];

  v23 = MEMORY[0x1E695CE08];
  v24 = *MEMORY[0x1E695C330];
  phoneNumbers = [v18 phoneNumbers];
  firstObject = [phoneNumbers firstObject];
  identifier = [firstObject identifier];
  v28 = [v23 contactPropertyWithContactNoCopy:v18 propertyKey:v24 identifier:identifier];

  v29 = [_CNUIUserActionURLItem alloc];
  v30 = v29;
  v31 = *MEMORY[0x1E695C150];
  if (urlCopy)
  {
    v32 = [MEMORY[0x1E6996720] futureWithResult:urlCopy];
    v33 = [(_CNUIUserActionURLItem *)v30 initWithType:v31 contactProperty:v28 bundleIdentifier:identifierCopy url:v32 group:group options:options];
  }

  else
  {
    v33 = [(_CNUIUserActionURLItem *)v29 initWithType:*MEMORY[0x1E695C150] contactProperty:v28 bundleIdentifier:identifierCopy url:0 group:group options:options];
  }

  return v33;
}

+ (id)ttyItemWithLabel:(id)label targetStringValue:(id)value url:(id)url bundleIdentifier:(id)identifier
{
  v31[1] = *MEMORY[0x1E69E9840];
  urlCopy = url;
  identifierCopy = identifier;
  v11 = MEMORY[0x1E695CF18];
  valueCopy = value;
  labelCopy = label;
  v14 = objc_alloc_init(v11);
  v15 = MEMORY[0x1E695CEE0];
  v16 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:valueCopy];

  v17 = [v15 labeledValueWithLabel:labelCopy value:v16];

  v31[0] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  [v14 setPhoneNumbers:v18];

  v19 = MEMORY[0x1E695CE08];
  v20 = *MEMORY[0x1E695C330];
  phoneNumbers = [v14 phoneNumbers];
  firstObject = [phoneNumbers firstObject];
  identifier = [firstObject identifier];
  v24 = [v19 contactPropertyWithContactNoCopy:v14 propertyKey:v20 identifier:identifier];

  v25 = [_CNUIUserActionURLItem alloc];
  v26 = v25;
  v27 = *MEMORY[0x1E695C190];
  if (urlCopy)
  {
    v28 = [MEMORY[0x1E6996720] futureWithResult:urlCopy];
    v29 = [(_CNUIUserActionURLItem *)v26 initWithType:v27 contactProperty:v24 bundleIdentifier:identifierCopy url:v28 group:2 options:0];
  }

  else
  {
    v29 = [(_CNUIUserActionURLItem *)v25 initWithType:*MEMORY[0x1E695C190] contactProperty:v24 bundleIdentifier:identifierCopy url:0 group:2 options:0];
  }

  return v29;
}

+ (id)ttyRelayItemWithLabel:(id)label targetStringValue:(id)value url:(id)url bundleIdentifier:(id)identifier
{
  v31[1] = *MEMORY[0x1E69E9840];
  urlCopy = url;
  identifierCopy = identifier;
  v11 = MEMORY[0x1E695CF18];
  valueCopy = value;
  labelCopy = label;
  v14 = objc_alloc_init(v11);
  v15 = MEMORY[0x1E695CEE0];
  v16 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:valueCopy];

  v17 = [v15 labeledValueWithLabel:labelCopy value:v16];

  v31[0] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  [v14 setPhoneNumbers:v18];

  v19 = MEMORY[0x1E695CE08];
  v20 = *MEMORY[0x1E695C330];
  phoneNumbers = [v14 phoneNumbers];
  firstObject = [phoneNumbers firstObject];
  identifier = [firstObject identifier];
  v24 = [v19 contactPropertyWithContactNoCopy:v14 propertyKey:v20 identifier:identifier];

  v25 = [_CNUIUserActionURLItem alloc];
  v26 = v25;
  v27 = *MEMORY[0x1E695C1A8];
  if (urlCopy)
  {
    v28 = [MEMORY[0x1E6996720] futureWithResult:urlCopy];
    v29 = [(_CNUIUserActionURLItem *)v26 initWithType:v27 contactProperty:v24 bundleIdentifier:identifierCopy url:v28 group:2 options:0];
  }

  else
  {
    v29 = [(_CNUIUserActionURLItem *)v25 initWithType:*MEMORY[0x1E695C1A8] contactProperty:v24 bundleIdentifier:identifierCopy url:0 group:2 options:0];
  }

  return v29;
}

- (id)url
{
  selfCopy = self;
  v3 = CNUnimplementedMethodException();
  objc_exception_throw(v3);
}

+ (id)itemWithType:(id)type contactProperty:(id)property bundleIdentifier:(id)identifier userActivity:(id)activity isSuggested:(BOOL)suggested options:(unint64_t)options
{
  if (suggested)
  {
    v11 = 7;
  }

  else
  {
    v11 = 5;
  }

  if (suggested)
  {
    optionsCopy = options | 4;
  }

  else
  {
    optionsCopy = options;
  }

  activityCopy = activity;
  identifierCopy = identifier;
  propertyCopy = property;
  typeCopy = type;
  v17 = [[_CNUIUserActionUserActivityItem alloc] initWithType:typeCopy contactProperty:propertyCopy bundleIdentifier:identifierCopy userActivity:activityCopy group:v11 options:optionsCopy];

  return v17;
}

+ (id)itemWithType:(id)type contactProperty:(id)property bundleIdentifier:(id)identifier userActivity:(id)activity group:(int64_t)group options:(unint64_t)options
{
  activityCopy = activity;
  identifierCopy = identifier;
  propertyCopy = property;
  typeCopy = type;
  v17 = [[_CNUIUserActionUserActivityItem alloc] initWithType:typeCopy contactProperty:propertyCopy bundleIdentifier:identifierCopy userActivity:activityCopy group:group options:options];

  return v17;
}

+ (id)payItemWithLabel:(id)label targetStringValue:(id)value userActivity:(id)activity bundleIdentifier:(id)identifier
{
  v26[1] = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E695CF18];
  identifierCopy = identifier;
  activityCopy = activity;
  valueCopy = value;
  labelCopy = label;
  v14 = objc_alloc_init(v9);
  v15 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:labelCopy value:valueCopy];

  v26[0] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  [v14 setEmailAddresses:v16];

  v17 = MEMORY[0x1E695CE08];
  v18 = *MEMORY[0x1E695C208];
  emailAddresses = [v14 emailAddresses];
  firstObject = [emailAddresses firstObject];
  identifier = [firstObject identifier];
  v22 = [v17 contactPropertyWithContactNoCopy:v14 propertyKey:v18 identifier:identifier];

  v23 = [_CNUIUserActionUserActivityItem alloc];
  v24 = [(_CNUIUserActionUserActivityItem *)v23 initWithType:*MEMORY[0x1E695C188] contactProperty:v22 bundleIdentifier:identifierCopy userActivity:activityCopy group:9 options:0];

  return v24;
}

+ (id)emailItemWithLabel:(id)label targetStringValue:(id)value userActivity:(id)activity bundleIdentifier:(id)identifier
{
  v26[1] = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E695CF18];
  identifierCopy = identifier;
  activityCopy = activity;
  valueCopy = value;
  labelCopy = label;
  v14 = objc_alloc_init(v9);
  v15 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:labelCopy value:valueCopy];

  v26[0] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  [v14 setEmailAddresses:v16];

  v17 = MEMORY[0x1E695CE08];
  v18 = *MEMORY[0x1E695C208];
  emailAddresses = [v14 emailAddresses];
  firstObject = [emailAddresses firstObject];
  identifier = [firstObject identifier];
  v22 = [v17 contactPropertyWithContactNoCopy:v14 propertyKey:v18 identifier:identifier];

  v23 = [_CNUIUserActionUserActivityItem alloc];
  v24 = [(_CNUIUserActionUserActivityItem *)v23 initWithType:*MEMORY[0x1E695C170] contactProperty:v22 bundleIdentifier:identifierCopy userActivity:activityCopy group:8 options:0];

  return v24;
}

+ (id)textItemWithLabel:(id)label targetStringValue:(id)value userActivity:(id)activity bundleIdentifier:(id)identifier group:(int64_t)group options:(unint64_t)options
{
  v30[1] = *MEMORY[0x1E69E9840];
  v13 = MEMORY[0x1E695CF18];
  identifierCopy = identifier;
  activityCopy = activity;
  valueCopy = value;
  labelCopy = label;
  v18 = objc_alloc_init(v13);
  v19 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:labelCopy value:valueCopy];

  v30[0] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  [v18 setEmailAddresses:v20];

  v21 = MEMORY[0x1E695CE08];
  v22 = *MEMORY[0x1E695C208];
  emailAddresses = [v18 emailAddresses];
  firstObject = [emailAddresses firstObject];
  identifier = [firstObject identifier];
  v26 = [v21 contactPropertyWithContactNoCopy:v18 propertyKey:v22 identifier:identifier];

  v27 = [_CNUIUserActionUserActivityItem alloc];
  v28 = [(_CNUIUserActionUserActivityItem *)v27 initWithType:*MEMORY[0x1E695C178] contactProperty:v26 bundleIdentifier:identifierCopy userActivity:activityCopy group:group options:options];

  return v28;
}

+ (id)videoItemWithLabel:(id)label targetStringValue:(id)value userActivity:(id)activity bundleIdentifier:(id)identifier group:(int64_t)group options:(unint64_t)options
{
  v30[1] = *MEMORY[0x1E69E9840];
  v13 = MEMORY[0x1E695CF18];
  identifierCopy = identifier;
  activityCopy = activity;
  valueCopy = value;
  labelCopy = label;
  v18 = objc_alloc_init(v13);
  v19 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:labelCopy value:valueCopy];

  v30[0] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  [v18 setEmailAddresses:v20];

  v21 = MEMORY[0x1E695CE08];
  v22 = *MEMORY[0x1E695C208];
  emailAddresses = [v18 emailAddresses];
  firstObject = [emailAddresses firstObject];
  identifier = [firstObject identifier];
  v26 = [v21 contactPropertyWithContactNoCopy:v18 propertyKey:v22 identifier:identifier];

  v27 = [_CNUIUserActionUserActivityItem alloc];
  v28 = [(_CNUIUserActionUserActivityItem *)v27 initWithType:*MEMORY[0x1E695C1B8] contactProperty:v26 bundleIdentifier:identifierCopy userActivity:activityCopy group:group options:options];

  return v28;
}

+ (id)_voiceItemWithLabel:(id)label targetStringValue:(id)value propertyKey:(id)key userActivity:(id)activity bundleIdentifier:(id)identifier group:(int64_t)group options:(unint64_t)options
{
  v38[1] = *MEMORY[0x1E69E9840];
  labelCopy = label;
  valueCopy = value;
  keyCopy = key;
  v16 = MEMORY[0x1E695CF18];
  identifierCopy = identifier;
  activityCopy = activity;
  v19 = objc_alloc_init(v16);
  if (!(keyCopy | *MEMORY[0x1E695C330]) || [keyCopy isEqual:?])
  {
    groupCopy2 = group;
    v21 = MEMORY[0x1E695CEE0];
    v22 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:{valueCopy, labelCopy}];
    v23 = [v21 labeledValueWithLabel:labelCopy value:v22];
    v38[0] = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
    [v19 setPhoneNumbers:v24];

    phoneNumbers = [v19 phoneNumbers];
LABEL_4:
    v26 = phoneNumbers;
    firstObject = [phoneNumbers firstObject];
    identifier = [firstObject identifier];

    group = groupCopy2;
    goto LABEL_5;
  }

  if (!(keyCopy | *MEMORY[0x1E695C208]) || [keyCopy isEqual:?])
  {
    groupCopy2 = group;
    v33 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:labelCopy value:{valueCopy, labelCopy}];
    v37 = v33;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
    [v19 setEmailAddresses:v34];

    phoneNumbers = [v19 emailAddresses];
    goto LABEL_4;
  }

  identifier = 0;
LABEL_5:
  v29 = [MEMORY[0x1E695CE08] contactPropertyWithContactNoCopy:v19 propertyKey:keyCopy identifier:{identifier, labelCopy}];
  v30 = [_CNUIUserActionUserActivityItem alloc];
  v31 = [(_CNUIUserActionUserActivityItem *)v30 initWithType:*MEMORY[0x1E695C150] contactProperty:v29 bundleIdentifier:identifierCopy userActivity:activityCopy group:group options:options];

  return v31;
}

- (id)performActionWithContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  v6 = CNAbstractMethodException();
  objc_exception_throw(v6);
}

- (id)curateActionWithContext:(id)context withKeysToFetch:(id)fetch
{
  fetchCopy = fetch;
  actionCurator = [context actionCurator];
  v8 = [actionCurator curateUserAction:self withKeysToFetch:fetchCopy];

  return v8;
}

- (void)associateWithRecentContactMetadata:(id)metadata
{
  self->_associatedRecentContactMetadata = [metadata copy];

  MEMORY[0x1EEE66BB8]();
}

- (NSString)applicationName
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

id __37__CNUIUserActionItem_applicationName__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (!(*(*MEMORY[0x1E6996568] + 16))())
  {
    goto LABEL_15;
  }

  v3 = [*(a1 + 32) type];
  v4 = [v3 isEqualToString:*MEMORY[0x1E695C150]];

  if (v4)
  {
    v5 = [*(a1 + 32) bundleIdentifier];
    v6 = [v5 isEqualToString:*MEMORY[0x1E695C118]];

    if (v6)
    {
      v7 = @"FACETIME_AUDIO";
LABEL_10:
      v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v10 = [v8 localizedStringForKey:v7 value:&stru_1F162C170 table:@"Localized"];
      v11 = *(a1 + 32);
      v12 = *(v11 + 32);
      *(v11 + 32) = v10;

      goto LABEL_11;
    }

    v8 = [*(a1 + 32) bundleIdentifier];
    if (![v8 isEqualToString:*MEMORY[0x1E695C140]])
    {
LABEL_11:

      goto LABEL_12;
    }

    if ([*(a1 + 32) runningOniPad])
    {

LABEL_9:
      v7 = @"CALLS_FROM_IPHONE";
      goto LABEL_10;
    }

    v9 = [*(a1 + 32) runningOnVisionOS];

    if (v9)
    {
      goto LABEL_9;
    }
  }

LABEL_12:
  v13 = *(*(a1 + 32) + 32);
  if (!v13)
  {
    v14 = [objc_opt_class() workspace];
    v15 = [*(a1 + 32) bundleIdentifier];
    v16 = [v14 applicationForBundleIdentifier:v15];
    v17 = [v16 localizedName];
    v18 = *(a1 + 32);
    v19 = *(v18 + 32);
    *(v18 + 32) = v17;

    v13 = *(*(a1 + 32) + 32);
  }

  v2 = v13;
LABEL_15:

  return v2;
}

- (BOOL)runningOniPad
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [currentDevice userInterfaceIdiom] == 1;

  return v3;
}

+ (CNLSApplicationWorkspace)workspace
{
  v2 = objc_alloc_init(CNLSApplicationWorkspace);

  return v2;
}

void __34__CNUIUserActionItem_targetHandle__block_invoke()
{
  v9[5] = *MEMORY[0x1E69E9840];
  v8[0] = *MEMORY[0x1E695C208];
  v0 = [&__block_literal_global_25_3 copy];
  v9[0] = v0;
  v8[1] = *MEMORY[0x1E695C330];
  v1 = [&__block_literal_global_28_0 copy];
  v9[1] = v1;
  v8[2] = *MEMORY[0x1E695C2B0];
  v2 = [&__block_literal_global_31_1 copy];
  v9[2] = v2;
  v8[3] = *MEMORY[0x1E695C3D0];
  v3 = [&__block_literal_global_34_0 copy];
  v9[3] = v3;
  v8[4] = *MEMORY[0x1E695C360];
  v4 = [&__block_literal_global_37_0 copy];
  v9[4] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];
  v6 = [v5 copy];
  v7 = targetHandle_cn_once_object_1;
  targetHandle_cn_once_object_1 = v6;
}

id __34__CNUIUserActionItem_targetHandle__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = a2;
  v4 = [v3 street];
  v5 = [v3 city];
  v6 = [v3 state];
  v7 = [v3 postalCode];
  v8 = [v3 country];

  v9 = [v2 stringWithFormat:@"%@, %@, %@ %@ %@", v4, v5, v6, v7, v8];

  return v9;
}

- (BOOL)shouldCurateIfPerformed
{
  if (([(CNUIUserActionItem *)self options]& 2) != 0)
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    return ([(CNUIUserActionItem *)self options]>> 2) & 1;
  }

  return v3;
}

- (CNUIUserActionItem)initWithItem:(id)item contactProperty:(id)property
{
  propertyCopy = property;
  itemCopy = item;
  type = [itemCopy type];
  bundleIdentifier = [itemCopy bundleIdentifier];
  group = [itemCopy group];
  options = [itemCopy options];

  v12 = [(CNUIUserActionItem *)self initWithType:type contactProperty:propertyCopy bundleIdentifier:bundleIdentifier group:group options:options];
  return v12;
}

- (CNUIUserActionItem)initWithType:(id)type contactProperty:(id)property bundleIdentifier:(id)identifier group:(int64_t)group options:(unint64_t)options
{
  typeCopy = type;
  propertyCopy = property;
  identifierCopy = identifier;
  v22.receiver = self;
  v22.super_class = CNUIUserActionItem;
  v16 = [(CNUIUserActionItem *)&v22 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_type, type);
    objc_storeStrong(&v17->_contactProperty, property);
    v18 = [identifierCopy copy];
    bundleIdentifier = v17->_bundleIdentifier;
    v17->_bundleIdentifier = v18;

    v17->_group = group;
    v17->_options = options;
    v20 = v17;
  }

  return v17;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  type = [(CNUIUserActionItem *)self type];
  v5 = [v3 appendObject:type withName:@"type"];

  label = [(CNUIUserActionItem *)self label];
  v7 = [v3 appendObject:label withName:@"label"];

  targetHandle = [(CNUIUserActionItem *)self targetHandle];
  v9 = [v3 appendObject:targetHandle withName:@"targetHandle"];

  bundleIdentifier = [(CNUIUserActionItem *)self bundleIdentifier];
  v11 = [v3 appendObject:bundleIdentifier withName:@"bundleIdentifier"];

  v12 = [v3 appendName:@"group" integerValue:{-[CNUIUserActionItem group](self, "group")}];
  v13 = [v3 appendName:@"options" unsignedInteger:{-[CNUIUserActionItem options](self, "options")}];
  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = MEMORY[0x1E69966F0];
  v6 = objc_opt_class();
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __30__CNUIUserActionItem_isEqual___block_invoke;
  v24[3] = &unk_1E76E7A88;
  v24[4] = self;
  v25 = equalCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __30__CNUIUserActionItem_isEqual___block_invoke_2;
  aBlock[3] = &unk_1E76E7A88;
  aBlock[4] = self;
  v7 = v25;
  v23 = v7;
  v8 = _Block_copy(aBlock);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __30__CNUIUserActionItem_isEqual___block_invoke_3;
  v20[3] = &unk_1E76E7A88;
  v20[4] = self;
  v9 = v7;
  v21 = v9;
  v10 = _Block_copy(v20);
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __30__CNUIUserActionItem_isEqual___block_invoke_4;
  v17 = &unk_1E76E7A88;
  selfCopy = self;
  v19 = v9;
  v11 = v9;
  v12 = _Block_copy(&v14);
  LOBYTE(self) = [v5 isObject:v11 kindOfClass:v6 andEqualToObject:self withBlocks:{v24, v8, v10, v12, 0, v14, v15, v16, v17, selfCopy}];

  return self;
}

uint64_t __30__CNUIUserActionItem_isEqual___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) type];
  v4 = [*(a1 + 40) type];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __30__CNUIUserActionItem_isEqual___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) label];
  v4 = [*(a1 + 40) label];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __30__CNUIUserActionItem_isEqual___block_invoke_3(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) sanitizedTargetHandle];
  v4 = [*(a1 + 40) sanitizedTargetHandle];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __30__CNUIUserActionItem_isEqual___block_invoke_4(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) bundleIdentifier];
  v4 = [*(a1 + 40) bundleIdentifier];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x1E6996730];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __26__CNUIUserActionItem_hash__block_invoke;
  v12[3] = &unk_1E76E7AB0;
  v12[4] = self;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __26__CNUIUserActionItem_hash__block_invoke_2;
  aBlock[3] = &unk_1E76E7AB0;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __26__CNUIUserActionItem_hash__block_invoke_3;
  v10[3] = &unk_1E76E7AB0;
  v10[4] = self;
  v5 = _Block_copy(v10);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __26__CNUIUserActionItem_hash__block_invoke_4;
  v9[3] = &unk_1E76E7AB0;
  v9[4] = self;
  v6 = _Block_copy(v9);
  v7 = [v3 hashWithBlocks:{v12, v4, v5, v6, 0}];

  return v7;
}

uint64_t __26__CNUIUserActionItem_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) type];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __26__CNUIUserActionItem_hash__block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) label];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __26__CNUIUserActionItem_hash__block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) targetHandle];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __26__CNUIUserActionItem_hash__block_invoke_4(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) bundleIdentifier];
  v3 = [v1 objectHash:v2];

  return v3;
}

+ (id)itemWithType:(id)type contactProperty:(id)property bundleIdentifier:(id)identifier dialRequest:(id)request isSuggested:(BOOL)suggested options:(unint64_t)options isEligibleDefaultApp:(BOOL)app
{
  v12 = 5;
  if (suggested)
  {
    v12 = 6;
    optionsCopy = options | 4;
  }

  else
  {
    optionsCopy = options;
  }

  if (app)
  {
    v14 = 2;
  }

  else
  {
    v14 = v12;
  }

  requestCopy = request;
  identifierCopy = identifier;
  propertyCopy = property;
  typeCopy = type;
  v19 = [[_CNUIUserActionDialRequestItem alloc] initWithType:typeCopy contactProperty:propertyCopy bundleIdentifier:identifierCopy dialRequest:requestCopy group:v14 options:optionsCopy];

  return v19;
}

+ (id)itemWithType:(id)type contactProperty:(id)property bundleIdentifier:(id)identifier dialRequest:(id)request group:(int64_t)group options:(unint64_t)options
{
  requestCopy = request;
  identifierCopy = identifier;
  propertyCopy = property;
  typeCopy = type;
  v17 = [[_CNUIUserActionDialRequestItem alloc] initWithType:typeCopy contactProperty:propertyCopy bundleIdentifier:identifierCopy dialRequest:requestCopy group:group options:options];

  return v17;
}

+ (id)videoItemWithLabel:(id)label targetStringValue:(id)value dialRequest:(id)request bundleIdentifier:(id)identifier group:(int64_t)group options:(unint64_t)options
{
  v30[1] = *MEMORY[0x1E69E9840];
  v13 = MEMORY[0x1E695CF18];
  identifierCopy = identifier;
  requestCopy = request;
  valueCopy = value;
  labelCopy = label;
  v18 = objc_alloc_init(v13);
  v19 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:labelCopy value:valueCopy];

  v30[0] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  [v18 setEmailAddresses:v20];

  v21 = MEMORY[0x1E695CE08];
  v22 = *MEMORY[0x1E695C208];
  emailAddresses = [v18 emailAddresses];
  firstObject = [emailAddresses firstObject];
  identifier = [firstObject identifier];
  v26 = [v21 contactPropertyWithContactNoCopy:v18 propertyKey:v22 identifier:identifier];

  v27 = [_CNUIUserActionDialRequestItem alloc];
  v28 = [(_CNUIUserActionDialRequestItem *)v27 initWithType:*MEMORY[0x1E695C1B8] contactProperty:v26 bundleIdentifier:identifierCopy dialRequest:requestCopy group:group options:options];

  return v28;
}

+ (id)_voiceItemWithLabel:(id)label targetStringValue:(id)value propertyKey:(id)key dialRequest:(id)request bundleIdentifier:(id)identifier group:(int64_t)group options:(unint64_t)options
{
  v38[1] = *MEMORY[0x1E69E9840];
  labelCopy = label;
  valueCopy = value;
  keyCopy = key;
  v16 = MEMORY[0x1E695CF18];
  identifierCopy = identifier;
  requestCopy = request;
  v19 = objc_alloc_init(v16);
  if (!(keyCopy | *MEMORY[0x1E695C330]) || [keyCopy isEqual:?])
  {
    groupCopy2 = group;
    v21 = MEMORY[0x1E695CEE0];
    v22 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:{valueCopy, labelCopy}];
    v23 = [v21 labeledValueWithLabel:labelCopy value:v22];
    v38[0] = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
    [v19 setPhoneNumbers:v24];

    phoneNumbers = [v19 phoneNumbers];
LABEL_4:
    v26 = phoneNumbers;
    firstObject = [phoneNumbers firstObject];
    identifier = [firstObject identifier];

    group = groupCopy2;
    goto LABEL_5;
  }

  if (!(keyCopy | *MEMORY[0x1E695C208]) || [keyCopy isEqual:?])
  {
    groupCopy2 = group;
    v33 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:labelCopy value:{valueCopy, labelCopy}];
    v37 = v33;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
    [v19 setEmailAddresses:v34];

    phoneNumbers = [v19 emailAddresses];
    goto LABEL_4;
  }

  identifier = 0;
LABEL_5:
  v29 = [MEMORY[0x1E695CE08] contactPropertyWithContactNoCopy:v19 propertyKey:keyCopy identifier:{identifier, labelCopy}];
  v30 = [_CNUIUserActionDialRequestItem alloc];
  v31 = [(_CNUIUserActionDialRequestItem *)v30 initWithType:*MEMORY[0x1E695C150] contactProperty:v29 bundleIdentifier:identifierCopy dialRequest:requestCopy group:group options:options];

  return v31;
}

+ (id)actionItemForContactProperty:(id)property actionType:(id)type bundleIdentifier:(id)identifier callProviderManager:(id)manager
{
  propertyCopy = property;
  typeCopy = type;
  identifierCopy = identifier;
  managerCopy = manager;
  v13 = [propertyCopy key];
  v14 = *MEMORY[0x1E695C330];
  if (v13 | *MEMORY[0x1E695C330] && (v15 = v13, [propertyCopy key], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqual:", v14), v16, v15, !v17))
  {
    v31 = [propertyCopy key];
    v32 = *MEMORY[0x1E695C208];
    if (v31 | *MEMORY[0x1E695C208])
    {
      v33 = v31;
      v34 = [propertyCopy key];
      v35 = [v34 isEqual:v32];

      if (!v35)
      {
        v38 = [propertyCopy key];
        v39 = *MEMORY[0x1E695C3D0];
        if (v38 | *MEMORY[0x1E695C3D0] && (v40 = v38, [propertyCopy key], v41 = objc_claimAutoreleasedReturnValue(), v42 = objc_msgSend(v41, "isEqual:", v39), v41, v40, !v42) && (objc_msgSend(propertyCopy, "key"), v43 = objc_claimAutoreleasedReturnValue(), v44 = *MEMORY[0x1E695C2B0], v43 | *MEMORY[0x1E695C2B0]) && (v45 = v43, objc_msgSend(propertyCopy, "key"), v46 = objc_claimAutoreleasedReturnValue(), v47 = objc_msgSend(v46, "isEqual:", v44), v46, v45, !v47))
        {
          username = 0;
          userIdentifier = 0;
        }

        else
        {
          value = [propertyCopy value];
          username = [value username];

          value2 = [propertyCopy value];
          userIdentifier = [value2 userIdentifier];

          if (username)
          {
            goto LABEL_5;
          }
        }

LABEL_29:
        v30 = 0;
        goto LABEL_30;
      }
    }

    username = [propertyCopy value];
  }

  else
  {
    value3 = [propertyCopy value];
    username = [value3 formattedStringValue];
  }

  userIdentifier = 0;
  if (!username)
  {
    goto LABEL_29;
  }

LABEL_5:
  v21 = [propertyCopy key];
  v22 = [CNHandle handleTypeForPropertyKey:v21];

  v23 = [[CNHandle alloc] initWithStringValue:username customIdentifier:userIdentifier type:v22];
  v24 = *MEMORY[0x1E695C150];
  if (!(typeCopy | *MEMORY[0x1E695C150]) || [typeCopy isEqual:*MEMORY[0x1E695C150]])
  {
    if (!(identifierCopy | *MEMORY[0x1E695C140]) || [identifierCopy isEqual:?])
    {
      v25 = MEMORY[0x1E695DFF8];
      contact = [propertyCopy contact];
      v27 = [v25 _cnui_telephonyURLFutureWithHandle:v23 contact:contact preferDefaultApp:0];
      goto LABEL_10;
    }

    if (!(identifierCopy | *MEMORY[0x1E695C118]) || [identifierCopy isEqual:?])
    {
      v37 = MEMORY[0x1E695DFF8];
      contact = [propertyCopy contact];
      v27 = [v37 _cnui_faceTimeAudioURLFutureWithHandle:v23 contact:contact];
      goto LABEL_10;
    }

LABEL_31:
    v30 = [CNUIUserActionItem thirdPartyCallActionItemForHandle:v23 contactProperty:propertyCopy actionType:typeCopy bundleIdentifier:identifierCopy callProviderManager:managerCopy];
    goto LABEL_12;
  }

  v24 = *MEMORY[0x1E695C1B8];
  if (!(typeCopy | *MEMORY[0x1E695C1B8]) || [typeCopy isEqual:*MEMORY[0x1E695C1B8]])
  {
    if (!(identifierCopy | *MEMORY[0x1E695C118]) || [identifierCopy isEqual:?])
    {
      v36 = MEMORY[0x1E695DFF8];
      contact = [propertyCopy contact];
      v27 = [v36 _cnui_faceTimeVideoURLFutureWithHandle:v23 contact:contact];
      goto LABEL_10;
    }

    goto LABEL_31;
  }

  v24 = *MEMORY[0x1E695C178];
  if (typeCopy | *MEMORY[0x1E695C178] && ![typeCopy isEqual:*MEMORY[0x1E695C178]])
  {
    v24 = *MEMORY[0x1E695C190];
    if (typeCopy | *MEMORY[0x1E695C190] && ![typeCopy isEqual:*MEMORY[0x1E695C190]])
    {
      v24 = *MEMORY[0x1E695C1A8];
      if (typeCopy | *MEMORY[0x1E695C1A8] && ![typeCopy isEqual:*MEMORY[0x1E695C1A8]])
      {
        v24 = *MEMORY[0x1E695C170];
        if (typeCopy | *MEMORY[0x1E695C170] && ![typeCopy isEqual:*MEMORY[0x1E695C170]])
        {
          v30 = 0;
          goto LABEL_12;
        }

        v57 = MEMORY[0x1E695DFF8];
        contact = [propertyCopy contact];
        v27 = [v57 _cnui_mailURLFutureWithHandle:v23 contact:contact];
      }

      else
      {
        v54 = MEMORY[0x1E695DFF8];
        contact = [propertyCopy contact];
        v27 = [v54 _cnui_ttyRelayURLFutureWithHandle:v23 contact:contact];
      }
    }

    else
    {
      v53 = MEMORY[0x1E695DFF8];
      contact = [propertyCopy contact];
      v27 = [v53 _cnui_ttyURLFutureWithHandle:v23 contact:contact];
    }
  }

  else
  {
    if (identifierCopy | *MEMORY[0x1E695C130] && ([identifierCopy isEqual:?] & 1) == 0 && identifierCopy | *MEMORY[0x1E695C138] && !objc_msgSend(identifierCopy, "isEqual:"))
    {
      v55 = MEMORY[0x1E696B090];
      contact2 = [propertyCopy contact];
      v28 = [v55 _cnui_sendMessageIntentWithHandle:v23 contact:contact2];

      v29 = [CNUIUserActionItem itemWithType:v24 contactProperty:propertyCopy bundleIdentifier:identifierCopy userActivity:v28 group:0 options:0];
      goto LABEL_11;
    }

    v52 = MEMORY[0x1E695DFF8];
    contact = [propertyCopy contact];
    v27 = [v52 _cnui_messagesURLFutureWithHandle:v23 contact:contact];
  }

LABEL_10:
  v28 = v27;

  v29 = [CNUIUserActionItem itemWithType:v24 contactProperty:propertyCopy bundleIdentifier:identifierCopy url:v28 group:0 options:0];
LABEL_11:
  v30 = v29;

LABEL_12:
LABEL_30:
  v50 = v30;

  return v30;
}

+ (id)thirdPartyCallActionItemForHandle:(id)handle contactProperty:(id)property actionType:(id)type bundleIdentifier:(id)identifier callProviderManager:(id)manager
{
  handleCopy = handle;
  propertyCopy = property;
  typeCopy = type;
  identifierCopy = identifier;
  managerCopy = manager;
  if (typeCopy | *MEMORY[0x1E695C150] && ([typeCopy isEqual:?] & 1) == 0 && typeCopy | *MEMORY[0x1E695C1B8] && !objc_msgSend(typeCopy, "isEqual:"))
  {
    v21 = 0;
  }

  else
  {
    if (!managerCopy)
    {
      managerCopy = objc_alloc_init(CNTUCallProviderManager);
    }

    v16 = [(CNTUCallProviderManager *)managerCopy thirdPartyCallProviderWithBundleIdentifier:identifierCopy];
    if (v16)
    {
      v17 = *MEMORY[0x1E695C1B8];
      v18 = typeCopy | *MEMORY[0x1E695C1B8];
      contact = [propertyCopy contact];
      if (v18)
      {
        v20 = [typeCopy isEqual:v17];
      }

      else
      {
        v20 = 1;
      }

      v22 = [v16 dialRequestForHandle:handleCopy contact:contact video:v20];

      v21 = [CNUIUserActionItem itemWithType:typeCopy contactProperty:propertyCopy bundleIdentifier:identifierCopy dialRequest:v22 group:0 options:0];
    }

    else
    {
      v21 = 0;
    }
  }

  return v21;
}

+ (id)itemWithContact:(id)contact
{
  contactCopy = contact;
  v4 = [[_CNUIUserActionContactItem alloc] initWithContact:contactCopy];

  return v4;
}

- (CNContact)contact
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    contact = [(CNUIUserActionItem *)self contact];
  }

  else
  {
    contact = 0;
  }

  return contact;
}

@end