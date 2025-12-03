@interface CNComposeRecipientShortNamer
+ (__CFString)shortNameForComposeRecipient:(uint64_t)recipient;
+ (id)buildAdHocNameForGroup:(id)group;
+ (id)nameComponentsFromDisplayName:(id)name;
+ (id)nameForGroup:(id)group;
+ (id)nameForPerson:(id)person;
+ (id)os_log;
+ (id)shortNameFromAddressForComposeRecipient:(id)recipient;
+ (id)shortNameFromCompositeNameForComposeRecipient:(id)recipient;
+ (id)shortNameFromDisplayStringForPerson:(id)person;
+ (id)shortNameFromNameComponents:(id)components;
+ (id)shortNameFromNameComponentsForComposeRecipient:(id)recipient;
@end

@implementation CNComposeRecipientShortNamer

+ (id)os_log
{
  if (os_log_cn_once_token_1_0 != -1)
  {
    +[CNComposeRecipientShortNamer os_log];
  }

  v3 = os_log_cn_once_object_1_0;

  return v3;
}

uint64_t __38__CNComposeRecipientShortNamer_os_log__block_invoke()
{
  os_log_cn_once_object_1_0 = os_log_create("com.apple.contacts.autocomplete.ui", "composerecipient");

  return MEMORY[0x1EEE66BB8]();
}

+ (__CFString)shortNameForComposeRecipient:(uint64_t)recipient
{
  v2 = a2;
  v3 = objc_opt_self();
  if (v2)
  {
    if ([v2 isGroup])
    {
      [v3 nameForGroup:v2];
    }

    else
    {
      [v3 nameForPerson:v2];
    }
    v5 = ;
  }

  else
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
    {
      [CNComposeRecipientShortNamer shortNameForComposeRecipient:os_log];
    }

    v5 = &stru_1F3002C60;
  }

  return v5;
}

+ (id)nameForGroup:(id)group
{
  groupCopy = group;
  placeholderName = [self shortNameFromDisplayStringForGroup:groupCopy];
  v6 = *MEMORY[0x1E6996568];
  if ((*(*MEMORY[0x1E6996568] + 16))(*MEMORY[0x1E6996568], placeholderName))
  {

    placeholderName = [self buildAdHocNameForGroup:groupCopy];
    if ((*(v6 + 16))(v6, placeholderName))
    {

      placeholderName = [groupCopy placeholderName];
    }
  }

  return placeholderName;
}

+ (id)nameForPerson:(id)person
{
  personCopy = person;
  placeholderName = [self shortNameFromNameComponentsForComposeRecipient:personCopy];
  v6 = *MEMORY[0x1E6996568];
  if ((*(*MEMORY[0x1E6996568] + 16))(*MEMORY[0x1E6996568], placeholderName))
  {

    placeholderName = [self shortNameFromDisplayStringForPerson:personCopy];
    if ((*(v6 + 16))(v6, placeholderName))
    {

      placeholderName = [self shortNameFromCompositeNameForComposeRecipient:personCopy];
      if ((*(v6 + 16))(v6, placeholderName))
      {

        placeholderName = [self shortNameFromAddressForComposeRecipient:personCopy];
        if ((*(v6 + 16))(v6, placeholderName))
        {

          placeholderName = [personCopy placeholderName];
        }
      }
    }
  }

  return placeholderName;
}

+ (id)buildAdHocNameForGroup:(id)group
{
  groupCopy = group;
  children = [groupCopy children];
  v5 = objc_opt_new();
  v6 = objc_alloc_init(CNNameListBuilderBlockDelegate);
  children2 = [groupCopy children];
  -[CNNameListBuilderBlockDelegate setCountOfNames:](v6, "setCountOfNames:", [children2 count]);

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __55__CNComposeRecipientShortNamer_buildAdHocNameForGroup___block_invoke;
  v20[3] = &unk_1E7CD2080;
  v8 = v5;
  v21 = v8;
  v9 = children;
  v22 = v9;
  [(CNNameListBuilderBlockDelegate *)v6 setNameProviderBlock:v20];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __55__CNComposeRecipientShortNamer_buildAdHocNameForGroup___block_invoke_2;
  v18[3] = &unk_1E7CD20A8;
  v10 = v8;
  v19 = v10;
  [(CNNameListBuilderBlockDelegate *)v6 setLengthValidationBlock:v18];
  v11 = [[CNNameListBuilder alloc] initWithDelegate:v6];
  [(CNNameListBuilder *)v11 setShouldStripEllipses:1];
  build = [(CNNameListBuilder *)v11 build];
  v13 = build;
  if (build && [build length])
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
    {
      +[CNComposeRecipientShortNamer buildAdHocNameForGroup:];
    }

    v15 = v13;
  }

  else
  {
    os_log2 = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log2, OS_LOG_TYPE_DEBUG))
    {
      +[CNComposeRecipientShortNamer buildAdHocNameForGroup:];
    }

    v15 = &stru_1F3002C60;
  }

  return v15;
}

