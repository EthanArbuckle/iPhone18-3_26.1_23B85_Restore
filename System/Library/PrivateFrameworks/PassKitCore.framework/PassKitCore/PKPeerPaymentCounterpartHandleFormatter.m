@interface PKPeerPaymentCounterpartHandleFormatter
+ (id)displayNameForCounterpartHandle:(id)a3 contact:(id)a4;
+ (id)formatCounterpartHandle:(id)a3;
+ (id)redactedDisplayNameForCounterpartHandle:(id)a3 contact:(id)a4;
+ (id)requiredContactKeys;
@end

@implementation PKPeerPaymentCounterpartHandleFormatter

+ (id)displayNameForCounterpartHandle:(id)a3 contact:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
  v14[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v10 = [v7 areKeysAvailable:v9];

  v11 = 0;
  if (v10)
  {
    v11 = [MEMORY[0x1E695CD80] stringFromContact:v7 style:0];
  }

  if (![v11 length])
  {
    v12 = [a1 formatCounterpartHandle:v6];

    v11 = v12;
  }

  return v11;
}

+ (id)formatCounterpartHandle:(id)a3
{
  v3 = a3;
  if ([v3 length] && objc_msgSend(v3, "hasPrefix:", @"+"))
  {
    v4 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:v3];
    v5 = [v4 pkFormattedStringValue];
  }

  else
  {
    v5 = v3;
  }

  return v5;
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

+ (id)redactedDisplayNameForCounterpartHandle:(id)a3 contact:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695CD80]);
    [v7 setStyle:1000];
    v8 = [v7 stringFromContact:v6];
    if (![v8 length])
    {
      v9 = [v6 givenName];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = [v6 familyName];
      }

      v12 = v11;

      v8 = v12;
    }
  }

  else
  {
    v8 = 0;
  }

  if (![v8 length])
  {
    v13 = [objc_alloc(MEMORY[0x1E699B240]) initWithString:v5];
    if (v13)
    {
      v14 = [v5 mutableCopy];
      v15 = [v13 localPart];
      v16 = [v15 mutableCopy];

      v17 = [v5 rangeOfString:v16];
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
    v23 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:v5];
    if (v23)
    {
      v24 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"***"];
      v25 = [v23 lastFourDigits];
      [v24 appendString:v25];

      v26 = [v24 copy];
      v8 = v26;
    }
  }

  return v8;
}

@end