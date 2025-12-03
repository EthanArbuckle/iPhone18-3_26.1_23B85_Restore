@interface SGNames
+ ($D369DFA4738CCB2DC34F10FA2F14702B)namePayload:(id)payload;
+ (BOOL)isCapitalized:(id)capitalized;
+ (BOOL)isCommonVietnameseSurname:(id)surname;
+ (BOOL)isDifficultName:(id)name;
+ (BOOL)isLowercaseStringCommonNameWord:(id)word;
+ (BOOL)isProbablyShortCJKName:(id)name;
+ (BOOL)isSalientNameByChars:(id)chars;
+ (BOOL)namesApproximatelyMatch:(id)match and:(id)and threshold:(double)threshold;
+ (BOOL)shouldInvertOrderOfFirst:(id)first last:(id)last;
+ (double)nameSimilarity:(id)similarity and:(id)and;
+ (double)unnormalizedNameSimilarity:(id)similarity and:(id)and;
+ (id)bestName:(id)name;
+ (id)cjkSpacerCharacters;
+ (id)cjkSpacersToWhiteSpace:(id)space;
+ (id)cleanName:(id)name;
+ (id)handleLastNameFirstOrder:(id)order;
+ (id)nameFromEmail:(id)email;
+ (id)nameStringFromEmailAddress:(id)address;
+ (id)possibleNameStringFromEmailAddress:(id)address;
+ (id)sgNameFromString:(id)string origin:(id)origin recordId:(id)id extractionInfo:(id)info;
+ (id)sketchesForName:(id)name;
+ (id)stripAndReturnHonorifics:(id)honorifics;
+ (id)stripHonorifics:(id)honorifics;
+ (id)surnameFromName:(id)name;
+ (id)universalCleanName:(id)name;
@end

@implementation SGNames

+ (BOOL)shouldInvertOrderOfFirst:(id)first last:(id)last
{
  firstCopy = first;
  lastCopy = last;
  v7 = _PASIsAllUppercase();
  if (v7 == _PASIsAllUppercase())
  {
    v9 = objc_autoreleasePoolPush();
    lowercaseString = [firstCopy lowercaseString];
    objc_autoreleasePoolPop(v9);

    v11 = objc_autoreleasePoolPush();
    lowercaseString2 = [lastCopy lowercaseString];
    objc_autoreleasePoolPop(v11);

    v8 = [SGNameInversionPredictor shouldInvertFirst:lowercaseString last:lowercaseString2];
    lastCopy = lowercaseString2;
    firstCopy = lowercaseString;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)cjkSpacersToWhiteSpace:(id)space
{
  v50 = *MEMORY[0x277D85DE8];
  spaceCopy = space;
  v4 = +[SGNames cjkSpacerCharacters];
  v5 = [spaceCopy length];
  if (!v5)
  {
    v31 = &stru_284703F00;
    goto LABEL_43;
  }

  v6 = v5;
  v7 = (2 * v5) | 1;
  buffer[0] = 0uLL;
  if (v7 > 0x200)
  {
    v36 = malloc_type_posix_memalign(buffer, 8uLL, 2 * v5, 0x1000040BDFB0063uLL);
    BYTE8(buffer[0]) = 0;
    if (v36)
    {
      v37 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
      objc_exception_throw(v37);
    }

    v8 = *&buffer[0];
  }

  else
  {
    MEMORY[0x28223BE20](v5);
    v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v8, v7);
  }

  v9 = spaceCopy;
  v10 = objc_opt_self();

  if (!v10)
  {
    goto LABEL_36;
  }

  memset(buffer, 0, sizeof(buffer));
  Length = CFStringGetLength(v9);
  v43 = v9;
  v46 = 0;
  v47 = Length;
  CharactersPtr = CFStringGetCharactersPtr(v9);
  CStringPtr = 0;
  v44 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v9, 0x600u);
  }

  v48 = 0;
  v49 = 0;
  v45 = CStringPtr;
  v40 = Length - 1;
  if (Length < 1)
  {
LABEL_36:

    goto LABEL_40;
  }

  v38 = v6;
  v39 = spaceCopy;
  v14 = 0;
  v15 = 0;
LABEL_9:
  v41 = v15;
  v16 = -v14;
  v17 = v14 + 64;
  do
  {
    if (v14 >= 4)
    {
      v18 = 4;
    }

    else
    {
      v18 = v14;
    }

    v19 = v47;
    if (v47 <= v14)
    {
      v21 = 0;
    }

    else
    {
      if (v44)
      {
        v20 = &v44[v46];
LABEL_16:
        v21 = v20[v14];
        goto LABEL_18;
      }

      if (!v45)
      {
        v24 = v48;
        if (v49 <= v14 || v48 > v14)
        {
          v26 = v18 + v16;
          v27 = v17 - v18;
          v28 = v14 - v18;
          v29 = v28 + 64;
          if (v28 + 64 >= v47)
          {
            v29 = v47;
          }

          v48 = v28;
          v49 = v29;
          if (v47 >= v27)
          {
            v19 = v27;
          }

          v52.location = v28 + v46;
          v52.length = v19 + v26;
          CFStringGetCharacters(v43, v52, buffer);
          v24 = v48;
        }

        v20 = buffer - v24;
        goto LABEL_16;
      }

      v21 = v45[v46 + v14];
    }

LABEL_18:
    v22 = [v4 characterIsMember:{v21, v38}];
    v23 = v14 + 1;
    if (v22)
    {
      *&v8[2 * v14] = 32;
      v15 = 1;
      if (v40 != v14++)
      {
        goto LABEL_9;
      }

      spaceCopy = v39;
      goto LABEL_39;
    }

    *&v8[2 * v14] = v21;
    --v16;
    ++v17;
    ++v14;
  }

  while (Length != v23);

  spaceCopy = v39;
  if (v41)
  {
LABEL_39:
    v32 = objc_alloc(MEMORY[0x277CCACA8]);
    v33 = [v32 initWithCharacters:v8 length:v38];
    goto LABEL_41;
  }

LABEL_40:
  v33 = [(__CFString *)v9 copy];
LABEL_41:
  v31 = v33;
  if (v7 >= 0x201)
  {
    free(v8);
  }

LABEL_43:

  v34 = *MEMORY[0x277D85DE8];

  return v31;
}

+ (id)cjkSpacerCharacters
{
  if (cjkSpacerCharacters__pasOnceToken53 != -1)
  {
    dispatch_once(&cjkSpacerCharacters__pasOnceToken53, &__block_literal_global_128);
  }

  v3 = cjkSpacerCharacters__pasExprOnceResult;

  return v3;
}

void __30__SGNames_cjkSpacerCharacters__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = MEMORY[0x277CCA900];
  v2 = patterns_17281();
  v3 = [v2 rawValueForKey:@"CJKSpacers"];
  v4 = [v1 characterSetWithCharactersInString:v3];
  v5 = cjkSpacerCharacters__pasExprOnceResult;
  cjkSpacerCharacters__pasExprOnceResult = v4;

  objc_autoreleasePoolPop(v0);
}

