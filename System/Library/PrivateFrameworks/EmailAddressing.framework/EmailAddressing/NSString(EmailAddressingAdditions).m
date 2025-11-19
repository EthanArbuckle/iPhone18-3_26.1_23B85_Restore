@interface NSString(EmailAddressingAdditions)
- (BOOL)ea_isLegalEmailAddress;
- (id)ea_addressComment;
- (id)ea_addressCommentPersonNameComponents;
- (id)ea_uncommentedAddress;
- (id)ea_uncommentedAddressRespectingGroups;
- (uint64_t)ea_isLegalCommentedEmailAddress;
@end

@implementation NSString(EmailAddressingAdditions)

- (id)ea_uncommentedAddress
{
  v47 = 0xAAAAAAAAAAAAAAAALL;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v44 = 0xAAAAAAAAAAAAAAAALL;
  v46 = 0xAAAAAAAAAAAAAAAALL;
  v42 = v2;
  v40 = v2;
  v41 = v2;
  v38 = v2;
  v39 = v2;
  v36 = v2;
  v37 = v2;
  *buffer = v2;
  v3 = [(__CFString *)a1 length];
  v4 = NSZoneMalloc(0, 2 * v3 + 2);
  theString[0] = a1;
  v45 = v3;
  theString[1] = CFStringGetCharactersPtr(a1);
  if (theString[1])
  {
    CStringPtr = 0;
  }

  else
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  }

  v46 = 0;
  v47 = 0;
  *&v44 = CStringPtr;
  v6 = v4;
  v7 = MEMORY[0x277D85DE0];
  if (v3)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v34 = 0;
    v11 = 0;
    v12 = 1;
    v6 = v4;
    while ((v10 & 0x8000000000000000) == 0)
    {
      v13 = v45;
      if (v45 <= v10)
      {
        break;
      }

      if (theString[1])
      {
        v14 = *(&theString[1]->isa + *(&v44 + 1) + v10);
      }

      else if (v44)
      {
        v14 = *(v44 + *(&v44 + 1) + v10);
      }

      else
      {
        if (v47 <= v10 || (v16 = v46, v46 > v10))
        {
          v17 = v10 - 4;
          if (v10 < 4)
          {
            v17 = 0;
          }

          v18 = v9;
          if (v17 + 64 < v45)
          {
            v13 = v17 + 64;
          }

          v46 = v17;
          v47 = v13;
          v49.length = v13 - v17;
          v49.location = *(&v44 + 1) + v17;
          CFStringGetCharacters(theString[0], v49, buffer);
          v9 = v18;
          v16 = v46;
        }

        v14 = buffer[v10 - v16];
      }

      v15 = v14;
      if (v14 == 92)
      {
        v19 = v10 + 1;
        if (v10 + 1 < v3)
        {
          *v6 = 92;
          v20 = v45;
          if (v45 <= v19)
          {
            v21 = 0;
          }

          else if (theString[1])
          {
            v21 = *(&theString[1]->isa + *(&v44 + 1) + v19);
          }

          else if (v44)
          {
            v21 = *(v44 + *(&v44 + 1) + v19);
          }

          else
          {
            if (v47 <= v19 || (v22 = v46, v46 > v19))
            {
              v23 = v10 - 3;
              if (v10 < 3)
              {
                v23 = 0;
              }

              v24 = v9;
              if (v23 + 64 < v45)
              {
                v20 = v23 + 64;
              }

              v46 = v23;
              v47 = v20;
              v50.length = v20 - v23;
              v50.location = *(&v44 + 1) + v23;
              CFStringGetCharacters(theString[0], v50, buffer);
              v9 = v24;
              v22 = v46;
            }

            v21 = buffer[v19 - v22];
          }

          v6[1] = v21;
          v6 += 2;
          goto LABEL_65;
        }

        if (v8)
        {
LABEL_38:
          *v6++ = v14;
          v8 = v14 != 34;
        }

        else
        {
          if (v11 <= 0)
          {
            v15 = 92;
            v14 = 92;
            goto LABEL_15;
          }

LABEL_45:
          v8 = 0;
          v11 -= v14 == 41;
        }

LABEL_64:
        v19 = v10;
        goto LABEL_65;
      }

      if (v8)
      {
        goto LABEL_38;
      }

      if (v14 == 40)
      {
        v8 = 0;
        ++v11;
        goto LABEL_64;
      }

      if (v11 > 0)
      {
        goto LABEL_45;
      }

      if (v14 != 60)
      {
        if ((v34 & (v14 == 62)) != 0)
        {
          v34 = 0;
          v8 = 0;
          v9 = 1;
          goto LABEL_64;
        }

        if (v14 > 0x7Fu)
        {
          v25 = v9;
          v26 = __maskrune(v14, 0x4000uLL);
          v9 = v25;
          if (!v26)
          {
            goto LABEL_61;
          }

          goto LABEL_16;
        }

LABEL_15:
        if ((*(v7 + 4 * v15 + 60) & 0x4000) == 0)
        {
LABEL_61:
          if ((v9 & 1) == 0)
          {
            *v6++ = v14;
          }

          v12 = 0;
          v8 |= v14 == 34;
          goto LABEL_64;
        }

LABEL_16:
        v8 = 0;
        if ((v12 & 1) == 0)
        {
          *v6++ = 32;
        }

        v12 = 1;
        goto LABEL_64;
      }

      v9 = 0;
      v8 = 0;
      v34 = 1;
      v19 = v10;
      v6 = v4;
LABEL_65:
      v10 = v19 + 1;
      if (v19 + 1 >= v3)
      {
        goto LABEL_66;
      }
    }

    if (v8)
    {
      *v6++ = 0;
      v8 = 1;
    }

    else
    {
      if (v11 <= 0)
      {
        v15 = 0;
        v14 = 0;
        goto LABEL_15;
      }

      v8 = 0;
    }

    goto LABEL_64;
  }

