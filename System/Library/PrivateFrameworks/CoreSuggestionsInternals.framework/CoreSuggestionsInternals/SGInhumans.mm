@interface SGInhumans
+ (BOOL)_isInhumanEmailAddressPatternMatch:(id)match;
+ (BOOL)areHumanHeaders:(id)headers;
+ (BOOL)hasTooManyLongNumbers:(id)numbers;
+ (BOOL)isInhumanBody:(id)body;
+ (BOOL)isInhumanName:(id)name;
+ (BOOL)isInhumanNamedEmailAddress:(id)address;
+ (BOOL)isInhumanPerson:(id)person;
+ (BOOL)isInhumanPhoneNumber:(id)number;
@end

@implementation SGInhumans

+ (BOOL)areHumanHeaders:(id)headers
{
  v24 = *MEMORY[0x277D85DE8];
  headersCopy = headers;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__SGInhumans_areHumanHeaders___block_invoke;
  block[3] = &__block_descriptor_48_e5_v8__0l;
  block[4] = a2;
  block[5] = self;
  if (areHumanHeaders___pasOnceToken5 != -1)
  {
    dispatch_once(&areHumanHeaders___pasOnceToken5, block);
  }

  v6 = areHumanHeaders___pasExprOnceResult;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = headersCopy;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v8)
  {
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = [v11 key];
        lowercaseString = [v13 lowercaseString];
        v15 = [v6 containsObject:lowercaseString];

        objc_autoreleasePoolPop(v12);
        if (v15)
        {
          LOBYTE(v8) = 1;
          goto LABEL_13;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

void __30__SGInhumans_areHumanHeaders___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = patterns_9349();
  v4 = [v3 rawValueForKey:@"HumanMailingListHeaders"];

  if (!v4)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"SGInhumans.m" lineNumber:263 description:{@"Invalid parameter not satisfying: %@", @"a"}];
  }

  v5 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v4];

  v6 = areHumanHeaders___pasExprOnceResult;
  areHumanHeaders___pasExprOnceResult = v5;

  objc_autoreleasePoolPop(v2);
}

+ (BOOL)isInhumanBody:(id)body
{
  bodyCopy = body;
  if ([self hasTooManyLongNumbers:bodyCopy] & 1) != 0 || (patterns_9349(), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "stringSetMatcherForKey:", @"InhumanBodyLiterals"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "existsInString:", bodyCopy), v7, v6, (v8))
  {
    v9 = 1;
  }

  else
  {
    CStringPtr = CFStringGetCStringPtr(bodyCopy, 0x600u);
    if (CStringPtr)
    {
      v12 = CStringPtr;
      v13 = patterns_9349();
      v14 = [v13 regex2ForKey:@"InhumanBodyRegexp/F"];
      v15 = [v14 existsInUtf8:v12];
      v9 = v15 != 0;
    }

    else if ([(__CFString *)bodyCopy length])
    {
      v16 = 0;
      v17 = 0;
      do
      {
        v18 = [(__CFString *)bodyCopy length];
        if ((v18 + v16) >= 0x800)
        {
          v19 = 2048;
        }

        else
        {
          v19 = v18 + v16;
        }

        v20 = malloc_type_calloc(3 * v19 + 1, 1uLL, 0x100004077774924uLL);
        [(__CFString *)bodyCopy getBytes:v20 maxLength:3 * v19 usedLength:0 encoding:4 options:0 range:v17 remainingRange:v19, 0];
        if (v20[3 * v19])
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"SGInhumans.m" lineNumber:249 description:@"NUL-terminator overwritten. This should be impossible."];
        }

        v21 = patterns_9349();
        v22 = [v21 regex2ForKey:@"InhumanBodyRegexp/F"];
        v23 = [v22 existsInUtf8:v20];

        v9 = v23 != 0;
        free(v20);
        if (v23)
        {
          break;
        }

        v17 += 2048;
        v9 = 0;
        v16 -= 2048;
      }

      while (v17 < [(__CFString *)bodyCopy length]);
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (BOOL)hasTooManyLongNumbers:(id)numbers
{
  numbersCopy = numbers;
  v4 = objc_opt_self();

  if (v4)
  {
    memset(v24, 0, sizeof(v24));
    Length = CFStringGetLength(numbersCopy);
    theString = numbersCopy;
    v28 = 0;
    v29 = Length;
    CharactersPtr = CFStringGetCharactersPtr(numbersCopy);
    CStringPtr = 0;
    v26 = CharactersPtr;
    if (!CharactersPtr)
    {
      CStringPtr = CFStringGetCStringPtr(numbersCopy, 0x600u);
    }

    v30 = 0;
    v31 = 0;
    v27 = CStringPtr;
    if (Length >= 1)
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 64;
      while (1)
      {
        if (v10 >= 4)
        {
          v14 = 4;
        }

        else
        {
          v14 = v10;
        }

        v15 = v29;
        if (v29 <= v10)
        {
LABEL_19:
          v11 = 0;
          goto LABEL_20;
        }

        if (v26)
        {
          break;
        }

        if (!v27)
        {
          if (v31 <= v10 || v9 > v10)
          {
            v19 = v14 + v8;
            v20 = v13 - v14;
            v21 = v10 - v14;
            v22 = v21 + 64;
            if (v21 + 64 >= v29)
            {
              v22 = v29;
            }

            v30 = v21;
            v31 = v22;
            if (v29 >= v20)
            {
              v15 = v20;
            }

            v32.location = v21 + v28;
            v32.length = v15 + v19;
            CFStringGetCharacters(theString, v32, v24);
            v9 = v30;
          }

          v16 = v24 - v9;
          goto LABEL_12;
        }

        v17 = v27[v28 + v10];
LABEL_15:
        if ((v17 - 48) > 9u)
        {
          goto LABEL_19;
        }

        if (++v11 == 4)
        {
          if (v12 >= 9)
          {
            LOBYTE(v4) = 1;
            goto LABEL_33;
          }

          ++v12;
          v11 = 4;
        }

LABEL_20:
        ++v10;
        --v8;
        ++v13;
        if (Length == v10)
        {
          goto LABEL_32;
        }
      }

      v16 = &v26[v28];
LABEL_12:
      v17 = v16[v10];
      goto LABEL_15;
    }

LABEL_32:
    LOBYTE(v4) = 0;
  }