+ (id)nameStringFromEmailAddress:(id)address
{
  v21 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  v5 = [self possibleNameStringFromEmailAddress:addressCopy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = objc_autoreleasePoolPush();
  v7 = [v5 componentsSeparatedByString:{@" ", 0}];
  objc_autoreleasePoolPop(v6);
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v12 length] != 1 && !objc_msgSend(self, "isCommonNameWord:", v12))
        {

          v13 = 0;
          goto LABEL_12;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = v5;
LABEL_12:

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)possibleNameStringFromEmailAddress:(id)address
{
  v49 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  if ([SGInhumans isInhumanEmailAddress:addressCopy])
  {
    v4 = 0;
    goto LABEL_53;
  }

  v5 = [addressCopy length];
  buffer[0] = 0uLL;
  v38 = (2 * v5) | 1;
  if (v38 > 0x200)
  {
    v35 = malloc_type_posix_memalign(buffer, 8uLL, 2 * [addressCopy length], 0x1000040BDFB0063uLL);
    BYTE8(buffer[0]) = 0;
    if (v35)
    {
      v36 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
      objc_exception_throw(v36);
    }

    v40 = *&buffer[0];
  }

  else
  {
    MEMORY[0x28223BE20](v5);
    v40 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v40, v6);
  }

  if (possibleNameStringFromEmailAddress___pasOnceToken48 != -1)
  {
    dispatch_once(&possibleNameStringFromEmailAddress___pasOnceToken48, &__block_literal_global_123_17294);
  }

  v7 = possibleNameStringFromEmailAddress___pasExprOnceResult;
  v39 = addressCopy;
  v8 = objc_opt_self();

  if (v8)
  {
    memset(buffer, 0, sizeof(buffer));
    v9 = v39;
    v37 = addressCopy;
    Length = CFStringGetLength(v39);
    v42 = v9;
    v45 = 0;
    v46 = Length;
    CharactersPtr = CFStringGetCharactersPtr(v9);
    if (CharactersPtr)
    {
      CStringPtr = 0;
    }

    else
    {
      CStringPtr = CFStringGetCStringPtr(v39, 0x600u);
    }

    v47 = 0;
    v48 = 0;
    v44 = CStringPtr;
    if (Length >= 1)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 1;
      v16 = 64;
      while (1)
      {
        if (v13 >= 4)
        {
          v17 = 4;
        }

        else
        {
          v17 = v13;
        }

        v18 = v46;
        if (v46 <= v13)
        {
          v21 = 0;
          v20 = 0;
          goto LABEL_24;
        }

        if (CharactersPtr)
        {
          break;
        }

        if (!v44)
        {
          v23 = v47;
          if (v48 <= v13 || v47 > v13)
          {
            v25 = v17 + v12;
            v26 = v16 - v17;
            v27 = v13 - v17;
            v28 = v27 + 64;
            if (v27 + 64 >= v46)
            {
              v28 = v46;
            }

            v47 = v27;
            v48 = v28;
            if (v46 >= v26)
            {
              v18 = v26;
            }

            v51.location = v27 + v45;
            v51.length = v18 + v25;
            CFStringGetCharacters(v42, v51, buffer);
            v23 = v47;
          }

          v19 = buffer - v23;
          goto LABEL_19;
        }

        v20 = v44[v45 + v13];
LABEL_23:
        v21 = v20;
        if (v20 == 64)
        {
          if (v14)
          {
            v33 = v14 - (*&v40[2 * v14 - 2] == 32);
          }

          else
          {
            v33 = 0;
          }

          addressCopy = v37;
          v34 = objc_alloc(MEMORY[0x277CCACA8]);
          v4 = [v34 initWithCharacters:v40 length:v33];
          v30 = v39;
          goto LABEL_51;
        }

LABEL_24:
        if ([v7 characterIsMember:v20])
        {
          if (v14)
          {
            v22 = &v40[2 * v14];
            if (*(v22 - 1) != 32)
            {
              ++v14;
              *v22 = 32;
              v15 = 1;
            }
          }
        }

        else if ((v20 - 48) >= 0xAu)
        {
          if (v15)
          {
            v20 = __toupper(v21);
          }

          v15 = 0;
          *&v40[2 * v14++] = v20;
        }

        else
        {
          v15 = 0;
        }

        ++v13;
        --v12;
        ++v16;
        if (Length == v13)
        {
          goto LABEL_45;
        }
      }

      v19 = &CharactersPtr[v45];
LABEL_19:
      v20 = v19[v13];
      goto LABEL_23;
    }

LABEL_45:
    addressCopy = v37;
  }

  v29 = sgLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buffer[0]) = 0;
    _os_log_error_impl(&dword_231E60000, v29, OS_LOG_TYPE_ERROR, "Given a putative e-mail address with no @", buffer, 2u);
  }

  v30 = sgLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buffer[0]) = 138412290;
    *(buffer + 4) = v39;
    _os_log_debug_impl(&dword_231E60000, v30, OS_LOG_TYPE_DEBUG, "Given a putative e-mail address with no @: %@", buffer, 0xCu);
  }

  v4 = 0;
LABEL_51:

  if (v38 >= 0x201)
  {
    free(v40);
  }

LABEL_53:

  v31 = *MEMORY[0x277D85DE8];

  return v4;
}

void __46__SGNames_possibleNameStringFromEmailAddress___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"-_. "];
  v2 = possibleNameStringFromEmailAddress___pasExprOnceResult;
  possibleNameStringFromEmailAddress___pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

+ (id)sgNameFromString:(id)string origin:(id)origin recordId:(id)id extractionInfo:(id)info
{
  stringCopy = string;
  originCopy = origin;
  idCopy = id;
  infoCopy = info;
  if ([stringCopy length])
  {
    v13 = [SGIdentityName nameWithString:stringCopy];
    v14 = [v13 toSGNameWithOrigin:originCopy recordId:idCopy extractionInfo:infoCopy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)bestName:(id)name
{
  v48 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v4 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = nameCopy;
  v5 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v39;
    v8 = @"@";
    v36 = *v39;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v39 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v38 + 1) + 8 * i);
        if ([v10 rangeOfString:v8 options:{2, v36}] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v10, "length"))
        {
          v11 = v6;
          v12 = v8;
          v13 = objc_autoreleasePoolPush();
          [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
          v15 = v14 = v4;
          v16 = [v10 componentsSeparatedByCharactersInSet:v15];
          v17 = [v16 count];

          v18 = v14;
          v19 = [v14 objectForKeyedSubscript:v10];
          unsignedIntegerValue = [v19 unsignedIntegerValue];

          if (v17 <= 3)
          {
            v21 = kNameScoreByWordCount[v17] + 1;
          }

          else
          {
            v21 = 2;
          }

          v6 = v11;
          v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v21 + unsignedIntegerValue];
          v4 = v18;
          [v18 setObject:v22 forKeyedSubscript:v10];

          objc_autoreleasePoolPop(v13);
          v8 = v12;
          v7 = v36;
        }

        else
        {
          [v4 setObject:&unk_2847495A8 forKeyedSubscript:v10];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v6);
  }

  v23 = v4;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v24 = [v23 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = 0;
    v27 = 0;
    v28 = *v43;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v43 != v28)
        {
          objc_enumerationMutation(v23);
        }

        v30 = *(*(&v42 + 1) + 8 * j);
        v31 = [v23 objectForKeyedSubscript:v30];
        unsignedIntegerValue2 = [v31 unsignedIntegerValue];

        if (unsignedIntegerValue2 > v27)
        {
          v33 = v30;

          v26 = v33;
          v27 = unsignedIntegerValue2;
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v25);
  }

  else
  {
    v26 = 0;
  }

  v34 = *MEMORY[0x277D85DE8];

  return v26;
}

+ (id)surnameFromName:(id)name
{
  if (name)
  {
    v3 = [SGIdentityName nameWithString:?];
    surname = [v3 surname];
  }

  else
  {
    surname = 0;
  }

  return surname;
}

