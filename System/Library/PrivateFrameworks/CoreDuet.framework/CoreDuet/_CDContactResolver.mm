@interface _CDContactResolver
+ (id)normalizedStringFromContactString:(id)string;
+ (id)resolveContact:(id)contact usingStore:(id)store;
+ (id)resolveContactIdentifier:(id)identifier usingStore:(id)store;
+ (id)resolveContactIfPossibleFromContactIdentifierString:(id)string;
+ (id)resolveContactIfPossibleFromContactIdentifierString:(id)string usingStore:(id)store;
@end

@implementation _CDContactResolver

+ (id)resolveContactIdentifier:(id)identifier usingStore:(id)store
{
  v26[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  storeCopy = store;
  v7 = storeCopy;
  identifier4 = 0;
  if (identifierCopy && storeCopy)
  {
    if (!getuid())
    {
      goto LABEL_14;
    }

    identifier = [identifierCopy identifier];

    if (!identifier)
    {
      goto LABEL_14;
    }

    identifier2 = [identifierCopy identifier];
    v11 = [identifier2 containsString:@"@"];

    CNContactClass = getCNContactClass();
    if (v11)
    {
      identifier3 = [identifierCopy identifier];
      v14 = [CNContactClass predicateForContactsMatchingEmailAddress:identifier3];
    }

    else
    {
      CNPhoneNumberClass = getCNPhoneNumberClass();
      identifier3 = [identifierCopy identifier];
      v16 = [CNPhoneNumberClass phoneNumberWithStringValue:identifier3];
      v14 = [CNContactClass predicateForContactsMatchingPhoneNumber:v16];
    }

    if (!v14)
    {
LABEL_14:
      identifier4 = 0;
      goto LABEL_18;
    }

    v17 = getCNContactIdentifierKey();
    v26[0] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    v25 = 0;
    v19 = [v7 unifiedContactsMatchingPredicate:v14 keysToFetch:v18 error:&v25];
    v20 = v25;

    if (v20)
    {
      v21 = +[_CDLogging interactionChannel];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        resolve_cold_2(v20, v21);
      }
    }

    else if ([v19 count])
    {
      firstObject = [v19 firstObject];
      identifier4 = [firstObject identifier];
      v20 = v19;
      goto LABEL_17;
    }

    identifier4 = 0;
    firstObject = v19;
LABEL_17:
  }

LABEL_18:

  v23 = *MEMORY[0x1E69E9840];

  return identifier4;
}

+ (id)resolveContact:(id)contact usingStore:(id)store
{
  v4 = 0;
  if (contact && store)
  {
    storeCopy = store;
    identifier = [contact identifier];
    v4 = [self resolveContactIfPossibleFromContactIdentifierString:identifier usingStore:storeCopy];
  }

  return v4;
}

+ (id)normalizedStringFromContactString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (stringCopy)
  {
    if (([stringCopy containsString:@"@"] & 1) != 0 || (objc_msgSend(getCNPhoneNumberClass(), "phoneNumberWithStringValue:", v4), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "unformattedInternationalStringValue"), v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
    {
      v6 = v4;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)resolveContactIfPossibleFromContactIdentifierString:(id)string usingStore:(id)store
{
  stringCopy = string;
  storeCopy = store;
  v7 = storeCopy;
  v8 = 0;
  if (stringCopy && storeCopy)
  {
    if (!getuid())
    {
      v8 = 0;
      goto LABEL_11;
    }

    if ([stringCopy containsString:@"@"])
    {
      v9 = [getCNContactClass() predicateForContactsMatchingEmailAddress:stringCopy];
      if (v9)
      {
LABEL_6:
        v8 = resolve(v9, v7);
LABEL_10:

        goto LABEL_11;
      }
    }

    else
    {
      v10 = [getCNPhoneNumberClass() phoneNumberWithStringValue:stringCopy];
      CNContactClass = getCNContactClass();
      CNPhoneNumberClass = getCNPhoneNumberClass();
      unformattedInternationalStringValue = [v10 unformattedInternationalStringValue];
      v14 = [CNPhoneNumberClass phoneNumberWithStringValue:unformattedInternationalStringValue];
      v9 = [CNContactClass predicateForContactsMatchingPhoneNumber:v14];

      if (v9)
      {
        goto LABEL_6;
      }
    }

    v8 = 0;
    goto LABEL_10;
  }

LABEL_11:

  return v8;
}

+ (id)resolveContactIfPossibleFromContactIdentifierString:(id)string
{
  if (string)
  {
    stringCopy = string;
    v5 = objc_alloc_init(getCNContactStoreClass());
    v6 = [self resolveContactIfPossibleFromContactIdentifierString:stringCopy usingStore:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end