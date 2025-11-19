@interface NSString(CoreDAVExtensions)
+ (__CFString)CDVStringWithNumberOfSpaces:()CoreDAVExtensions;
+ (id)CDVPreconditionHeaderValueWithCTag:()CoreDAVExtensions pathTag:;
+ (id)CDVStringWithNameSpace:()CoreDAVExtensions andName:;
- (__CFString)CDVStringByXMLQuoting;
- (__CFString)CDVStringByXMLUnquoting;
- (id)CDVStringByAppendingSlashIfNeeded;
- (id)CDVStringByRemovingTerminatingSlashIfNeeded;
- (uint64_t)CDVStringByAddingPercentEscapesForHREF;
- (uint64_t)CDVStringByAddingPercentEscapesForHREFIncludingPercent;
- (uint64_t)CDVStringByAddingPercentEscapesForUserOrPassword;
- (uint64_t)initWithCDVNameSpace:()CoreDAVExtensions andName:;
@end

@implementation NSString(CoreDAVExtensions)

- (uint64_t)initWithCDVNameSpace:()CoreDAVExtensions andName:
{
  v4 = &stru_28583EAE8;
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = &stru_28583EAE8;
  }

  if (a4)
  {
    v4 = a4;
  }

  return [a1 initWithFormat:@"%@:%@", v5, v4];
}

+ (id)CDVStringWithNameSpace:()CoreDAVExtensions andName:
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithCDVNameSpace:v7 andName:v6];

  return v8;
}

- (uint64_t)CDVStringByAddingPercentEscapesForHREF
{
  if (CDVStringByAddingPercentEscapesForHREF_onceToken != -1)
  {
    [NSString(CoreDAVExtensions) CDVStringByAddingPercentEscapesForHREF];
  }

  v2 = CDVStringByAddingPercentEscapesForHREF_allowedCharacterSet;

  return [a1 stringByAddingPercentEncodingWithAllowedCharacters:v2];
}

- (uint64_t)CDVStringByAddingPercentEscapesForHREFIncludingPercent
{
  if (CDVStringByAddingPercentEscapesForHREFIncludingPercent_onceToken != -1)
  {
    [NSString(CoreDAVExtensions) CDVStringByAddingPercentEscapesForHREFIncludingPercent];
  }

  v2 = CDVStringByAddingPercentEscapesForHREFIncludingPercent_allowedCharacterSet;

  return [a1 stringByAddingPercentEncodingWithAllowedCharacters:v2];
}

- (id)CDVStringByAppendingSlashIfNeeded
{
  if ([a1 hasSuffix:@"/"])
  {
    v2 = a1;
  }

  else
  {
    v2 = [a1 stringByAppendingString:@"/"];
  }

  return v2;
}

- (id)CDVStringByRemovingTerminatingSlashIfNeeded
{
  if ([a1 hasSuffix:@"/"])
  {
    v2 = [a1 substringToIndex:{objc_msgSend(a1, "length") - 1}];
  }

  else
  {
    v2 = a1;
  }

  return v2;
}

+ (__CFString)CDVStringWithNumberOfSpaces:()CoreDAVExtensions
{
  if (a3 < 0xD)
  {
    v6 = off_278E313B0[a3];
  }

  else
  {
    v4 = malloc_type_malloc(a3 + 1, 0x100004077774924uLL);
    if (v4)
    {
      v5 = v4;
      memset(v4, 32, a3);
      v5[a3] = 0;
      v6 = [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:1];
      free(v5);
    }

    else
    {
      v6 = 0;
    }
  }

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &stru_28583EAE8;
  }

  v8 = v7;

  return v7;
}

- (uint64_t)CDVStringByAddingPercentEscapesForUserOrPassword
{
  if (CDVStringByAddingPercentEscapesForUserOrPassword_onceToken != -1)
  {
    [NSString(CoreDAVExtensions) CDVStringByAddingPercentEscapesForUserOrPassword];
  }

  v2 = CDVStringByAddingPercentEscapesForUserOrPassword_allowedCharacterSet;

  return [a1 stringByAddingPercentEncodingWithAllowedCharacters:v2];
}

