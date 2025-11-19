@interface EAEmailAddressParser
+ (BOOL)addressIsEmptyGroup:(id)a3;
+ (BOOL)isLegalEmailAddress:(id)a3;
+ (OS_os_log)log;
+ (_NSRange)rangeOfAddressDomainFromAddress:(id)a3;
+ (id)_stringByDecodingIDNAString:(id)a3 inRange:(_NSRange)a4;
+ (id)_stringByEncodingIDNAString:(id)a3 inRange:(_NSRange)a4;
+ (id)addressDomainFromAddress:(id)a3;
+ (id)displayNameFromAddress:(id)a3;
+ (id)displayNameFromAddress:(id)a3 cacheResults:(BOOL)a4;
+ (id)idnaDecodedAddressForAddress:(id)a3;
+ (id)idnaEncodedAddressForAddress:(id)a3;
+ (id)localPartFromAddress:(id)a3;
+ (id)rawAddressFromFullAddress:(id)a3;
+ (id)rawAddressFromFullAddress:(id)a3 cacheResults:(BOOL)a4;
+ (id)rawAddressRespectingGroupsFromFullAddress:(id)a3;
+ (void)_componentsForFullAddress:(id)a3 rawAddressIndexes:(id *)a4 localPartIndexes:(id *)a5 domainIndexes:(id *)a6;
+ (void)insertPreviousRoute:(unsigned __int16 *)a3 ofLength:(unint64_t)a4 toBuffer:(unsigned __int16 *)a5 ofLength:(unint64_t)a6 atPosition:(unsigned __int16 *)a7 addSpace:(BOOL)a8;
@end

@implementation EAEmailAddressParser

+ (OS_os_log)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__EAEmailAddressParser_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken != -1)
  {
    dispatch_once(&log_onceToken, block);
  }

  v2 = log_log;

  return v2;
}

void __27__EAEmailAddressParser_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log;
  log_log = v1;
}

