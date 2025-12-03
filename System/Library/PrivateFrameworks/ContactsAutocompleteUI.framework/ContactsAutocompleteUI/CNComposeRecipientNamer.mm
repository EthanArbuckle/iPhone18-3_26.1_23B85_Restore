@interface CNComposeRecipientNamer
+ (__CFString)nameForComposeRecipient:(uint64_t)recipient sources:;
+ (id)buildAdHocNameForGroup:(id)group;
+ (id)displayStringForRecipient:(id)recipient;
+ (id)nameForComposeRecipient:(uint64_t)recipient;
+ (id)nameForGroup:(id)group sources:(unsigned int)sources;
+ (id)nameForPerson:(id)person sources:(unsigned int)sources;
+ (id)nameFromAddressForPerson:(id)person;
+ (id)nameFromComponentsForPerson:(id)person;
+ (id)nameFromContactForPerson:(id)person;
+ (id)nameFromEmailAddressForPerson:(id)person;
+ (id)nicknameForRecipient:(id)recipient;
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

+ (id)nameForComposeRecipient:(uint64_t)recipient
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = [(CNComposeRecipientNamer *)v3 nameForComposeRecipient:v2 sources:0xFFFFFFFFLL];

  return v4;
}

+ (__CFString)nameForComposeRecipient:(uint64_t)recipient sources:
{
  v4 = a2;
  v5 = objc_opt_self();
  if (v4)
  {
    if ([v4 isGroup])
    {
      [v5 nameForGroup:v4 sources:recipient];
    }

    else
    {
      [v5 nameForPerson:v4 sources:recipient];
    }
    v7 = ;
  }

  else
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
    {
      [CNComposeRecipientShortNamer shortNameForComposeRecipient:os_log];
    }

    v7 = &stru_1F3002C60;
  }

  return v7;
}

+ (id)nameForGroup:(id)group sources:(unsigned int)sources
{
  groupCopy = group;
  if (sources)
  {
    placeholderName = [self nicknameForRecipient:groupCopy];
    if (!(*(*MEMORY[0x1E6996568] + 16))())
    {
      goto LABEL_17;
    }
  }

  if ((sources & 2) != 0)
  {
    placeholderName = [self displayStringForRecipient:groupCopy];
    if (!(*(*MEMORY[0x1E6996568] + 16))())
    {
      goto LABEL_17;
    }
  }

  if ((sources & 4) != 0)
  {
    placeholderName = [self buildAdHocNameForGroup:groupCopy];
    if (!(*(*MEMORY[0x1E6996568] + 16))())
    {
      goto LABEL_17;
    }
  }

  if ((sources & 0x80000000) != 0)
  {
    placeholderName = [groupCopy placeholderName];
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
    {
      +[CNComposeRecipientNamer nameForGroup:sources:];
    }
  }

  else
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
    {
      +[CNComposeRecipientNamer nameForGroup:sources:];
    }

    placeholderName = &stru_1F3002C60;
  }

LABEL_17:

  return placeholderName;
}

+ (id)nicknameForRecipient:(id)recipient
{
  recipientCopy = recipient;
  mEMORY[0x1E695CE40] = [MEMORY[0x1E695CE40] sharedDefaults];
  if ([mEMORY[0x1E695CE40] shortNameFormatPrefersNicknames])
  {
    nameComponents = [recipientCopy nameComponents];
    nickname = [nameComponents nickname];

    if (nickname && [nickname length])
    {
      os_log = [objc_opt_class() os_log];
      if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
      {
        +[CNComposeRecipientNamer nicknameForRecipient:];
      }

      goto LABEL_10;
    }
  }

  os_log = [objc_opt_class() os_log];
  if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
  {
    +[CNComposeRecipientNamer nicknameForRecipient:];
  }

  nickname = 0;
LABEL_10:

  return nickname;
}

+ (id)displayStringForRecipient:(id)recipient
{
  recipientCopy = recipient;
  displayString = [recipientCopy displayString];
  v5 = displayString;
  if (!displayString || ![displayString length])
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
    {
      +[CNComposeRecipientNamer displayStringForRecipient:];
    }

    goto LABEL_10;
  }

  os_log2 = [objc_opt_class() os_log];
  if (os_log_type_enabled(os_log2, OS_LOG_TYPE_DEBUG))
  {
    [(CNComposeRecipientNamer *)v5 displayStringForRecipient:os_log2];
  }

  v7 = [v5 _cn_hasPrefix:@"\u200E"];
  os_log3 = [objc_opt_class() os_log];
  os_log = os_log3;
  if (v7)
  {
    if (os_log_type_enabled(os_log3, OS_LOG_TYPE_ERROR))
    {
      +[CNComposeRecipientNamer displayStringForRecipient:];
    }

LABEL_10:

    v10 = 0;
    goto LABEL_11;
  }

  if (os_log_type_enabled(os_log3, OS_LOG_TYPE_DEBUG))
  {
    +[CNComposeRecipientNamer displayStringForRecipient:];
  }

  v10 = v5;
LABEL_11:

  return v10;
}

