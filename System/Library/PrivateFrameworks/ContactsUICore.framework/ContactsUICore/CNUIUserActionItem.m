@interface CNUIUserActionItem
+ (CNLSApplicationWorkspace)workspace;
+ (id)_voiceItemWithLabel:(id)a3 targetStringValue:(id)a4 propertyKey:(id)a5 dialRequest:(id)a6 bundleIdentifier:(id)a7 group:(int64_t)a8 options:(unint64_t)a9;
+ (id)_voiceItemWithLabel:(id)a3 targetStringValue:(id)a4 propertyKey:(id)a5 userActivity:(id)a6 bundleIdentifier:(id)a7 group:(int64_t)a8 options:(unint64_t)a9;
+ (id)actionItemForContactProperty:(id)a3 actionType:(id)a4 bundleIdentifier:(id)a5 callProviderManager:(id)a6;
+ (id)emailItemWithLabel:(id)a3 targetStringValue:(id)a4 url:(id)a5 bundleIdentifier:(id)a6;
+ (id)emailItemWithLabel:(id)a3 targetStringValue:(id)a4 userActivity:(id)a5 bundleIdentifier:(id)a6;
+ (id)itemWithContact:(id)a3;
+ (id)itemWithType:(id)a3 contactProperty:(id)a4 bundleIdentifier:(id)a5 dialRequest:(id)a6 group:(int64_t)a7 options:(unint64_t)a8;
+ (id)itemWithType:(id)a3 contactProperty:(id)a4 bundleIdentifier:(id)a5 dialRequest:(id)a6 isSuggested:(BOOL)a7 options:(unint64_t)a8 isEligibleDefaultApp:(BOOL)a9;
+ (id)itemWithType:(id)a3 contactProperty:(id)a4 bundleIdentifier:(id)a5 url:(id)a6 group:(int64_t)a7 options:(unint64_t)a8;
+ (id)itemWithType:(id)a3 contactProperty:(id)a4 bundleIdentifier:(id)a5 url:(id)a6 isSensitive:(BOOL)a7 group:(int64_t)a8 options:(unint64_t)a9;
+ (id)itemWithType:(id)a3 contactProperty:(id)a4 bundleIdentifier:(id)a5 userActivity:(id)a6 group:(int64_t)a7 options:(unint64_t)a8;
+ (id)itemWithType:(id)a3 contactProperty:(id)a4 bundleIdentifier:(id)a5 userActivity:(id)a6 isSuggested:(BOOL)a7 options:(unint64_t)a8;
+ (id)payItemWithLabel:(id)a3 targetStringValue:(id)a4 url:(id)a5 bundleIdentifier:(id)a6;
+ (id)payItemWithLabel:(id)a3 targetStringValue:(id)a4 userActivity:(id)a5 bundleIdentifier:(id)a6;
+ (id)textItemWithLabel:(id)a3 targetPhoneNumber:(id)a4 url:(id)a5 bundleIdentifier:(id)a6 group:(int64_t)a7 options:(unint64_t)a8;
+ (id)textItemWithLabel:(id)a3 targetStringValue:(id)a4 url:(id)a5 bundleIdentifier:(id)a6 group:(int64_t)a7 options:(unint64_t)a8;
+ (id)textItemWithLabel:(id)a3 targetStringValue:(id)a4 userActivity:(id)a5 bundleIdentifier:(id)a6 group:(int64_t)a7 options:(unint64_t)a8;
+ (id)thirdPartyCallActionItemForHandle:(id)a3 contactProperty:(id)a4 actionType:(id)a5 bundleIdentifier:(id)a6 callProviderManager:(id)a7;
+ (id)ttyItemWithLabel:(id)a3 targetStringValue:(id)a4 url:(id)a5 bundleIdentifier:(id)a6;
+ (id)ttyRelayItemWithLabel:(id)a3 targetStringValue:(id)a4 url:(id)a5 bundleIdentifier:(id)a6;
+ (id)videoItemWithLabel:(id)a3 targetStringValue:(id)a4 dialRequest:(id)a5 bundleIdentifier:(id)a6 group:(int64_t)a7 options:(unint64_t)a8;
+ (id)videoItemWithLabel:(id)a3 targetStringValue:(id)a4 url:(id)a5 bundleIdentifier:(id)a6 group:(int64_t)a7 options:(unint64_t)a8;
+ (id)videoItemWithLabel:(id)a3 targetStringValue:(id)a4 userActivity:(id)a5 bundleIdentifier:(id)a6 group:(int64_t)a7 options:(unint64_t)a8;
+ (id)voiceItemWithLabel:(id)a3 targetStringValue:(id)a4 url:(id)a5 bundleIdentifier:(id)a6 group:(int64_t)a7 options:(unint64_t)a8;
- (BOOL)isEqual:(id)a3;
- (BOOL)isHandledByFirstPartyApp;
- (BOOL)runningOniPad;
- (BOOL)shouldCurateIfPerformed;
- (BOOL)shouldUseApplicationNameForLabel;
- (CNContact)contact;
- (CNUIUserActionItem)initWithItem:(id)a3 contactProperty:(id)a4;
- (CNUIUserActionItem)initWithType:(id)a3 contactProperty:(id)a4 bundleIdentifier:(id)a5 group:(int64_t)a6 options:(unint64_t)a7;
- (NSString)applicationName;
- (NSString)label;
- (NSString)sanitizedTargetHandle;
- (NSString)targetHandle;
- (id)curateActionWithContext:(id)a3 withKeysToFetch:(id)a4;
- (id)description;
- (id)performActionWithContext:(id)a3;
- (id)url;
- (unint64_t)hash;
- (void)associateWithRecentContactMetadata:(id)a3;
@end

