@interface EAEmailAddressLists
+ (id)addressDisplayStringWithMaxNumberOfAddresses:(unint64_t)addresses fromAddressList:(id)list;
+ (id)addressListFromAddressString:(id)string;
+ (id)addressListFromHeaderValue:(id)value;
+ (id)addressStringFromAddressList:(id)list;
+ (id)componentsSeparatedByCharactersRespectingQuotesAndParens:(id)parens forString:(id)string;
+ (id)componentsSeparatedByCommaRespectingQuotesAndParensForString:(id)string;
+ (id)displayNameFromAddressList:(id)list;
+ (id)rawAddressListFromFullAddressList:(id)list;
@end

@implementation EAEmailAddressLists

+ (id)addressListFromHeaderValue:(id)value
{
  v106 = *MEMORY[0x277D85DE8];
  theString = value;
  v3 = [(__CFString *)theString length];
  if (v3 >= 1)
  {
    array = [MEMORY[0x277CBEB18] array];
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    *buffer = 0u;
    v91 = 0u;
    v98 = theString;
    v101 = 0;
    v102 = v3;
    CharactersPtr = CFStringGetCharactersPtr(theString);
    if (CharactersPtr)
    {
      CStringPtr = 0;
    }

    else
    {
      CStringPtr = CFStringGetCStringPtr(theString, 0x600u);
    }

    v7 = 0;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v8 = 0;
    v103 = 0;
    v104 = 0;
    v100 = CStringPtr;
    v80 = &buffer[1];
    while (1)
    {
      v9 = v85;
      v10 = v102;
      if (v102 <= v8)
      {
        v11 = 0;
      }

      else if (CharactersPtr)
      {
        v11 = CharactersPtr[v101 + v8];
      }

      else if (v100)
      {
        v11 = v100[v101 + v8];
      }

      else
      {
        v48 = v103;
        if (v104 <= v8 || v103 > v8)
        {
          v50 = v8 - 4;
          if (v8 < 4)
          {
            v50 = 0;
          }

          if (v50 + 64 < v102)
          {
            v10 = v50 + 64;
          }

          v103 = v50;
          v104 = v10;
          v109.length = v10 - v50;
          v109.location = v101 + v50;
          CFStringGetCharacters(v98, v109, buffer);
          v48 = v103;
        }

        v11 = buffer[v8 - v48];
      }

      v12 = v11;
      v85 = v11;
      if (((1 << v11) & 0x100000600) != 0)
      {
        v13 = v7 + 1;
      }

      else
      {
        v13 = v7;
      }

      if (v12 > 0x20)
      {
        v13 = v7;
      }

      if (v8 == v7)
      {
        v7 = v13;
      }

      if (v12 <= 40)
      {
        v19 = v84;
        v20 = v83;
        v21 = v83 ^ (v84 == 0);
        v22 = v84 + ((v83 & 1) == 0);
        if (v12 != 40)
        {
          v22 = v84;
        }

        v23 = v12 == 34;
        v18 = 0;
        if (!v23)
        {
          v19 = v22;
        }

        v84 = v19;
        if (v23)
        {
          v20 = v21;
        }

        v83 = v20;
      }

      else
      {
        switch(v12)
        {
          case ')':
            v18 = 0;
            v24 = v84 - 1;
            if (!v84)
            {
              v24 = 0;
            }

            v84 = v24;
            break;
          case ',':
            v18 = (v84 == 0) & ~v83;
            break;
          case '\\':
            v14 = v84;
            v15 = v83;
            if (v8 + 1 >= v3)
            {
              v16 = v8;
            }

            else
            {
              v16 = v8 + 1;
            }

            v17 = (v83 & 1 | (v84 != 0)) == 0;
            v18 = 0;
            if (v83 & 1 | (v84 != 0))
            {
              v8 = v16;
            }

            else
            {
              v14 = 0;
            }

            v84 = v14;
            if (v17)
            {
              v15 = 0;
            }

            v83 = v15;
            break;
          default:
            v18 = 0;
            break;
        }
      }

      v25 = v8 + 1;
      if ((v18 & 1) != 0 || v25 == v3)
      {
        v27 = v3;
        if (v18)
        {
          v27 = v8;
          if (v9 != 62)
          {
            v28 = v8 + 1;
            if (v25 < v3)
            {
              v28 = v8 + 1;
              if (v8 >= -1)
              {
                v29 = ~v8;
                v30 = v8 + 65;
                v31 = v8;
                v28 = v8 + 1;
                while (1)
                {
                  v32 = v31 + 1;
                  v33 = v28 >= 4 ? 4 : v28;
                  v34 = v102;
                  if (v102 <= v32)
                  {
                    break;
                  }

                  if (CharactersPtr)
                  {
                    v35 = CharactersPtr[v101 + 1 + v31];
                  }

                  else if (v100)
                  {
                    v35 = v100[v101 + 1 + v31];
                  }

                  else
                  {
                    v36 = v103;
                    v37 = v104 > v32 && v103 <= v32;
                    if (!v37)
                    {
                      v38 = -v33;
                      v39 = v33 + v29;
                      v40 = v30 - v33;
                      v41 = v31 + v38;
                      v42 = v41 + 1;
                      v43 = v41 + 65;
                      if (v43 >= v102)
                      {
                        v43 = v102;
                      }

                      v103 = v42;
                      v104 = v43;
                      if (v102 >= v40)
                      {
                        v34 = v40;
                      }

                      v108.location = v42 + v101;
                      v108.length = v34 + v39;
                      CFStringGetCharacters(v98, v108, buffer);
                      v36 = v103;
                    }

                    v35 = v80[v31 - v36];
                  }

                  v37 = v35 > 0x20u;
                  v44 = (1 << v35) & 0x100000600;
                  if (v37 || v44 == 0)
                  {
                    v28 = v31 + 1;
                    break;
                  }

                  ++v28;
                  v46 = v31 + 1;
                  v47 = v31 + 2;
                  --v29;
                  ++v30;
                  ++v31;
                  if (v47 >= v3)
                  {
                    v28 = v46 + 1;
                    break;
                  }
                }
              }
            }

            if (addressListFromHeaderValue__onceToken != -1)
            {
              +[EAEmailAddressLists addressListFromHeaderValue:];
            }

            if (v3 - v28 >= 6)
            {
              v51 = 6;
            }

            else
            {
              v51 = v3 - v28;
            }

            v52 = [(__CFString *)theString substringWithRange:v28, v51, v80];
            lowercaseString = [v52 lowercaseString];

            v88 = 0u;
            v89 = 0u;
            v86 = 0u;
            v87 = 0u;
            v54 = addressListFromHeaderValue__nameExtensions;
            v55 = [v54 countByEnumeratingWithState:&v86 objects:v105 count:16];
            if (v55)
            {
              v56 = *v87;
LABEL_98:
              v57 = 0;
              while (1)
              {
                if (*v87 != v56)
                {
                  objc_enumerationMutation(v54);
                }

                v58 = *(*(&v86 + 1) + 8 * v57);
                if ([lowercaseString hasPrefix:v58])
                {
                  v26 = [v58 length] + v28;
                  if (v26 < v3)
                  {
                    v59 = v102;
                    if (v102 > v26)
                    {
                      if (CharactersPtr)
                      {
                        v60 = CharactersPtr[v101 + v26];
                      }

                      else if (v100)
                      {
                        v60 = v100[v101 + v26];
                      }

                      else
                      {
                        v61 = v103;
                        if (v104 <= v26 || v103 > v26)
                        {
                          v63 = v26 - 4;
                          if (v26 < 4)
                          {
                            v63 = 0;
                          }

                          if (v63 + 64 < v102)
                          {
                            v59 = v63 + 64;
                          }

                          v103 = v63;
                          v104 = v59;
                          v110.length = v59 - v63;
                          v110.location = v101 + v63;
                          CFStringGetCharacters(v98, v110, buffer);
                          v61 = v103;
                        }

                        v60 = buffer[v26 - v61];
                      }

                      v37 = v60 > 0x2Cu;
                      v64 = (1 << v60) & 0x100100000600;
                      if (!v37 && v64 != 0)
                      {
                        goto LABEL_152;
                      }
                    }
                  }
                }

                if (v55 == ++v57)
                {
                  v55 = [v54 countByEnumeratingWithState:&v86 objects:v105 count:16];
                  if (v55)
                  {
                    goto LABEL_98;
                  }

                  break;
                }
              }
            }

            v25 = v8 + 1;
            v27 = v8;
          }
        }

        if (v7 < v27)
        {
          v66 = -v27;
          v67 = v27 + 64;
          while (1)
          {
            v68 = v27 - 1;
            v69 = v27 >= 5 ? 5 : v27;
            if (v68 < 0)
            {
              break;
            }

            v70 = v102;
            if (v102 <= v68)
            {
              break;
            }

            if (CharactersPtr)
            {
              v71 = CharactersPtr[v101 - 1 + v27];
            }

            else if (v100)
            {
              v71 = v100[v101 - 1 + v27];
            }

            else
            {
              if (v104 <= v68 || (v72 = v103, v103 > v68))
              {
                v73 = -v69;
                v74 = v69 + v66;
                v75 = v67 - v69;
                v76 = v27 + v73;
                v77 = v76 + 64;
                if (v76 + 64 >= v102)
                {
                  v77 = v102;
                }

                v103 = v76;
                v104 = v77;
                if (v102 >= v75)
                {
                  v70 = v75;
                }

                v111.location = v76 + v101;
                v111.length = v70 + v74;
                CFStringGetCharacters(v98, v111, buffer);
                v72 = v103;
              }

              v71 = buffer[v27 - 1 - v72];
            }

            v37 = v71 > 0x20u;
            v78 = (1 << v71) & 0x100000600;
            if (v37 || v78 == 0)
            {
              break;
            }

            ++v66;
            --v67;
            --v27;
            if (v7 >= v68)
            {
              goto LABEL_150;
            }
          }

          lowercaseString = [(__CFString *)theString substringWithRange:v7, v27 - v7, v80];
          v54 = [EAEmailAddressParser idnaDecodedAddressForAddress:lowercaseString];
          [array addObject:v54];
          v26 = v8;
          v7 = v25;
LABEL_152:

          goto LABEL_153;
        }

LABEL_150:
        v26 = v8;
        v7 = v25;
      }

      else
      {
        v26 = v8;
      }

LABEL_153:
      v8 = v26 + 1;
      if (v26 + 1 >= v3)
      {
        goto LABEL_5;
      }
    }
  }

  array = MEMORY[0x277CBEBF8];
LABEL_5:

  v5 = *MEMORY[0x277D85DE8];

  return array;
}

