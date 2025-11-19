@interface CNComposeRecipientNamer
+ (__CFString)nameForComposeRecipient:(uint64_t)a3 sources:;
+ (id)buildAdHocNameForGroup:(id)a3;
+ (id)displayStringForRecipient:(id)a3;
+ (id)nameForComposeRecipient:(uint64_t)a1;
+ (id)nameForGroup:(id)a3 sources:(unsigned int)a4;
+ (id)nameForPerson:(id)a3 sources:(unsigned int)a4;
+ (id)nameFromAddressForPerson:(id)a3;
+ (id)nameFromComponentsForPerson:(id)a3;
+ (id)nameFromContactForPerson:(id)a3;
+ (id)nameFromEmailAddressForPerson:(id)a3;
+ (id)nicknameForRecipient:(id)a3;
+ (id)os_log;
@end

@implementation CNComposeRecipientNamer

+ (id)os_log
{
  if (os_log_cn_once_token_1_1 != -1)
  {
    +[CNComposeRecipientNamer os_log];
  }

  v3 = os_log_cn_once_object_1_1;

  return v3;
}

uint64_t __33__CNComposeRecipientNamer_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts.autocomplete.ui", "compose-recipient-namer");
  v1 = os_log_cn_once_object_1_1;
  os_log_cn_once_object_1_1 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)nameForComposeRecipient:(uint64_t)a1
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = [(CNComposeRecipientNamer *)v3 nameForComposeRecipient:v2 sources:0xFFFFFFFFLL];

  return v4;
}

+ (__CFString)nameForComposeRecipient:(uint64_t)a3 sources:
{
  v4 = a2;
  v5 = objc_opt_self();
  if (v4)
  {
    if ([v4 isGroup])
    {
      [v5 nameForGroup:v4 sources:a3];
    }

    else
    {
      [v5 nameForPerson:v4 sources:a3];
    }
    v7 = ;
  }

  else
  {
    v6 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [CNComposeRecipientShortNamer shortNameForComposeRecipient:v6];
    }

    v7 = &stru_1F3002C60;
  }

  return v7;
}

+ (id)nameForGroup:(id)a3 sources:(unsigned int)a4
{
  v6 = a3;
  if (a4)
  {
    v7 = [a1 nicknameForRecipient:v6];
    if (!(*(*MEMORY[0x1E6996568] + 16))())
    {
      goto LABEL_17;
    }
  }

  if ((a4 & 2) != 0)
  {
    v7 = [a1 displayStringForRecipient:v6];
    if (!(*(*MEMORY[0x1E6996568] + 16))())
    {
      goto LABEL_17;
    }
  }

  if ((a4 & 4) != 0)
  {
    v7 = [a1 buildAdHocNameForGroup:v6];
    if (!(*(*MEMORY[0x1E6996568] + 16))())
    {
      goto LABEL_17;
    }
  }

  if ((a4 & 0x80000000) != 0)
  {
    v7 = [v6 placeholderName];
    v8 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      +[CNComposeRecipientNamer nameForGroup:sources:];
    }
  }

  else
  {
    v8 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      +[CNComposeRecipientNamer nameForGroup:sources:];
    }

    v7 = &stru_1F3002C60;
  }

LABEL_17:

  return v7;
}

+ (id)nicknameForRecipient:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695CE40] sharedDefaults];
  if ([v4 shortNameFormatPrefersNicknames])
  {
    v5 = [v3 nameComponents];
    v6 = [v5 nickname];

    if (v6 && [v6 length])
    {
      v7 = [objc_opt_class() os_log];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        +[CNComposeRecipientNamer nicknameForRecipient:];
      }

      goto LABEL_10;
    }
  }

  v7 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    +[CNComposeRecipientNamer nicknameForRecipient:];
  }

  v6 = 0;
LABEL_10:

  return v6;
}

+ (id)displayStringForRecipient:(id)a3
{
  v3 = a3;
  v4 = [v3 displayString];
  v5 = v4;
  if (!v4 || ![v4 length])
  {
    v9 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      +[CNComposeRecipientNamer displayStringForRecipient:];
    }

    goto LABEL_10;
  }

  v6 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(CNComposeRecipientNamer *)v5 displayStringForRecipient:v6];
  }

  v7 = [v5 _cn_hasPrefix:@"\u200E"];
  v8 = [objc_opt_class() os_log];
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[CNComposeRecipientNamer displayStringForRecipient:];
    }