@implementation CNUIUserActionItem

- (NSString)targetHandle
{
  if (targetHandle_cn_once_token_1 != -1)
  {
    [CNUIUserActionItem targetHandle];
  }

  v3 = targetHandle_cn_once_object_1;
  v4 = [(CNUIUserActionItem *)self contactProperty];
  v5 = [v4 key];
  v6 = [v3 objectForKeyedSubscript:v5];

  v7 = [(CNUIUserActionItem *)self contactProperty];
  v8 = [v7 value];
  v9 = (v6)[2](v6, v8);

  return v9;
}

- (NSString)label
{
  if ([(CNUIUserActionItem *)self shouldUseApplicationNameForLabel])
  {
    v3 = [(CNUIUserActionItem *)self applicationName];
  }

  else
  {
    v4 = [(CNUIUserActionItem *)self contactProperty];
    v3 = [v4 label];
  }

  return v3;
}

- (BOOL)shouldUseApplicationNameForLabel
{
  v3 = [(CNUIUserActionItem *)self bundleIdentifier];
  v4 = [v3 hasPrefix:*MEMORY[0x1E695C118]];

  if (v4)
  {
    return 1;
  }

  v5 = [(CNUIUserActionItem *)self bundleIdentifier];
  if ([v5 hasPrefix:@"com.apple.Chatterbox"])
  {

    return 1;
  }

  v6 = [(CNUIUserActionItem *)self bundleIdentifier];
  v7 = [v6 hasPrefix:@"com.apple.Speakerbox"];

  if (v7)
  {
    return 1;
  }

  return ![(CNUIUserActionItem *)self isHandledByFirstPartyApp];
}

- (BOOL)isHandledByFirstPartyApp
{
  v2 = [(CNUIUserActionItem *)self bundleIdentifier];
  v3 = [v2 hasPrefix:@"com.apple"];

  return v3;
}

- (NSString)sanitizedTargetHandle
{
  v5 = [(CNUIUserActionItem *)self contactProperty];
  v6 = [v5 key];
  v7 = [v6 isEqualToString:*MEMORY[0x1E695C330]];
  if ((v7 & 1) != 0 || (-[CNUIUserActionItem contactProperty](self, "contactProperty"), v2 = objc_claimAutoreleasedReturnValue(), [v2 key], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E695C3D0])))
  {
    v8 = [(CNUIUserActionItem *)self targetHandle];
    v9 = [v8 _cn_requiresPhoneNumberSanitizing];

    if (v7)
    {

      if (!v9)
      {
        goto LABEL_9;
      }

LABEL_7:
      v10 = [(CNUIUserActionItem *)self targetHandle];
      v11 = [v10 _cn_stringBySanitizingPhoneNumber];

      goto LABEL_10;
    }

    if (v9)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

LABEL_9:
  v11 = [(CNUIUserActionItem *)self targetHandle];
LABEL_10:

  return v11;
}

+ (id)itemWithType:(id)a3 contactProperty:(id)a4 bundleIdentifier:(id)a5 url:(id)a6 group:(int64_t)a7 options:(unint64_t)a8
{
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[_CNUIUserActionURLItem alloc] initWithType:v16 contactProperty:v15 bundleIdentifier:v14 url:v13 group:a7 options:a8];

  return v17;
}

+ (id)itemWithType:(id)a3 contactProperty:(id)a4 bundleIdentifier:(id)a5 url:(id)a6 isSensitive:(BOOL)a7 group:(int64_t)a8 options:(unint64_t)a9
{
  v10 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [[_CNUIUserActionURLItem alloc] initWithType:v17 contactProperty:v16 bundleIdentifier:v15 url:v14 isSensitive:v10 group:a8 options:a9];

  return v18;
}

+ (id)payItemWithLabel:(id)a3 targetStringValue:(id)a4 url:(id)a5 bundleIdentifier:(id)a6
{
  v29[1] = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = a6;
  v11 = MEMORY[0x1E695CF18];
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(v11);
  v15 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:v13 value:v12];

  v29[0] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
  [v14 setEmailAddresses:v16];

  v17 = MEMORY[0x1E695CE08];
  v18 = *MEMORY[0x1E695C208];
  v19 = [v14 emailAddresses];
  v20 = [v19 firstObject];
  v21 = [v20 identifier];
  v22 = [v17 contactPropertyWithContactNoCopy:v14 propertyKey:v18 identifier:v21];

  v23 = [_CNUIUserActionURLItem alloc];
  v24 = v23;
  v25 = *MEMORY[0x1E695C188];
  if (v9)
  {
    v26 = [MEMORY[0x1E6996720] futureWithResult:v9];
    v27 = [(_CNUIUserActionURLItem *)v24 initWithType:v25 contactProperty:v22 bundleIdentifier:v10 url:v26 isSensitive:1 group:9 options:0];
  }

  else
  {
    v27 = [(_CNUIUserActionURLItem *)v23 initWithType:v25 contactProperty:v22 bundleIdentifier:v10 url:0 isSensitive:1 group:9 options:0];
  }

  return v27;
}