id __55__CNComposeRecipientShortNamer_buildAdHocNameForGroup___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) addIndex:a2];
  v4 = [*(a1 + 40) objectAtIndexedSubscript:a2];
  v5 = [v4 shortName];

  return v5;
}

+ (id)shortNameFromNameComponentsForComposeRecipient:(id)recipient
{
  nameComponents = [recipient nameComponents];
  if (nameComponents)
  {
    v5 = [self shortNameFromNameComponents:nameComponents];
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
    {
      +[CNComposeRecipientShortNamer shortNameFromNameComponentsForComposeRecipient:];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)shortNameFromDisplayStringForPerson:(id)person
{
  personCopy = person;
  displayString = [personCopy displayString];
  v6 = [self nameComponentsFromDisplayName:displayString];

  if (v6)
  {
    v7 = [self shortNameFromNameComponents:v6];
    v8 = v7;
    if (v7 && [v7 length])
    {
      os_log = [objc_opt_class() os_log];
      if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
      {
        +[CNComposeRecipientShortNamer shortNameFromDisplayStringForPerson:];
      }

      goto LABEL_13;
    }
  }

  displayString2 = [personCopy displayString];
  os_log = displayString2;
  if (displayString2 && [displayString2 length])
  {
    os_log2 = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log2, OS_LOG_TYPE_DEBUG))
    {
      +[CNComposeRecipientShortNamer shortNameFromDisplayStringForPerson:];
    }

    os_log = os_log;
    v8 = os_log;
  }

  else
  {
    v8 = 0;
  }

LABEL_13:

  return v8;
}

+ (id)shortNameFromNameComponents:(id)components
{
  componentsCopy = components;
  if (!componentsCopy)
  {
    currentEnvironment = 0;
    goto LABEL_11;
  }

  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  composeRecipientNameOptions = [currentEnvironment composeRecipientNameOptions];

  shortNameFormat = [composeRecipientNameOptions shortNameFormat];
  if (shortNameFormat == 2)
  {
    familyName = [componentsCopy familyName];
  }

  else
  {
    if (shortNameFormat != 1)
    {
      if (!shortNameFormat)
      {
        v7 = objc_opt_new();
        [v7 setStyle:1];
        currentEnvironment = [v7 stringFromPersonNameComponents:componentsCopy];
      }

      goto LABEL_10;
    }

    familyName = [componentsCopy givenName];
  }

  currentEnvironment = familyName;
LABEL_10:

LABEL_11:

  return currentEnvironment;
}

+ (id)nameComponentsFromDisplayName:(id)name
{
  nameCopy = name;
  v4 = nameCopy;
  if (nameCopy && [nameCopy length])
  {
    v5 = objc_opt_new();
    v6 = [v5 personNameComponentsFromString:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)shortNameFromCompositeNameForComposeRecipient:(id)recipient
{
  v3 = [CNComposeRecipientNamer nameForComposeRecipient:recipient];
  os_log = [objc_opt_class() os_log];
  if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
  {
    +[CNComposeRecipientShortNamer shortNameFromCompositeNameForComposeRecipient:];
  }

  return v3;
}

+ (id)shortNameFromAddressForComposeRecipient:(id)recipient
{
  address = [recipient address];
  os_log = [objc_opt_class() os_log];
  if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
  {
    +[CNComposeRecipientShortNamer shortNameFromAddressForComposeRecipient:];
  }

  return address;
}

+ (void)buildAdHocNameForGroup:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v3 = 2113;
  v4 = v0;
  _os_log_debug_impl(&dword_1B8106000, v1, OS_LOG_TYPE_DEBUG, "Using built name '%{private}@' for group %{private}@.", v2, 0x16u);
}

@end