void __50__EAEmailAddressLists_addressListFromHeaderValue___block_invoke()
{
  v0 = addressListFromHeaderValue__nameExtensions;
  addressListFromHeaderValue__nameExtensions = &unk_285D22B58;
}

+ (id)componentsSeparatedByCommaRespectingQuotesAndParensForString:(id)string
{
  stringCopy = string;
  if (!componentsSeparatedByCommaRespectingQuotesAndParensForString__addressCharacterSet)
  {
    65532 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@", %C%C%C", 10, 13, 65532];
    v6 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:65532];
    v7 = componentsSeparatedByCommaRespectingQuotesAndParensForString__addressCharacterSet;
    componentsSeparatedByCommaRespectingQuotesAndParensForString__addressCharacterSet = v6;
  }

  v8 = [self componentsSeparatedByCharactersRespectingQuotesAndParens:? forString:?];

  return v8;
}

+ (id)componentsSeparatedByCharactersRespectingQuotesAndParens:(id)parens forString:(id)string
{
  parensCopy = parens;
  stringCopy = string;
  array = [MEMORY[0x277CBEB18] array];
  v7 = NSZoneMalloc(0, 2 * [stringCopy length]);
  [stringCopy getCharacters:v7];
  v8 = [stringCopy length];
  v9 = &v7[v8];
  if (v8 >= 1)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = v7;
    v14 = v7;
    while (1)
    {
      v15 = *v13;
      if (v15 > 0x28)
      {
        if (v15 == 41)
        {
          if (v11)
          {
            --v11;
          }

          else
          {
            v11 = 0;
          }

          goto LABEL_21;
        }

        if (v15 == 92)
        {
          v16 = 2;
          if (!(v10 & 1 | (v11 != 0)))
          {
            v16 = 0;
          }

          v13 = (v13 + v16);
          goto LABEL_21;
        }
      }

      else
      {
        if (v15 == 34)
        {
          v10 ^= v11 == 0;
          goto LABEL_21;
        }

        if (v15 == 40)
        {
          v11 += (v10 & 1) == 0;
          goto LABEL_21;
        }
      }

      if (!(v10 & 1 | (([parensCopy characterIsMember:?] & 1) == 0)) && !v11)
      {
        v17 = [stringCopy substringWithRange:{v14 - v7, v13 - v14}];

        if ([v17 length])
        {
          [array addObject:v17];
        }

        v11 = 0;
        v10 = 0;
        v14 = v13 + 1;
        goto LABEL_22;
      }

LABEL_21:
      v17 = v12;
LABEL_22:
      ++v13;
      v12 = v17;
      if (v13 >= v9)
      {
        goto LABEL_25;
      }
    }
  }

  v17 = 0;
  v14 = v7;