+ (id)sketchesForName:(id)name
{
  v101[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  [(__CFString *)nameCopy rangeOfString:@"@" options:2];
  if (v4 || ![(__CFString *)nameCopy length])
  {
    v5 = MEMORY[0x277CBEBF8];
    goto LABEL_3;
  }

  nameCopy = nameCopy;
  v8 = objc_opt_self();

  if (!v8)
  {
    goto LABEL_42;
  }

  memset(v87, 0, sizeof(v87));
  Length = CFStringGetLength(nameCopy);
  v88 = nameCopy;
  v91 = 0;
  v92 = Length;
  CharactersPtr = CFStringGetCharactersPtr(nameCopy);
  CStringPtr = 0;
  v89 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(nameCopy, 0x600u);
  }

  v93 = 0;
  v94 = 0;
  v90 = CStringPtr;
  if (Length <= 0)
  {
LABEL_42:

LABEL_43:
    v27 = objc_autoreleasePoolPush();
    lowercaseString = [(__CFString *)nameCopy lowercaseString];
    v101[0] = lowercaseString;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v101 count:1];

    goto LABEL_44;
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  while (2)
  {
    v15 = -v13;
    v16 = v13 + 64;
    while (1)
    {
      if (v13 >= 4)
      {
        v17 = 4;
      }

      else
      {
        v17 = v13;
      }

      v18 = v92;
      if (v92 <= v13)
      {
        goto LABEL_45;
      }

      if (v89)
      {
        v19 = &v89[v91];
LABEL_19:
        v20 = v19[v13];
        goto LABEL_22;
      }

      if (!v90)
      {
        if (v94 <= v13 || v12 > v13)
        {
          v23 = v17 + v15;
          v24 = v16 - v17;
          v25 = v13 - v17;
          v26 = v25 + 64;
          if (v25 + 64 >= v92)
          {
            v26 = v92;
          }

          v93 = v25;
          v94 = v26;
          if (v92 >= v24)
          {
            v18 = v24;
          }

          v103.location = v25 + v91;
          v103.length = v18 + v23;
          CFStringGetCharacters(v88, v103, v87);
          v12 = v93;
        }

        v19 = v87 - v12;
        goto LABEL_19;
      }

      v20 = v90[v91 + v13];
LABEL_22:
      if (v20 - 65 > 0x39 || ((1 << (v20 - 65)) & 0x3FFFFFF03FFFFFFLL) == 0)
      {
        break;
      }

      ++v13;
      --v15;
      ++v16;
      if (Length == v13)
      {

        if (v14)
        {
          goto LABEL_61;
        }

        goto LABEL_43;
      }
    }

    if (v20 != 32 || (v14 & 1) != 0)
    {
LABEL_45:

      if (nameCopy)
      {
        v29 = SGNamesAsciify(nameCopy);

        nameCopy = _PASRemoveSomePunctuation();
      }

      v30 = objc_opt_new();
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v86 = 0u;
      v31 = objc_autoreleasePoolPush();
      whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v33 = [(__CFString *)nameCopy componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];

      objc_autoreleasePoolPop(v31);
      v34 = [v33 countByEnumeratingWithState:&v83 objects:v99 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v84;
        do
        {
          for (i = 0; i != v35; ++i)
          {
            if (*v84 != v36)
            {
              objc_enumerationMutation(v33);
            }

            v38 = *(*(&v83 + 1) + 8 * i);
            if ([v38 length] && (objc_msgSend(v38, "hasSuffix:", @":") & 1) == 0)
            {
              [v30 addObject:v38];
            }
          }

          v35 = [v33 countByEnumeratingWithState:&v83 objects:v99 count:16];
        }

        while (v35);
      }

      if (![v30 count])
      {
        v5 = MEMORY[0x277CBEBF8];
        v43 = &stru_284703F00;
        v53 = &stru_284703F00;
        v54 = &stru_284703F00;
LABEL_105:

        goto LABEL_3;
      }

      if ([v30 count] == 1)
      {
        v39 = [v30 objectAtIndexedSubscript:0];
        v40 = letters(v39);
        v98 = v40;
        v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v98 count:1];
        v42 = [v41 mutableCopy];

        v43 = &stru_284703F00;
        v77 = &stru_284703F00;
        v78 = &stru_284703F00;
LABEL_94:
        v5 = objc_opt_new();
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        v67 = v42;
        v68 = [v67 countByEnumeratingWithState:&v79 objects:v95 count:16];
        if (v68)
        {
          v69 = v68;
          v70 = *v80;
          do
          {
            for (j = 0; j != v69; ++j)
            {
              if (*v80 != v70)
              {
                objc_enumerationMutation(v67);
              }

              v72 = *(*(&v79 + 1) + 8 * j);
              if (v72 && [*(*(&v79 + 1) + 8 * j) length])
              {
                [v5 addObject:v72];
              }
            }

            v69 = [v67 countByEnumeratingWithState:&v79 objects:v95 count:16];
          }

          while (v69);
        }

        v53 = v77;
        v54 = v78;
        goto LABEL_105;
      }

      v76 = objc_autoreleasePoolPush();
      v55 = [v30 _pas_componentsJoinedByString:@" "];
      v56 = [SGIdentityName nameWithString:v55];

      firstname = [v56 firstname];
      middlename = [v56 middlename];
      surname = [v56 surname];
      if (firstname)
      {
        v60 = surname == 0;
      }

      else
      {
        v60 = 0;
      }

      if (v60)
      {
        v43 = 0;
      }

      else
      {
        v43 = firstname;
      }

      if (v60)
      {
        v61 = firstname;
      }

      else
      {
        v61 = surname;
      }

      v78 = v61;
      v62 = middlename;
      [(__CFString *)middlename rangeOfString:@" " options:2];
      if (v63)
      {

        v62 = &stru_284703F00;
      }

      if (v43 && [(__CFString *)v43 length])
      {
        v64 = sketchWithInitialAndName(v43, v78);
        v97 = v64;
        v65 = [MEMORY[0x277CBEA60] arrayWithObjects:&v97 count:1];
        v42 = [v65 mutableCopy];

        if (!v62 || [(__CFString *)v62 length]< 2)
        {
          goto LABEL_93;
        }

        v66 = sketchWithInitialAndName(v43, v62);
        [v42 addObject:v66];
      }

      else
      {
        if (!v78 || ![(__CFString *)v78 length])
        {
          v42 = 0;
LABEL_93:
          v77 = v62;

          objc_autoreleasePoolPop(v76);
          goto LABEL_94;
        }

        v96 = v78;
        v66 = [MEMORY[0x277CBEA60] arrayWithObjects:&v96 count:1];
        v42 = [v66 mutableCopy];
      }

      goto LABEL_93;
    }

    ++v13;
    v14 = 1;
    if (v13 != Length)
    {
      continue;
    }

    break;
  }

LABEL_61:
  v27 = objc_autoreleasePoolPush();
  v44 = [(__CFString *)nameCopy rangeOfString:@" " options:2];
  v45 = [(__CFString *)nameCopy characterAtIndex:0];
  v46 = [(__CFString *)nameCopy length];
  v47 = v46 - v44 + 3;
  v87[0] = 0uLL;
  if (v47 > 0x200)
  {
    v73 = malloc_type_posix_memalign(v87, 8uLL, v47, 0xCD6EA8D1uLL);
    BYTE8(v87[0]) = 0;
    if (v73)
    {
      v74 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
      objc_exception_throw(v74);
    }

    v48 = *&v87[0];
  }

  else
  {
    MEMORY[0x28223BE20](v46);
    v48 = &v75 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v48, v47);
  }

  snprintf(v48, v47, "%c.%s", v45, ([(__CFString *)nameCopy UTF8String]+ v44 + 1));
  if (v47)
  {
    v49 = v48;
    v50 = v47;
    do
    {
      v51 = *v49;
      if ((v51 - 65) <= 0x19)
      {
        *v49 = v51 | 0x20;
      }

      ++v49;
      --v50;
    }

    while (v50);
  }

  v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:v48];
  v100 = v52;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v100 count:1];

  if (v47 >= 0x201)
  {
    free(v48);
  }

LABEL_44:
  objc_autoreleasePoolPop(v27);
LABEL_3:

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)nameFromEmail:(id)email
{
  emailCopy = email;
  if (![emailCopy length])
  {
    v30 = 0;
    goto LABEL_57;
  }

  v4 = objc_opt_new();
  v5 = emailCopy;
  v6 = objc_opt_self();

  if (!v6)
  {
    goto LABEL_37;
  }

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  *buffer = 0u;
  v75 = 0u;
  Length = CFStringGetLength(v5);
  v82 = v5;
  v85 = 0;
  v86 = Length;
  CharactersPtr = CFStringGetCharactersPtr(v5);
  CStringPtr = 0;
  v83 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v5, 0x600u);
  }

  v84 = CStringPtr;
  v87 = 0;
  v88 = 0;
  if (Length < 1)
  {
LABEL_37:
    v29 = 0;
    goto LABEL_43;
  }

  v71 = v4;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 64;
  do
  {
    if (v13 >= 4)
    {
      v16 = 4;
    }

    else
    {
      v16 = v13;
    }

    v17 = v86;
    if (v86 <= v13)
    {
      v19 = 0;
      goto LABEL_18;
    }

    if (v83)
    {
      v18 = &v83[v85];
LABEL_13:
      v19 = v18[v13];
      goto LABEL_17;
    }

    if (!v84)
    {
      if (v88 <= v13 || v11 > v13)
      {
        v25 = v16 + v10;
        v26 = v15 - v16;
        v27 = v13 - v16;
        v28 = v27 + 64;
        if (v27 + 64 >= v86)
        {
          v28 = v86;
        }

        v87 = v27;
        v88 = v28;
        if (v86 >= v26)
        {
          v17 = v26;
        }

        v90.location = v27 + v85;
        v90.length = v17 + v25;
        CFStringGetCharacters(v82, v90, buffer);
        v11 = v87;
      }

      v18 = &buffer[-v11];
      goto LABEL_13;
    }

    v19 = v84[v85 + v13];
LABEL_17:
    if (v19 == 64)
    {
      break;
    }

LABEL_18:
    v20 = v19;
    v21 = ((v19 - 45) < 0x33u) & (0x4000000000003uLL >> (v19 - 45)) & (v12 == 0);
    if ((((v19 - 45) < 0x33u) & (0x4000000000003uLL >> (v19 - 45)) & (v12 == 0)) == 0)
    {
      v19 = v12;
    }

    v22 = v20 == v12;
    if (v20 == v12)
    {
      v23 = 1;
    }

    else
    {
      v23 = v21;
    }

    if (!v22)
    {
      v12 = v19;
    }

    v14 += v23;
    ++v13;
    --v10;
    ++v15;
  }

  while (Length != v13);
  if ((v14 - 1) >= 3)
  {
    v29 = 0;
  }

  else
  {
    v29 = v12;
  }

  v4 = v71;