+ (id)emailItemWithLabel:(id)a3 targetStringValue:(id)a4 url:(id)a5 bundleIdentifier:(id)a6
{
  v29[1] = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = a6;
  v11 = MEMORY[0x1E695CF18];
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(v11);
  v15 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:v13 value:v12];

  v29[0] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
  [v14 setEmailAddresses:v16];

  v17 = MEMORY[0x1E695CE08];
  v18 = *MEMORY[0x1E695C208];
  v19 = [v14 emailAddresses];
  v20 = [v19 firstObject];
  v21 = [v20 identifier];
  v22 = [v17 contactPropertyWithContactNoCopy:v14 propertyKey:v18 identifier:v21];

  v23 = [_CNUIUserActionURLItem alloc];
  v24 = v23;
  v25 = *MEMORY[0x1E695C170];
  if (v9)
  {
    v26 = [MEMORY[0x1E6996720] futureWithResult:v9];
    v27 = [(_CNUIUserActionURLItem *)v24 initWithType:v25 contactProperty:v22 bundleIdentifier:v10 url:v26 group:8 options:0];
  }

  else
  {
    v27 = [(_CNUIUserActionURLItem *)v23 initWithType:*MEMORY[0x1E695C170] contactProperty:v22 bundleIdentifier:v10 url:0 group:8 options:0];
  }

  return v27;
}

+ (id)textItemWithLabel:(id)a3 targetStringValue:(id)a4 url:(id)a5 bundleIdentifier:(id)a6 group:(int64_t)a7 options:(unint64_t)a8
{
  v33[1] = *MEMORY[0x1E69E9840];
  v13 = a5;
  v14 = a6;
  v15 = MEMORY[0x1E695CF18];
  v16 = a4;
  v17 = a3;
  v18 = objc_alloc_init(v15);
  v19 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:v17 value:v16];

  v33[0] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  [v18 setEmailAddresses:v20];

  v21 = MEMORY[0x1E695CE08];
  v22 = *MEMORY[0x1E695C208];
  v23 = [v18 emailAddresses];
  v24 = [v23 firstObject];
  v25 = [v24 identifier];
  v26 = [v21 contactPropertyWithContactNoCopy:v18 propertyKey:v22 identifier:v25];

  v27 = [_CNUIUserActionURLItem alloc];
  v28 = v27;
  v29 = *MEMORY[0x1E695C178];
  if (v13)
  {
    v30 = [MEMORY[0x1E6996720] futureWithResult:v13];
    v31 = [(_CNUIUserActionURLItem *)v28 initWithType:v29 contactProperty:v26 bundleIdentifier:v14 url:v30 group:a7 options:a8];
  }

  else
  {
    v31 = [(_CNUIUserActionURLItem *)v27 initWithType:*MEMORY[0x1E695C178] contactProperty:v26 bundleIdentifier:v14 url:0 group:a7 options:a8];
  }

  return v31;
}

+ (id)textItemWithLabel:(id)a3 targetPhoneNumber:(id)a4 url:(id)a5 bundleIdentifier:(id)a6 group:(int64_t)a7 options:(unint64_t)a8
{
  v35[1] = *MEMORY[0x1E69E9840];
  v13 = a5;
  v14 = a6;
  v15 = MEMORY[0x1E695CF18];
  v16 = a4;
  v17 = a3;
  v18 = objc_alloc_init(v15);
  v19 = MEMORY[0x1E695CEE0];
  v20 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:v16];

  v21 = [v19 labeledValueWithLabel:v17 value:v20];

  v35[0] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
  [v18 setPhoneNumbers:v22];

  v23 = MEMORY[0x1E695CE08];
  v24 = *MEMORY[0x1E695C330];
  v25 = [v18 phoneNumbers];
  v26 = [v25 firstObject];
  v27 = [v26 identifier];
  v28 = [v23 contactPropertyWithContactNoCopy:v18 propertyKey:v24 identifier:v27];

  v29 = [_CNUIUserActionURLItem alloc];
  v30 = v29;
  v31 = *MEMORY[0x1E695C178];
  if (v13)
  {
    v32 = [MEMORY[0x1E6996720] futureWithResult:v13];
    v33 = [(_CNUIUserActionURLItem *)v30 initWithType:v31 contactProperty:v28 bundleIdentifier:v14 url:v32 group:a7 options:a8];
  }

  else
  {
    v33 = [(_CNUIUserActionURLItem *)v29 initWithType:*MEMORY[0x1E695C178] contactProperty:v28 bundleIdentifier:v14 url:0 group:a7 options:a8];
  }

  return v33;
}

+ (id)videoItemWithLabel:(id)a3 targetStringValue:(id)a4 url:(id)a5 bundleIdentifier:(id)a6 group:(int64_t)a7 options:(unint64_t)a8
{
  v33[1] = *MEMORY[0x1E69E9840];
  v13 = a5;
  v14 = a6;
  v15 = MEMORY[0x1E695CF18];
  v16 = a4;
  v17 = a3;
  v18 = objc_alloc_init(v15);
  v19 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:v17 value:v16];

  v33[0] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  [v18 setEmailAddresses:v20];

  v21 = MEMORY[0x1E695CE08];
  v22 = *MEMORY[0x1E695C208];
  v23 = [v18 emailAddresses];
  v24 = [v23 firstObject];
  v25 = [v24 identifier];
  v26 = [v21 contactPropertyWithContactNoCopy:v18 propertyKey:v22 identifier:v25];

  v27 = [_CNUIUserActionURLItem alloc];
  v28 = v27;
  v29 = *MEMORY[0x1E695C1B8];
  if (v13)
  {
    v30 = [MEMORY[0x1E6996720] futureWithResult:v13];
    v31 = [(_CNUIUserActionURLItem *)v28 initWithType:v29 contactProperty:v26 bundleIdentifier:v14 url:v30 group:a7 options:a8];
  }

  else
  {
    v31 = [(_CNUIUserActionURLItem *)v27 initWithType:*MEMORY[0x1E695C1B8] contactProperty:v26 bundleIdentifier:v14 url:0 group:a7 options:a8];
  }

  return v31;
}