LABEL_33:

  return v4;
}

+ (BOOL)isInhumanPhoneNumber:(id)number
{
  numberCopy = number;
  CFCharacterSetGetPredefined(kCFCharacterSetDecimalDigit);
  v4 = _PASKeepOnlyCharacterSet();

  LOBYTE(numberCopy) = [v4 length] < 7;
  return numberCopy;
}

+ (BOOL)isInhumanPerson:(id)person
{
  personCopy = person;
  v5 = personCopy;
  if (personCopy)
  {
    handles = [personCopy handles];
    v7 = [handles count];

    if (v7)
    {
      handleIdentifier = [v5 handleIdentifier];
      v9 = [handleIdentifier isEqualToString:*MEMORY[0x277CBCFC0]];

      if (v9)
      {
        handles2 = [v5 handles];
        v11 = [handles2 objectAtIndexedSubscript:0];
        v12 = [self isInhumanEmailAddress:v11];
      }

      else
      {
        handleIdentifier2 = [v5 handleIdentifier];
        v15 = [handleIdentifier2 isEqualToString:*MEMORY[0x277CBD098]];

        if (!v15)
        {
          goto LABEL_10;
        }

        handles2 = [v5 handles];
        v11 = [handles2 objectAtIndexedSubscript:0];
        v12 = [self isInhumanPhoneNumber:v11];
      }

      v16 = v12;

      if (v16)
      {
        v13 = 1;
        goto LABEL_11;
      }

LABEL_10:
      displayName = [v5 displayName];
      v13 = [self isInhumanName:displayName];

      goto LABEL_11;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

+ (BOOL)isInhumanNamedEmailAddress:(id)address
{
  addressCopy = address;
  v5 = addressCopy;
  if (addressCopy)
  {
    emailAddress = [addressCopy emailAddress];
    if ([self isInhumanEmailAddress:emailAddress])
    {
      v7 = 1;
    }

    else
    {
      name = [v5 name];
      v7 = [self isInhumanName:name];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)_isInhumanEmailAddressPatternMatch:(id)match
{
  matchCopy = match;
  if (!matchCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGInhumans.m" lineNumber:110 description:{@"Invalid parameter not satisfying: %@", @"emailAddress"}];
  }

  v6 = patterns_9349();
  v7 = [v6 regex2ForKey:@"InhumanEmailExceptions"];
  v8 = [v7 existsInString:matchCopy];

  if (v8)
  {
    v9 = 0;
    goto LABEL_62;
  }

  v10 = matchCopy;
  v11 = objc_opt_self();

  if (v11)
  {
    v46 = a2;
    selfCopy = self;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v53 = 0u;
    v51 = 0u;
    v52 = 0u;
    *buffer = 0u;
    Length = CFStringGetLength(v10);
    theString = v10;
    v61 = 0;
    v62 = Length;
    CharactersPtr = CFStringGetCharactersPtr(v10);
    CStringPtr = 0;
    v59 = CharactersPtr;
    if (!CharactersPtr)
    {
      CStringPtr = CFStringGetCStringPtr(v10, 0x600u);
    }

    v63 = 0;
    v64 = 0;
    v60 = CStringPtr;
    if (Length >= 1)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 64;
      v20 = MEMORY[0x277D85DE0];
      while (1)
      {
        if (v18 >= 4)
        {
          v21 = 4;
        }

        else
        {
          v21 = v18;
        }

        v22 = v62;
        if (v62 <= v18)
        {
          v16 = 0;
          v25 = 0;
          v24 = 0;
          goto LABEL_30;
        }

        if (v59)
        {
          break;
        }

        if (!v60)
        {
          v28 = v63;
          if (v64 <= v18 || v63 > v18)
          {
            v30 = v21 + v15;
            v31 = v19 - v21;
            v32 = v18 - v21;
            v33 = v32 + 64;
            if (v32 + 64 >= v62)
            {
              v33 = v62;
            }

            v63 = v32;
            v64 = v33;
            if (v62 >= v31)
            {
              v22 = v31;
            }

            v65.location = v32 + v61;
            v65.length = v22 + v30;
            CFStringGetCharacters(theString, v65, buffer);
            v28 = v63;
          }

          v23 = &buffer[-v28];
          goto LABEL_16;
        }

        v24 = v60[v61 + v18];
LABEL_20:
        v25 = v24;
        if (v24 <= 0x3Eu && ((1 << v24) & 0x5000080000000000) != 0)
        {
LABEL_55:
          v9 = 1;
          goto LABEL_61;
        }

        if (v24 - 48 <= 9)
        {
          if (v16 > 5)
          {
            goto LABEL_55;
          }

          ++v16;
LABEL_30:
          v27 = *(v20 + 4 * v25 + 60) & 0x10000;
          if (v24 == 45)
          {
            goto LABEL_34;
          }

          goto LABEL_31;
        }

        if (v24 <= 0x7Fu)
        {
          v16 = 0;
          goto LABEL_30;
        }

        v27 = __maskrune(v24, 0x10000uLL);
        v16 = 0;
LABEL_31:
        if (!v27)
        {
          v17 = 0;
          goto LABEL_36;
        }

LABEL_34:
        if (v17 > 30)
        {
          goto LABEL_55;
        }

        ++v17;
LABEL_36:
        ++v18;
        --v15;
        ++v19;
        if (Length == v18)
        {
          goto LABEL_48;
        }
      }

      v23 = &v59[v61];
LABEL_16:
      v24 = v23[v18];
      goto LABEL_20;
    }

LABEL_48:
    a2 = v46;
    self = selfCopy;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__SGInhumans__isInhumanEmailAddressPatternMatch___block_invoke;
  block[3] = &__block_descriptor_48_e5_v8__0l;
  block[4] = a2;
  block[5] = self;
  if (_isInhumanEmailAddressPatternMatch__onceToken != -1)
  {
    dispatch_once(&_isInhumanEmailAddressPatternMatch__onceToken, block);
  }

  v34 = emailAddressDomain(v10);
  if ([_isInhumanEmailAddressPatternMatch__inhumanEmailDomains containsObject:v34])
  {
    goto LABEL_54;
  }

  v35 = [(__CFString *)v10 rangeOfString:@"@" options:2];
  if (!v36)
  {
    goto LABEL_56;
  }

  v37 = v35;
  v38 = objc_autoreleasePoolPush();
  v39 = [(__CFString *)v10 substringToIndex:v37];
  v40 = [v39 stringByAppendingString:@"."];

  LOBYTE(v39) = [(__CFString *)v34 containsString:v40];
  objc_autoreleasePoolPop(v38);
  if (v39)
  {
LABEL_54:
    v9 = 1;
  }

  else
  {
LABEL_56:
    *buffer = 0;
    *&buffer[4] = buffer;
    *&v51 = 0x2020000000;
    BYTE8(v51) = 0;
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __49__SGInhumans__isInhumanEmailAddressPatternMatch___block_invoke_2;
    v48[3] = &unk_27894CC08;
    v48[4] = buffer;
    enumerateTokensInEmailAddress(v10, v48);
    if (*(*&buffer[4] + 24))
    {
      v9 = 1;
    }

    else
    {
      v41 = patterns_9349();
      v42 = [v41 regex2ForKey:@"InhumanEmailPatterns/F"];
      v43 = [v42 existsInString:v10];
      v9 = v43 != 0;
    }

    _Block_object_dispose(buffer, 8);
  }

  v10 = v34;
LABEL_61:

LABEL_62:
  return v9;
}

void __49__SGInhumans__isInhumanEmailAddressPatternMatch___block_invoke(uint64_t a1)
{
  v2 = patterns_9349();
  v11 = [v2 rawValueForKey:@"InhumanEmailDomains"];

  if (!v11)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"SGInhumans.m" lineNumber:136 description:@"failed to look up raw value for rawValueKeyInhumanEmailDomains"];
  }

  v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v11];
  v4 = _isInhumanEmailAddressPatternMatch__inhumanEmailDomains;
  _isInhumanEmailAddressPatternMatch__inhumanEmailDomains = v3;

  v5 = patterns_9349();
  v6 = [v5 rawValueForKey:@"InhumanEmailTokens"];

  if (!v6)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"SGInhumans.m" lineNumber:139 description:@"failed to look up raw value for rawValueKeyInhumanEmailTokens"];
  }

  v7 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v6];
  v8 = _isInhumanEmailAddressPatternMatch__inhumanEmailTokens;
  _isInhumanEmailAddressPatternMatch__inhumanEmailTokens = v7;
}