- (__CFString)CDVStringByXMLQuoting
{
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  v4 = CFCharacterSetCreateMutable(v2);
  Length = CFStringGetLength(a1);
  CFCharacterSetAddCharactersInString(v4, @"&<>'");
  theString = a1;
  v25 = 0;
  v26 = Length;
  CharactersPtr = CFStringGetCharactersPtr(a1);
  CStringPtr = 0;
  v23 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  }

  memset(v21, 0, sizeof(v21));
  v27 = 0;
  v28 = 0;
  v24 = CStringPtr;
  if (Length >= 1)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v26;
      if (v26 <= v8)
      {
        v11 = 0;
      }

      else if (v23)
      {
        v11 = v23[v25 + v8];
      }

      else if (v24)
      {
        v11 = v24[v25 + v8];
      }

      else
      {
        v15 = v27;
        if (v28 <= v8 || v27 > v8)
        {
          v17 = v8 - 4;
          if (v8 < 4)
          {
            v17 = 0;
          }

          if (v17 + 64 < v26)
          {
            v10 = v17 + 64;
          }

          v27 = v17;
          v28 = v10;
          v30.length = v10 - v17;
          v30.location = v25 + v17;
          CFStringGetCharacters(theString, v30, v21);
          v15 = v27;
        }

        v11 = *(v21 + v8 - v15);
      }

      v12 = v11;
      if (CFCharacterSetIsCharacterMember(v4, v11))
      {
        break;
      }

      ++v8;
LABEL_26:
      if (v8 == Length)
      {
        goto LABEL_39;
      }
    }

    v31.length = v8 - v9;
    v31.location = v9;
    v13 = CFStringCreateWithSubstring(v2, a1, v31);
    CFStringAppend(Mutable, v13);
    CFRelease(v13);
    if (v12 <= 38)
    {
      if (v12 == 34)
      {
        v14 = @"&quot;";
      }

      else
      {
        v14 = @"&amp;";
        if (v12 != 38)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      switch(v12)
      {
        case '\'':
          v14 = @"&apos;";
          break;
        case '>':
          v14 = @"&gt;";
          break;
        case '<':
          v14 = @"&lt;";
          break;
        default:
LABEL_25:
          v9 = ++v8;
          goto LABEL_26;
      }
    }

    CFStringAppend(Mutable, v14);
    goto LABEL_25;
  }

  v9 = 0;
  Length = 0;
LABEL_39:
  v32.length = Length - v9;
  v32.location = v9;
  v18 = CFStringCreateWithSubstring(v2, a1, v32);
  if (v18)
  {
    v19 = v18;
    CFStringAppend(Mutable, v18);
    CFRelease(v19);
  }

  CFRelease(v4);

  return Mutable;
}