+ (id)voiceItemWithLabel:(id)a3 targetStringValue:(id)a4 url:(id)a5 bundleIdentifier:(id)a6 group:(int64_t)a7 options:(unint64_t)a8
{
  v35[1] = *MEMORY[0x1E69E9840];
  v13 = a5;
  v14 = a6;
  v15 = MEMORY[0x1E695CF18];
  v16 = a4;
  v17 = a3;
  v18 = objc_alloc_init(v15);
  v19 = MEMORY[0x1E695CEE0];
  v20 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:v16];

  v21 = [v19 labeledValueWithLabel:v17 value:v20];

  v35[0] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
  [v18 setPhoneNumbers:v22];

  v23 = MEMORY[0x1E695CE08];
  v24 = *MEMORY[0x1E695C330];
  v25 = [v18 phoneNumbers];
  v26 = [v25 firstObject];
  v27 = [v26 identifier];
  v28 = [v23 contactPropertyWithContactNoCopy:v18 propertyKey:v24 identifier:v27];

  v29 = [_CNUIUserActionURLItem alloc];
  v30 = v29;
  v31 = *MEMORY[0x1E695C150];
  if (v13)
  {
    v32 = [MEMORY[0x1E6996720] futureWithResult:v13];
    v33 = [(_CNUIUserActionURLItem *)v30 initWithType:v31 contactProperty:v28 bundleIdentifier:v14 url:v32 group:a7 options:a8];
  }

  else
  {
    v33 = [(_CNUIUserActionURLItem *)v29 initWithType:*MEMORY[0x1E695C150] contactProperty:v28 bundleIdentifier:v14 url:0 group:a7 options:a8];
  }

  return v33;
}

+ (id)ttyItemWithLabel:(id)a3 targetStringValue:(id)a4 url:(id)a5 bundleIdentifier:(id)a6
{
  v31[1] = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = a6;
  v11 = MEMORY[0x1E695CF18];
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(v11);
  v15 = MEMORY[0x1E695CEE0];
  v16 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:v12];

  v17 = [v15 labeledValueWithLabel:v13 value:v16];

  v31[0] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  [v14 setPhoneNumbers:v18];

  v19 = MEMORY[0x1E695CE08];
  v20 = *MEMORY[0x1E695C330];
  v21 = [v14 phoneNumbers];
  v22 = [v21 firstObject];
  v23 = [v22 identifier];
  v24 = [v19 contactPropertyWithContactNoCopy:v14 propertyKey:v20 identifier:v23];

  v25 = [_CNUIUserActionURLItem alloc];
  v26 = v25;
  v27 = *MEMORY[0x1E695C190];
  if (v9)
  {
    v28 = [MEMORY[0x1E6996720] futureWithResult:v9];
    v29 = [(_CNUIUserActionURLItem *)v26 initWithType:v27 contactProperty:v24 bundleIdentifier:v10 url:v28 group:2 options:0];
  }

  else
  {
    v29 = [(_CNUIUserActionURLItem *)v25 initWithType:*MEMORY[0x1E695C190] contactProperty:v24 bundleIdentifier:v10 url:0 group:2 options:0];
  }

  return v29;
}

+ (id)ttyRelayItemWithLabel:(id)a3 targetStringValue:(id)a4 url:(id)a5 bundleIdentifier:(id)a6
{
  v31[1] = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = a6;
  v11 = MEMORY[0x1E695CF18];
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(v11);
  v15 = MEMORY[0x1E695CEE0];
  v16 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:v12];

  v17 = [v15 labeledValueWithLabel:v13 value:v16];

  v31[0] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  [v14 setPhoneNumbers:v18];

  v19 = MEMORY[0x1E695CE08];
  v20 = *MEMORY[0x1E695C330];
  v21 = [v14 phoneNumbers];
  v22 = [v21 firstObject];
  v23 = [v22 identifier];
  v24 = [v19 contactPropertyWithContactNoCopy:v14 propertyKey:v20 identifier:v23];

  v25 = [_CNUIUserActionURLItem alloc];
  v26 = v25;
  v27 = *MEMORY[0x1E695C1A8];
  if (v9)
  {
    v28 = [MEMORY[0x1E6996720] futureWithResult:v9];
    v29 = [(_CNUIUserActionURLItem *)v26 initWithType:v27 contactProperty:v24 bundleIdentifier:v10 url:v28 group:2 options:0];
  }

  else
  {
    v29 = [(_CNUIUserActionURLItem *)v25 initWithType:*MEMORY[0x1E695C1A8] contactProperty:v24 bundleIdentifier:v10 url:0 group:2 options:0];
  }

  return v29;
}

- (id)url
{
  v2 = self;
  v3 = CNUnimplementedMethodException();
  objc_exception_throw(v3);
}