LABEL_10:

    v10 = 0;
    goto LABEL_11;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    +[CNComposeRecipientNamer displayStringForRecipient:];
  }

  v10 = v5;
LABEL_11:

  return v10;
}

+ (id)buildAdHocNameForGroup:(id)a3
{
  v4 = a3;
  v5 = [v4 children];
  v6 = objc_opt_new();
  v7 = objc_alloc_init(CNNameListBuilderBlockDelegate);
  v8 = [v4 children];
  -[CNNameListBuilderBlockDelegate setCountOfNames:](v7, "setCountOfNames:", [v8 count]);

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __50__CNComposeRecipientNamer_buildAdHocNameForGroup___block_invoke;
  v22[3] = &unk_1E7CD2698;
  v9 = v6;
  v23 = v9;
  v10 = v5;
  v24 = v10;
  v26 = a1;
  v11 = v4;
  v25 = v11;
  [(CNNameListBuilderBlockDelegate *)v7 setNameProviderBlock:v22];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __50__CNComposeRecipientNamer_buildAdHocNameForGroup___block_invoke_10;
  v20[3] = &unk_1E7CD20A8;
  v12 = v9;
  v21 = v12;
  [(CNNameListBuilderBlockDelegate *)v7 setLengthValidationBlock:v20];
  v13 = [[CNNameListBuilder alloc] initWithDelegate:v7];
  [(CNNameListBuilder *)v13 setShouldStripEllipses:1];
  v14 = [(CNNameListBuilder *)v13 build];
  v15 = v14;
  if (v14 && [v14 length])
  {
    v16 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      +[CNComposeRecipientNamer buildAdHocNameForGroup:];
    }

    v17 = v15;
  }

  else
  {
    v18 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      +[CNComposeRecipientNamer buildAdHocNameForGroup:];
    }

    v17 = 0;
  }

  return v17;
}

id __50__CNComposeRecipientNamer_buildAdHocNameForGroup___block_invoke(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) addIndex:a2];
  v4 = [*(a1 + 40) objectAtIndexedSubscript:a2];
  v5 = [v4 compositeName];
  v6 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = *(a1 + 48);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = 138544387;
    v14 = v9;
    v15 = 2048;
    v16 = v10;
    v17 = 2114;
    v18 = v12;
    v19 = 2048;
    v20 = v4;
    v21 = 2113;
    v22 = v5;
    _os_log_debug_impl(&dword_1B8106000, v6, OS_LOG_TYPE_DEBUG, "Group %{public}@ %p contains member %{public}@ %p: %{private}@", &v13, 0x34u);
  }

  return v5;
}

+ (id)nameForPerson:(id)a3 sources:(unsigned int)a4
{
  v6 = a3;
  if (a4)
  {
    v7 = [a1 nicknameForRecipient:v6];
    if (!(*(*MEMORY[0x1E6996568] + 16))())
    {
      goto LABEL_23;
    }
  }

  if ((a4 & 2) != 0)
  {
    v7 = [a1 displayStringForRecipient:v6];
    if (!(*(*MEMORY[0x1E6996568] + 16))())
    {
      goto LABEL_23;
    }
  }

  if ((a4 & 8) != 0)
  {
    v7 = [a1 nameFromComponentsForPerson:v6];
    if (!(*(*MEMORY[0x1E6996568] + 16))())
    {
      goto LABEL_23;
    }
  }

  if ((a4 & 0x10) != 0)
  {
    v7 = [a1 nameFromContactForPerson:v6];
    if (!(*(*MEMORY[0x1E6996568] + 16))())
    {
      goto LABEL_23;
    }
  }

  if ((a4 & 0x20) != 0)
  {
    v7 = [a1 nameFromAddressForPerson:v6];
    if (!(*(*MEMORY[0x1E6996568] + 16))())
    {
      goto LABEL_23;
    }
  }

  if ((a4 & 0x80000000) != 0)
  {
    v7 = [v6 placeholderName];
    v8 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      +[CNComposeRecipientNamer nameForPerson:sources:];
    }
  }

  else
  {
    v8 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      +[CNComposeRecipientNamer nameForPerson:sources:];
    }

    v7 = &stru_1F3002C60;
  }

