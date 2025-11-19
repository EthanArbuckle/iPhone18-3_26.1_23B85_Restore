@interface _CDContactResolver
+ (id)normalizedStringFromContactString:(id)a3;
+ (id)resolveContact:(id)a3 usingStore:(id)a4;
+ (id)resolveContactIdentifier:(id)a3 usingStore:(id)a4;
+ (id)resolveContactIfPossibleFromContactIdentifierString:(id)a3;
+ (id)resolveContactIfPossibleFromContactIdentifierString:(id)a3 usingStore:(id)a4;
@end

@implementation _CDContactResolver

+ (id)resolveContactIdentifier:(id)a3 usingStore:(id)a4
{
  v26[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    if (!getuid())
    {
      goto LABEL_14;
    }

    v9 = [v5 identifier];

    if (!v9)
    {
      goto LABEL_14;
    }

    v10 = [v5 identifier];
    v11 = [v10 containsString:@"@"];

    CNContactClass = getCNContactClass();
    if (v11)
    {
      v13 = [v5 identifier];
      v14 = [CNContactClass predicateForContactsMatchingEmailAddress:v13];
    }

    else
    {
      CNPhoneNumberClass = getCNPhoneNumberClass();
      v13 = [v5 identifier];
      v16 = [CNPhoneNumberClass phoneNumberWithStringValue:v13];
      v14 = [CNContactClass predicateForContactsMatchingPhoneNumber:v16];
    }

    if (!v14)
    {
LABEL_14:
      v8 = 0;
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
      v22 = [v19 firstObject];
      v8 = [v22 identifier];
      v20 = v19;
      goto LABEL_17;
    }

    v8 = 0;
    v22 = v19;
LABEL_17:
  }

LABEL_18:

  v23 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)resolveContact:(id)a3 usingStore:(id)a4
{
  v4 = 0;
  if (a3 && a4)
  {
    v7 = a4;
    v8 = [a3 identifier];
    v4 = [a1 resolveContactIfPossibleFromContactIdentifierString:v8 usingStore:v7];
  }

  return v4;
}

+ (id)normalizedStringFromContactString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if (([v3 containsString:@"@"] & 1) != 0 || (objc_msgSend(getCNPhoneNumberClass(), "phoneNumberWithStringValue:", v4), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "unformattedInternationalStringValue"), v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
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

+ (id)resolveContactIfPossibleFromContactIdentifierString:(id)a3 usingStore:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    if (!getuid())
    {
      v8 = 0;
      goto LABEL_11;
    }

    if ([v5 containsString:@"@"])
    {
      v9 = [getCNContactClass() predicateForContactsMatchingEmailAddress:v5];
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
      v10 = [getCNPhoneNumberClass() phoneNumberWithStringValue:v5];
      CNContactClass = getCNContactClass();
      CNPhoneNumberClass = getCNPhoneNumberClass();
      v13 = [v10 unformattedInternationalStringValue];
      v14 = [CNPhoneNumberClass phoneNumberWithStringValue:v13];
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

+ (id)resolveContactIfPossibleFromContactIdentifierString:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = objc_alloc_init(getCNContactStoreClass());
    v6 = [a1 resolveContactIfPossibleFromContactIdentifierString:v4 usingStore:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end