+ (id)itemWithType:(id)a3 contactProperty:(id)a4 bundleIdentifier:(id)a5 userActivity:(id)a6 isSuggested:(BOOL)a7 options:(unint64_t)a8
{
  if (a7)
  {
    v11 = 7;
  }

  else
  {
    v11 = 5;
  }

  if (a7)
  {
    v12 = a8 | 4;
  }

  else
  {
    v12 = a8;
  }

  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[_CNUIUserActionUserActivityItem alloc] initWithType:v16 contactProperty:v15 bundleIdentifier:v14 userActivity:v13 group:v11 options:v12];

  return v17;
}

+ (id)itemWithType:(id)a3 contactProperty:(id)a4 bundleIdentifier:(id)a5 userActivity:(id)a6 group:(int64_t)a7 options:(unint64_t)a8
{
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[_CNUIUserActionUserActivityItem alloc] initWithType:v16 contactProperty:v15 bundleIdentifier:v14 userActivity:v13 group:a7 options:a8];

  return v17;
}

+ (id)payItemWithLabel:(id)a3 targetStringValue:(id)a4 userActivity:(id)a5 bundleIdentifier:(id)a6
{
  v26[1] = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E695CF18];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(v9);
  v15 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:v13 value:v12];

  v26[0] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  [v14 setEmailAddresses:v16];

  v17 = MEMORY[0x1E695CE08];
  v18 = *MEMORY[0x1E695C208];
  v19 = [v14 emailAddresses];
  v20 = [v19 firstObject];
  v21 = [v20 identifier];
  v22 = [v17 contactPropertyWithContactNoCopy:v14 propertyKey:v18 identifier:v21];

  v23 = [_CNUIUserActionUserActivityItem alloc];
  v24 = [(_CNUIUserActionUserActivityItem *)v23 initWithType:*MEMORY[0x1E695C188] contactProperty:v22 bundleIdentifier:v10 userActivity:v11 group:9 options:0];

  return v24;
}

+ (id)emailItemWithLabel:(id)a3 targetStringValue:(id)a4 userActivity:(id)a5 bundleIdentifier:(id)a6
{
  v26[1] = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E695CF18];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(v9);
  v15 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:v13 value:v12];

  v26[0] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  [v14 setEmailAddresses:v16];

  v17 = MEMORY[0x1E695CE08];
  v18 = *MEMORY[0x1E695C208];
  v19 = [v14 emailAddresses];
  v20 = [v19 firstObject];
  v21 = [v20 identifier];
  v22 = [v17 contactPropertyWithContactNoCopy:v14 propertyKey:v18 identifier:v21];

  v23 = [_CNUIUserActionUserActivityItem alloc];
  v24 = [(_CNUIUserActionUserActivityItem *)v23 initWithType:*MEMORY[0x1E695C170] contactProperty:v22 bundleIdentifier:v10 userActivity:v11 group:8 options:0];

  return v24;
}

+ (id)textItemWithLabel:(id)a3 targetStringValue:(id)a4 userActivity:(id)a5 bundleIdentifier:(id)a6 group:(int64_t)a7 options:(unint64_t)a8
{
  v30[1] = *MEMORY[0x1E69E9840];
  v13 = MEMORY[0x1E695CF18];
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = objc_alloc_init(v13);
  v19 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:v17 value:v16];

  v30[0] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  [v18 setEmailAddresses:v20];

  v21 = MEMORY[0x1E695CE08];
  v22 = *MEMORY[0x1E695C208];
  v23 = [v18 emailAddresses];
  v24 = [v23 firstObject];
  v25 = [v24 identifier];
  v26 = [v21 contactPropertyWithContactNoCopy:v18 propertyKey:v22 identifier:v25];

  v27 = [_CNUIUserActionUserActivityItem alloc];
  v28 = [(_CNUIUserActionUserActivityItem *)v27 initWithType:*MEMORY[0x1E695C178] contactProperty:v26 bundleIdentifier:v14 userActivity:v15 group:a7 options:a8];

  return v28;
}

+ (id)videoItemWithLabel:(id)a3 targetStringValue:(id)a4 userActivity:(id)a5 bundleIdentifier:(id)a6 group:(int64_t)a7 options:(unint64_t)a8
{
  v30[1] = *MEMORY[0x1E69E9840];
  v13 = MEMORY[0x1E695CF18];
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = objc_alloc_init(v13);
  v19 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:v17 value:v16];

  v30[0] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  [v18 setEmailAddresses:v20];

  v21 = MEMORY[0x1E695CE08];
  v22 = *MEMORY[0x1E695C208];
  v23 = [v18 emailAddresses];
  v24 = [v23 firstObject];
  v25 = [v24 identifier];
  v26 = [v21 contactPropertyWithContactNoCopy:v18 propertyKey:v22 identifier:v25];

  v27 = [_CNUIUserActionUserActivityItem alloc];
  v28 = [(_CNUIUserActionUserActivityItem *)v27 initWithType:*MEMORY[0x1E695C1B8] contactProperty:v26 bundleIdentifier:v14 userActivity:v15 group:a7 options:a8];

  return v28;
}

