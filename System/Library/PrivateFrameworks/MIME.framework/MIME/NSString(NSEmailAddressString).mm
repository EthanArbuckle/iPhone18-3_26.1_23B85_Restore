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
  mf_rangeOfAddressDomain = [self mf_rangeOfAddressDomain];
  if (mf_rangeOfAddressDomain == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v5 = mf_rangeOfAddressDomain;
    v6 = v3;
    if ([&unk_1F4F3B350 containsObject:{objc_msgSend(objc_msgSend(self, "substringWithRange:", mf_rangeOfAddressDomain, v3), "lowercaseString")}])
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

            v11 = [self stringByReplacingCharactersInRange:v5 withString:{v6, *(*(&v14 + 1) + 8 * i)}];
            if ([v11 isEqualToString:self])
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
      selfCopy = self;
      v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&selfCopy count:1];
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v4;
}

- (uint64_t)mf_copyUncommentedAddress
{
  ea_uncommentedAddress = [self ea_uncommentedAddress];

  return [ea_uncommentedAddress copy];
}

- (uint64_t)mf_copyAddressComment
{
  ea_addressComment = [self ea_addressComment];

  return [ea_addressComment copy];
}

+ (void)mf_formattedAddressWithName:()NSEmailAddressString email:useQuotes:
{
  string = [MEMORY[0x1E696AD60] string];
  v9 = [(__CFString *)a3 length];
  if (v9)
  {
    v10 = v9;
    [string appendString:a3];
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
          [string replaceOccurrencesOfString:@"\ withString:@"\\\ options:0 range:{0, objc_msgSend(string, "length")}];
          [string replaceOccurrencesOfString:@" withString:@"\ options:0 range:{0, objc_msgSend(string, "length")}];
          [string replaceCharactersInRange:0 withString:{0, @""}];
          [string replaceCharactersInRange:objc_msgSend(string withString:{"length"), 0, @""}];
        }
      }
    }
  }

  if ([(__CFString *)a4 length])
  {
    if ([string length])
    {
      [string appendString:@" <"];
      [string appendString:a4];
      v13 = @">";
      v14 = string;
    }

    else
    {
      v14 = string;
      v13 = a4;
    }

    [v14 appendString:v13];
  }

  return string;
}

- (uint64_t)mf_addressDomain
{
  mf_copyUncommentedAddress = [self mf_copyUncommentedAddress];
  v2 = [mf_copyUncommentedAddress rangeOfString:@"@"];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL || (v4 = v2 + v3, v2 + v3 >= [mf_copyUncommentedAddress length]))
  {
    v5 = 0;
  }

  else
  {
    v5 = [mf_copyUncommentedAddress substringFromIndex:v4];
  }

  return v5;
}

- (id)mf_copyDisplayEmailAddress
{
  mf_rangeOfAddressDomain = [self mf_rangeOfAddressDomain];
  v4 = [self mf_copyDisplayStringInRange:{mf_rangeOfAddressDomain, v3}];
  if (![v4 containsString:&stru_1F4F33B00])
  {
    return v4;
  }

  v5 = [v4 stringByReplacingOccurrencesOfString:&stru_1F4F33B00 withString:&stru_1F4F33820];

  return v5;
}

- (uint64_t)mf_copyIDNADecodedEmailAddress
{
  v1 = [MEMORY[0x1E699AFD0] idnaDecodedAddressForAddress:self];

  return [v1 copy];
}

- (uint64_t)mf_copyIDNAEncodedEmailAddress
{
  v1 = [MEMORY[0x1E699AFD0] idnaEncodedAddressForAddress:self];

  return [v1 copy];
}

@end