uint64_t __49__SGInhumans__isInhumanEmailAddressPatternMatch___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [_isInhumanEmailAddressPatternMatch__inhumanEmailTokens containsObject:a2];
  if (v3)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return v3 ^ 1u;
}

+ (BOOL)isInhumanName:(id)name
{
  nameCopy = name;
  if ([nameCopy length])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __28__SGInhumans_isInhumanName___block_invoke;
    block[3] = &__block_descriptor_48_e5_v8__0l;
    block[4] = a2;
    block[5] = self;
    if (isInhumanName__onceToken != -1)
    {
      dispatch_once(&isInhumanName__onceToken, block);
    }

    [isInhumanName__cacheLock lock];
    if ([isInhumanName__yesCache containsObject:nameCopy])
    {
      LOBYTE(v6) = 1;
LABEL_9:
      v7 = nameCopy;
LABEL_24:
      [isInhumanName__cacheLock unlock];
      nameCopy = v7;
      goto LABEL_25;
    }

    if ([isInhumanName__noCache containsObject:nameCopy])
    {
      LOBYTE(v6) = 0;
      goto LABEL_9;
    }

    v7 = _PASNormalizeUnicodeString();
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __28__SGInhumans_isInhumanName___block_invoke_2;
    v17[3] = &unk_27894CBE0;
    v17[4] = &v18;
    [SGTokenizer enumerateTokensInString:v7 block:v17];
    if (v19[3])
    {
      v6 = 1;
      if (nameCopy)
      {
LABEL_12:
        v8 = &isInhumanName__yesCache;
        if (!v6)
        {
          v8 = &isInhumanName__noCache;
        }

        v9 = *v8;
        if ([nameCopy _pas_retainsConmingledBackingStore])
        {
          v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:nameCopy];

          nameCopy = v10;
        }

        [v9 addObject:nameCopy];
        if ([v9 count] >= 0x19)
        {
          [v9 removeObjectAtIndex:0];
        }

LABEL_23:
        _Block_object_dispose(&v18, 8);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = patterns_9349();
      v12 = [v11 regex2ForKey:@"InhumanName/F"];
      v13 = [v12 existsInString:v7];
      v6 = v13 != 0;

      if (nameCopy)
      {
        goto LABEL_12;
      }
    }

    v14 = sgLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      *v16 = 0;
      _os_log_fault_impl(&dword_231E60000, v14, OS_LOG_TYPE_FAULT, "Got nil name", v16, 2u);
    }

    if (_PASEvaluateLogFaultAndProbCrashCriteria())
    {
      abort();
    }

    goto LABEL_23;
  }

  LOBYTE(v6) = 0;
LABEL_25:

  return v6;
}

void __28__SGInhumans_isInhumanName___block_invoke(uint64_t a1)
{
  v2 = patterns_9349();
  v12 = [v2 rawValueForKey:@"InhumanNameComponents"];

  if (!v12)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"SGInhumans.m" lineNumber:61 description:@"failed to get raw value for InhumanNameComponents"];
  }

  v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v12];
  v4 = isInhumanName__inhumanNameTokens;
  isInhumanName__inhumanNameTokens = v3;

  v5 = objc_opt_new();
  v6 = isInhumanName__cacheLock;
  isInhumanName__cacheLock = v5;

  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:25];
  v8 = isInhumanName__yesCache;
  isInhumanName__yesCache = v7;

  v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:25];
  v10 = isInhumanName__noCache;
  isInhumanName__noCache = v9;
}

uint64_t __28__SGInhumans_isInhumanName___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [isInhumanName__inhumanNameTokens containsObject:a2];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

@end