+ (id)_voiceItemWithLabel:(id)a3 targetStringValue:(id)a4 propertyKey:(id)a5 userActivity:(id)a6 bundleIdentifier:(id)a7 group:(int64_t)a8 options:(unint64_t)a9
{
  v38[1] = *MEMORY[0x1E69E9840];
  v35 = a3;
  v14 = a4;
  v15 = a5;
  v16 = MEMORY[0x1E695CF18];
  v17 = a7;
  v18 = a6;
  v19 = objc_alloc_init(v16);
  if (!(v15 | *MEMORY[0x1E695C330]) || [v15 isEqual:?])
  {
    v20 = a8;
    v21 = MEMORY[0x1E695CEE0];
    v22 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:{v14, v35}];
    v23 = [v21 labeledValueWithLabel:v35 value:v22];
    v38[0] = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
    [v19 setPhoneNumbers:v24];

    v25 = [v19 phoneNumbers];
LABEL_4:
    v26 = v25;
    v27 = [v25 firstObject];
    v28 = [v27 identifier];

    a8 = v20;
    goto LABEL_5;
  }

  if (!(v15 | *MEMORY[0x1E695C208]) || [v15 isEqual:?])
  {
    v20 = a8;
    v33 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:v35 value:{v14, v35}];
    v37 = v33;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
    [v19 setEmailAddresses:v34];

    v25 = [v19 emailAddresses];
    goto LABEL_4;
  }

  v28 = 0;
LABEL_5:
  v29 = [MEMORY[0x1E695CE08] contactPropertyWithContactNoCopy:v19 propertyKey:v15 identifier:{v28, v35}];
  v30 = [_CNUIUserActionUserActivityItem alloc];
  v31 = [(_CNUIUserActionUserActivityItem *)v30 initWithType:*MEMORY[0x1E695C150] contactProperty:v29 bundleIdentifier:v17 userActivity:v18 group:a8 options:a9];

  return v31;
}

- (id)performActionWithContext:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = CNAbstractMethodException();
  objc_exception_throw(v6);
}

- (id)curateActionWithContext:(id)a3 withKeysToFetch:(id)a4
{
  v6 = a4;
  v7 = [a3 actionCurator];
  v8 = [v7 curateUserAction:self withKeysToFetch:v6];

  return v8;
}

- (void)associateWithRecentContactMetadata:(id)a3
{
  self->_associatedRecentContactMetadata = [a3 copy];

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
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 userInterfaceIdiom] == 1;

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

- (CNUIUserActionItem)initWithItem:(id)a3 contactProperty:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 type];
  v9 = [v7 bundleIdentifier];
  v10 = [v7 group];
  v11 = [v7 options];

  v12 = [(CNUIUserActionItem *)self initWithType:v8 contactProperty:v6 bundleIdentifier:v9 group:v10 options:v11];
  return v12;
}

- (CNUIUserActionItem)initWithType:(id)a3 contactProperty:(id)a4 bundleIdentifier:(id)a5 group:(int64_t)a6 options:(unint64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v22.receiver = self;
  v22.super_class = CNUIUserActionItem;
  v16 = [(CNUIUserActionItem *)&v22 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_type, a3);
    objc_storeStrong(&v17->_contactProperty, a4);
    v18 = [v15 copy];
    bundleIdentifier = v17->_bundleIdentifier;
    v17->_bundleIdentifier = v18;

    v17->_group = a6;
    v17->_options = a7;
    v20 = v17;
  }

  return v17;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [(CNUIUserActionItem *)self type];
  v5 = [v3 appendObject:v4 withName:@"type"];

  v6 = [(CNUIUserActionItem *)self label];
  v7 = [v3 appendObject:v6 withName:@"label"];

  v8 = [(CNUIUserActionItem *)self targetHandle];
  v9 = [v3 appendObject:v8 withName:@"targetHandle"];

  v10 = [(CNUIUserActionItem *)self bundleIdentifier];
  v11 = [v3 appendObject:v10 withName:@"bundleIdentifier"];

  v12 = [v3 appendName:@"group" integerValue:{-[CNUIUserActionItem group](self, "group")}];
  v13 = [v3 appendName:@"options" unsignedInteger:{-[CNUIUserActionItem options](self, "options")}];
  v14 = [v3 build];

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69966F0];
  v6 = objc_opt_class();
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __30__CNUIUserActionItem_isEqual___block_invoke;
  v24[3] = &unk_1E76E7A88;
  v24[4] = self;
  v25 = v4;
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
  v18 = self;
  v19 = v9;
  v11 = v9;
  v12 = _Block_copy(&v14);
  LOBYTE(self) = [v5 isObject:v11 kindOfClass:v6 andEqualToObject:self withBlocks:{v24, v8, v10, v12, 0, v14, v15, v16, v17, v18}];

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

+ (id)itemWithType:(id)a3 contactProperty:(id)a4 bundleIdentifier:(id)a5 dialRequest:(id)a6 isSuggested:(BOOL)a7 options:(unint64_t)a8 isEligibleDefaultApp:(BOOL)a9
{
  v12 = 5;
  if (a7)
  {
    v12 = 6;
    v13 = a8 | 4;
  }

  else
  {
    v13 = a8;
  }

  if (a9)
  {
    v14 = 2;
  }

  else
  {
    v14 = v12;
  }

  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [[_CNUIUserActionDialRequestItem alloc] initWithType:v18 contactProperty:v17 bundleIdentifier:v16 dialRequest:v15 group:v14 options:v13];

  return v19;
}

+ (id)itemWithType:(id)a3 contactProperty:(id)a4 bundleIdentifier:(id)a5 dialRequest:(id)a6 group:(int64_t)a7 options:(unint64_t)a8
{
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[_CNUIUserActionDialRequestItem alloc] initWithType:v16 contactProperty:v15 bundleIdentifier:v14 dialRequest:v13 group:a7 options:a8];

  return v17;
}