LABEL_66:
  v27 = v6 - v4;
  do
  {
    v28 = v6;
    v29 = v27;
    if (v6 <= v4)
    {
      break;
    }

    --v6;
    v30 = *(v28 - 1);
    v31 = v30 > 0x7F ? __maskrune(v30, 0x4000uLL) : *(v7 + 4 * v30 + 60) & 0x4000;
    v27 = v29 - 2;
  }

  while (v31);
  *v28 = 0;
  v32 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:v4 length:v29 >> 1];
  NSZoneFree(0, v4);

  return v32;
}

- (id)ea_uncommentedAddressRespectingGroups
{
  v2 = [a1 rangeOfString:@"@"];
  v3 = [a1 rangeOfString:@"<"];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL && v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = a1;
  }

  else
  {
    v5 = [a1 ea_uncommentedAddress];
  }

  return v5;
}

- (BOOL)ea_isLegalEmailAddress
{
  if (ea_isLegalEmailAddress_onceToken != -1)
  {
    [NSString(EmailAddressingAdditions) ea_isLegalEmailAddress];
  }

  v2 = [EAEmailAddressParser idnaEncodedAddressForAddress:a1];
  v3 = [EAEmailAddressParser rangeOfAddressDomainFromAddress:v2];
  v4 = v3;
  v6 = v5;
  if (v2)
  {
    v7 = v3 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = 1;
  }

  if (v7 || v3 < 2)
  {
    v9 = 0;
    goto LABEL_92;
  }

  v10 = v3 - 1;
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v69 = 0xAAAAAAAAAAAAAAAALL;
  v66 = 0xAAAAAAAAAAAAAAAALL;
  v62 = v11;
  v63 = v11;
  v60 = v11;
  v61 = v11;
  *&buffer.ai_addr = v11;
  v59 = v11;
  *&buffer.ai_flags = v11;
  *&buffer.ai_addrlen = v11;
  theString = v2;
  v67 = 0;
  v68 = v3 - 1;
  v70 = 0xAAAAAAAAAAAAAAAALL;
  CharactersPtr = CFStringGetCharactersPtr(v2);
  if (CharactersPtr)
  {
    CStringPtr = 0;
  }

  else
  {
    CStringPtr = CFStringGetCStringPtr(v2, 0x600u);
  }

  v69 = 0;
  v70 = 0;
  v66 = CStringPtr;
  if (v4 < 2)
  {
    v6 = 0;
    v9 = 0;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_91;
  }

  v55 = v6;
  v56 = v2;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 64;
  do
  {
    if (v17 >= 4)
    {
      v19 = 4;
    }

    else
    {
      v19 = v17;
    }

    v20 = v68;
    if (v68 <= v17)
    {
      v22 = 0;
      goto LABEL_30;
    }

    if (CharactersPtr)
    {
      v21 = &CharactersPtr[v67];
LABEL_23:
      v22 = v21[v17];
      goto LABEL_27;
    }

    if (!v66)
    {
      v23 = v69;
      if (v70 <= v17 || v69 > v17)
      {
        v25 = -v19;
        v26 = v19 + v14;
        v27 = v18 - v19;
        v28 = v17 + v25;
        v29 = v28 + 64;
        if (v28 + 64 >= v68)
        {
          v29 = v68;
        }

        v69 = v28;
        v70 = v29;
        if (v68 >= v27)
        {
          v20 = v27;
        }

        v71.location = v28 + v67;
        v71.length = v20 + v26;
        CFStringGetCharacters(theString, v71, &buffer);
        v23 = v69;
      }

      v21 = (&buffer - 2 * v23);
      goto LABEL_23;
    }

    v22 = *(v66 + v67 + v17);
LABEL_27:
    if (v22 == 46)
    {
      v9 = 0;
      if (!v16)
      {
        v6 = 0;
        v13 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_90;
      }

      goto LABEL_32;
    }

LABEL_30:
    if (![ea_isLegalEmailAddress_validLocalPartSet characterIsMember:v22])
    {
      break;
    }

    LOBYTE(v9) = 1;
LABEL_32:
    v15 = ++v17 >= v10;
    --v14;
    ++v18;
    v16 = v9;
  }

  while (v10 != v17);
  v9 = 0;
  v6 = 0;
  v13 = 0x7FFFFFFFFFFFFFFFLL;
  v2 = v56;
  if (!v15 || !v16)
  {
    goto LABEL_91;
  }

  theString = v56;
  v6 = v55;
  v67 = v4;
  v68 = v55;
  CharactersPtr = CFStringGetCharactersPtr(v56);
  if (CharactersPtr)
  {
    v30 = 0;
  }

  else
  {
    v30 = CFStringGetCStringPtr(v56, 0x600u);
  }

  v66 = v30;
  v69 = 0;
  v70 = 0;
  if (v55 < 1)
  {
    v9 = 0;
LABEL_87:
    v13 = v4;
    goto LABEL_91;
  }

  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 64;
  v38 = 0x7FFFFFFFFFFFFFFFLL;
  while (2)
  {
    if (v33 >= 4)
    {
      v39 = 4;
    }

    else
    {
      v39 = v33;
    }

    v40 = v68;
    if (v68 <= v33)
    {
      v42 = 0;
LABEL_64:
      if (![ea_isLegalEmailAddress_validDomainPartSet characterIsMember:v42])
      {
        v9 = 0;
        goto LABEL_89;
      }

      v36 = 1;
      if (v38 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v34 = 1;
      }

      else
      {
        ++v34;
      }

      if (v38 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v38 = v4 + v33;
      }

      goto LABEL_70;
    }

    if (CharactersPtr)
    {
      v41 = &CharactersPtr[v67];
      goto LABEL_57;
    }

    if (v66)
    {
      v42 = *(v66 + v67 + v33);
    }

    else
    {
      v43 = v69;
      if (v70 <= v33 || v69 > v33)
      {
        v45 = -v39;
        v46 = v39 + v31;
        v47 = v37 - v39;
        v48 = v33 + v45;
        v49 = v48 + 64;
        if (v48 + 64 >= v68)
        {
          v49 = v68;
        }

        v69 = v48;
        v70 = v49;
        if (v68 >= v47)
        {
          v40 = v47;
        }

        v72.location = v48 + v67;
        v72.length = v40 + v46;
        CFStringGetCharacters(theString, v72, &buffer);
        v43 = v69;
      }

      v41 = (&buffer - 2 * v43);
LABEL_57:
      v42 = v41[v33];
    }

    if (v42 != 46)
    {
      goto LABEL_64;
    }

    if ((v36 & 1) == 0)
    {
      break;
    }

    v36 = 0;
    v34 = 0;
    v38 = 0x7FFFFFFFFFFFFFFFLL;
    v35 = 1;
LABEL_70:
    v32 = ++v33 >= v55;
    --v31;
    ++v37;
    if (v55 != v33)
    {
      continue;
    }

    break;
  }

  v50 = v35;
  v9 = 0;
  if (v38 != 0x7FFFFFFFFFFFFFFFLL && (v50 & 1) != 0 && v32)
  {
    v2 = v56;
    v51 = [(__CFString *)v56 substringWithRange:v38, v34];
    v9 = [v51 rangeOfCharacterFromSet:ea_isLegalEmailAddress_invalidTLDPartSet] == 0x7FFFFFFFFFFFFFFFLL;

    goto LABEL_87;
  }

LABEL_89:
  v13 = v4;
LABEL_90:
  v2 = v56;
LABEL_91:
  v4 = v13;
  if (!v9)
  {
LABEL_92:
    if (v6)
    {
      v52 = [(__CFString *)v2 substringWithRange:v4, v6];
      v53 = v52;
      if (v52 && [v52 length])
      {
        v57 = 0;
        memset(&buffer, 0, sizeof(buffer));
        buffer.ai_flags = 4;
        v9 = 0;
        if (!getaddrinfo([v53 UTF8String], 0, &buffer, &v57) && v57)
        {
          v9 = v57->ai_addr != 0;
          freeaddrinfo(v57);
        }
      }

      else
      {
        v9 = 0;
      }
    }
  }

  return v9;
}

- (id)ea_addressCommentPersonNameComponents
{
  v2 = [a1 ea_addressComment];
  if ([v2 isEqualToString:a1])
  {

    v2 = 0;
  }

  v3 = [v2 ea_personNameComponents];

  return v3;
}

- (id)ea_addressComment
{
  v1 = a1;
  v2 = [v1 maximumLengthOfBytesUsingEncoding:4];
  v3 = malloc_type_malloc(v2 + 1, 0xDADFC7DCuLL);
  v4 = v1;
  if ([v1 getCString:v3 maxLength:v2 + 1 encoding:4])
  {
    v5 = strlen(v3);
    v6 = malloc_type_malloc(v5 + 1, 0x18B62943uLL);
    v7 = EAAddressComment(v3, v5, v6);
    v4 = v1;
    if (v7 != v3)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
    }

    free(v6);
  }

  free(v3);

  return v4;
}

- (uint64_t)ea_isLegalCommentedEmailAddress
{
  v1 = [a1 ea_uncommentedAddressRespectingGroups];
  v2 = [v1 ea_isLegalEmailAddress];

  return v2;
}

@end