LABEL_43:

  v73 = v29;
  v31 = v5;
  v32 = objc_autoreleasePoolPush();
  v33 = [(__CFString *)v31 componentsSeparatedByString:@"@"];
  objc_autoreleasePoolPop(v32);
  if ([v33 count] == 2)
  {
    v34 = [v33 objectAtIndexedSubscript:0];
  }

  else
  {
    v34 = 0;
  }

  if (v29)
  {
    v35 = objc_autoreleasePoolPush();
    v36 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:&v73 length:1];
    v37 = [v34 componentsSeparatedByString:v36];
    [v4 addObjectsFromArray:v37];

    objc_autoreleasePoolPop(v35);
    goto LABEL_53;
  }

  if (v34)
  {
    v38 = v34;
    if ([(__CFString *)v38 length]< 2 || [(__CFString *)v38 characterAtIndex:0]- 91 < 0xFFFFFFE6)
    {

      goto LABEL_52;
    }

    v41 = objc_opt_new();
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    *buffer = 0u;
    v75 = 0u;
    v42 = CFStringGetLength(v38);
    v82 = v38;
    v85 = 0;
    v86 = v42;
    v43 = CFStringGetCharactersPtr(v38);
    v44 = 0;
    v83 = v43;
    if (!v43)
    {
      v44 = CFStringGetCStringPtr(v38, 0x600u);
    }

    v45 = 0;
    v84 = v44;
    v87 = 0;
    v88 = 0;
    if (v42 < 2)
    {
LABEL_93:
      v62 = objc_autoreleasePoolPush();
      v63 = [(__CFString *)v38 substringFromIndex:v45];
      [v41 addObject:v63];

      objc_autoreleasePoolPop(v62);
      goto LABEL_94;
    }

    v68 = v41;
    v69 = v38;
    v46 = 0;
    v45 = 0;
    v67 = v34;
    v66 = v42;
    v70 = v42 - 1;
    v72 = v4;
    v47 = -1;
    v48 = 1;
    v49 = 65;
    while (2)
    {
      v50 = v46 + 1;
      if (v48 >= 4)
      {
        v51 = 4;
      }

      else
      {
        v51 = v48;
      }

      v52 = objc_autoreleasePoolPush();
      v53 = v86;
      if (v86 > v50)
      {
        if (v83)
        {
          v54 = v83[v85 + 1 + v46];
        }

        else if (v84)
        {
          v54 = v84[v85 + 1 + v46];
        }

        else
        {
          if (v88 <= v50 || (v56 = v87, v87 > v50))
          {
            v57 = v46 - v51 + 65;
            if (v57 >= v86)
            {
              v57 = v86;
            }

            v87 = v46 - v51 + 1;
            v88 = v57;
            if (v86 >= v49 - v51)
            {
              v53 = v49 - v51;
            }

            v91.location = v46 - v51 + 1 + v85;
            v91.length = v53 + v51 + v47;
            CFStringGetCharacters(v82, v91, buffer);
            v56 = v87;
          }

          v54 = buffer[v46 + 1 - v56];
        }

        v55 = v54;
        if (v54 > 0x7Fu)
        {
          v58 = __maskrune(v54, 0x2000uLL);
        }

        else
        {
LABEL_82:
          v58 = *(MEMORY[0x277D85DE0] + 4 * v55 + 60) & 0x2000;
        }

        if (v58)
        {
          v59 = 1;
        }

        else
        {
          v59 = (v54 - 65) > 0x19u;
        }

        if (v59)
        {
          objc_autoreleasePoolPop(v52);
          if (v58)
          {
            v65 = 0;
            v4 = v72;
            v34 = v67;
            v41 = v68;
            v38 = v69;
            goto LABEL_100;
          }
        }

        else
        {
          v60 = objc_autoreleasePoolPush();
          v61 = [(__CFString *)v69 substringWithRange:v45, v46 - v45 + 1];
          [v68 addObject:v61];

          objc_autoreleasePoolPop(v60);
          objc_autoreleasePoolPop(v52);
          v45 = v46 + 1;
        }

        ++v48;
        ++v46;
        --v47;
        ++v49;
        if (v70 == v46)
        {
          v34 = v67;
          v4 = v72;
          v41 = v68;
          v38 = v69;
          if (v45 <= v66)
          {
            goto LABEL_93;
          }

LABEL_94:
          if ([v41 count] < 2)
          {
            v64 = 0;
          }

          else if ([v41 count] >= 4)
          {
            v64 = 0;
          }

          else
          {
            v64 = v41;
          }

          v65 = v64;
LABEL_100:

          if (v65)
          {
            [v4 addObjectsFromArray:v65];

            goto LABEL_53;
          }

LABEL_52:
          [v4 addObject:{v38, v66}];
          goto LABEL_53;
        }

        continue;
      }

      break;
    }

    v55 = 0;
    v54 = 0;
    goto LABEL_82;
  }

LABEL_53:
  if ([v4 count])
  {
    v39 = objc_autoreleasePoolPush();
    v30 = [v4 _pas_componentsJoinedByString:@" "];
    objc_autoreleasePoolPop(v39);
  }

  else
  {
    v30 = 0;
  }

LABEL_57:

  return v30;
}

+ (BOOL)namesApproximatelyMatch:(id)match and:(id)and threshold:(double)threshold
{
  andCopy = and;
  v8 = SGNormalizeName(match);
  v9 = SGNormalizeName(andCopy);

  [SGNames nameSimilarity:v8 and:v9];
  v11 = v10 >= threshold;

  return v11;
}

+ (double)unnormalizedNameSimilarity:(id)similarity and:(id)and
{
  andCopy = and;
  v6 = SGNormalizeName(similarity);
  v7 = SGNormalizeName(andCopy);

  [SGNames nameSimilarity:v6 and:v7];
  v9 = v8;

  return v9;
}

+ (double)nameSimilarity:(id)similarity and:(id)and
{
  v92[3] = *MEMORY[0x277D85DE8];
  similarityCopy = similarity;
  andCopy = and;
  v7 = objc_autoreleasePoolPush();
  v8 = 0.0;
  if (![similarityCopy length] || !objc_msgSend(andCopy, "length"))
  {
    goto LABEL_79;
  }

  v9 = similarityCopy;
  v10 = objc_opt_self();

  if (!v10)
  {
    goto LABEL_30;
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  *buffer = 0u;
  v77 = 0u;
  Length = CFStringGetLength(v9);
  theString = v9;
  v87 = 0;
  v88 = Length;
  CharactersPtr = CFStringGetCharactersPtr(v9);
  CStringPtr = 0;
  v85 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v9, 0x600u);
  }

  v89 = 0;
  v90 = 0;
  v86 = CStringPtr;
  if (Length < 1)
  {
LABEL_30:

    goto LABEL_31;
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 64;
  while (1)
  {
    if (v16 >= 4)
    {
      v18 = 4;
    }

    else
    {
      v18 = v16;
    }

    v19 = v88;
    if (v88 <= v16)
    {
      goto LABEL_18;
    }

    if (v85)
    {
      v20 = &v85[v87];
LABEL_14:
      v21 = v20[v16];
      goto LABEL_17;
    }

    if (!v86)
    {
      if (v90 <= v16 || v15 > v16)
      {
        v23 = v18 + v14;
        v24 = v17 - v18;
        v25 = v16 - v18;
        v26 = v25 + 64;
        if (v25 + 64 >= v88)
        {
          v26 = v88;
        }

        v89 = v25;
        v90 = v26;
        if (v88 >= v24)
        {
          v19 = v24;
        }

        v93.location = v25 + v87;
        v93.length = v19 + v23;
        CFStringGetCharacters(theString, v93, buffer);
        v15 = v89;
      }

      v20 = &buffer[-v15];
      goto LABEL_14;
    }

    v21 = v86[v87 + v16];
LABEL_17:
    if (v21 > 0x7Fu)
    {
      break;
    }

LABEL_18:
    ++v16;
    --v14;
    ++v17;
    if (Length == v16)
    {
      goto LABEL_30;
    }
  }

  v8 = 10.0;
  if (([(__CFString *)v9 isEqualToString:andCopy]& 1) != 0)
  {
    goto LABEL_79;
  }

LABEL_31:
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  [(__CFString *)v9 rangeOfCharacterFromSet:whitespaceAndNewlineCharacterSet];
  v29 = v28;
  [andCopy rangeOfCharacterFromSet:whitespaceAndNewlineCharacterSet];
  v8 = 0.0;
  if (v29 | v30)
  {
    v31 = v30;
    v8 = 10.0;
    if (([(__CFString *)v9 isEqualToString:andCopy]& 1) == 0)
    {
      if (v29 && v31)
      {
        goto LABEL_36;
      }

      v32 = SGNamesOnlyNameChars(v9);
      v33 = SGNamesOnlyNameChars(andCopy);
      v34 = [v32 isEqualToString:v33];

      v8 = 8.0;
      if ((v34 & 1) == 0)
      {
LABEL_36:
        v35 = tokenizeName(v9);
        v36 = tokenizeName(andCopy);
        v8 = 0.0;
        if ([v35 count] && objc_msgSend(v36, "count"))
        {
          if ([v35 count] >= 4)
          {
            v37 = [v35 objectAtIndexedSubscript:0];
            v92[0] = v37;
            v38 = [v35 objectAtIndexedSubscript:1];
            v92[1] = v38;
            v39 = [v35 objectAtIndexedSubscript:{objc_msgSend(v35, "count") - 1}];
            v92[2] = v39;
            v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v92 count:3];

            v35 = v40;
          }

          if ([v36 count] >= 4)
          {
            v41 = [v36 objectAtIndexedSubscript:0];
            v91[0] = v41;
            v42 = [v36 objectAtIndexedSubscript:1];
            v91[1] = v42;
            v43 = [v36 objectAtIndexedSubscript:{objc_msgSend(v36, "count") - 1}];
            v91[2] = v43;
            v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v91 count:3];

            v36 = v44;
          }

          v45 = v36;
          v46 = [v36 count];
          v47 = [v35 count];
          v48 = v46 >= v47;
          if (v46 >= v47)
          {
            v36 = v45;
          }

          else
          {
            v36 = v35;
          }

          if (!v48)
          {
            v35 = v45;
          }

          if ([v35 count] == 2 && objc_msgSend(v36, "count") == 3)
          {
            v49 = [v35 objectAtIndexedSubscript:1];
            if ([v49 length])
            {
              v50 = [v36 objectAtIndexedSubscript:1];
              if ([v50 length] < 3)
              {
                v53 = 0;
              }

              else
              {
                v74 = [v35 objectAtIndexedSubscript:1];
                v51 = [v74 characterAtIndex:0];
                v52 = [v36 objectAtIndexedSubscript:1];
                v53 = v51 == [v52 characterAtIndex:0];
              }
            }

            else
            {
              v53 = 0;
            }
          }

          else
          {
            v53 = 0;
          }

          v54 = [v35 objectAtIndexedSubscript:{objc_msgSend(v35, "count") - 1}];
          v73 = [v36 objectAtIndexedSubscript:{objc_msgSend(v36, "count") - 1}];
          v55 = [v35 objectAtIndexedSubscript:0];
          v56 = [v36 objectAtIndexedSubscript:0];
          v71 = v53;
          if (v53 || [v54 isEqualToString:v73])
          {
            v75 = v54;
            v57 = [v55 characterAtIndex:0];
            v58 = v57 == [v56 characterAtIndex:0];
            v54 = v75;
            if (v58 || (+[SGNicknames nicknamesForName:](SGNicknames, "nicknamesForName:", v55), v59 = objc_claimAutoreleasedReturnValue(), v60 = [v59 containsObject:v56], v59, v54 = v75, v60))
            {
              if ([v35 count] != 3)
              {
                goto LABEL_66;
              }

              if ([v36 count] != 3)
              {
                goto LABEL_66;
              }

              v61 = [v35 objectAtIndexedSubscript:1];
              v70 = [v61 characterAtIndex:0];
              v62 = [v36 objectAtIndexedSubscript:1];
              v72 = v70 == [v62 characterAtIndex:0] || v71;

              v54 = v75;
              if (v72)
              {
LABEL_66:
                v63 = 0.0;
                if ([v36 containsObject:v55])
                {
                  v63 = limitedTermProb(v55) + 0.0;
                }

                if (([v55 isEqualToString:v54] & 1) == 0 && objc_msgSend(v36, "containsObject:", v54))
                {
                  v63 = v63 + limitedTermProb(v54);
                }

                v64 = [SGNicknames nicknamesForName:v55];
                v65 = [v64 containsObject:v56];

                if (v65)
                {
                  v66 = limitedTermProb(v55);
                  v67 = limitedTermProb(v56);
                  if (v66 < v67)
                  {
                    v67 = v66;
                  }

                  v63 = v63 + v67 + 0.602059991;
                }

                v8 = -v63;
                v54 = v75;
              }
            }
          }
        }
      }
    }
  }