+ (id)videoItemWithLabel:(id)a3 targetStringValue:(id)a4 dialRequest:(id)a5 bundleIdentifier:(id)a6 group:(int64_t)a7 options:(unint64_t)a8
{
  v30[1] = *MEMORY[0x1E69E9840];
  v13 = MEMORY[0x1E695CF18];
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = objc_alloc_init(v13);
  v19 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:v17 value:v16];

  v30[0] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  [v18 setEmailAddresses:v20];

  v21 = MEMORY[0x1E695CE08];
  v22 = *MEMORY[0x1E695C208];
  v23 = [v18 emailAddresses];
  v24 = [v23 firstObject];
  v25 = [v24 identifier];
  v26 = [v21 contactPropertyWithContactNoCopy:v18 propertyKey:v22 identifier:v25];

  v27 = [_CNUIUserActionDialRequestItem alloc];
  v28 = [(_CNUIUserActionDialRequestItem *)v27 initWithType:*MEMORY[0x1E695C1B8] contactProperty:v26 bundleIdentifier:v14 dialRequest:v15 group:a7 options:a8];

  return v28;
}

+ (id)_voiceItemWithLabel:(id)a3 targetStringValue:(id)a4 propertyKey:(id)a5 dialRequest:(id)a6 bundleIdentifier:(id)a7 group:(int64_t)a8 options:(unint64_t)a9
{
  v38[1] = *MEMORY[0x1E69E9840];
  v35 = a3;
  v14 = a4;
  v15 = a5;
  v16 = MEMORY[0x1E695CF18];
  v17 = a7;
  v18 = a6;
  v19 = objc_alloc_init(v16);
  if (!(v15 | *MEMORY[0x1E695C330]) || [v15 isEqual:?])
  {
    v20 = a8;
    v21 = MEMORY[0x1E695CEE0];
    v22 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:{v14, v35}];
    v23 = [v21 labeledValueWithLabel:v35 value:v22];
    v38[0] = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
    [v19 setPhoneNumbers:v24];

    v25 = [v19 phoneNumbers];
LABEL_4:
    v26 = v25;
    v27 = [v25 firstObject];
    v28 = [v27 identifier];

    a8 = v20;
    goto LABEL_5;
  }

  if (!(v15 | *MEMORY[0x1E695C208]) || [v15 isEqual:?])
  {
    v20 = a8;
    v33 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:v35 value:{v14, v35}];
    v37 = v33;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
    [v19 setEmailAddresses:v34];

    v25 = [v19 emailAddresses];
    goto LABEL_4;
  }

  v28 = 0;
LABEL_5:
  v29 = [MEMORY[0x1E695CE08] contactPropertyWithContactNoCopy:v19 propertyKey:v15 identifier:{v28, v35}];
  v30 = [_CNUIUserActionDialRequestItem alloc];
  v31 = [(_CNUIUserActionDialRequestItem *)v30 initWithType:*MEMORY[0x1E695C150] contactProperty:v29 bundleIdentifier:v17 dialRequest:v18 group:a8 options:a9];

  return v31;
}

