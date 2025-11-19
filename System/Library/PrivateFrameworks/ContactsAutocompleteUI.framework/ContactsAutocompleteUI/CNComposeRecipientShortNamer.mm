@interface CNComposeRecipientShortNamer
+ (__CFString)shortNameForComposeRecipient:(uint64_t)a1;
+ (id)buildAdHocNameForGroup:(id)a3;
+ (id)nameComponentsFromDisplayName:(id)a3;
+ (id)nameForGroup:(id)a3;
+ (id)nameForPerson:(id)a3;
+ (id)os_log;
+ (id)shortNameFromAddressForComposeRecipient:(id)a3;
+ (id)shortNameFromCompositeNameForComposeRecipient:(id)a3;
+ (id)shortNameFromDisplayStringForPerson:(id)a3;
+ (id)shortNameFromNameComponents:(id)a3;
+ (id)shortNameFromNameComponentsForComposeRecipient:(id)a3;
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

+ (__CFString)shortNameForComposeRecipient:(uint64_t)a1
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
    v4 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [CNComposeRecipientShortNamer shortNameForComposeRecipient:v4];
    }

    v5 = &stru_1F3002C60;
  }

  return v5;
}

+ (id)nameForGroup:(id)a3
{
  v4 = a3;
  v5 = [a1 shortNameFromDisplayStringForGroup:v4];
  v6 = *MEMORY[0x1E6996568];
  if ((*(*MEMORY[0x1E6996568] + 16))(*MEMORY[0x1E6996568], v5))
  {

    v5 = [a1 buildAdHocNameForGroup:v4];
    if ((*(v6 + 16))(v6, v5))
    {

      v5 = [v4 placeholderName];
    }
  }

  return v5;
}

+ (id)nameForPerson:(id)a3
{
  v4 = a3;
  v5 = [a1 shortNameFromNameComponentsForComposeRecipient:v4];
  v6 = *MEMORY[0x1E6996568];
  if ((*(*MEMORY[0x1E6996568] + 16))(*MEMORY[0x1E6996568], v5))
  {

    v5 = [a1 shortNameFromDisplayStringForPerson:v4];
    if ((*(v6 + 16))(v6, v5))
    {

      v5 = [a1 shortNameFromCompositeNameForComposeRecipient:v4];
      if ((*(v6 + 16))(v6, v5))
      {

        v5 = [a1 shortNameFromAddressForComposeRecipient:v4];
        if ((*(v6 + 16))(v6, v5))
        {

          v5 = [v4 placeholderName];
        }
      }
    }
  }

  return v5;
}

+ (id)buildAdHocNameForGroup:(id)a3
{
  v3 = a3;
  v4 = [v3 children];
  v5 = objc_opt_new();
  v6 = objc_alloc_init(CNNameListBuilderBlockDelegate);
  v7 = [v3 children];
  -[CNNameListBuilderBlockDelegate setCountOfNames:](v6, "setCountOfNames:", [v7 count]);

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __55__CNComposeRecipientShortNamer_buildAdHocNameForGroup___block_invoke;
  v20[3] = &unk_1E7CD2080;
  v8 = v5;
  v21 = v8;
  v9 = v4;
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
  v12 = [(CNNameListBuilder *)v11 build];
  v13 = v12;
  if (v12 && [v12 length])
  {
    v14 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      +[CNComposeRecipientShortNamer buildAdHocNameForGroup:];
    }

    v15 = v13;
  }

  else
  {
    v16 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
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

+ (id)shortNameFromNameComponentsForComposeRecipient:(id)a3
{
  v4 = [a3 nameComponents];
  if (v4)
  {
    v5 = [a1 shortNameFromNameComponents:v4];
    v6 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
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

+ (id)shortNameFromDisplayStringForPerson:(id)a3
{
  v4 = a3;
  v5 = [v4 displayString];
  v6 = [a1 nameComponentsFromDisplayName:v5];

  if (v6)
  {
    v7 = [a1 shortNameFromNameComponents:v6];
    v8 = v7;
    if (v7 && [v7 length])
    {
      v9 = [objc_opt_class() os_log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        +[CNComposeRecipientShortNamer shortNameFromDisplayStringForPerson:];
      }

      goto LABEL_13;
    }
  }

  v10 = [v4 displayString];
  v9 = v10;
  if (v10 && [v10 length])
  {
    v11 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      +[CNComposeRecipientShortNamer shortNameFromDisplayStringForPerson:];
    }

    v9 = v9;
    v8 = v9;
  }

  else
  {
    v8 = 0;
  }

LABEL_13:

  return v8;
}

+ (id)shortNameFromNameComponents:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    v4 = 0;
    goto LABEL_11;
  }

  v4 = [MEMORY[0x1E69966E8] currentEnvironment];
  v5 = [v4 composeRecipientNameOptions];

  v6 = [v5 shortNameFormat];
  if (v6 == 2)
  {
    v8 = [v3 familyName];
  }

  else
  {
    if (v6 != 1)
    {
      if (!v6)
      {
        v7 = objc_opt_new();
        [v7 setStyle:1];
        v4 = [v7 stringFromPersonNameComponents:v3];
      }

      goto LABEL_10;
    }

    v8 = [v3 givenName];
  }

  v4 = v8;
LABEL_10:

LABEL_11:

  return v4;
}

+ (id)nameComponentsFromDisplayName:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 length])
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

+ (id)shortNameFromCompositeNameForComposeRecipient:(id)a3
{
  v3 = [CNComposeRecipientNamer nameForComposeRecipient:a3];
  v4 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    +[CNComposeRecipientShortNamer shortNameFromCompositeNameForComposeRecipient:];
  }

  return v3;
}

+ (id)shortNameFromAddressForComposeRecipient:(id)a3
{
  v3 = [a3 address];
  v4 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    +[CNComposeRecipientShortNamer shortNameFromAddressForComposeRecipient:];
  }

  return v3;
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