+ (BOOL)isLegalEmailAddress:(id)a3
{
  v53 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 rawAddressRespectingGroupsFromFullAddress:v4];
  v6 = [(__CFString *)v5 length];
  v7 = v6;
  if (v6 < 3)
  {
    goto LABEL_38;
  }

  v50 = 0u;
  memset(v48, 0, sizeof(v48));
  *buffer = 0u;
  theString[0] = v5;
  v52 = 0;
  v51 = v6;
  theString[1] = CFStringGetCharactersPtr(v5);
  if (theString[1])
  {
    CStringPtr = 0;
  }

  else
  {
    CStringPtr = CFStringGetCStringPtr(v5, 0x600u);
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  *(&v51 + 1) = 0;
  v52 = 0;
  *&v50 = CStringPtr;
LABEL_6:
  v14 = v12 & 1;
  v15 = v13;
  if (v13 < v7)
  {
    while (1)
    {
      if ((v15 & 0x8000000000000000) == 0 && v51 > v15)
      {
        if (theString[1])
        {
          v16 = *(&theString[1]->isa + *(&v50 + 1) + v15);
        }

        else if (v50)
        {
          v16 = *(v50 + *(&v50 + 1) + v15);
        }

        else
        {
          if (v52 <= v15 || v10 > v15)
          {
            v17 = v15 - 4;
            if (v15 < 4)
            {
              v17 = 0;
            }

            v18 = v17 + 64;
            if (v17 + 64 >= v51)
            {
              v18 = v51;
            }

            *(&v51 + 1) = v17;
            v52 = v18;
            v54.length = v18 - v17;
            v54.location = *(&v50 + 1) + v17;
            CFStringGetCharacters(theString[0], v54, buffer);
            v9 = *(&v51 + 1);
          }

          v16 = buffer[v15 - v9];
          v10 = v9;
        }

        switch(v16)
        {
          case '@':
            if (v14)
            {
              v19 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v19 = v15;
            }

            goto LABEL_27;
          case '\\':
            v15 += v14;
            break;
          case '""':
            v12 = v14 ^ 1;
            v11 |= v14 ^ 1;
            v13 = v15 + 1;
            if ((v14 & 1) == 0 && v15)
            {
              goto LABEL_38;
            }

            goto LABEL_6;
        }
      }

      v19 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_27:
      ++v15;
      v20 = v19 == 0x7FFFFFFFFFFFFFFFLL;
      if (v15 >= v7 || v19 != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_37;
      }
    }
  }

  v20 = 1;
  v19 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_37:
  if (v20)
  {
LABEL_38:
    v21 = 0;
    goto LABEL_39;
  }

  if (v11)
  {
    if (v19 < 3)
    {
      goto LABEL_38;
    }

    if ([(__CFString *)v5 characterAtIndex:v19 - 1]!= 34)
    {
      goto LABEL_38;
    }

    v24 = [(__CFString *)v5 substringWithRange:0, v19];
    v25 = [v24 canBeConvertedToEncoding:1];

    if ((v25 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else
  {
    if (!v19)
    {
      goto LABEL_38;
    }

    if ([(__CFString *)v5 characterAtIndex:0]== 46)
    {
      goto LABEL_38;
    }

    if ([(__CFString *)v5 characterAtIndex:v19 - 1]== 46)
    {
      goto LABEL_38;
    }

    if ([(__CFString *)v5 rangeOfString:@".." options:0 range:0, v19]!= 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_38;
    }

    v26 = [MEMORY[0x277CCA900] ef_unsafeAddressLocalPartCharacterSet];
    v27 = [(__CFString *)v5 rangeOfCharacterFromSet:v26 options:0 range:0, v19]== 0x7FFFFFFFFFFFFFFFLL;

    if (!v27)
    {
      goto LABEL_38;
    }
  }

  v28 = v7 + ~v19;
  if (!v28)
  {
    goto LABEL_38;
  }

  if ([(__CFString *)v5 characterAtIndex:v19 + 1]== 91)
  {
    v29 = [(__CFString *)v5 characterAtIndex:v7 - 1];
    v21 = 0;
    if (v28 >= 9 && v29 == 93)
    {
      v46[0] = 0;
      v46[1] = 0;
      *buffer = 0u;
      memset(v48, 0, 30);
      v45 = 0;
      v30 = v19 + 2;
      v44[0] = 0;
      v44[1] = 0;
      if ([(__CFString *)v5 rangeOfString:@"IPv6:" options:1 range:v19 + 2, 5]== 0x7FFFFFFFFFFFFFFFLL)
      {
        v31 = v28 - 2;
        v32 = 2;
        v33 = v46;
        v34 = &v45;
        v35 = 15;
      }

      else
      {
        v30 = v19 + 7;
        v31 = v28 - 7;
        v32 = 30;
        v33 = buffer;
        v34 = v44;
        v35 = 45;
      }

      v43 = 0;
      v42 = xmmword_249FB2FC0;
      v40 = [(__CFString *)v5 getBytes:v33 maxLength:v35 usedLength:&v43 encoding:1 options:0 range:v30 remainingRange:v31, &v42];
      if (*(&v42 + 1))
      {
        v41 = 0;
      }

      else
      {
        v41 = v40;
      }

      if (v41 == 1)
      {
        *(v33 + v43) = 0;
        v21 = inet_pton(v32, v33, v34) == 1;
        goto LABEL_39;
      }

      goto LABEL_38;
    }
  }

  else
  {
    v36 = [(__CFString *)v5 characterAtIndex:v19 + 1];
    v37 = [(__CFString *)v5 characterAtIndex:v7 - 1];
    v21 = 0;
    if (v28 >= 3 && (v36 - 47) <= 0xFFFDu && (v37 - 47) <= 0xFFFDu)
    {
      if ([(__CFString *)v5 rangeOfString:@".-" options:0 range:v19 + 1, v28]!= 0x7FFFFFFFFFFFFFFFLL || [(__CFString *)v5 rangeOfString:@"-." options:0 range:v19 + 1, v28]!= 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_38;
      }

      v38 = [MEMORY[0x277CCA900] alphanumericCharacterSet];
      v39 = [v38 mutableCopy];

      [v39 addCharactersInString:@".-"];
      [v39 invert];
      v21 = [(__CFString *)v5 rangeOfCharacterFromSet:v39 options:0 range:v19 + 1, v28]== 0x7FFFFFFFFFFFFFFFLL;
    }
  }

LABEL_39:

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

+ (BOOL)addressIsEmptyGroup:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [v3 rangeOfString:@":" options:2];
    v5 = [v3 rangeOfString:@";" options:14];
    v6 = 0;
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = v5;
      if (v5 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v8 = v4 + 1;
        v9 = MEMORY[0x277D85DE0];
        do
        {
          v6 = v8 >= v7;
          if (v8 >= v7)
          {
            break;
          }

          v10 = [v3 characterAtIndex:v8];
          v11 = v10;
          v12 = v10 > 0x7F ? __maskrune(v10, 0x4000uLL) : *(v9 + 4 * v10 + 60) & 0x4000;
          ++v8;
        }

        while (v12 || (v11 & 0xFFFD) == 0x3C);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)rawAddressFromFullAddress:(id)a3
{
  v3 = [a1 rawAddressFromFullAddress:a3 cacheResults:1];

  return v3;
}

+ (id)rawAddressFromFullAddress:(id)a3 cacheResults:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    if (rawAddressFromFullAddress_cacheResults__onceToken != -1)
    {
      +[EAEmailAddressParser rawAddressFromFullAddress:cacheResults:];
    }

    objc_sync_enter(@"com.apple.EmailAddressing.rawAddressesLock");
    v7 = [rawAddressFromFullAddress_cacheResults__rawAddresses objectForKeyedSubscript:v6];
    objc_sync_exit(@"com.apple.EmailAddressing.rawAddressesLock");
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v12 = 0;
      [a1 _componentsForFullAddress:v6 rawAddressIndexes:&v12 localPartIndexes:0 domainIndexes:0];
      v9 = v12;
      if ([v9 count])
      {
        v10 = [v6 ef_substringWithIndexes:v9];
        if (v4)
        {
          objc_sync_enter(@"com.apple.EmailAddressing.rawAddressesLock");
          [rawAddressFromFullAddress_cacheResults__rawAddresses setObject:v10 forKeyedSubscript:v6];
          objc_sync_exit(@"com.apple.EmailAddressing.rawAddressesLock");
        }

        v8 = v10;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __63__EAEmailAddressParser_rawAddressFromFullAddress_cacheResults___block_invoke()
{
  rawAddressFromFullAddress_cacheResults__rawAddresses = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (id)rawAddressRespectingGroupsFromFullAddress:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 rangeOfString:@"@"];
    v7 = [v5 rangeOfString:@"<"];
    v8 = v5;
    if (v6 != 0x7FFFFFFFFFFFFFFFLL || v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = [a1 rawAddressFromFullAddress:v8];

      v8 = v9;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)localPartFromAddress:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = 0;
    [a1 _componentsForFullAddress:v4 rawAddressIndexes:0 localPartIndexes:&v8 domainIndexes:0];
    v5 = v8;
    if ([v5 count])
    {
      v6 = [v4 ef_substringWithIndexes:v5];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)addressDomainFromAddress:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = 0;
    [a1 _componentsForFullAddress:v4 rawAddressIndexes:0 localPartIndexes:0 domainIndexes:&v8];
    v5 = v8;
    if ([v5 count])
    {
      v6 = [v4 ef_substringWithIndexes:v5];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)_componentsForFullAddress:(id)a3 rawAddressIndexes:(id *)a4 localPartIndexes:(id *)a5 domainIndexes:(id *)a6
{
  v41 = a3;
  v7 = [v41 length];
  v8 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v38 = a5;
  if (!v7)
  {
    v25 = 0;
    v23 = 0;
    goto LABEL_56;
  }

  v34 = 0;
  v9 = 0;
  v33 = 0;
  v37 = 0;
  v35 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = MEMORY[0x277D85DE0];
  v36 = 1;
  v15 = 1;
  do
  {
    v16 = [v41 characterAtIndex:v13];
    v17 = v16;
    if (v15)
    {
      if (v16 > 0x7F)
      {
        if (__maskrune(v16, 0x4000uLL))
        {
LABEL_13:
          if (v11)
          {
            [v8 addIndexesInRange:{v12, v11}];
            v12 = v13;
          }

          v11 = 0;
          ++v12;
          goto LABEL_16;
        }
      }

      else if ((*(v14 + 4 * v16 + 60) & 0x4000) != 0)
      {
        goto LABEL_13;
      }
    }

    if (v17 == 92)
    {
      if (v13 + 1 < v7)
      {
        v15 = 0;
        v11 += 2;
        ++v13;
        goto LABEL_27;
      }

      if (v9)
      {
LABEL_18:
        v15 = 0;
        ++v11;
        v9 &= v17 != 34;
        goto LABEL_27;
      }

      if (v10 > 0)
      {
LABEL_26:
        v15 = 0;
        v9 = 0;
        goto LABEL_27;
      }

      v11 += (v35 & 1) == 0;
      goto LABEL_32;
    }

    if (v9)
    {
      goto LABEL_18;
    }

    if (v17 == 40)
    {
      v15 = 0;
      v9 = 0;
      ++v10;
      goto LABEL_27;
    }

    if (v10 <= 0)
    {
      if (v17 == 60)
      {
        [v8 removeAllIndexes];
        v11 = 0;
        v35 = 0;
        v37 = 0;
        v9 = 0;
        v34 = 0;
        v12 = v13 + 1;
        v15 = 1;
        v33 = 1;
        goto LABEL_27;
      }

      if ((v33 & (v17 == 62)) != 0)
      {
        v15 = 0;
        v33 = 0;
        v9 = 0;
        v35 = 1;
        goto LABEL_27;
      }

      v11 += (v35 & 1) == 0;
      if (v17 != 64)
      {
        if (v17 > 0x7F)
        {
          if (__maskrune(v17, 0x4000uLL))
          {
LABEL_33:
            v9 = 0;
LABEL_16:
            v15 = 1;
            goto LABEL_27;
          }

          goto LABEL_42;
        }

LABEL_32:
        if ((*(v14 + 4 * v17 + 60) & 0x4000) != 0)
        {
          goto LABEL_33;
        }

LABEL_42:
        v21 = v36;
        v22 = (v37 ^ 1) & v36;
        if ((v33 & 1) == 0)
        {
          v22 = v36;
        }

        v15 = 0;
        v9 = v17 == 34;
        if (v17 == 34)
        {
          v21 = v22;
        }

        v36 = v21;
        goto LABEL_27;
      }

      v15 = 0;
      v9 = 0;
      v20 = v34;
      if ((v37 & 1) == 0)
      {
        v20 = v13;
      }

      v34 = v20;
      v36 &= v37 ^ 1;
      v37 = 1;
    }

    else
    {
      if (v17 != 41)
      {
        goto LABEL_26;
      }

      if (--v10)
      {
        goto LABEL_26;
      }

      if (v11)
      {
        v18 = [v41 characterAtIndex:v12 + v11 - 1];
        if (v18 > 0x7F)
        {
          v19 = __maskrune(v18, 0x4000uLL);
        }

        else
        {
          v19 = *(v14 + 4 * v18 + 60) & 0x4000;
        }

        v15 = v19 != 0;
        [v8 addIndexesInRange:{v12, v11}];
      }

      else
      {
        v15 = 0;
      }

      v11 = 0;
      v10 = 0;
      v9 = 0;
      v12 = v13 + 1;
    }

LABEL_27:
    ++v13;
  }

  while (v13 < v7);
  v23 = v36 & v37;
  if (!v11)
  {
    v25 = v34;
LABEL_56:
    v27 = [v8 lastIndex];
    if (v27 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_64;
    }

    v28 = [v41 characterAtIndex:v27];
    if (v28 > 0x7F)
    {
      if (!__maskrune(v28, 0x4000uLL))
      {
        goto LABEL_64;
      }
    }

    else if ((*(MEMORY[0x277D85DE0] + 4 * v28 + 60) & 0x4000) == 0)
    {
      goto LABEL_64;
    }

    [v8 removeIndex:v27];
    goto LABEL_64;
  }

  v24 = [v41 characterAtIndex:v12 + v11 - 1];
  v25 = v34;
  if (v24 > 0x7F)
  {
    v26 = __maskrune(v24, 0x4000uLL);
  }

  else
  {
    v26 = *(v14 + 4 * v24 + 60) & 0x4000;
  }

  [v8 addIndexesInRange:{v12, v11 - (v26 != 0)}];
LABEL_64:
  if (a4)
  {
    *a4 = [v8 copy];
  }

  if (!v38)
  {
    if (!a6)
    {
      goto LABEL_81;
    }

    if (v23)
    {
LABEL_80:
      v32 = [v8 mutableCopy];
      [v32 removeIndexesInRange:{0, v25 + 1}];
      *a6 = [v32 copy];

      goto LABEL_81;
    }

LABEL_76:
    *a6 = objc_alloc_init(MEMORY[0x277CCAA78]);
    goto LABEL_81;
  }

  if ((v23 & 1) == 0)
  {
    *v38 = objc_alloc_init(MEMORY[0x277CCAA78]);
    if (!a6)
    {
      goto LABEL_81;
    }

    goto LABEL_76;
  }

  v29 = [v8 mutableCopy];
  [v29 removeIndexesInRange:{v25, v7 - v25}];
  v30 = [v29 lastIndex];
  if (v30 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_79;
  }

  v31 = [v41 characterAtIndex:v30];
  if (v31 > 0x7F)
  {
    if (!__maskrune(v31, 0x4000uLL))
    {
      goto LABEL_79;
    }

    goto LABEL_78;
  }

  if ((*(MEMORY[0x277D85DE0] + 4 * v31 + 60) & 0x4000) != 0)
  {
LABEL_78:
    [v29 removeIndex:v30];
  }

LABEL_79:
  *v38 = [v29 copy];

  if (a6)
  {
    goto LABEL_80;
  }

LABEL_81:
}

+ (id)displayNameFromAddress:(id)a3
{
  v3 = [a1 displayNameFromAddress:a3 cacheResults:1];

  return v3;
}

+ (id)displayNameFromAddress:(id)a3 cacheResults:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (!v6)
  {
    v9 = 0;
    goto LABEL_113;
  }

  if (displayNameFromAddress_cacheResults__onceToken != -1)
  {
    +[EAEmailAddressParser displayNameFromAddress:cacheResults:];
  }

  objc_sync_enter(@"com.apple.EmailAddressing.displayNamesLock");
  v7 = [displayNameFromAddress_cacheResults__displayNames objectForKeyedSubscript:v6];
  objc_sync_exit(@"com.apple.EmailAddressing.displayNamesLock");
  if (v7)
  {
    v8 = v7;
    goto LABEL_112;
  }

  v57 = v6;
  v10 = [v6 length];
  v11 = NSZoneMalloc(0, 2 * v10 + 2);
  v12 = NSZoneMalloc(0, 2 * v10 + 2);
  [v6 getCharacters:v12];
  ptr = v12;
  if (v10)
  {
    v13 = 0;
    v14 = 0;
    v15 = 1;
    v16 = v10;
    v17 = 1;
    while (1)
    {
      v19 = *v12++;
      v18 = v19;
      if (v19 != 92)
      {
        if (v18 == 34 && v13 == 0)
        {
          v13 = 0;
          v14 ^= 1u;
        }

        else if ((v18 != 40) | v14 & 1)
        {
          if ((v18 != 41) | v14 & 1)
          {
            if (v18 == 60 && ((v14 ^ 1) & 1) != 0 && !v13)
            {
              goto LABEL_26;
            }
          }

          else
          {
            v14 = 0;
            --v13;
          }
        }

        else
        {
          v14 = 0;
          ++v13;
        }
      }

      v17 = v15++ < v10;
      if (!--v16)
      {
        goto LABEL_26;
      }
    }
  }

  v17 = 0;
LABEL_26:
  v60 = NSZoneMalloc(0, 2 * v10 + 2);
  v65 = v11;
  if (!v10)
  {
    *v11 = 0;
    v37 = 0x280B13000;
    goto LABEL_97;
  }

  v56 = a1;
  v55 = v4;
  v21 = 0;
  v62 = 0;
  v58 = 0;
  v61 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = MEMORY[0x277D85DE0];
  v27 = ptr;
  v28 = v10;
  v63 = v60;
  do
  {
    v29 = *v27;
    if (v29 == 92)
    {
      if (!(v24 & 1 | (v27[1] == 0)))
      {
        v24 = 1;
        goto LABEL_71;
      }

      v29 = 92;
LABEL_47:
      if ((*(v26 + 4 * v29 + 60) & 0x4000) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_48;
    }

    if (v29 == 34 && v23 == 0)
    {
      v23 = 0;
      v25 ^= 1u;
      v29 = 34;
      goto LABEL_47;
    }

    if (!((v29 != 41) | v25 & 1))
    {
      v25 = 0;
      --v23;
      v29 = 41;
      goto LABEL_47;
    }

    if (v29 == 60 && ((v25 ^ 1) & 1) != 0 && !v23)
    {
      if (v61)
      {
        [v56 insertPreviousRoute:v60 ofLength:v62 toBuffer:&v65 ofLength:v10 atPosition:v58 addSpace:v21 > 0];
        v21 -= v21 > 0;
        v29 = *v27;
      }

      else
      {
        v29 = 60;
      }

      v23 = 0;
      v61 = 0;
      v22 = 1;
      v58 = v65;
      v62 = 0;
      v63 = v60;
    }

    if (v29 <= 0x7F)
    {
      goto LABEL_47;
    }

    if (!__maskrune(v29, 0x4000uLL))
    {
      goto LABEL_55;
    }

LABEL_48:
    if (v65 == v11)
    {
      goto LABEL_53;
    }

    v31 = *(v65 - 1);
    if (v31 > 0x7F)
    {
      if (__maskrune(v31, 0x4000uLL))
      {
LABEL_53:
        ++v21;
        goto LABEL_65;
      }
    }

    else if ((*(v26 + 4 * v31 + 60) & 0x4000) != 0)
    {
      goto LABEL_53;
    }

LABEL_55:
    v32 = *v27;
    if (v32 != 34 || v23)
    {
      if (v17)
      {
        if ((v22 & 1) == 0)
        {
          goto LABEL_61;
        }

LABEL_63:
        *v63 = v32;
        ++v62;
        ++v63;
        v22 = 1;
        goto LABEL_65;
      }

      if (v23 >= 1)
      {
LABEL_61:
        v33 = v65;
        *v65 = v32;
        v65 = v33 + 1;
        goto LABEL_65;
      }

      if (v22)
      {
        goto LABEL_63;
      }

      v22 = 0;
    }

LABEL_65:
    v34 = *v27;
    if ((v34 != 40) | v25 & 1)
    {
      v24 = 0;
      if (!((v34 != 62) | v25 & 1) && !v23)
      {
        v25 = 0;
        v24 = 0;
        v23 = 0;
        if (v22)
        {
          v22 = 0;
          *v63 = 0;
          v61 = 1;
        }

        else
        {
          v22 = 0;
        }
      }
    }

    else
    {
      v25 = 0;
      v24 = 0;
      ++v23;
    }

LABEL_71:
    ++v27;
    --v28;
  }

  while (v28);
  v35 = v65;
  v36 = (v23 != 0) | v25;
  v6 = v57;
  v4 = v55;
  v37 = 0x280B13000uLL;
  if (v65 > v11)
  {
    v38 = v65 - 1;
    while (1)
    {
      v39 = *v38;
      if (!(v39 > 0x7F ? __maskrune(v39, 0x4000uLL) : *(v26 + 4 * v39 + 60) & 0x4000))
      {
        break;
      }

      v65 = v38;
      v41 = v38 - 1;
      if (v38-- <= v11)
      {
        v35 = v41 + 1;
        goto LABEL_84;
      }
    }

    v35 = v65;
  }

LABEL_84:
  *v35 = 0;
  if (v36)
  {
    v43 = v57;
    a1 = v56;
    goto LABEL_96;
  }

  a1 = v56;
  if (v35 <= v11 + 1)
  {
LABEL_97:
    if (v65 == v11)
    {
      v43 = 0;
    }

    else
    {
      v43 = [MEMORY[0x277CCACA8] stringWithCharacters:v11 length:v65 - v11];
    }

    goto LABEL_100;
  }

  v44 = 0;
  while (2)
  {
    v45 = *v11;
    if (v45 == 39)
    {
      if (*(v35 - 1) != 39)
      {
        break;
      }

      goto LABEL_93;
    }

    if (v45 == 34 && *(v35 - 1) == 34)
    {
LABEL_93:
      *(v35 - 1) = 0;
      v43 = [MEMORY[0x277CCACA8] stringWithCharacters:v11 + 1 length:v35 - v11 - 2];

      v35 = v65 - 1;
      v65 = v35;
      v44 = v43;
      if (v35 <= v11 + 1)
      {
        goto LABEL_96;
      }

      continue;
    }

    break;
  }

  v43 = v44;
LABEL_96:
  if (!v43)
  {
    goto LABEL_97;
  }

LABEL_100:
  NSZoneFree(0, v11);
  NSZoneFree(0, ptr);
  NSZoneFree(0, v60);
  if (v65 == v11)
  {
    v46 = v4;
    v47 = v6;

    v64 = 0;
    [a1 _componentsForFullAddress:v47 rawAddressIndexes:0 localPartIndexes:0 domainIndexes:&v64];
    v48 = v64;
    if ([v48 count])
    {
      v49 = [v47 ef_substringWithIndexes:v48];
      v50 = [v49 _lp_userVisibleHost];
      if (([v50 isEqualToString:v49] & 1) == 0)
      {
        v51 = [v47 stringByReplacingCharactersInRange:objc_msgSend(v48 withString:{"firstIndex"), objc_msgSend(v48, "lastIndex") - objc_msgSend(v48, "firstIndex") + 1, v50}];

        v47 = v51;
      }
    }

    v43 = v47;
    v4 = v46;
  }

  if ([v43 containsString:&stru_285D22318])
  {
    v52 = [v43 stringByReplacingOccurrencesOfString:&stru_285D22318 withString:&stru_285D21E38];

    v43 = v52;
  }

  if (v4)
  {
    objc_sync_enter(@"com.apple.EmailAddressing.displayNamesLock");
    v53 = [v43 copy];

    [*(v37 + 2720) setObject:v53 forKeyedSubscript:v6];
    objc_sync_exit(@"com.apple.EmailAddressing.displayNamesLock");
  }

  else
  {
    v53 = v43;
  }

  v8 = v53;
LABEL_112:
  v9 = v8;

LABEL_113:

  return v9;
}

uint64_t __60__EAEmailAddressParser_displayNameFromAddress_cacheResults___block_invoke()
{
  displayNameFromAddress_cacheResults__displayNames = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (void)insertPreviousRoute:(unsigned __int16 *)a3 ofLength:(unint64_t)a4 toBuffer:(unsigned __int16 *)a5 ofLength:(unint64_t)a6 atPosition:(unsigned __int16 *)a7 addSpace:(BOOL)a8
{
  v8 = a8;
  v13 = NSZoneMalloc(0, 2 * a6 + 2);
  v14 = *a5 - a7;
  memcpy(v13, a7, v14);
  memcpy(a7, a3, 2 * a4);
  v15 = &a7[a4];
  if (v8)
  {
    *v15++ = 32;
  }

  memcpy(v15, v13, v14);
  *a5 = (v15 + v14);

  NSZoneFree(0, v13);
}

+ (id)idnaDecodedAddressForAddress:(id)a3
{
  v4 = a3;
  v5 = [a1 rangeOfAddressDomainFromAddress:v4];
  v7 = [a1 _stringByDecodingIDNAString:v4 inRange:{v5, v6}];

  return v7;
}

+ (id)idnaEncodedAddressForAddress:(id)a3
{
  v4 = a3;
  v5 = [a1 rangeOfAddressDomainFromAddress:v4];
  v7 = [a1 _stringByEncodingIDNAString:v4 inRange:{v5, v6}];

  return v7;
}

+ (_NSRange)rangeOfAddressDomainFromAddress:(id)a3
{
  v4 = a3;
  v11 = 0;
  [a1 _componentsForFullAddress:v4 rawAddressIndexes:0 localPartIndexes:0 domainIndexes:&v11];
  v5 = v11;
  if ([v5 rangeCount])
  {
    v6 = [v5 rangeAtIndex:0];
    v8 = v7;
  }

  else
  {
    v8 = 0;
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v9 = v6;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

+ (id)_stringByDecodingIDNAString:(id)a3 inRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v6 = a3;
  if (location == 0x7FFFFFFFFFFFFFFFLL || !length || ([MEMORY[0x277CBEAF8] ef_posixLocale], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "rangeOfString:options:range:locale:", @"xn--", 1, location, length, v7), v7, v8 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v9 = [v6 copy];
  }

  else
  {
    v9 = _createStringByApplyingIDNATranslationWithRange(v6, location, length, MEMORY[0x277D82998]);
  }

  v10 = v9;

  return v10;
}

+ (id)_stringByEncodingIDNAString:(id)a3 inRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v6 = a3;
  if (location == 0x7FFFFFFFFFFFFFFFLL || !length || ([MEMORY[0x277CCA900] ef_unsafeDomainNameCharacterSet], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "rangeOfCharacterFromSet:options:range:", v7, 0, location, length), v7, v8 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v9 = [v6 copy];
  }

  else
  {
    v9 = _createStringByApplyingIDNATranslationWithRange(v6, location, length, MEMORY[0x277D82990]);
  }

  v10 = v9;

  return v10;
}

@end