+ (id)buildAdHocNameForGroup:(id)group
{
  groupCopy = group;
  children = [groupCopy children];
  v6 = objc_opt_new();
  v7 = objc_alloc_init(CNNameListBuilderBlockDelegate);
  children2 = [groupCopy children];
  -[CNNameListBuilderBlockDelegate setCountOfNames:](v7, "setCountOfNames:", [children2 count]);

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __50__CNComposeRecipientNamer_buildAdHocNameForGroup___block_invoke;
  v22[3] = &unk_1E7CD2698;
  v9 = v6;
  v23 = v9;
  v10 = children;
  v24 = v10;
  selfCopy = self;
  v11 = groupCopy;
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
  build = [(CNNameListBuilder *)v13 build];
  v15 = build;
  if (build && [build length])
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
    {
      +[CNComposeRecipientNamer buildAdHocNameForGroup:];
    }

    v17 = v15;
  }

  else
  {
    os_log2 = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log2, OS_LOG_TYPE_ERROR))
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

+ (id)nameForPerson:(id)person sources:(unsigned int)sources
{
  personCopy = person;
  if (sources)
  {
    placeholderName = [self nicknameForRecipient:personCopy];
    if (!(*(*MEMORY[0x1E6996568] + 16))())
    {
      goto LABEL_23;
    }
  }

  if ((sources & 2) != 0)
  {
    placeholderName = [self displayStringForRecipient:personCopy];
    if (!(*(*MEMORY[0x1E6996568] + 16))())
    {
      goto LABEL_23;
    }
  }

  if ((sources & 8) != 0)
  {
    placeholderName = [self nameFromComponentsForPerson:personCopy];
    if (!(*(*MEMORY[0x1E6996568] + 16))())
    {
      goto LABEL_23;
    }
  }

  if ((sources & 0x10) != 0)
  {
    placeholderName = [self nameFromContactForPerson:personCopy];
    if (!(*(*MEMORY[0x1E6996568] + 16))())
    {
      goto LABEL_23;
    }
  }

  if ((sources & 0x20) != 0)
  {
    placeholderName = [self nameFromAddressForPerson:personCopy];
    if (!(*(*MEMORY[0x1E6996568] + 16))())
    {
      goto LABEL_23;
    }
  }

  if ((sources & 0x80000000) != 0)
  {
    placeholderName = [personCopy placeholderName];
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
    {
      +[CNComposeRecipientNamer nameForPerson:sources:];
    }
  }

  else
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
    {
      +[CNComposeRecipientNamer nameForPerson:sources:];
    }

    placeholderName = &stru_1F3002C60;
  }

LABEL_23:

  return placeholderName;
}

+ (id)nameFromComponentsForPerson:(id)person
{
  personCopy = person;
  nameComponents = [personCopy nameComponents];
  if (nameComponents)
  {
    os_log2 = objc_alloc_init(MEMORY[0x1E696ADF8]);
    [os_log2 setStyle:3];
    v6 = [os_log2 stringFromPersonNameComponents:nameComponents];
    v7 = v6;
    if (v6 && [v6 length])
    {
      os_log = [objc_opt_class() os_log];
      if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
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
    os_log2 = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log2, OS_LOG_TYPE_DEBUG))
    {
      +[CNComposeRecipientNamer nameFromComponentsForPerson:];
    }

    v9 = 0;
  }

  return v9;
}

+ (id)nameFromContactForPerson:(id)person
{
  personCopy = person;
  contact = [personCopy contact];
  v5 = [MEMORY[0x1E695CD80] stringFromContact:contact style:0];
  v6 = v5;
  if (v5 && [v5 length])
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
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

+ (id)nameFromAddressForPerson:(id)person
{
  personCopy = person;
  if ([personCopy kind] && objc_msgSend(personCopy, "kind") != 2)
  {
    address = [personCopy address];
  }

  else
  {
    address = [self nameFromEmailAddressForPerson:personCopy];
  }

  v6 = address;

  return v6;
}

+ (id)nameFromEmailAddressForPerson:(id)person
{
  personCopy = person;
  address = [personCopy address];
  if ([address length])
  {
    ea_addressComment = [address ea_addressComment];
    v6 = ea_addressComment;
    if (ea_addressComment && ([ea_addressComment isEqualToString:address] & 1) == 0)
    {
      os_log = [objc_opt_class() os_log];
      if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
      {
        +[CNComposeRecipientNamer nameFromEmailAddressForPerson:];
      }

      v10 = v6;
    }

    else
    {
      uncommentedAddress = [personCopy uncommentedAddress];
      v8 = uncommentedAddress;
      if (uncommentedAddress && [uncommentedAddress length])
      {
        os_log2 = [objc_opt_class() os_log];
        if (os_log_type_enabled(os_log2, OS_LOG_TYPE_DEBUG))
        {
          +[CNComposeRecipientNamer nameFromEmailAddressForPerson:];
        }
      }

      else
      {
        os_log2 = [objc_opt_class() os_log];
        if (os_log_type_enabled(os_log2, OS_LOG_TYPE_DEBUG))
        {
          +[CNComposeRecipientNamer nameFromEmailAddressForPerson:];
        }
      }

      v10 = address;
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