LABEL_23:

  return v7;
}

+ (id)nameFromComponentsForPerson:(id)a3
{
  v3 = a3;
  v4 = [v3 nameComponents];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696ADF8]);
    [v5 setStyle:3];
    v6 = [v5 stringFromPersonNameComponents:v4];
    v7 = v6;
    if (v6 && [v6 length])
    {
      v8 = [objc_opt_class() os_log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        +[CNComposeRecipientNamer nameFromComponentsForPerson:];
      }

      v9 = v7;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v5 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      +[CNComposeRecipientNamer nameFromComponentsForPerson:];
    }

    v9 = 0;
  }

  return v9;
}

+ (id)nameFromContactForPerson:(id)a3
{
  v3 = a3;
  v4 = [v3 contact];
  v5 = [MEMORY[0x1E695CD80] stringFromContact:v4 style:0];
  v6 = v5;
  if (v5 && [v5 length])
  {
    v7 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      +[CNComposeRecipientNamer nameFromContactForPerson:];
    }

    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)nameFromAddressForPerson:(id)a3
{
  v4 = a3;
  if ([v4 kind] && objc_msgSend(v4, "kind") != 2)
  {
    v5 = [v4 address];
  }

  else
  {
    v5 = [a1 nameFromEmailAddressForPerson:v4];
  }

  v6 = v5;

  return v6;
}

+ (id)nameFromEmailAddressForPerson:(id)a3
{
  v3 = a3;
  v4 = [v3 address];
  if ([v4 length])
  {
    v5 = [v4 ea_addressComment];
    v6 = v5;
    if (v5 && ([v5 isEqualToString:v4] & 1) == 0)
    {
      v11 = [objc_opt_class() os_log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        +[CNComposeRecipientNamer nameFromEmailAddressForPerson:];
      }

      v10 = v6;
    }

    else
    {
      v7 = [v3 uncommentedAddress];
      v8 = v7;
      if (v7 && [v7 length])
      {
        v9 = [objc_opt_class() os_log];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          +[CNComposeRecipientNamer nameFromEmailAddressForPerson:];
        }
      }

      else
      {
        v9 = [objc_opt_class() os_log];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          +[CNComposeRecipientNamer nameFromEmailAddressForPerson:];
        }
      }

      v10 = v4;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (void)nameForGroup:sources:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

+ (void)nameForGroup:sources:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

+ (void)nicknameForRecipient:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

+ (void)nicknameForRecipient:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

+ (void)displayStringForRecipient:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138477827;
  v3 = a1;
  _os_log_debug_impl(&dword_1B8106000, a2, OS_LOG_TYPE_DEBUG, "Group’s display name: '%{private}@'", &v2, 0xCu);
}

+ (void)displayStringForRecipient:.cold.2()
{
  OUTLINED_FUNCTION_3();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

+ (void)displayStringForRecipient:.cold.3()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  v3 = v0;
  _os_log_error_impl(&dword_1B8106000, v1, OS_LOG_TYPE_ERROR, "Provided display name (%{private}@) for %p looks like it might be invalid; ignoring", v2, 0x16u);
}

+ (void)displayStringForRecipient:.cold.4()
{
  OUTLINED_FUNCTION_4();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

+ (void)buildAdHocNameForGroup:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

+ (void)buildAdHocNameForGroup:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v6 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_1_0();
  v5 = v1;
  _os_log_error_impl(&dword_1B8106000, v0, OS_LOG_TYPE_ERROR, "Unable to build name for group %{public}@ %p", v4, 0x16u);
}

+ (void)nameForPerson:sources:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

+ (void)nameForPerson:sources:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

+ (void)nameFromComponentsForPerson:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

+ (void)nameFromComponentsForPerson:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

+ (void)nameFromContactForPerson:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

+ (void)nameFromEmailAddressForPerson:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

+ (void)nameFromEmailAddressForPerson:.cold.2()
{
  OUTLINED_FUNCTION_3();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

+ (void)nameFromEmailAddressForPerson:.cold.3()
{
  OUTLINED_FUNCTION_3();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

@end