LABEL_79:
  objc_autoreleasePoolPop(v7);

  v68 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (id)handleLastNameFirstOrder:(id)order
{
  orderCopy = order;
  v6 = [orderCopy length];
  v7 = orderCopy;
  v8 = v7;
  if (v6)
  {
    v9 = objc_opt_self();

    if (!v9)
    {
      goto LABEL_31;
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    *buffer = 0u;
    v38 = 0u;
    Length = CFStringGetLength(v7);
    theString = v7;
    v48 = 0;
    v49 = Length;
    CharactersPtr = CFStringGetCharactersPtr(v7);
    CStringPtr = 0;
    v46 = CharactersPtr;
    if (!CharactersPtr)
    {
      CStringPtr = CFStringGetCStringPtr(v7, 0x600u);
    }

    v50 = 0;
    v51 = 0;
    v47 = CStringPtr;
    if (Length >= 1)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 64;
      while (1)
      {
        v18 = v16 >= 4 ? 4 : v16;
        v19 = v49;
        if (v49 > v16)
        {
          break;
        }

LABEL_18:
        ++v16;
        --v13;
        ++v17;
        if (Length == v16)
        {
          LODWORD(v9) = v15 == 1;
          goto LABEL_31;
        }
      }

      if (v46)
      {
        v20 = &v46[v48];
      }

      else
      {
        if (v47)
        {
          v21 = v47[v48 + v16];
LABEL_16:
          if (v21 == 44)
          {
            ++v15;
          }

          goto LABEL_18;
        }

        if (v51 <= v16 || v14 > v16)
        {
          v23 = v18 + v13;
          v24 = v17 - v18;
          v25 = v16 - v18;
          v26 = v25 + 64;
          if (v25 + 64 >= v49)
          {
            v26 = v49;
          }

          v50 = v25;
          v51 = v26;
          if (v49 >= v24)
          {
            v19 = v24;
          }

          v53.location = v25 + v48;
          v53.length = v19 + v23;
          CFStringGetCharacters(theString, v53, buffer);
          v14 = v50;
        }

        v20 = &buffer[-v14];
      }

      v21 = v20[v16];
      goto LABEL_16;
    }

    LODWORD(v9) = 0;
LABEL_31:

    *buffer = 0;
    *&buffer[4] = buffer;
    *&v38 = 0x3032000000;
    *(&v38 + 1) = __Block_byref_object_copy__17345;
    *&v39 = __Block_byref_object_dispose__17346;
    v27 = v7;
    *(&v39 + 1) = v27;
    if (v9)
    {
      v28 = objc_autoreleasePoolPush();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __36__SGNames_handleLastNameFirstOrder___block_invoke;
      block[3] = &__block_descriptor_48_e5_v8__0l;
      block[4] = a2;
      block[5] = self;
      if (handleLastNameFirstOrder___pasOnceToken24 != -1)
      {
        dispatch_once(&handleLastNameFirstOrder___pasOnceToken24, block);
      }

      v29 = handleLastNameFirstOrder___pasExprOnceResult;
      result = [v29 result];

      v31 = [(__CFString *)v27 length];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __36__SGNames_handleLastNameFirstOrder___block_invoke_3;
      v33[3] = &unk_27894E480;
      v34 = v27;
      v35 = buffer;
      [result enumerateMatchesInString:v34 options:0 range:0 usingBlock:{v31, v33}];

      objc_autoreleasePoolPop(v28);
      v27 = *(*&buffer[4] + 40);
    }

    v8 = v27;
    _Block_object_dispose(buffer, 8);
  }

  return v8;
}

void __36__SGNames_handleLastNameFirstOrder___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc(MEMORY[0x277D425E8]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__SGNames_handleLastNameFirstOrder___block_invoke_2;
  v6[3] = &__block_descriptor_48_e26___NSRegularExpression_8__0l;
  v7 = *(a1 + 32);
  v4 = [v3 initWithBlock:v6];
  v5 = handleLastNameFirstOrder___pasExprOnceResult;
  handleLastNameFirstOrder___pasExprOnceResult = v4;

  objc_autoreleasePoolPop(v2);
}

void __36__SGNames_handleLastNameFirstOrder___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v33 = a2;
  v5 = objc_opt_new();
  v6 = [v33 rangeAtIndex:1];
  v8 = v7;
  v31 = [v33 rangeAtIndex:2];
  v10 = v9;
  v11 = [v33 rangeAtIndex:3];
  v13 = v12;
  v14 = [v33 rangeAtIndex:4];
  v16 = v15;
  if (v13)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = [*(a1 + 32) substringWithRange:{v11, v13}];
    objc_autoreleasePoolPop(v17);
    [v5 addObject:v18];
  }

  if (v16)
  {
    v19 = objc_autoreleasePoolPush();
    v20 = [*(a1 + 32) substringWithRange:{v14, v16}];
    objc_autoreleasePoolPop(v19);
    [v5 addObject:v20];
  }

  if (v8)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = [*(a1 + 32) substringWithRange:{v6, v8}];
    objc_autoreleasePoolPop(v21);
    [v5 addObject:v22];
  }

  if (v10)
  {
    v23 = objc_autoreleasePoolPush();
    v24 = [*(a1 + 32) substringWithRange:{v31, v10}];
    v25 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v26 = [v24 stringByTrimmingCharactersInSet:v25];

    objc_autoreleasePoolPop(v23);
    [v5 addObject:v26];
  }

  v27 = objc_autoreleasePoolPush();
  v28 = [v5 _pas_componentsJoinedByString:@" "];
  objc_autoreleasePoolPop(v27);
  v29 = *(*(a1 + 40) + 8);
  v30 = *(v29 + 40);
  *(v29 + 40) = v28;

  *a4 = 1;
}

id __36__SGNames_handleLastNameFirstOrder___block_invoke_2(uint64_t a1)
{
  v2 = patterns_17281();
  v3 = [v2 rawValueForKey:@"LastNameFirst"];

  if (!v3)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"SGNames.m" lineNumber:914 description:@"Could not initialize pattern."];
  }

  v9 = 0;
  v4 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:v3 options:0 error:&v9];
  v5 = v9;
  if (!v4)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"SGNames.m" lineNumber:917 description:{@"Could not initialize regular expression: %@", v5}];
  }

  return v4;
}