+ (id)actionItemForContactProperty:(id)a3 actionType:(id)a4 bundleIdentifier:(id)a5 callProviderManager:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v9 key];
  v14 = *MEMORY[0x1E695C330];
  if (v13 | *MEMORY[0x1E695C330] && (v15 = v13, [v9 key], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqual:", v14), v16, v15, !v17))
  {
    v31 = [v9 key];
    v32 = *MEMORY[0x1E695C208];
    if (v31 | *MEMORY[0x1E695C208])
    {
      v33 = v31;
      v34 = [v9 key];
      v35 = [v34 isEqual:v32];

      if (!v35)
      {
        v38 = [v9 key];
        v39 = *MEMORY[0x1E695C3D0];
        if (v38 | *MEMORY[0x1E695C3D0] && (v40 = v38, [v9 key], v41 = objc_claimAutoreleasedReturnValue(), v42 = objc_msgSend(v41, "isEqual:", v39), v41, v40, !v42) && (objc_msgSend(v9, "key"), v43 = objc_claimAutoreleasedReturnValue(), v44 = *MEMORY[0x1E695C2B0], v43 | *MEMORY[0x1E695C2B0]) && (v45 = v43, objc_msgSend(v9, "key"), v46 = objc_claimAutoreleasedReturnValue(), v47 = objc_msgSend(v46, "isEqual:", v44), v46, v45, !v47))
        {
          v19 = 0;
          v20 = 0;
        }

        else
        {
          v48 = [v9 value];
          v19 = [v48 username];

          v49 = [v9 value];
          v20 = [v49 userIdentifier];

          if (v19)
          {
            goto LABEL_5;
          }
        }

LABEL_29:
        v30 = 0;
        goto LABEL_30;
      }
    }

    v19 = [v9 value];
  }

  else
  {
    v18 = [v9 value];
    v19 = [v18 formattedStringValue];
  }

  v20 = 0;
  if (!v19)
  {
    goto LABEL_29;
  }

LABEL_5:
  v21 = [v9 key];
  v22 = [CNHandle handleTypeForPropertyKey:v21];

  v23 = [[CNHandle alloc] initWithStringValue:v19 customIdentifier:v20 type:v22];
  v24 = *MEMORY[0x1E695C150];
  if (!(v10 | *MEMORY[0x1E695C150]) || [v10 isEqual:*MEMORY[0x1E695C150]])
  {
    if (!(v11 | *MEMORY[0x1E695C140]) || [v11 isEqual:?])
    {
      v25 = MEMORY[0x1E695DFF8];
      v26 = [v9 contact];
      v27 = [v25 _cnui_telephonyURLFutureWithHandle:v23 contact:v26 preferDefaultApp:0];
      goto LABEL_10;
    }

    if (!(v11 | *MEMORY[0x1E695C118]) || [v11 isEqual:?])
    {
      v37 = MEMORY[0x1E695DFF8];
      v26 = [v9 contact];
      v27 = [v37 _cnui_faceTimeAudioURLFutureWithHandle:v23 contact:v26];
      goto LABEL_10;
    }

LABEL_31:
    v30 = [CNUIUserActionItem thirdPartyCallActionItemForHandle:v23 contactProperty:v9 actionType:v10 bundleIdentifier:v11 callProviderManager:v12];
    goto LABEL_12;
  }

  v24 = *MEMORY[0x1E695C1B8];
  if (!(v10 | *MEMORY[0x1E695C1B8]) || [v10 isEqual:*MEMORY[0x1E695C1B8]])
  {
    if (!(v11 | *MEMORY[0x1E695C118]) || [v11 isEqual:?])
    {
      v36 = MEMORY[0x1E695DFF8];
      v26 = [v9 contact];
      v27 = [v36 _cnui_faceTimeVideoURLFutureWithHandle:v23 contact:v26];
      goto LABEL_10;
    }

    goto LABEL_31;
  }

  v24 = *MEMORY[0x1E695C178];
  if (v10 | *MEMORY[0x1E695C178] && ![v10 isEqual:*MEMORY[0x1E695C178]])
  {
    v24 = *MEMORY[0x1E695C190];
    if (v10 | *MEMORY[0x1E695C190] && ![v10 isEqual:*MEMORY[0x1E695C190]])
    {
      v24 = *MEMORY[0x1E695C1A8];
      if (v10 | *MEMORY[0x1E695C1A8] && ![v10 isEqual:*MEMORY[0x1E695C1A8]])
      {
        v24 = *MEMORY[0x1E695C170];
        if (v10 | *MEMORY[0x1E695C170] && ![v10 isEqual:*MEMORY[0x1E695C170]])
        {
          v30 = 0;
          goto LABEL_12;
        }

        v57 = MEMORY[0x1E695DFF8];
        v26 = [v9 contact];
        v27 = [v57 _cnui_mailURLFutureWithHandle:v23 contact:v26];
      }

      else
      {
        v54 = MEMORY[0x1E695DFF8];
        v26 = [v9 contact];
        v27 = [v54 _cnui_ttyRelayURLFutureWithHandle:v23 contact:v26];
      }
    }

    else
    {
      v53 = MEMORY[0x1E695DFF8];
      v26 = [v9 contact];
      v27 = [v53 _cnui_ttyURLFutureWithHandle:v23 contact:v26];
    }
  }

  else
  {
    if (v11 | *MEMORY[0x1E695C130] && ([v11 isEqual:?] & 1) == 0 && v11 | *MEMORY[0x1E695C138] && !objc_msgSend(v11, "isEqual:"))
    {
      v55 = MEMORY[0x1E696B090];
      v56 = [v9 contact];
      v28 = [v55 _cnui_sendMessageIntentWithHandle:v23 contact:v56];

      v29 = [CNUIUserActionItem itemWithType:v24 contactProperty:v9 bundleIdentifier:v11 userActivity:v28 group:0 options:0];
      goto LABEL_11;
    }

    v52 = MEMORY[0x1E695DFF8];
    v26 = [v9 contact];
    v27 = [v52 _cnui_messagesURLFutureWithHandle:v23 contact:v26];
  }

LABEL_10:
  v28 = v27;

  v29 = [CNUIUserActionItem itemWithType:v24 contactProperty:v9 bundleIdentifier:v11 url:v28 group:0 options:0];
LABEL_11:
  v30 = v29;

LABEL_12:
LABEL_30:
  v50 = v30;

  return v30;
}

+ (id)thirdPartyCallActionItemForHandle:(id)a3 contactProperty:(id)a4 actionType:(id)a5 bundleIdentifier:(id)a6 callProviderManager:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (v13 | *MEMORY[0x1E695C150] && ([v13 isEqual:?] & 1) == 0 && v13 | *MEMORY[0x1E695C1B8] && !objc_msgSend(v13, "isEqual:"))
  {
    v21 = 0;
  }

  else
  {
    if (!v15)
    {
      v15 = objc_alloc_init(CNTUCallProviderManager);
    }

    v16 = [(CNTUCallProviderManager *)v15 thirdPartyCallProviderWithBundleIdentifier:v14];
    if (v16)
    {
      v17 = *MEMORY[0x1E695C1B8];
      v18 = v13 | *MEMORY[0x1E695C1B8];
      v19 = [v12 contact];
      if (v18)
      {
        v20 = [v13 isEqual:v17];
      }

      else
      {
        v20 = 1;
      }

      v22 = [v16 dialRequestForHandle:v11 contact:v19 video:v20];

      v21 = [CNUIUserActionItem itemWithType:v13 contactProperty:v12 bundleIdentifier:v14 dialRequest:v22 group:0 options:0];
    }

    else
    {
      v21 = 0;
    }
  }

  return v21;
}

+ (id)itemWithContact:(id)a3
{
  v3 = a3;
  v4 = [[_CNUIUserActionContactItem alloc] initWithContact:v3];

  return v4;
}

- (CNContact)contact
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [(CNUIUserActionItem *)self contact];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end