- (__CFString)CDVStringByXMLUnquoting
{
  v1 = a1;
  v2 = *MEMORY[0x277CBECE8];
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  *buffer = 0u;
  v70 = 0u;
  Length = CFStringGetLength(a1);
  Mutable = CFDictionaryCreateMutable(v2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, @"amp", @"&");
  CFDictionaryAddValue(Mutable, @"quot", @"");
  CFDictionaryAddValue(Mutable, @"lt", @"<");
  CFDictionaryAddValue(Mutable, @"gt", @">");
  theDict = Mutable;
  CFDictionaryAddValue(Mutable, @"apos", @"'");
  v77 = v1;
  v80 = 0;
  v81 = Length - 1;
  CharactersPtr = CFStringGetCharactersPtr(v1);
  CStringPtr = 0;
  v78 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v1, 0x600u);
  }

  v79 = CStringPtr;
  v82 = 0;
  v83 = 0;
  v7 = CFStringCreateMutable(v2, 0);
  v8 = v7;
  if (Length >= 1)
  {
    v9 = 0;
    v10 = 0;
    v66 = v7;
    v64 = v2;
    v65 = v1;
    while (1)
    {
      if (v10 < 0 || (v11 = v81, v81 <= v10))
      {
        v13 = v10 + 1;
      }

      else
      {
        if (v78)
        {
          v12 = v78[v80 + v10];
        }

        else if (v79)
        {
          v12 = v79[v80 + v10];
        }

        else
        {
          if (v83 <= v10 || (v14 = v82, v82 > v10))
          {
            v15 = v10 - 4;
            if (v10 < 4)
            {
              v15 = 0;
            }

            if (v15 + 64 < v81)
            {
              v11 = v15 + 64;
            }

            v82 = v15;
            v83 = v11;
            v85.length = v11 - v15;
            v85.location = v80 + v15;
            CFStringGetCharacters(v77, v85, buffer);
            v14 = v82;
          }

          v12 = buffer[v10 - v14];
        }

        v16 = v10 + 1;
        if (v12 == 38)
        {
          if (v10 > v9)
          {
            v91.location = v9;
            v91.length = v10 - v9;
            v17 = CFStringCreateWithSubstring(v2, v1, v91);
            CFStringAppend(v8, v17);
            CFRelease(v17);
          }

          v18 = v81;
          if (v81 <= v16)
          {
            v19 = 0;
            v13 = v10 + 2;
          }

          else
          {
            if (v78)
            {
              v19 = v78[v80 + v16];
            }

            else if (v79)
            {
              v19 = v79[v80 + v16];
            }

            else
            {
              if (v83 <= v16 || (v20 = v82, v82 > v16))
              {
                v21 = v10 - 3;
                if (v10 < 3)
                {
                  v21 = 0;
                }

                if (v21 + 64 < v81)
                {
                  v18 = v21 + 64;
                }

                v82 = v21;
                v83 = v18;
                v86.length = v18 - v21;
                v86.location = v80 + v21;
                CFStringGetCharacters(v77, v86, buffer);
                v20 = v82;
              }

              v19 = buffer[v16 - v20];
            }

            v13 = v10 + 2;
            if (v19 == 35)
            {
              v22 = v81;
              if (v81 <= v13)
              {
                v35 = 0;
                v19 = 0;
                v13 = v10 + 3;
              }

              else
              {
                if (v78)
                {
                  v19 = v78[v80 + v13];
                }

                else if (v79)
                {
                  v19 = v79[v80 + v13];
                }

                else
                {
                  if (v83 <= v13 || (v36 = v82, v82 > v13))
                  {
                    v37 = v10 - 2;
                    if (v10 < 2)
                    {
                      v37 = 0;
                    }

                    if (v37 + 64 < v81)
                    {
                      v22 = v37 + 64;
                    }

                    v82 = v37;
                    v83 = v22;
                    v88.length = v22 - v37;
                    v88.location = v80 + v37;
                    CFStringGetCharacters(v77, v88, buffer);
                    v36 = v82;
                  }

                  v19 = buffer[v13 - v36];
                }

                v13 = v10 + 3;
                if (v19 == 120)
                {
                  v38 = v81;
                  if (v81 <= v13)
                  {
                    v19 = 0;
                  }

                  else if (v78)
                  {
                    v19 = v78[v80 + v13];
                  }

                  else if (v79)
                  {
                    v19 = v79[v80 + v13];
                  }

                  else
                  {
                    if (v83 <= v13 || (v60 = v82, v82 > v13))
                    {
                      v61 = v10 - 1;
                      if (!v10)
                      {
                        v61 = 0;
                      }

                      if (v61 + 64 < v81)
                      {
                        v38 = v61 + 64;
                      }

                      v82 = v61;
                      v83 = v38;
                      v90.length = v38 - v61;
                      v90.location = v80 + v61;
                      CFStringGetCharacters(v77, v90, buffer);
                      v60 = v82;
                    }

                    v19 = buffer[v13 - v60];
                  }

                  v13 = v10 + 4;
                  v39 = 16;
                  v35 = 1;
                  goto LABEL_90;
                }

                v35 = 0;
              }

              v39 = 10;
LABEL_90:
              v23 = 0;
              if (Length <= v13)
              {
                v40 = v13;
              }

              else
              {
                v40 = Length;
              }

              v41 = -v13;
              for (i = v13 + 64; ; ++i)
              {
                if (v13 >= 4)
                {
                  v43 = 4;
                }

                else
                {
                  v43 = v13;
                }

                if ((v19 - 48) > 9u)
                {
                  v45 = v35 ^ 1;
                  if ((v19 - 97) > 5u)
                  {
                    v46 = 1;
                  }

                  else
                  {
                    v46 = v35 ^ 1;
                  }

                  if (v46)
                  {
                    if ((v19 - 65) > 5u)
                    {
                      v45 = 1;
                    }

                    if (v45)
                    {
                      v2 = v64;
                      v1 = v65;
                      v16 = v10 + 1;
                      v8 = v66;
                      goto LABEL_45;
                    }

                    v44 = 16 * v23 - 55;
                  }

                  else
                  {
                    v44 = 16 * v23 - 87;
                  }
                }

                else
                {
                  v44 = v23 * v39 - 48;
                }

                v23 = v44 + v19;
                if (v40 == v13)
                {
                  v13 = v40;
                  v2 = v64;
                  v1 = v65;
                  v16 = v10 + 1;
                  v8 = v66;
                  goto LABEL_127;
                }

                if (v13 < 0 || (v47 = v81, v81 <= v13))
                {
                  v19 = 0;
                }

                else
                {
                  if (v78)
                  {
                    v48 = &v78[v80];
LABEL_113:
                    v19 = v48[v13];
                    goto LABEL_115;
                  }

                  if (!v79)
                  {
                    if (v83 <= v13 || (v49 = v82, v82 > v13))
                    {
                      v50 = v43 + v41;
                      v51 = i - v43;
                      v52 = v13 - v43;
                      v53 = v52 + 64;
                      if (v52 + 64 >= v81)
                      {
                        v53 = v81;
                      }

                      v82 = v52;
                      v83 = v53;
                      if (v81 >= v51)
                      {
                        v47 = v51;
                      }

                      v89.location = v52 + v80;
                      v89.length = v47 + v50;
                      CFStringGetCharacters(v77, v89, buffer);
                      v49 = v82;
                    }

                    v48 = &buffer[-v49];
                    goto LABEL_113;
                  }

                  v19 = v79[v80 + v13];
                }

LABEL_115:
                ++v13;
                --v41;
              }
            }
          }

          v23 = 0xFFFF;
LABEL_45:
          if (v19 != 59 && v13 < Length)
          {
            v24 = -v13;
            v25 = v13 + 64;
            while (1)
            {
              if (v13 >= 4)
              {
                v26 = 4;
              }

              else
              {
                v26 = v13;
              }

              if (v13 < 0 || (v27 = v81, v81 <= v13))
              {
                v29 = 0;
              }

              else
              {
                if (v78)
                {
                  v28 = &v78[v80];
LABEL_55:
                  v29 = v28[v13];
                  goto LABEL_57;
                }

                if (!v79)
                {
                  if (v83 <= v13 || (v30 = v82, v82 > v13))
                  {
                    v31 = v26 + v24;
                    v32 = v25 - v26;
                    v33 = v13 - v26;
                    v34 = v33 + 64;
                    if (v33 + 64 >= v81)
                    {
                      v34 = v81;
                    }

                    v82 = v33;
                    v83 = v34;
                    if (v81 >= v32)
                    {
                      v27 = v32;
                    }

                    v87.location = v33 + v80;
                    v87.length = v27 + v31;
                    CFStringGetCharacters(v77, v87, buffer);
                    v30 = v82;
                  }

                  v28 = &buffer[-v30];
                  goto LABEL_55;
                }

                v29 = v79[v80 + v13];
              }

LABEL_57:
              ++v13;
              if (v29 != 59)
              {
                --v24;
                ++v25;
                if (v13 < Length)
                {
                  continue;
                }
              }

              v8 = v66;
              break;
            }
          }

LABEL_127:
          if (v23 == 0xFFFF)
          {
            v92.length = v13 - v10 - 2;
            v92.location = v16;
            v54 = CFStringCreateWithSubstring(v2, v1, v92);
            Value = CFDictionaryGetValue(theDict, v54);
            if (Value)
            {
              v56 = Value;
              v57 = v8;
            }

            else
            {
              CFRelease(v54);
              v93.location = v10;
              v93.length = v13 - v10;
              v54 = CFStringCreateWithSubstring(v2, v1, v93);
              v57 = v8;
              v56 = v54;
            }

            CFStringAppend(v57, v56);
            CFRelease(v54);
          }

          else
          {
            if (v23 < 0x10000)
            {
              chars[0] = v23;
              v58 = v8;
              v59 = 1;
            }

            else
            {
              chars[0] = ((v23 + 67043328) >> 10) - 10240;
              chars[1] = v23 & 0x3FF | 0xDC00;
              v58 = v8;
              v59 = 2;
            }

            CFStringAppendCharacters(v58, chars, v59);
          }

          v9 = v13;
        }

        else
        {
          v13 = v10 + 1;
        }
      }

      v10 = v13;
      if (v13 >= Length)
      {
        goto LABEL_149;
      }
    }
  }

  v13 = 0;
  v9 = 0;
LABEL_149:
  if (v9 < Length)
  {
    v94.length = v13 - v9;
    v94.location = v9;
    v62 = CFStringCreateWithSubstring(v2, v1, v94);
    CFStringAppend(v8, v62);
    CFRelease(v62);
  }

  CFRelease(theDict);

  return v8;
}

+ (id)CDVPreconditionHeaderValueWithCTag:()CoreDAVExtensions pathTag:
{
  v5 = a4;
  v6 = [a3 CDVStringByAddingPercentEscapesForHREF];
  if (v5)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"<%@> (<%@ctag/%@>)", v5, @"http://calendarserver.org/ns/", v6];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"(<%@ctag/%@>)", @"http://calendarserver.org/ns/", v6, v9];
  }
  v7 = ;

  return v7;
}

@end