+ (id)cleanName:(id)name
{
  v113 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (![nameCopy length])
  {
    v5 = nameCopy;
LABEL_50:
    v31 = v5;
    goto LABEL_104;
  }

  v4 = [nameCopy characterAtIndex:0];
  if (v4 > 0x7F)
  {
    if (!__maskrune(v4, 0x4000uLL))
    {
      goto LABEL_7;
    }
  }

  else if ((*(MEMORY[0x277D85DE0] + 4 * v4 + 60) & 0x4000) == 0)
  {
LABEL_7:
    v6 = [nameCopy characterAtIndex:{objc_msgSend(nameCopy, "length") - 1}];
    if (v6 > 0x7F)
    {
      if (__maskrune(v6, 0x4000uLL))
      {
        goto LABEL_9;
      }
    }

    else if ((*(MEMORY[0x277D85DE0] + 4 * v6 + 60) & 0x4000) != 0)
    {
      goto LABEL_9;
    }

    v7 = [nameCopy hasSuffix:@" via LinkedIn"] ^ 1;
    goto LABEL_10;
  }

LABEL_9:
  v7 = 0;
LABEL_10:
  if (cleanName__onceToken == -1)
  {
    if (!v7)
    {
      goto LABEL_54;
    }
  }

  else
  {
    dispatch_once(&cleanName__onceToken, &__block_literal_global_87);
    if (!v7)
    {
      goto LABEL_54;
    }
  }

  v85 = nameCopy;
  theString = nameCopy;
  v8 = objc_opt_self();

  v9 = theString;
  if (!v8)
  {
    goto LABEL_47;
  }

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  buffer = 0u;
  v99 = 0u;
  Length = CFStringGetLength(theString);
  v106 = theString;
  v109 = 0;
  v110 = Length;
  CharactersPtr = CFStringGetCharactersPtr(theString);
  CStringPtr = 0;
  v107 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(theString, 0x600u);
  }

  v111 = 0;
  v112 = 0;
  v108 = CStringPtr;
  if (Length < 1)
  {
LABEL_47:

    nameCopy = v85;
    goto LABEL_49;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 1;
  v17 = 64;
  v18 = MEMORY[0x277D85DE0];
  do
  {
    if (v15 >= 4)
    {
      v19 = 4;
    }

    else
    {
      v19 = v15;
    }

    v20 = v110;
    if (v110 <= v15)
    {
      v23 = 0;
      v22 = 0;
LABEL_28:
      v24 = *(v18 + 4 * v23 + 60);
      if ((v24 & 0x4000) != 0)
      {
        goto LABEL_32;
      }

      if ((v24 & 0x500) != 0)
      {
        goto LABEL_30;
      }

      goto LABEL_34;
    }

    if (v107)
    {
      v21 = &v107[v109];
LABEL_23:
      v22 = v21[v15];
      goto LABEL_27;
    }

    if (!v108)
    {
      v25 = v111;
      if (v112 <= v15 || v111 > v15)
      {
        v27 = v19 + v13;
        v28 = v17 - v19;
        v29 = v15 - v19;
        v30 = v29 + 64;
        if (v29 + 64 >= v110)
        {
          v30 = v110;
        }

        v111 = v29;
        v112 = v30;
        if (v110 >= v28)
        {
          v20 = v28;
        }

        v115.location = v29 + v109;
        v115.length = v20 + v27;
        CFStringGetCharacters(v106, v115, &buffer);
        v25 = v111;
      }

      v21 = &buffer - v25;
      goto LABEL_23;
    }

    v22 = v108[v109 + v15];
LABEL_27:
    v23 = v22;
    if (v22 <= 0x7Fu)
    {
      goto LABEL_28;
    }

    if (__maskrune(v22, 0x4000uLL))
    {
LABEL_32:
      v16 &= v14 ^ 1;
      v14 = 1;
      goto LABEL_35;
    }

    if (__maskrune(v22, 0x500uLL))
    {
LABEL_30:
      v14 = 0;
      goto LABEL_35;
    }

LABEL_34:
    v14 = 0;
    v16 &= CFCharacterSetIsCharacterMember(cleanName__suspiciousChars, v22) == 0;
LABEL_35:
    ++v15;
    --v13;
    ++v17;
  }

  while (Length != v15);

  nameCopy = v85;
  v9 = theString;
  if (v16)
  {
LABEL_49:
    v5 = v9;
    goto LABEL_50;
  }

LABEL_54:
  v88 = 0;
  v89 = &v88;
  v90 = 0x3032000000;
  v91 = __Block_byref_object_copy__17345;
  v92 = __Block_byref_object_dispose__17346;
  v32 = nameCopy;
  v93 = removeParens(nameCopy);
  v33 = v89[5];
  v34 = _PASCollapseWhitespaceAndStrip();
  v35 = v89[5];
  v89[5] = v34;

  v36 = v89[5];
  v37 = _PASStripQuotationMarks();
  v38 = v89[5];
  v89[5] = v37;

  if ([v89[5] hasSuffix:@" via LinkedIn"])
  {
    v39 = objc_autoreleasePoolPush();
    v40 = [v89[5] substringToIndex:{objc_msgSend(v89[5], "length") - 13}];
    objc_autoreleasePoolPop(v39);
    v41 = v89[5];
    v89[5] = v40;
  }

  v42 = v89[5];
  v43 = v42;
  if (v42 && ([v42 rangeOfString:@"@" options:2], v44))
  {
    v45 = objc_autoreleasePoolPush();
    v46 = [v43 componentsSeparatedByString:@" "];
    objc_autoreleasePoolPop(v45);
    v47 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v46, "count")}];
    v97 = 0u;
    v95 = 0u;
    v96 = 0u;
    v94 = 0u;
    v48 = v46;
    v49 = [v48 countByEnumeratingWithState:&v94 objects:&buffer count:16];
    if (v49)
    {
      v50 = *v95;
      do
      {
        for (i = 0; i != v49; ++i)
        {
          if (*v95 != v50)
          {
            objc_enumerationMutation(v48);
          }

          v52 = *(*(&v94 + 1) + 8 * i);
          [v52 rangeOfString:@"@" options:2];
          if (!v53)
          {
            [v47 addObject:v52];
          }
        }

        v49 = [v48 countByEnumeratingWithState:&v94 objects:&buffer count:16];
      }

      while (v49);
    }

    v54 = objc_autoreleasePoolPush();
    v55 = [v47 _pas_componentsJoinedByString:@" "];
    objc_autoreleasePoolPop(v54);
  }

  else
  {
    v55 = v43;
  }

  v56 = v89[5];
  v89[5] = v55;

  v57 = _PASGetQuotationMarkCharacterSet();
  v58 = v89[5];
  v59 = objc_opt_self();

  if (!v59)
  {
    goto LABEL_100;
  }

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  buffer = 0u;
  v99 = 0u;
  v60 = CFStringGetLength(v58);
  v106 = v58;
  v109 = 0;
  v110 = v60;
  v107 = CFStringGetCharactersPtr(v58);
  v61 = v107 ? 0 : CFStringGetCStringPtr(v58, 0x600u);
  v111 = 0;
  v112 = 0;
  v108 = v61;
  if (v60 <= 0)
  {
LABEL_100:

    goto LABEL_103;
  }

  v62 = 0;
  v63 = 0;
  v64 = 0;
  v65 = 64;
  while (2)
  {
    if (v63 >= 4)
    {
      v66 = 4;
    }

    else
    {
      v66 = v63;
    }

    v67 = v110;
    if (v110 <= v63)
    {
      v69 = 0;
      goto LABEL_86;
    }

    if (v107)
    {
      v68 = &v107[v109];
      goto LABEL_81;
    }

    if (v108)
    {
      v69 = v108[v109 + v63];
    }

    else
    {
      v70 = v111;
      if (v112 <= v63 || v111 > v63)
      {
        v72 = v66 + v62;
        v73 = v65 - v66;
        v74 = v63 - v66;
        v75 = v74 + 64;
        if (v74 + 64 >= v110)
        {
          v75 = v110;
        }

        v111 = v74;
        v112 = v75;
        if (v110 >= v73)
        {
          v67 = v73;
        }

        v116.location = v74 + v109;
        v116.length = v67 + v72;
        CFStringGetCharacters(v106, v116, &buffer);
        v70 = v111;
      }

      v68 = &buffer - v70;
LABEL_81:
      v69 = v68[v63];
    }

    if (v69 == 34)
    {
LABEL_87:
      ++v64;
    }

    else
    {
LABEL_86:
      if (CFCharacterSetIsCharacterMember(v57, v69))
      {
        goto LABEL_87;
      }
    }

    ++v63;
    --v62;
    ++v65;
    if (v60 != v63)
    {
      continue;
    }

    break;
  }

  if (v64 > 1)
  {
    v76 = objc_autoreleasePoolPush();
    v77 = patterns_17281();
    v78 = [v77 regex2ForKey:@"QuotedNickname"];
    v79 = v89[5];
    v87[0] = MEMORY[0x277D85DD0];
    v87[1] = 3221225472;
    v87[2] = __21__SGNames_cleanName___block_invoke_2;
    v87[3] = &unk_27894FD80;
    v87[4] = &v88;
    [v78 enumerateMatchesInString:v79 ngroups:2 block:v87];

    objc_autoreleasePoolPop(v76);
  }

