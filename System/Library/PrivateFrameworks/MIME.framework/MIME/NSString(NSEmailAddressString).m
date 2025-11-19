@interface NSString(NSEmailAddressString)
+ (void)mf_formattedAddressWithName:()NSEmailAddressString email:useQuotes:;
- (id)mf_copyDisplayEmailAddress;
- (uint64_t)mf_addressDomain;
- (uint64_t)mf_copyAddressComment;
- (uint64_t)mf_copyIDNADecodedEmailAddress;
- (uint64_t)mf_copyIDNAEncodedEmailAddress;
- (uint64_t)mf_copyUncommentedAddress;
- (void)mf_emailAddressesWithEquivalentDomains;
@end

@implementation NSString(NSEmailAddressString)

- (void)mf_emailAddressesWithEquivalentDomains
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [a1 mf_rangeOfAddressDomain];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v5 = v2;
    v6 = v3;
    if ([&unk_1F4F3B350 containsObject:{objc_msgSend(objc_msgSend(a1, "substringWithRange:", v2, v3), "lowercaseString")}])
    {
      v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(&unk_1F4F3B350, "count")}];
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v7 = [&unk_1F4F3B350 countByEnumeratingWithState:&v14 objects:v19 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v15;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v15 != v9)
            {
              objc_enumerationMutation(&unk_1F4F3B350);
            }

            v11 = [a1 stringByReplacingCharactersInRange:v5 withString:{v6, *(*(&v14 + 1) + 8 * i)}];
            if ([v11 isEqualToString:a1])
            {
              [v4 insertObject:v11 atIndex:0];
            }

            else
            {
              [v4 addObject:v11];
            }
          }

          v8 = [&unk_1F4F3B350 countByEnumeratingWithState:&v14 objects:v19 count:16];
        }

        while (v8);
      }
    }

    else
    {
      v18 = a1;
      v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v4;
}

- (uint64_t)mf_copyUncommentedAddress
{
  v1 = [a1 ea_uncommentedAddress];

  return [v1 copy];
}

- (uint64_t)mf_copyAddressComment
{
  v1 = [a1 ea_addressComment];

  return [v1 copy];
}

+ (void)mf_formattedAddressWithName:()NSEmailAddressString email:useQuotes:
{
  v8 = [MEMORY[0x1E696AD60] string];
  v9 = [(__CFString *)a3 length];
  if (v9)
  {
    v10 = v9;
    [v8 appendString:a3];
    if (a5)
    {
      if (![(__CFString *)a3 hasPrefix:@"]|| ([(__CFString *)a3 hasSuffix:@"]& 1) == 0)
      {
        v11 = mf_formattedAddressWithName_email_useQuotes__requiresQuotes;
        if (!mf_formattedAddressWithName_email_useQuotes__requiresQuotes)
        {
          v12 = CFCharacterSetCreateWithCharactersInString(0, @"()<>[]:;@\\,.");
          _MFLockGlobalLock();
          if (mf_formattedAddressWithName_email_useQuotes__requiresQuotes)
          {
            CFRelease(v12);
          }

          else
          {
            mf_formattedAddressWithName_email_useQuotes__requiresQuotes = v12;
          }

          _MFUnlockGlobalLock();
          v11 = mf_formattedAddressWithName_email_useQuotes__requiresQuotes;
        }

        v16.location = 0;
        v16.length = v10;
        if (CFStringFindCharacterFromSet(a3, v11, v16, 0, 0))
        {
          [v8 replaceOccurrencesOfString:@"\ withString:@"\\\ options:0 range:{0, objc_msgSend(v8, "length")}];
          [v8 replaceOccurrencesOfString:@" withString:@"\ options:0 range:{0, objc_msgSend(v8, "length")}];
          [v8 replaceCharactersInRange:0 withString:{0, @""}];
          [v8 replaceCharactersInRange:objc_msgSend(v8 withString:{"length"), 0, @""}];
        }
      }
    }
  }

  if ([(__CFString *)a4 length])
  {
    if ([v8 length])
    {
      [v8 appendString:@" <"];
      [v8 appendString:a4];
      v13 = @">";
      v14 = v8;
    }

    else
    {
      v14 = v8;
      v13 = a4;
    }

    [v14 appendString:v13];
  }

  return v8;
}

- (uint64_t)mf_addressDomain
{
  v1 = [a1 mf_copyUncommentedAddress];
  v2 = [v1 rangeOfString:@"@"];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL || (v4 = v2 + v3, v2 + v3 >= [v1 length]))
  {
    v5 = 0;
  }

  else
  {
    v5 = [v1 substringFromIndex:v4];
  }

  return v5;
}

- (id)mf_copyDisplayEmailAddress
{
  v2 = [a1 mf_rangeOfAddressDomain];
  v4 = [a1 mf_copyDisplayStringInRange:{v2, v3}];
  if (![v4 containsString:&stru_1F4F33B00])
  {
    return v4;
  }

  v5 = [v4 stringByReplacingOccurrencesOfString:&stru_1F4F33B00 withString:&stru_1F4F33820];

  return v5;
}

- (uint64_t)mf_copyIDNADecodedEmailAddress
{
  v1 = [MEMORY[0x1E699AFD0] idnaDecodedAddressForAddress:a1];

  return [v1 copy];
}

- (uint64_t)mf_copyIDNAEncodedEmailAddress
{
  v1 = [MEMORY[0x1E699AFD0] idnaEncodedAddressForAddress:a1];

  return [v1 copy];
}

@end