LABEL_25:
  if (v14 < v9)
  {
    v18 = [stringCopy substringWithRange:{v14 - v7, v9 - v14}];

    v17 = v18;
    if ([v18 length])
    {
      [array addObject:v18];
    }
  }

  NSZoneFree(0, v7);

  return array;
}

+ (id)addressListFromAddressString:(id)string
{
  v3 = [string componentsSeparatedByString:{@", "}];

  return v3;
}

+ (id)addressStringFromAddressList:(id)list
{
  v44 = *MEMORY[0x277D85DE8];
  listCopy = list;
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(listCopy, "count")}];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = listCopy;
  v4 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v4)
  {
    v5 = *v40;
    v25 = v3;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v40 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v39 + 1) + 8 * i);
        v8 = [EAEmailAddressParser displayNameFromAddress:v7];
        if (([v8 isEqualToString:v7] & 1) == 0 && objc_msgSend(v8, "rangeOfString:", @",") != 0x7FFFFFFFFFFFFFFFLL)
        {
          Length = CFStringGetLength(v7);
          v36 = 0u;
          v34 = 0u;
          theString[1] = 0;
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          *buffer = 0u;
          theString[0] = v7;
          v38 = 0;
          v37 = Length;
          theString[1] = CFStringGetCharactersPtr(v7);
          if (theString[1])
          {
            CStringPtr = 0;
          }

          else
          {
            CStringPtr = CFStringGetCStringPtr(v7, 0x600u);
          }

          *&v36 = CStringPtr;
          *(&v37 + 1) = 0;
          v38 = 0;
          if (Length < 1)
          {
            v14 = v7;
          }

          else
          {
            v11 = 0;
            v12 = 0;
            v13 = 0;
            v14 = v7;
            do
            {
              if ((v11 & 0x8000000000000000) == 0)
              {
                v15 = v37;
                if (v37 > v11)
                {
                  if (theString[1])
                  {
                    v16 = *(&theString[1]->isa + *(&v36 + 1) + v11);
                  }

                  else if (v36)
                  {
                    v16 = *(v36 + *(&v36 + 1) + v11);
                  }

                  else
                  {
                    if (v38 <= v11 || (v17 = *(&v37 + 1), *(&v37 + 1) > v11))
                    {
                      v18 = v11 - 4;
                      if (v11 < 4)
                      {
                        v18 = 0;
                      }

                      if (v18 + 64 < v37)
                      {
                        v15 = v18 + 64;
                      }

                      *(&v37 + 1) = v18;
                      v38 = v15;
                      v46.length = v15 - v18;
                      v46.location = *(&v36 + 1) + v18;
                      CFStringGetCharacters(theString[0], v46, buffer);
                      v17 = *(&v37 + 1);
                    }

                    v16 = buffer[v11 - v17];
                  }

                  if (v16 <= 0x28u)
                  {
                    if (v16 == 34)
                    {
                      v13 ^= v12 == 0;
                    }

                    else if (v16 == 40)
                    {
                      v12 += (v13 & 1) == 0;
                    }
                  }

                  else
                  {
                    switch(v16)
                    {
                      case ')':
                        if (v12)
                        {
                          --v12;
                        }

                        else
                        {
                          v12 = 0;
                        }

                        break;
                      case ',':
                        if (!(v13 & 1 | (v12 != 0)))
                        {
                          v19 = [EAEmailAddressParser rawAddressFromFullAddress:v7];
                          if (!v19)
                          {
                            v19 = v7;
                          }

                          v20 = [EAEmailAddressGenerator formattedAddressWithName:v8 email:v19 useQuotes:1];

                          v13 = 0;
                          v12 = 0;
                          v14 = v20;
                          v11 = Length;
                        }

                        break;
                      case '\\':
                        v11 += v13 & 1u | (v12 != 0);
                        break;
                    }
                  }
                }
              }

              ++v11;
            }

            while (v11 < Length);
          }

          v7 = v14;
          v3 = v25;
        }

        [v3 addObject:v7];
      }

      v4 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v4);
  }

  v21 = [v3 componentsJoinedByString:{@", "}];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (id)rawAddressListFromFullAddressList:(id)list
{
  v19 = *MEMORY[0x277D85DE8];
  listCopy = list;
  v4 = [listCopy count];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:v4];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = listCopy;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = [EAEmailAddressParser rawAddressFromFullAddress:v10, v14];
          if (v11)
          {
            [v5 addObject:v11];
          }

          else
          {
            [v5 addObject:v10];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v5 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)displayNameFromAddressList:(id)list
{
  v18 = *MEMORY[0x277D85DE8];
  listCopy = list;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(listCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = listCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [EAEmailAddressParser displayNameFromAddress:*(*(&v13 + 1) + 8 * i), v13];
        [v4 addObject:v9];
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v4 componentsJoinedByString:{@", "}];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)addressDisplayStringWithMaxNumberOfAddresses:(unint64_t)addresses fromAddressList:(id)list
{
  listCopy = list;
  v6 = [listCopy count];
  v7 = v6;
  if (v6)
  {
    if (v6 == 1)
    {
      v8 = [listCopy objectAtIndexedSubscript:0];
    }

    else
    {
      string = [MEMORY[0x277CCAB68] string];
      if (v7 >= addresses)
      {
        v10 = v7 - addresses;
      }

      else
      {
        v10 = 0;
      }

      v11 = objc_alloc(MEMORY[0x277CCAA78]);
      if (v7 <= addresses)
      {
        addressesCopy = v7 - 1;
      }

      else
      {
        addressesCopy = addresses;
      }

      v13 = [v11 initWithIndexesInRange:{0, addressesCopy}];
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __84__EAEmailAddressLists_addressDisplayStringWithMaxNumberOfAddresses_fromAddressList___block_invoke;
      v21 = &unk_278FC0060;
      v8 = string;
      v22 = v8;
      [listCopy enumerateObjectsAtIndexes:v13 options:0 usingBlock:&v18];
      if (v7 <= addresses)
      {
        v15 = _EFLocalizedString();
        v16 = [listCopy objectAtIndexedSubscript:v7 - 1];
        [(__CFString *)v8 appendFormat:v15, v16, v18, v19, v20, v21];
      }

      else
      {
        v14 = MEMORY[0x277CCACA8];
        v15 = _EFLocalizedString();
        v16 = [v14 localizedStringWithFormat:v15, v10, v18, v19, v20, v21];
        [(__CFString *)v8 appendString:v16];
      }
    }
  }

  else
  {
    v8 = &stru_285D21E38;
  }

  return v8;
}

@end