LABEL_103:
  v80 = objc_autoreleasePoolPush();
  v81 = v89[5];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v31 = [v81 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  objc_autoreleasePoolPop(v80);
  _Block_object_dispose(&v88, 8);

  nameCopy = v32;
LABEL_104:

  v83 = *MEMORY[0x277D85DE8];

  return v31;
}

uint64_t __21__SGNames_cleanName___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2[3] != 0x7FFFFFFFFFFFFFFFLL && a2[6] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = objc_alloc(MEMORY[0x277CCACA8]);
    v6 = [*(*(*(a1 + 32) + 8) + 40) substringWithRange:{a2[3], a2[4]}];
    v7 = [*(*(*(a1 + 32) + 8) + 40) substringWithRange:{a2[6], a2[7]}];
    v8 = [v5 initWithFormat:@"%@ %@", v6, v7];
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    objc_autoreleasePoolPop(v4);
  }

  return 0;
}

void __21__SGNames_cleanName___block_invoke()
{
  Mutable = CFCharacterSetCreateMutable(0);
  CFCharacterSetAddCharactersInString(Mutable, @"()<>[]@");
  v1 = _PASGetQuotationMarkCharacterSet();
  CFCharacterSetUnion(Mutable, v1);
  cleanName__suspiciousChars = CFCharacterSetCreateCopy(0, Mutable);

  CFRelease(Mutable);
}

+ (id)universalCleanName:(id)name
{
  MutableCopy = CFStringCreateMutableCopy(0, 0, name);
  CFStringNormalize(MutableCopy, kCFStringNormalizationFormC);
  CFStringTrimWhitespace(MutableCopy);
  Length = CFStringGetLength(MutableCopy);
  if (Length >= 2)
  {
    v5 = Length;
    if (CFStringGetCharacterAtIndex(MutableCopy, 0) == 34)
    {
      v6 = v5 - 1;
      if (CFStringGetCharacterAtIndex(MutableCopy, v6) == 34)
      {
        v9.location = v6;
        v9.length = 1;
        CFStringDelete(MutableCopy, v9);
        v10.location = 0;
        v10.length = 1;
        CFStringDelete(MutableCopy, v10);
        CFStringTrimWhitespace(MutableCopy);
      }
    }
  }

  return MutableCopy;
}

+ (id)stripAndReturnHonorifics:(id)honorifics
{
  v33[3] = *MEMORY[0x277D85DE8];
  honorificsCopy = honorifics;
  if (honorificsCopy)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__SGNames_stripAndReturnHonorifics___block_invoke;
    block[3] = &__block_descriptor_48_e5_v8__0l;
    block[4] = a2;
    block[5] = self;
    if (stripAndReturnHonorifics__onceToken != -1)
    {
      dispatch_once(&stripAndReturnHonorifics__onceToken, block);
    }

    os_unfair_lock_lock(&stripAndReturnHonorifics__cacheLock);
    v6 = [stripAndReturnHonorifics__cache objectForKeyedSubscript:honorificsCopy];
    os_unfair_lock_unlock(&stripAndReturnHonorifics__cacheLock);
    if (!v6)
    {
      v7 = objc_autoreleasePoolPush();
      v26 = 0;
      v27 = &v26;
      v28 = 0x3032000000;
      v29 = __Block_byref_object_copy__17345;
      v30 = __Block_byref_object_dispose__17346;
      v31 = &stru_284703F00;
      v20 = 0;
      v21 = &v20;
      v22 = 0x3032000000;
      v23 = __Block_byref_object_copy__17345;
      v24 = __Block_byref_object_dispose__17346;
      v25 = &stru_284703F00;
      v14 = 0;
      v15 = &v14;
      v16 = 0x3032000000;
      v17 = __Block_byref_object_copy__17345;
      v18 = __Block_byref_object_dispose__17346;
      v8 = honorificsCopy;
      v19 = v8;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __36__SGNames_stripAndReturnHonorifics___block_invoke_75;
      v13[3] = &unk_27894E3E8;
      v13[4] = &v14;
      v13[5] = &v26;
      findEndOfHonorificPrefixCandidate(v8, v13);
      v12 = MEMORY[0x277D85DD0];
      _PASMemoryHeavyOperation();
      v9 = v15[5];
      v33[0] = v27[5];
      v33[1] = v9;
      v33[2] = v21[5];
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:{3, v12, 3221225472, __36__SGNames_stripAndReturnHonorifics___block_invoke_2, &unk_27894E438, &v14, &v20}];
      os_unfair_lock_lock(&stripAndReturnHonorifics__cacheLock);
      if ([stripAndReturnHonorifics__cache count] >= 0xA)
      {
        [stripAndReturnHonorifics__cache removeAllObjects];
      }

      [stripAndReturnHonorifics__cache setObject:v6 forKeyedSubscript:v8];
      os_unfair_lock_unlock(&stripAndReturnHonorifics__cacheLock);
      _Block_object_dispose(&v14, 8);

      _Block_object_dispose(&v20, 8);
      _Block_object_dispose(&v26, 8);

      objc_autoreleasePoolPop(v7);
    }
  }

  else
  {
    v6 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

void __36__SGNames_stripAndReturnHonorifics___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:10];
  v3 = stripAndReturnHonorifics__cache;
  stripAndReturnHonorifics__cache = v2;

  v4 = patterns_17281();
  v13 = [v4 rawValueForKey:@"LeadingHonorificPeriodRequired"];

  if (!v13)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"SGNames.m" lineNumber:755 description:@"failed to get patterns for LeadingHonorificPeriodRequired"];
  }

  v5 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v13];
  v6 = stripAndReturnHonorifics__prefixesPeriodRequired;
  stripAndReturnHonorifics__prefixesPeriodRequired = v5;

  v7 = patterns_17281();
  v8 = [v7 rawValueForKey:@"LeadingHonorificPeriodOptional"];

  if (!v8)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"SGNames.m" lineNumber:758 description:@"failed to get patterns for LeadingHonorificPeriodOptional"];
  }

  v9 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v8];
  v10 = stripAndReturnHonorifics__prefixesPeriodOptional;
  stripAndReturnHonorifics__prefixesPeriodOptional = v9;
}

