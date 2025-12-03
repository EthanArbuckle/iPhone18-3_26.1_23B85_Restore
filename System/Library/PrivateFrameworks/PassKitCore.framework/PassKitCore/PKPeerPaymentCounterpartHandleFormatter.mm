@interface PKPeerPaymentCounterpartHandleFormatter
+ (id)displayNameForCounterpartHandle:(id)handle contact:(id)contact;
+ (id)formatCounterpartHandle:(id)handle;
+ (id)redactedDisplayNameForCounterpartHandle:(id)handle contact:(id)contact;
+ (id)requiredContactKeys;
@end

@implementation PKPeerPaymentCounterpartHandleFormatter

+ (id)displayNameForCounterpartHandle:(id)handle contact:(id)contact
{
  v14[1] = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  contactCopy = contact;
  v8 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
  v14[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v10 = [contactCopy areKeysAvailable:v9];

  v11 = 0;
  if (v10)
  {
    v11 = [MEMORY[0x1E695CD80] stringFromContact:contactCopy style:0];
  }

  if (![v11 length])
  {
    v12 = [self formatCounterpartHandle:handleCopy];

    v11 = v12;
  }

  return v11;
}

+ (id)formatCounterpartHandle:(id)handle
{
  handleCopy = handle;
  if ([handleCopy length] && objc_msgSend(handleCopy, "hasPrefix:", @"+"))
  {
    v4 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:handleCopy];
    pkFormattedStringValue = [v4 pkFormattedStringValue];
  }

  else
  {
    pkFormattedStringValue = handleCopy;
  }

  return pkFormattedStringValue;
}

+ (id)requiredContactKeys
{
  v6[3] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
  v3 = *MEMORY[0x1E695C208];
  v6[0] = v2;
  v6[1] = v3;
  v6[2] = *MEMORY[0x1E695C330];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:3];

  return v4;
}

+ (id)redactedDisplayNameForCounterpartHandle:(id)handle contact:(id)contact
{
  handleCopy = handle;
  contactCopy = contact;
  if (contactCopy)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695CD80]);
    [v7 setStyle:1000];
    v8 = [v7 stringFromContact:contactCopy];
    if (![v8 length])
    {
      givenName = [contactCopy givenName];
      v10 = givenName;
      if (givenName)
      {
        familyName = givenName;
      }

      else
      {
        familyName = [contactCopy familyName];
      }

      v12 = familyName;

      v8 = v12;
    }
  }

  else
  {
    v8 = 0;
  }

  if (![v8 length])
  {
    v13 = [objc_alloc(MEMORY[0x1E699B240]) initWithString:handleCopy];
    if (v13)
    {
      v14 = [handleCopy mutableCopy];
      localPart = [v13 localPart];
      v16 = [localPart mutableCopy];

      v17 = [handleCopy rangeOfString:v16];
      v19 = v18;
      v20 = [v16 length];
      v21 = v20 - 2;
      if (v20 < 2)
      {
        [v16 appendString:{@"***", v21}];
      }

      else
      {
        [v16 replaceCharactersInRange:1 withString:{v21, @"***"}];
      }

      [v14 replaceCharactersInRange:v17 withString:{v19, v16}];
      v22 = [v14 copy];

      v8 = v22;
    }
  }

  if (![v8 length])
  {
    v23 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:handleCopy];
    if (v23)
    {
      v24 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"***"];
      lastFourDigits = [v23 lastFourDigits];
      [v24 appendString:lastFourDigits];

      v26 = [v24 copy];
      v8 = v26;
    }
  }

  return v8;
}

@end