void __36__SGNames_stripAndReturnHonorifics___block_invoke_75(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v15 = [*(*(*(a1 + 32) + 8) + 40) substringToIndex:a2 - a4];
  v8 = [stripAndReturnHonorifics__prefixesPeriodOptional containsObject:?];
  if ((v8 & 1) != 0 || !a4)
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if ([stripAndReturnHonorifics__prefixesPeriodRequired containsObject:v15])
  {
LABEL_6:
    v9 = [*(*(*(a1 + 32) + 8) + 40) substringToIndex:a2];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v12 = [*(*(*(a1 + 32) + 8) + 40) substringFromIndex:a3];
    v13 = *(*(a1 + 32) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

LABEL_7:
}

void __36__SGNames_stripAndReturnHonorifics___block_invoke_2(int8x16_t *a1)
{
  v8[0] = MEMORY[0x277D85DD0];
  v1 = vextq_s8(a1[2], a1[2], 8uLL);
  v2 = *(*(a1[2].i64[0] + 8) + 40);
  v8[1] = 3221225472;
  v8[2] = __36__SGNames_stripAndReturnHonorifics___block_invoke_3;
  v8[3] = &unk_27894E410;
  v9 = v1;
  v3 = v8;
  v4 = enumerateTrailingHonorificMatchesInString_onceToken;
  v5 = v2;
  if (v4 != -1)
  {
    dispatch_once(&enumerateTrailingHonorificMatchesInString_onceToken, &__block_literal_global_232_17372);
  }

  v6 = enumerateTrailingHonorificMatchesInString_trailingRe;
  v7 = [v5 length];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __enumerateTrailingHonorificMatchesInString_block_invoke_2;
  v10[3] = &unk_27894E4A8;
  v11 = v3;
  [v6 enumerateMatchesInString:v5 options:0 range:0 usingBlock:{v7, v10}];
}

uint64_t __36__SGNames_stripAndReturnHonorifics___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(*(*(a1 + 40) + 8) + 40) substringWithRange:{a2, a3}];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(*(*(a1 + 32) + 8) + 40);
  v9 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v10 = [v8 stringByTrimmingCharactersInSet:v9];
  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = [*(*(*(a1 + 40) + 8) + 40) substringToIndex:a2];
  v14 = *(*(a1 + 40) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  if ([*(*(*(a1 + 40) + 8) + 40) hasSuffix:{@", "}])
  {
    v16 = [*(*(*(a1 + 40) + 8) + 40) substringToIndex:{objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "length") - 1}];
    v17 = *(*(a1 + 40) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;
  }

  return 0;
}

+ (id)stripHonorifics:(id)honorifics
{
  v3 = [self stripAndReturnHonorifics:honorifics];
  v4 = [v3 objectAtIndexedSubscript:1];

  return v4;
}

+ (BOOL)isCapitalized:(id)capitalized
{
  capitalizedCopy = capitalized;
  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetUppercaseLetter);
  v5 = capitalizedCopy;
  v6 = objc_opt_self();

  if (v6)
  {
    memset(v28, 0, sizeof(v28));
    Length = CFStringGetLength(v5);
    theString = v5;
    v32 = 0;
    v33 = Length;
    CharactersPtr = CFStringGetCharactersPtr(v5);
    CStringPtr = 0;
    v30 = CharactersPtr;
    if (!CharactersPtr)
    {
      CStringPtr = CFStringGetCStringPtr(v5, 0x600u);
    }

    v34 = 0;
    v35 = 0;
    v31 = CStringPtr;
    if (Length >= 1)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 64;
      while (1)
      {
        if (v11 >= 4)
        {
          v15 = 4;
        }

        else
        {
          v15 = v11;
        }

        v16 = v33;
        if (v33 <= v11)
        {
          v18 = 0;
        }

        else
        {
          if (v30)
          {
            v17 = &v30[v32];
LABEL_12:
            v18 = v17[v11];
            goto LABEL_14;
          }

          if (!v31)
          {
            v20 = v34;
            if (v35 <= v11 || v34 > v11)
            {
              v22 = v15 + v10;
              v23 = v14 - v15;
              v24 = v11 - v15;
              v25 = v24 + 64;
              if (v24 + 64 >= v33)
              {
                v25 = v33;
              }

              v34 = v24;
              v35 = v25;
              if (v33 >= v23)
              {
                v16 = v23;
              }

              v36.location = v24 + v32;
              v36.length = v16 + v22;
              CFStringGetCharacters(theString, v36, v28);
              v20 = v34;
            }

            v17 = v28 - v20;
            goto LABEL_12;
          }

          v18 = v31[v32 + v11];
        }

LABEL_14:
        IsCharacterMember = CFCharacterSetIsCharacterMember(Predefined, v18);
        if (v12)
        {
          if (!IsCharacterMember)
          {
            ++v13;
          }
        }

        else if (!IsCharacterMember)
        {
          v26 = 0;
          goto LABEL_35;
        }

        ++v11;
        --v10;
        ++v14;
        v12 = 1;
        if (Length == v11)
        {
          goto LABEL_34;
        }
      }
    }
  }

  v13 = 0;
LABEL_34:
  v26 = 1;
LABEL_35:

  if (v13 <= 0)
  {
    v26 = 0;
  }

  return v26;
}

+ (BOOL)isDifficultName:(id)name
{
  nameCopy = name;
  v4 = objc_autoreleasePoolPush();
  v5 = SGGuessNamingTradition(nameCopy);
  objc_autoreleasePoolPop(v4);
  v7 = v5 == 5 || (v5 & 0xFFFFFFFD) == 4;

  return v7;
}

+ (BOOL)isCommonVietnameseSurname:(id)surname
{
  surnameCopy = surname;
  if (isCommonVietnameseSurname___pasOnceToken13 != -1)
  {
    dispatch_once(&isCommonVietnameseSurname___pasOnceToken13, &__block_literal_global_63);
  }

  v4 = isCommonVietnameseSurname___pasExprOnceResult;
  if ([(__CFString *)surnameCopy length]&& (MutableCopy = CFStringCreateMutableCopy(0, 0, surnameCopy)) != 0)
  {
    v6 = MutableCopy;
    CFStringNormalize(MutableCopy, kCFStringNormalizationFormKC);
    CFStringCapitalize(v6, 0);
    v7 = [v4 containsObject:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __37__SGNames_isCommonVietnameseSurname___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc(MEMORY[0x277CBEB98]);
  v2 = patterns_17281();
  v3 = [v2 rawValueForKey:@"CommonVietnameseSurnameList"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = [v1 initWithArray:v5];
  v7 = isCommonVietnameseSurname___pasExprOnceResult;
  isCommonVietnameseSurname___pasExprOnceResult = v6;

  objc_autoreleasePoolPop(v0);
}

+ (BOOL)isProbablyShortCJKName:(id)name
{
  nameCopy = name;
  if ([nameCopy length] > 5)
  {
    v4 = 0;
    goto LABEL_35;
  }

  if (isProbablyShortCJKName__onceToken != -1)
  {
    dispatch_once(&isProbablyShortCJKName__onceToken, &__block_literal_global_61);
  }

  v5 = nameCopy;
  v6 = objc_opt_self();

  if (v6)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    Length = CFStringGetLength(v5);
    theString = v5;
    v35 = 0;
    v36 = Length;
    CharactersPtr = CFStringGetCharactersPtr(v5);
    CStringPtr = 0;
    v33 = CharactersPtr;
    if (!CharactersPtr)
    {
      CStringPtr = CFStringGetCStringPtr(v5, 0x600u);
    }

    v37 = 0;
    v38 = 0;
    v34 = CStringPtr;
    if (Length >= 1)
    {
      v10 = 0;
      v11 = 0;
      v4 = 1;
      v12 = 64;
      while (1)
      {
        if (v11 >= 4)
        {
          v13 = 4;
        }

        else
        {
          v13 = v11;
        }

        v14 = v36;
        if (v36 <= v11)
        {
          v16 = 0;
        }

        else
        {
          if (v33)
          {
            v15 = &v33[v35];
LABEL_16:
            v16 = v15[v11];
            goto LABEL_18;
          }

          if (!v34)
          {
            v17 = v37;
            if (v38 <= v11 || v37 > v11)
            {
              v19 = v13 + v10;
              v20 = v12 - v13;
              v21 = v11 - v13;
              v22 = v21 + 64;
              if (v21 + 64 >= v36)
              {
                v22 = v36;
              }

              v37 = v21;
              v38 = v22;
              if (v36 >= v20)
              {
                v14 = v20;
              }

              v39.location = v21 + v35;
              v39.length = v14 + v19;
              CFStringGetCharacters(theString, v39, &v24);
              v17 = v37;
            }

            v15 = &v24 - v17;
            goto LABEL_16;
          }

          v16 = v34[v35 + v11];
        }

LABEL_18:
        if (![isProbablyShortCJKName__commonCJKCharsets characterIsMember:{v16, v24, v25, v26, v27, v28, v29, v30, v31}])
        {
          v4 = ++v11 < Length;
          --v10;
          ++v12;
          if (Length != v11)
          {
            continue;
          }
        }

        goto LABEL_34;
      }
    }
  }

  v4 = 0;
LABEL_34:

LABEL_35:
  return v4;
}

void __34__SGNames_isProbablyShortCJKName___block_invoke()
{
  v0 = chineseCharSet();
  v5 = [v0 mutableCopy];

  v1 = japaneseCharSet();
  [v5 formUnionWithCharacterSet:v1];

  v2 = hangulCharSet();
  [v5 formUnionWithCharacterSet:v2];

  v3 = [v5 copy];
  v4 = isProbablyShortCJKName__commonCJKCharsets;
  isProbablyShortCJKName__commonCJKCharsets = v3;
}

+ (BOOL)isLowercaseStringCommonNameWord:(id)word
{
  v3 = [SGWords normalizeLowercaseWord:word];
  v4 = nameData(v3);

  return v4 & 1;
}

+ (BOOL)isSalientNameByChars:(id)chars
{
  charsCopy = chars;
  if ([charsCopy length] < 2)
  {
    LOBYTE(v11) = 0;
  }

  else
  {
    v5 = -1;
    v6 = 1;
    do
    {
      v7 = objc_autoreleasePoolPush();
      v8 = [charsCopy substringWithRange:{0, v6}];
      objc_autoreleasePoolPop(v7);
      if ([self isFamilyName:v8])
      {
        v9 = objc_autoreleasePoolPush();
        v10 = [charsCopy substringWithRange:{v6, objc_msgSend(charsCopy, "length") + v5}];
        objc_autoreleasePoolPop(v9);
        v11 = [self isSalientName:v10];
      }

      else
      {
        v11 = 0;
      }

      if (v6 > 1)
      {
        break;
      }

      ++v6;
      --v5;
    }

    while (!v11);
  }

  return v11;
}

+ ($D369DFA4738CCB2DC34F10FA2F14702B)namePayload:(id)payload
{
  payloadCopy = payload;
  if ([self isProbablyShortCJKName:payloadCopy])
  {
    v5 = payloadCopy;
  }

  else
  {
    v5 = [SGWords normalizeWord:payloadCopy];
  }

  v6 = v5;
  v7 = nameData(v5);

  return v7;
}

@end